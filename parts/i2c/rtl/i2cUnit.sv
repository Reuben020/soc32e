

// we can build this in a couple of ways
// 1: we simply send or receive a single piece of data each time, send the address and start sequence every time
// 2: we can send or receive single data each time, but have a fifo to queue them up for both address and data, send the start sequence every time
// 3: we can have a fifo and send or receive multiple pieces of data each time and only send the address and start sequence once

// if we receive NACK instead of ACK we should send a stop sequence, and set an error bit
// we can send start sequences one after the other without sending stop sequences, this is good for multiple master setups
// if there are multiple masters and they try driving data at the exact same time, the first master that sees a mismatch of its data on the sda line loses arbitration and waits.


// data bit changes when clock is low
// msb first

// transmit
// 1: send start sequence
// 2: send 7 bit address and write bit
// 3: send 8 bit data
// 4: send stop sequence

// receive
// 1: send start sequence
// 2: send 7 bit address and read bit
// 3: receive 8 bit data
// 4: send stop sequence

// method 1 (manual start/stop)
// have start and stop bits in the config register
// when set these force the controller to generate start or stop sequences
//
// method 2 (automatic start/stop)
// have a transfer count register when the set amount of transfers has happened the
// controller will automatically generate a stop sequence

// for clock streching
// transfer 8 data bits, on the 9th bit the slave drives the clock and may hold it low until it is ready.

// 0: data register    // read/write
// 1: address register // read/write
// 2: config register  // read/write
// 3: status register  // read only


// config register bits
// start/go bit    // starts the i2c transaction
// abort/stop bit  // stops the i2c transaction
// clocksPerCycle
// transmit interrupt enable
// receive interrupt enable
// byte/transfer count??? maybe


// status register
// busy
// error
// transmit ready??
// receive valid???


// initial sequence (common to read and write)
// wait for start bit to be set
// when set generate start sequence
// transmit address and r/w bit, release bus
// wait for slave to send ack bit, it may clock stretch

// for reads
// wait for slave to transmit data, then claim bus
// send ack or nack go to idle state and wait for data to be read by cpu, after keep looping if more data is expected
// send repeated start, or stop sequence
// to back to initial state

// start sequence is
// pull clock low  // if data is already high we can just do nothing here, this is for repeated start only
// pull data high  // if data is already high we can just do nothing here, this is for repeated start only
// pull clock high // if data is already high we can just do nothing here, this is for repeated start only
// pull data low

// stop sequence is
// pull clock low  // if data is already low we can just do nothing here
// pull data low   // if data is already low we can just do nothing here
// pull clock high // if data is already low we can just do nothing here
// pull data high

// 7 bit address / 1 bit r/w register
// 8 bit byte count register // not really needed we can just keep reading/writing bytes when the go bit is set
// 8 bit data register read/write
// config register go bit, stop bit, cycles per clock, interrupt enable, ect
// status register busy, error, done, ect
// need synchronizers for input signals???

// have an 8 bit register that feeds directly to/from the sda tristate/input line

// in normal mode clock streching can happen during any scl low cycle, but in high speed mode
// clock streching is only allowed after the ack bit (and before the 1st bit of the next byte)

// should the clock streching check happen on cycle boundaries or constantly?

// it looks like clock streching can happen after a read or a write both, and even start/stop sequences...
// we need to check that the clock has actually gone high everytime we set it high.


