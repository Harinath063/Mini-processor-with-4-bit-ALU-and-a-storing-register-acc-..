 `timescale 1ns/1ps

 
module mini_processor(
    input clk,
    input reset,
    input [2:0] opcode,
    input [7:0] data_in,
    output reg [7:0] acc
);

always @(posedge clk or posedge reset) begin
    if (reset)
        acc <= 8'b00000000;
    else begin
        case(opcode)
            3'b000: acc <= acc + data_in; // ADD
            3'b001: acc <= acc - data_in; // SUB
            3'b010: acc <= acc & data_in; // AND
            3'b011: acc <= acc | data_in; // OR
            3'b100: acc <= data_in;       // LOAD
            3'b101: acc <= 8'b00000000;   // CLEAR
            default: acc <= acc;
        endcase
    end
end

endmodule
