module DT(
	input 			clk, 
	input			reset,
	output	reg		done ,
	output	reg		sti_rd ,
	output	reg 	[9:0]	sti_addr ,
	input		[15:0]	sti_di,
	output	reg		res_wr ,
	output	reg		res_rd ,
	output	reg 	[13:0]	res_addr ,
	output	reg 	[7:0]	res_do,
	input		[7:0]	res_di
	);

	reg [3:0] cur_state, next_state;
	parameter [3:0]	IDLE = 4'd0,
					forward_get_center = 4'd1,
					forward_decided = 4'd2,
					forward_ram = 4'd3,
					forward_min = 4'd4,
					backward_get_center = 4'd8,
					backward_decided = 4'd9,
					backward_ram = 4'd10,
					backward_min = 4'd11,
					finish = 4'd12
					;
	reg [7:0] min;
	reg [6:0] x,y;
	reg [2:0] count; //0~7
	reg flag;
	// assign 
	
	always @(posedge clk or negedge reset) begin
		if(!reset)begin
			sti_rd <= 1'b0;
			sti_addr <= 16'd0;
			count <= 3'd0;
			min <= 8'd255;
			done <= 1'b0;
			res_addr <= 14'd0;
			res_rd <= 1'b0;
			res_wr <= 1'b0;
			res_do <= 8'd0;
			flag <= 1'b0;
		end
		else begin
			case (cur_state)
				IDLE:begin
					
				end 
				forward_get_center:begin
					if(flag == 1'b0)begin
						sti_rd <= 1'b1;
						sti_addr <= (128*x+y)>>4;
						count <= 3'd0;
						min <= 8'd255;
						flag <= 1'b1;
					end
					else
						flag <= 1'b0;
				end
				forward_decided:begin
					sti_rd <= 1'b0;
				end
				forward_ram:begin
					if(flag==1'b0)begin
						case (count)
							3'd0:begin
								res_addr <= (128*x+y-1);
								res_rd <= 1'b1;
							end 
							3'd1:begin
								res_addr <= (128*(x-1)+y-1);
								res_rd <= 1'b1;
							end
							3'd2:begin
								res_addr <= (128*(x-1)+y);
								res_rd <= 1'b1;
							end
							3'd3:begin
								res_addr <= (128*(x-1)+y+1);
								res_rd <= 1'b1;
							end
							3'd4:begin
								res_addr <= (128*x+y);
								res_do <= min + 8'd1;
								res_wr <= 1'b1;
							end
							default: begin
								
							end 
						endcase
						flag <= 1'b1;
					end
					else
						flag <= 1'b0;
				end
				forward_min:begin
					if(min>res_di&&count<3'd4)begin
						min <= res_di;
					end
					if(count==3'd3)
						res_rd <= 1'b0;
					if(count==3'd4)begin
						res_wr <= 1'b0;
					end
					count <= count + 3'd1;
				end

				
				backward_get_center:begin
					if(flag == 1'b0)begin
						res_rd <= 1'b1;
						res_addr <= (128*x+y);
						count <= 3'd0;
						flag <= 1'b1;
					end
					else
						flag <= 1'b0;
				end
				backward_decided:begin
					res_rd <= 1'b0;
					min <= res_di;
				end
				backward_ram:begin
					if(flag==1'b0)begin
						case (count)
							3'd0:begin
								res_addr <= (128*x+y+1);
								res_rd <= 1'b1;
							end 
							3'd1:begin
								res_addr <= (128*(x+1)+y-1);
								res_rd <= 1'b1;
							end
							3'd2:begin
								res_addr <= (128*(x+1)+y);
								res_rd <= 1'b1;
							end
							3'd3:begin
								res_addr <= (128*(x+1)+y+1);
								res_rd <= 1'b1;
							end
							3'd4:begin
								res_addr <= (128*x+y);
								res_do <= min;
								res_wr <= 1'b1;
							end
							default: begin
								
							end
						endcase
						flag <= 1'b1;
					end
					else
						flag <= 1'b0;
				end
				backward_min:begin
					if(min>(res_di+8'd1)&&count<3'd4)begin
						min <= res_di+8'd1;
					end
					if(count==3'd3)
						res_rd <= 1'b0;
					if(count==3'd4)
						res_wr <= 1'b0;
					count <= count + 3'd1;
				end
				finish:begin
					done <= 1'b1;
				end
				default: begin
					
				end
			endcase
		end
	end

	always @(posedge clk or negedge reset) begin
		if(!reset)begin
			x <= 7'd1;
			y <= 7'd1;
		end
		else begin
			if((cur_state==forward_decided && sti_di[15-y%16]==1'b0) || (cur_state==forward_min && count==3'd4))begin
				y <= y + 7'd1;
				if(y == 7'd126)begin
					x <= x + 7'd1;
					y <= 7'd1;
					if(x==7'd126&&y==7'd126)begin
						x <= 7'd126;
						y <= 7'd126;
					end
				end
			end
			else if((cur_state==backward_decided && res_di==8'd0) || (cur_state==backward_min && count==3'd4))begin
				y <= y - 7'd1;
				if(y == 7'd1)begin
					x <= x - 7'd1;
					y <= 7'd126;
				end
			end
			
		end
	end

	always @(*) begin
		case (cur_state)
			IDLE:begin
				next_state = forward_get_center;
			end 
			forward_get_center:begin
				if(flag==1'b1)begin
					next_state = forward_decided;
				end
				else begin
					next_state = forward_get_center;
				end
			end
			forward_decided:begin
				if(x==7'd126&&y==7'd126)
					next_state = backward_get_center;
				else if(sti_di[15-y%16]==1'b0 && (y%16==7'd15 || y==7'd126))
					next_state = forward_get_center;
				else if(sti_di[15-y%16]==1'b0)
					next_state = forward_decided;
				else
					next_state = forward_ram;
			end
			
			forward_ram:begin
				if(flag == 1'b1)
					next_state = forward_min;
				else
					next_state = forward_ram;
			end
			forward_min:begin
				if(count<3'd4)
					next_state = forward_ram;
				else if(x==7'd126&&y==7'd126)
					next_state = backward_get_center;
				else
					next_state = forward_get_center;
			end
			backward_get_center:begin
				if(x==7'd0&&y==7'd126)
					next_state = finish;
				else if(flag==1'b1)
					next_state = backward_decided;
				else
					next_state = backward_get_center;
			end
			backward_decided:begin
				if(res_di==8'd0)
					next_state = backward_get_center;
				else
					next_state = backward_ram;
			end
			
			backward_ram:begin
				if(flag==1'b1)
					next_state = backward_min;
				else
					next_state = backward_ram;
			end
			backward_min:begin
				if(count<3'd4)
					next_state = backward_ram;
				else if(x==7'd1&&y==7'd1)
					next_state = finish;
				else
					next_state = backward_get_center;
			end
			finish:begin
				next_state = finish;
			end
			default:begin
				next_state = IDLE;	
			end 
		endcase
	end

	always @(posedge clk or negedge reset) begin
		if(!reset)begin
			cur_state <= IDLE;
		end
		else begin
			cur_state <= next_state;
		end
	end


endmodule
