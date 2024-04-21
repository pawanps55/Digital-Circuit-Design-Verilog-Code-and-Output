// 8:3 Encoder
// BehaviouralModel

module enc83beh(din,a,b,c);
 input [0:7]din;
 output a,b,c;
 reg a,b,c; 
always@(din)
 case(din)
8'b10000000:begin a=1'b0;b=1'b0,c=1'b0;end
8'b01000000:begin a=1'b0;b=1'b0;c=1'b1;end
8'b00100000:begin a=1'b0;b=1'b1;c=1'b0;end
8'b00010000:begin a=1'b0;b=1'b1;c=1'b1;end
8'b10001000:begin a=1'b1;b=1'b0,c=1'b0; nd
8'b10000100:begin a=1'b1;b=1'b0,c=1'b1;end
8'b10000010:begin a=1'b1;b=1'b1,c=1'b0;end
8'b10000001:begin a=1'b1;b=1'b1,c=1'b1;end
endcase 

  
