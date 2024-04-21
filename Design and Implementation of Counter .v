// Updown Counter
module updown (out,clk,reset,updown); 
output [3:0]out;
input clk,reset,updown;
reg [3:0]out;
always @(posedgeclk)
if(reset) begin out<= 4'b0;
end 
else if(updown) begin out<=out+1;
end 
else begin out<=out-1;
end
end module
