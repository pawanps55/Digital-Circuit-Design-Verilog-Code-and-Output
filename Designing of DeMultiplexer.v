// DeMUX 4:1
// Behavioural Model

module demux14beh(din,sel,dout ); 
output [3:0] dout ; 
reg [3:0] dout ; 
input din ;
wire din ;
input [1:0] sel ;
wire [1:0] sel ;
always @ (din or sel) 
begin 
case (sel)
0 : dout = {din,3'b000};
1 : dout = {1'b0,din,2'b00};
2 : dout = {2'b00,din,1'b0};
default : dout =
{3'b000,din};
endcase 
end
endmodule



// DeMUX 8:1
// Behavioural Model

module
demux18beh(i, sel, y);
input i;
input [2:0] sel; 
output [7 :0] y ; 
reg [7:0] y; 
always@(i,sel)
begin y=8'd0; 
case(sel)
3'd0:y[0]=i;
3'd1:y[1]=i;
3'd2:y[2]=i;
3'd3:y[3]=i;
3'd4:y[4]=i;
3'd5:y[5]=i;
3'd6:y[6]=i; 
default:y[7]=i; 
endcase
end 
endmodule
