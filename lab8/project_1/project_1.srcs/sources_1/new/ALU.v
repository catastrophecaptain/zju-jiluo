module myALU(A,B,S,C,Co);
input wire[3:0]A,B;
input wire[1:0]S;
output wire[3:0]C;
output wire Co;
wire[3:0] add_sub,myand,myor;
wire c_add_sub;
AddSub4b d_0(A,B,S[0],add_sub,c_add_sub);
myAND2b4 d_1(A,B,myand);
myOR2b4 d_2(A,B,myor);
Mux4to14b d_3(S,add_sub,add_sub,myand,myor,C);
Mux4to1 d_4(S,c_add_sub,c_add_sub,0,0,Co);
endmodule