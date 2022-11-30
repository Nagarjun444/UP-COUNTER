module up_counter_tb;
parameter N=20;

reg clk;
reg reset;
wire [N-1:0] counter;

up_counter  #(N) DUT (clk,reset,counter);

initial
begin
  clk=1'b0;
  forever #100 clk=~clk;
end

initial
  begin
    reset =1'b1;
	#1000;
	reset =1'b0;
	#10000;
	$stop; 
  end





endmodule
