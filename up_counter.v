module up_counter #(parameter N=10)(clk,reset,counter);
input clk;
input reset;
output reg [N-1:0] counter;


always@(posedge clk or posedge reset)
  begin
    if(reset)
	  counter <= 1'b0;
	else
	 begin
      counter <= counter+1'b1;	
      $display("counter=%0d",counter); 
     end	  
  end




endmodule
