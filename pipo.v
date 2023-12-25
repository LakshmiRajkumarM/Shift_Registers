module pipo(input A,B,C,D,CLK,RST,output reg q0,q1,q2,q3);
always @(posedge CLK)begin 

if(RST)begin
q0<=0;
q1<=0;
q2<=0;
q3<=0;
end

else begin
q0<=A;
q1<=B;
q2<=C;
q3<=D;
end

end
endmodule