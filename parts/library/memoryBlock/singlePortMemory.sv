

module singlePortMemory
    #(parameter DATAWIDTH    = 8,
      parameter DATADEPTH    = 1024,
      parameter ADDRESSWIDTH = $clog2(DATADEPTH))(

    input   logic                      clk,
    input   logic                      writeEn,
    input   logic  [DATAWIDTH-1:0]     dataIn,
    input   logic  [ADDRESSWIDTH-1:0]  address,
    output  logic  [DATAWIDTH-1:0]     dataOut
    );


    logic  [DATAWIDTH-1:0]     memoryBlock[DATADEPTH-1:0];
    logic  [ADDRESSWIDTH-1:0]  addressReg;


    // initialize to all 0's for simulation
    initial begin : INIT
        integer i;
        for(i = 0; i < DATADEPTH; i++)
            memoryBlock[i] = {DATAWIDTH{1'b0}};
    end


    always_ff @(posedge clk) begin
        if(writeEn)
            memoryBlock[address] <= dataIn;

        addressReg <= address;
    end


    // return new data
    assign dataOut = memoryBlock[addressReg];


endmodule

