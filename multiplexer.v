module multiplexer(
    input [7:0] A,
    input [7:0] B,
    input [7:0] C,
    input [7:0] D,
    input [1:0] sel,
    output reg [7:0] mem

);

always @(*)begin
    mem = 8'b00000000;
    case(sel)
    2'b00: mem <= A;
    2'b01: mem <= B;
    2'b10: mem <= C;
    2'b11: mem <= D;
    endcase
end




endmodule