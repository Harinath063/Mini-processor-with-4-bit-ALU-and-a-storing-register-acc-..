 module tb_mini_processor;

reg clk;
reg reset;
reg [2:0] opcode;
reg [7:0] data_in;
wire [7:0] acc;

// Instantiate DUT
mini_processor uut (
    .clk(clk),
    .reset(reset),
    .opcode(opcode),
    .data_in(data_in),
    .acc(acc)
);

// Clock generation
always #5 clk = ~clk;

initial begin
    $monitor("Time=%0t | opcode=%b | data=%d | acc=%d", $time, opcode, data_in, acc);

    clk = 0;
    reset = 1;
    opcode = 0;
    data_in = 0;

    #10 reset = 0;

    // LOAD 10
    #10 opcode = 3'b100; data_in = 10;

    // ADD 5
    #10 opcode = 3'b000; data_in = 5;

    // SUB 3
    #10 opcode = 3'b001; data_in = 3;

    // AND with 6
    #10 opcode = 3'b010; data_in = 6;

    // OR with 2
    #10 opcode = 3'b011; data_in = 2;

    // CLEAR
    #10 opcode = 3'b101;

    #20 $finish;
end

endmodule