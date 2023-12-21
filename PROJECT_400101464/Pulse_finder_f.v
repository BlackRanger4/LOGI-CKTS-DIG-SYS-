module Pulse_finder(clk,x,z);

input clk,x ;
output wire z;
wire y;
wire y1;
DFF dff(x,clk,y,1'b0);
not( y1 , y );
and( z , y1 , x );

endmodule
