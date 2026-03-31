`timescale 1ns / 1ps

module Design_1(
input clk,
input write_en,
input [3:0] addr,
input [7:0] din,
output reg [7:0] dout
 );
 
 reg [7:0] mem [15:0];
 
 always @(posedge clk) begin
 if(write_en)
 mem[addr] <= din;
 dout <= mem[addr];
 end
endmodule