module i2cUnit
    #(parameter LINES = 1)(
    input   logic               clk,
    input   logic               reset,

    input   logic  [1:0]        command,        // the command we want to write to the slave
    input   logic  [7:0]        transmitData,   // the data we want to write to the slave
    output  logic  [7:0]        receiveData,    // the data that was read from the slave
    input   logic               transmitAck,    // the ack bit that we want to write to the slave after a receiving a byte
    output  logic               receiveAck,     // the ack bit from the slave after transmitting a byte

    input   logic               firstCycle,
    input   logic               dataCycle,
    input   logic               finalCycle,

    input   logic               transmitValid,  // this line tells this core when a command is ready to be processed
    output  logic               transmitReady,  // this signals when the write data has been used
    output  logic               receiveValid,   // this signals that the data on the read data lines is valid
    output  logic               busy,           // this signals if the core is busy or not

    inout   wire   [LINES-1:0]  scl,
    inout   wire   [LINES-1:0]  sda
    );


    typedef  enum  logic  [2:0]
    {
        IDLE   = 3'd0,
        DECODE = 3'd1,
        INIT1  = 3'd2,
        INIT2  = 3'd3,
        CYCLE1 = 3'd4,
        CYCLE2 = 3'd5
    }   states;


    states         state;
    states         nextState;
    logic   [3:0]  bitCounter;
    logic   [3:0]  bitCounterNext;
    logic          finalBit;
    logic          dataServiced;
    logic          dataServicedNext;
    logic   [1:0]  commandReg;
    logic   [1:0]  commandRegNext;
    logic   [7:0]  dataReg;
    logic   [7:0]  dataRegNext;
    logic          ackReg;
    logic          ackRegNext;
    logic          transmitReadyReg;
    logic          transmitReadyRegNext;
    logic          receiveValidReg;
    logic          receiveValidRegNext;

    logic          sclIn;
    logic          sclOutReg;
    logic          sclOutRegNext;

    logic          sdaIn;
    logic          sdaOutReg;
    logic          sdaOutRegNext;


    // state register
    always_ff @(posedge clk or posedge reset) begin
        if(reset)
            state <= IDLE;
        else
            state <= nextState;
    end


    // bit counter register
    always_ff @(posedge clk or posedge reset) begin
        if(reset)
            bitCounter <= 4'd1;
        else
            bitCounter <= bitCounterNext;
    end


    // data serviced flag register
    always_ff @(posedge clk or posedge reset) begin
        if(reset)
            dataServiced <= 1'd0;
        else
            dataServiced <= dataServicedNext;
    end


    // command register
    always_ff @(posedge clk or posedge reset) begin
        if(reset)
            commandReg <= 2'd0;
        else
            commandReg <= commandRegNext;
    end


    // data register
    always_ff @(posedge clk or posedge reset) begin
        if(reset)
            dataReg <= 8'd0;
        else
            dataReg <= dataRegNext;
    end


    // ack register
    always_ff @(posedge clk or posedge reset) begin
        if(reset)
            ackReg <= 1'd0;
        else
            ackReg <= ackRegNext;
    end


    // transmitReady register
    always_ff @(posedge clk or posedge reset) begin
        if(reset)
            transmitReadyReg <= 1'd0;
        else
            transmitReadyReg <= transmitReadyRegNext;
    end


    // receiveValid register
    always_ff @(posedge clk or posedge reset) begin
        if(reset)
            receiveValidReg <= 1'd0;
        else
            receiveValidReg <= receiveValidRegNext;
    end


    // i2c clock output register
    always_ff @(posedge clk or posedge reset) begin
        if(reset)
            sclOutReg <= 1'b1; // reset to default value for the current mode
        else
            sclOutReg <= sclOutRegNext;
    end


    // i2c data output register
    always_ff @(posedge clk or posedge reset) begin
        if(reset)
            sdaOutReg <= 1'b1; // reset to default value for the current mode
        else
            sdaOutReg <= sdaOutRegNext;
    end


    assign receiveData   = dataReg;
    assign receiveAck    = ackReg;
    assign transmitReady = transmitReadyReg;
    assign receiveValid  = receiveValidReg;
    assign finalBit      = (bitCounter == 4'd9);


    // combinationial logic
    always_comb begin
        // defaults
        nextState            = IDLE;         // go to idle
        bitCounterNext       = bitCounter;   // keep old value
        dataServicedNext     = dataServiced; // keep old value
        commandRegNext       = commandReg;   // keep old value
        dataRegNext          = dataReg;      // keep old value
        ackRegNext           = ackReg;       // keep old value
        sclOutRegNext        = sclOutReg;    // keep old value
        sdaOutRegNext        = sdaOutReg;    // keep old value
        busy                 = 1'b1;         // signal busy
        transmitReadyRegNext = 1'b0;         // signal not ready
        receiveValidRegNext  = 1'b0;         // read not valid


        case(state)
            IDLE: begin // reset counters, keep clock and data line high, and keep busy low
                bitCounterNext = 4'd1;
                busy           = 1'b0;

                if(!reset && transmitValid && firstCycle) begin
                    transmitReadyRegNext = 1'b1;          // signal ready
                    commandRegNext       = command;       // set command reg to input command
                    dataRegNext          = transmitData;  // set data reg to input data
                    ackRegNext           = transmitAck;   // set ack reg to input ack

                    // next state logic
                    nextState = DECODE;
                end else begin
                    // next state logic
                    nextState = IDLE;
                end
            end


            DECODE: begin
                // next state logic
                case(commandReg)
                    2'b00, 2'b01: nextState = INIT1;  // start/stop command
                    2'b10, 2'b11: nextState = CYCLE1; // transmit/receive command
                endcase
            end


            INIT1: begin
                // for start - pull data high and clock high
                // for stop  - pull data low and clock high
                
                if(dataCycle) begin
                    if(commandReg == 2'b00) sdaOutRegNext = 1'b1;
                    if(commandReg == 2'b01) sdaOutRegNext = 1'b0;
                end

                if(finalCycle) begin
                    sclOutRegNext = 1'b1;
                end

                // next state logic
                nextState = (finalCycle) ? INIT2 : INIT1;
            end


            INIT2: begin
                // for start - pull data low and clock low
                // for stop - pull data high

                if(dataCycle) begin
                    if(commandReg == 2'b00) sdaOutRegNext = 1'b0;
                    if(commandReg == 2'b01) sdaOutRegNext = 1'b1;
                end

                if(finalCycle) begin
                    if(commandReg == 2'b00) sclOutRegNext = 1'b0;
                end

                // next state logic
                nextState = (finalCycle) ? IDLE : INIT2;
            end


            CYCLE1: begin
                if(dataCycle) begin
                    if(finalBit) begin // ack bit
                        if(commandReg == 2'b10) sdaOutRegNext = 1'b1;       // for tx ack bits set sda to high-z
                        if(commandReg == 2'b11) sdaOutRegNext = ackReg;     // for rx ack bits set sda to ackReg value
                    end else begin               // normal bits
                        if(commandReg == 2'b10) sdaOutRegNext = dataReg[7]; // for tx bits set sda to msb of data
                        if(commandReg == 2'b11) sdaOutRegNext = 1'b1;       // for rx bits set sda to high-z
                    end

                    dataServicedNext = 1'b0; // reset data serviced flag
                end

                if(finalCycle) sclOutRegNext = 1'b1; // pull clock high at final cycle

                // next state logic
                nextState = (finalCycle) ? CYCLE2 : CYCLE1;
            end


            CYCLE2: begin
                if(dataCycle && (sclIn == 1'b1)) begin               // if the clock is high
                    if(finalBit) begin                               // ack bit
                        receiveValidRegNext = 1'b1;                  // send read valid signal
                        ackRegNext          = sdaIn;                 // capture ack value in ack register
                    end else begin                                   // normal bits
                        dataRegNext         = {dataReg[6:0], sdaIn}; // capture data and left shift it // this works for both TX and RX
                    end
                    dataServicedNext = 1'b1; // set data serviced flag
                end
                
                if(finalCycle && dataServiced) begin
                    bitCounterNext = bitCounter + 4'd1; // increment bit count
                    sclOutRegNext  = 1'b0;              // pull clock low at final cycle

                    // next state logic
                    nextState = (finalBit) ? IDLE : CYCLE1;
                end else begin
                    // next state logic
                    nextState = CYCLE2;
                end
            end

            //default:
        endcase
    end


    // multi open drain assignment (good for upto 32 lines)
    assign scl   = (sclOutReg) ? {LINES-1{1'bz}} : {LINES-1{1'b0}}; // either high-z when we need a high state or pull low for low state
    assign sclIn = &scl;
    assign sda   = (sdaOutReg) ? {LINES-1{1'bz}} : {LINES-1{1'b0}}; // either high-z when we need a high state or pull low for low state
    assign sdaIn = &sda;


endmodule

