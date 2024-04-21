// Structural Model

module fulladdstr(sum,carry,a,b,c);
output sum,carry;
input a,b,c;
xor g1(sum,a,b,c);
and g2(x,a,b);
and g3(y,b,c); 
and g4(z,c,a);
or g5(carry,x,z,y);
endmodule
