module dff(input d,clk,rst,output reg q);
always @(posedge clk)begin
if(rst==1)
q<=0;
else
q<=d;
end
endmodule

module siso_dff(input i,clk,rst,output q3);
wire q0,q1,q2;
 

dff f0(i,clk,rst,q0);
dff f1(q0,clk,rst,q1);
dff f2(q1,clk,rst,q2);
dff f3(q2,clk,rst,q3);
endmodule

