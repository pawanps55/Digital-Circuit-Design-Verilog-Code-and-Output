
//SR Flip Flop
//Structural Modeling

module sr_st(s,r,q,q_n);
input s, r;
output q, q_n;
or g1(q_n,~s,~q);
or g2(q,~r,~q_n);
endmodule


//T Flip Flop
//Structural Modeling

module t_st(q,q1,t,c);
output q,q1;
input t,c;
wire w1,w2;
assign w1=t&c&q;
assign w2=t&c&q1;
assign q=~(w1|q1);
assign q1=~(w2|q);
endmodule


//D Flip Flop
//Structural Modeling
module dff_df(d,c,q,q1);
input d,c;
output q,q1;
and g1(w1,d,c); 
and g2(w2,~d,c); 
nor g3(q,w1,q1); 
nor g4(q1,w2,q); 
endmodule



//JK Flip Flop
//Structural Modeling
module jkflip_st(j,k,q,qn);
input j,k,q;
output qn;
and g1(w1,j,~q); 
and g2(w2,~k,q); 
or g3(qn,w1,w2); 
endmodule
