// Mux 2:1
// BehaviouralModel
module mux21beh(i0,i1,s,y);
input i0,i1,s;
output y; reg y; 
always@(i0,i1) 
begin
if(s==0) y=i1; 
if(s==1)y=i0; end
endmodule


// Mux 4:1 
// BehaviouralModel
module mux41beh(in,s,y );
output y ;
input [3:0] in ; input [1:0] s ; reg y;
always @ (in,s)
begin
if (s[0]==0&s[1]==0)
y = in[3];
else if (s[0]==0&s[1]==1)
y = in[2];
else if (s[0]l==1&s[1]==0)
y = in[1];
else
y = in[0]; end endmodule


// Mux 8:1
// BehaviouralModel
module mux81beh(s,i0,i1,i2,i3,i4,i5,i
6,i7,y);
input [2:0] s;
input i0,i1,i2,i3,i4,i5,i6,i7; regy; always@(i0,i1,i2,i3,i4,i5,i6,i7,s) beg in
case(s) begin
3'd0:MUX_OUT=i0;
3'd1:MUX_OUT=i1;
3'd2:MUX_OUT=i2;
3'd3:MUX_OUT=i3;
3'd4:MUX_OUT=i4;
3'd5:MUX_OUT=i5;
3'd6:MUX_OUT=i6;
3'd7:MUX_OUT=i7;
endcase
end
endmodule

  
