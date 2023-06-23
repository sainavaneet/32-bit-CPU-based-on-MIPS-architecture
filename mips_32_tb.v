`timescale 1 ps / 100 fs
module mips_32_tb();
 
parameter ClockDelay = 5000;

reg clk,reset;


mips_32  myMIPS(clk, reset , PC);
initial clk = 0;
always #(ClockDelay/2) clk = ~clk;

initial 
begin
   reset = 1;
  #(ClockDelay/4);
  reset = 0;
end

endmodule