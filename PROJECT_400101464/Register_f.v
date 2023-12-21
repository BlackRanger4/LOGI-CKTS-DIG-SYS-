module Register( din, clk, load, dout );

output reg [10:0] dout = 0;
input [10:0] din ;
input clk ;
input load ;

always @ (posedge clk) 
begin
 if (load)
  dout <= din;		
end
endmodule  
