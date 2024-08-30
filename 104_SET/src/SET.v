`define abs(a,b)  ( (a>b) ? a-b : b-a)
module SET ( clk , rst, en, central, radius, mode, busy, valid, candidate );
input clk, rst;
input en;
input [23:0] central;
input [11:0] radius;
input [1:0] mode;
output reg busy;
output reg valid;
output reg [7:0] candidate;

reg [3:0] x , y;
reg [1:0] count;
reg [6:0]square[0:8];

function  integer in_circle;
 	input [3:0] x;
	input [3:0] y;
	input [3:0] r;
	input [3:0] x_nowpoint;
	input [3:0] y_nowpoint;
	begin
		if ( {1'b0,square[`abs(x,x_nowpoint)]} + {1'b0,square[`abs(y,y_nowpoint)]} <= r*r) begin
			in_circle = 1;
		end
		else
			in_circle = 0;
	end
endfunction

integer i;

reg [3:0] setA_x , setA_y , setB_x , setB_y , setC_x , setC_y;
reg [3:0] setA_r , setB_r , setC_r;
always @(posedge clk or posedge rst) begin
	if (rst) begin
		busy <= 1'b0;
		valid <= 1'b0;
		candidate <= 8'd0;
		busy <= 1'b0;
		x <= 4'd1;
		y <= 4'd1;
		for (i = 0; i<=8; i=i+1) begin
			square[i] <= i*i;
		end
	end
	else begin
		if (en) begin
			x<=4'd1;
            y<=4'd1;
            valid<=1'b0;
            candidate<=8'b0;
			
			setA_x <= central[23:20];
			setA_y <= central[19:16];
			setA_r <= radius[11:8];

			if (mode == 2'b01 || mode == 2'b10 || mode == 2'b11) begin
				setB_x <= central[15:12];
				setB_y <= central[11:8];
				setB_r <= radius[7:4];
			end
			if (mode == 2'b11) begin
				setC_x <= central[7:4];
				setC_y <= central[3:0];
				setC_r <= radius[3:0];
			end	
			busy <= 1'b1;
		end
		if (busy) begin
			if(valid) busy <= 1'b0;
			case (mode)   
				2'b00: if(in_circle(setA_x,setA_y,setA_r,x,y)) candidate <= candidate + 8'd1;
				2'b01: if(in_circle(setA_x,setA_y,setA_r,x,y) && in_circle(setB_x,setB_y,setB_r,x,y)) candidate <= candidate + 8'd1;
				2'b10: if(in_circle(setA_x,setA_y,setA_r,x,y) ^ in_circle(setB_x,setB_y,setB_r,x,y)) candidate <= candidate + 8'd1;
				2'b11: begin
					count = 2'd0;
					if ( in_circle(setA_x,setA_y,setA_r,x,y) ) begin 
						count = count + 2'd1; 
					end
					if ( in_circle(setB_x,setB_y,setB_r,x,y)) begin
						count = count + 2'd1;
					end
					if ( in_circle(setC_x,setC_y,setC_r,x,y)) begin
						count = count + 2'd1;
					end
					if(count == 2'd2)
						candidate <= candidate + 8'd1;
				end
			endcase

			if (x==4'd8) begin
				x <= 1;
				if (y==4'd8) begin
					y <= 1;
					valid <= 1'b1;
				end
				else
					y <= y + 4'd1;
			end
			else
				x <= x + 4'd1;
		end
		else
			valid <= 1'b0;
	end
end
endmodule
