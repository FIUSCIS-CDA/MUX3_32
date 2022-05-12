//////////////////////////////////////////////////////////////////////////////////
// Testbench for Component: MUX3_32
// Package: FIUSCIS-CDA
// Course: CDA3102 (Computer Architecture), Florida International University
// Developer: Trevor Cickovski
// License: MIT, (C) 2020 All Rights Reserved
///////////////////////////////////////////////////////////////////////////////////


module testbench();
`include "../Test/Test.v"

///////////////////////////////////////////////////////////////////////////////////
// Inputs: A, B, C (32-bits each);  S (2-bit)
reg[31:0] A;
reg[31:0] B;
reg[31:0] C;
reg[1:0] S;
///////////////////////////////////////////////////////////////////////////////////

///////////////////////////////////////////////////////////////////////////////////
// Output: Y (32-bit)
wire[31:0] Y;
///////////////////////////////////////////////////////////////////////////////////

MUX3_32 myMUX(.A(A), 
.B(B), 
.C(C), 
.S(S), 
.Y(Y));

initial begin
////////////////////////////////////////////////////////////////////////////////////////
// Test: S=00
$display("Testing: S=00");
A=32767; B=16383; C=65535; S=2'b00;  #10; 
verifyEqual32(Y, A);
////////////////////////////////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////////////////////////////////
// Test: S=01
$display("Testing: S=01");
A=32767; B=16383; C=65535; S=2'b01;  #10; 
verifyEqual32(Y, B);
////////////////////////////////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////////////////////////////////
// Test: S=10
$display("Testing: S=10");
A=32767; B=16383; C=65535; S=2'b10;  #10; 
verifyEqual32(Y, C);
////////////////////////////////////////////////////////////////////////////////////////

$display("All tests passed.");
end

endmodule