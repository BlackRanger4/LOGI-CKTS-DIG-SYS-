module Speaker_Controler(input mute,output z,input clk , input LED , input rstn);

wire y1,y0;
wire D1,D0;

assign D0 = (mute&~y1)|(~mute&y0)|(~y1&y0);
assign D1 = (mute&y1) |(~mute&y0)|(y1&y0) ; 

DFF dd0(D0,clk,y0,rstn),
    dd1(D1,clk,y1,rstn);
and(z , y0, LED);

endmodule
