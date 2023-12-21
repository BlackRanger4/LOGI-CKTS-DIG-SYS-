module DFF(D,clk,Q,rstn);
input D; 
input clk , rstn; 
output reg Q; 
always @(posedge clk) 
begin
	if(rstn) Q <= 0;
	else Q <= D; 
end 
endmodule
