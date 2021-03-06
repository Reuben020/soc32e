

module uartReceiver(
    input   logic          clk,
    input   logic          reset,
    input   logic  [15:0]  clocksPerCycle,
    input   logic  [3:0]   bitsPerFrame,
    input   logic          rx,

    output  logic          rxValid,
    output  logic  [7:0]   rxData
    );


    typedef  enum  logic  [1:0]  {IDLE = 2'b00, STOP = 2'b01, START = 2'b10, DATA = 2'b11}  states;


    states          state;
    states          nextState;
    logic   [15:0]  cycleCounter;
    logic   [15:0]  cycleCounterValue;
    logic   [3:0]   bitCounter;
    logic   [3:0]   bitCounterValue;
    logic   [7:0]   rxDataValue;
    logic           halfCycle;
    logic           cycleDone;
    logic           bitsDone;
    logic           rxReg;


    // state register
    always_ff @(posedge clk or posedge reset) begin
        if(reset)
            state <= IDLE;
        else
            state <= nextState;
    end


    // cycle counter register
    always_ff @(posedge clk or posedge reset) begin
        if(reset)
            cycleCounter <= 16'd1;
        else
            cycleCounter <= cycleCounterValue;
    end


    // bit counter register
    always_ff @(posedge clk or posedge reset) begin
        if(reset)
            bitCounter <= 4'd1;
        else
            bitCounter <= bitCounterValue;
    end


    // data register
    always_ff @(posedge clk or posedge reset) begin
        if(reset)
            rxData     <= 8'b0;
        else
            rxData     <= rxDataValue;
    end


    // rx register
    always_ff @(posedge clk or posedge reset) begin
        if(reset)
            rxReg      <= 1'b1;
        else
            rxReg      <= rx;
    end


    assign halfCycle = (cycleCounter == {1'b0, clocksPerCycle[15:1]}); // shift right one position to get the half cycle count
    assign cycleDone = (cycleCounter >= clocksPerCycle);               // changed from ==
    assign bitsDone  = (bitCounter   >= bitsPerFrame);                 // changed from ==


    // combinationial logic
    always_comb begin
        // defaults
        nextState         = IDLE;
        cycleCounterValue = 16'd1;
        bitCounterValue   = 4'd1;
        rxDataValue       = rxData;
        rxValid           = 1'b0;

        case(state)
            IDLE: begin
                // output logic
                cycleCounterValue = (rxReg == 1'b0) ? 16'b1 : cycleCounter + 16'd1; // increment here to keep sync with signal
                bitCounterValue   = 4'd1;
                rxDataValue       = rxData;   // keep old data
                rxValid           = 1'b0;     // signal not valid

                // next state logic
                nextState = (rxReg == 1'b0) ? START : IDLE;
            end

            START: begin
                // output logic
                cycleCounterValue = (cycleDone) ? 16'b1 : cycleCounter + 16'd1;
                bitCounterValue   = 4'd1;
                rxDataValue       = rxData;  // keep old data
                rxValid           = 1'b0;    // signal not valid

                // next state logic
                nextState = (cycleDone) ? DATA  : START;
            end

            DATA: begin
                // output logic
                if(cycleDone) begin
                    cycleCounterValue = 16'b1;
                    bitCounterValue   = bitCounter + 4'd1;
                end else begin
                    cycleCounterValue = cycleCounter + 16'd1;
                    bitCounterValue   = bitCounter; // keep old value
                end
                if(halfCycle) begin
                    rxDataValue       = {rxReg, rxData[7:1]};  // right shift a bit of data in
                end else begin
                    rxDataValue       = rxData;     // keep old data
                end
                rxValid               = 1'b0;       // signal not valid

                // next state logic
                nextState = (bitsDone & cycleDone) ? STOP : DATA;
            end

            STOP: begin
                // output logic
                if(cycleDone) begin
                    cycleCounterValue = 16'b1;
                    rxValid           = 1'b1;       // signal valid
                end else begin
                    cycleCounterValue = cycleCounter + 16'd1;
                    rxValid           = 1'b0;       // signal not valid
                end
                bitCounterValue       = 4'd1;
                rxDataValue           = rxData;     // keep old data

                // next state logic
                nextState = (cycleDone) ? IDLE : STOP;
            end
        endcase
    end


endmodule

