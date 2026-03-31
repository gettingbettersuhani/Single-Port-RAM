`timescale 1ns / 1ps

module tb_1;

reg clk,write_en;
reg [3:0] addr;
reg [7:0] din;
wire [7:0] dout;

Design_1 uut (.clk(clk), .write_en(write_en), .addr(addr), .din(din), .dout(dout));

initial begin
clk=0;
forever #5 clk = ~clk;
end

initial
begin
write_en=1; addr=4'd2; din=8'd55; #10;
write_en=0; addr=4'd2; #10;

write_en=1; addr=4'd5; din=8'd99; #10;
write_en=0; addr=4'd5; #10;

#50
$finish;
end

endmodule
