module JAM (
input CLK,
input RST,
output reg [2:0] W,
output reg [2:0] J,
input [6:0] Cost,
output reg [3:0] MatchCount,
output reg [9:0] MinCost,
output reg Valid );

/*****
    The application of the Job Assignment Machine (JAM) is quite extensive.  
    When there are n tasks to be completed, and n workers have varying costs for each task,
    determining how to assign each worker to a task in order to minimize the overall cost
    is the primary objective of the JAM.  

    The most straightforward approach to solving the job assignment problem is to
    calculate the cost for all possible combinations and then
    identify the combination with the lowest cost.  

    In this question, input data regarding worker task costs will be provided,
    and participants are required to enumerate all possible pairings using an exhaustive search method. 

    Subsequently, they should find the lowest cost and determine the number of combinations
    that achieve this lowest cost.
*****/

    reg [3:0] cur_state, next_state;
    parameter [3:0] give_signal = 4'd0,
                    rec_data_and_plus = 4'd1,
                    decided_mincost = 4'd2,
                    find_rightmax = 4'd3,
                    seq_adjust = 4'd4,
                    all_done = 4'd5,
                    init = 4'd6;

    reg [3:0] whotake_whichjob [0:7];
    reg [3:0] worker;
    reg [9:0] min_cost;
    reg [9:0] temp_cost;
    reg rec_done;
    reg [3:0] duplicate_combination;
    reg [3:0] pivot,bias;
    reg seq_all_complete;
    reg [3:0] minMAX;
    reg [2:0]switch_point;
    reg find_minMax_done;
    reg give;
    reg [9:0] count;


    always @(posedge CLK or posedge RST) begin
        if(RST)begin
            W <= 3'd0;
            J <= 3'd0;
            MatchCount <= 4'd0;
            MinCost <= 10'd0;
            Valid <= 1'b0;
            {whotake_whichjob[0],whotake_whichjob[1],whotake_whichjob[2],whotake_whichjob[3],whotake_whichjob[4],whotake_whichjob[5],whotake_whichjob[6],whotake_whichjob[7]} 
            <= {4'd0, 4'd1, 4'd2, 4'd3, 4'd4, 4'd5, 4'd6, 4'd7}; 
            worker <= 4'd0;
            min_cost <= 10'd1023;
            temp_cost <= 10'd0;
            duplicate_combination <= 4'd0;
            pivot <= 4'd0;
            seq_all_complete <= 1'b0;
            bias <= 4'd0;
            minMAX <= 4'd15;
            find_minMax_done <= 1'b0;
            switch_point <= 3'd0;
            give <= 1'b0;
        end
        else begin
            case (cur_state)
                give_signal :  begin
                    if(worker<4'd8)begin
                        W <= worker;
                        J <= whotake_whichjob[worker];
                    end
                    if(give==1'b0)   
                        worker <= worker + 4'd1;
                    give <= 1'b1;
                end
                rec_data_and_plus : begin
                    temp_cost <= temp_cost + Cost;
                    give <= 1'b0;  
                end
                decided_mincost : begin
                    if (temp_cost < min_cost) begin
                        min_cost <= temp_cost;
                        duplicate_combination <= 4'd1;
                    end 
                    else if(temp_cost == min_cost) begin
                        duplicate_combination <= duplicate_combination + 4'd1;
                    end

                    if( whotake_whichjob[6] < whotake_whichjob[7] ) begin
                        pivot <= 4'd6;
                        bias <= 4'd1;
                    end
                    else if( whotake_whichjob[5] < whotake_whichjob[6] ) begin
                        pivot <= 4'd5;
                        bias <= 4'd2;
                    end
                    else if( whotake_whichjob[4] < whotake_whichjob[5] ) begin
                        pivot <= 4'd4;
                        bias <= 4'd3;
                    end
                    else if( whotake_whichjob[3] < whotake_whichjob[4] ) begin
                        pivot <= 4'd3;
                        bias <= 4'd4;
                    end
                    else if( whotake_whichjob[2] < whotake_whichjob[3] ) begin
                        pivot <= 4'd2;
                        bias <= 4'd5;
                    end
                    else if( whotake_whichjob[1] < whotake_whichjob[2] ) begin
                        pivot <= 4'd1;
                        bias <= 4'd6;
                    end
                    else if( whotake_whichjob[0] < whotake_whichjob[1] ) begin
                        pivot <= 4'd0;
                        bias <= 4'd7;
                    end
                    else begin
                        seq_all_complete <= 1'b1;
                    end
                end
                find_rightmax : begin
                    if(whotake_whichjob[pivot] < whotake_whichjob[pivot+bias] && minMAX > whotake_whichjob[pivot+bias] && bias!=4'd0)begin
                        minMAX <= whotake_whichjob[pivot+bias];
                        switch_point <= pivot + bias;
                    end
                    if(bias == 4'd1) find_minMax_done <= 1'b1;
                    if(bias == 4'd0)begin
                        worker <= 4'd0;
                        {whotake_whichjob[pivot],whotake_whichjob[switch_point]} <= {whotake_whichjob[switch_point],whotake_whichjob[pivot]};
                    end else begin
                        bias <= bias - 4'd1;
                    end  
                    
                end
                seq_adjust: begin
                    case (pivot)
                        4'd0:begin
                               {whotake_whichjob[1],whotake_whichjob[2],whotake_whichjob[3],whotake_whichjob[4],whotake_whichjob[5],whotake_whichjob[6],whotake_whichjob[7]} 
                            <= {whotake_whichjob[7],whotake_whichjob[6],whotake_whichjob[5],whotake_whichjob[4],whotake_whichjob[3],whotake_whichjob[2],whotake_whichjob[1]} ;
                        end 
                        4'd1:begin
                               {whotake_whichjob[2],whotake_whichjob[3],whotake_whichjob[4],whotake_whichjob[5],whotake_whichjob[6],whotake_whichjob[7]} 
                            <= {whotake_whichjob[7],whotake_whichjob[6],whotake_whichjob[5],whotake_whichjob[4],whotake_whichjob[3],whotake_whichjob[2]} ;
                        end 
                        4'd2:begin
                               {whotake_whichjob[3],whotake_whichjob[4],whotake_whichjob[5],whotake_whichjob[6],whotake_whichjob[7]} 
                            <= {whotake_whichjob[7],whotake_whichjob[6],whotake_whichjob[5],whotake_whichjob[4],whotake_whichjob[3]} ;
                        end 
                        4'd3:begin
                               {whotake_whichjob[4],whotake_whichjob[5],whotake_whichjob[6],whotake_whichjob[7]} 
                            <= {whotake_whichjob[7],whotake_whichjob[6],whotake_whichjob[5],whotake_whichjob[4]} ;
                        end 
                        4'd4:begin
                               {whotake_whichjob[5],whotake_whichjob[6],whotake_whichjob[7]} 
                            <= {whotake_whichjob[7],whotake_whichjob[6],whotake_whichjob[5]} ;
                        end 
                        4'd5:begin
                               {whotake_whichjob[6],whotake_whichjob[7]} 
                            <= {whotake_whichjob[7],whotake_whichjob[6]} ;
                        end 
                        default:begin
                            whotake_whichjob[7] <= whotake_whichjob[7];
                        end 
                    endcase
                    temp_cost <= 10'd0;
                    switch_point <= 3'd0;
                    pivot <= 4'd0;
                    find_minMax_done <= 1'b0;
                    minMAX <= 4'd15;
                    bias <= 4'd0;
                end
                all_done: begin
                    MatchCount <= duplicate_combination;
                    MinCost <= min_cost;
                    Valid <= 1'b1;
                end
            endcase
        end
    end

    always @(posedge CLK or posedge RST) begin
        if(RST)begin
            cur_state <= init;
        end 
        else begin
            cur_state <= next_state;
        end
    end
    always @(*) begin
        case (cur_state)
            init: begin
                next_state = give_signal;
            end
            give_signal : begin
                if(give==1'b1)
                    next_state = rec_data_and_plus;
                else
                    next_state = give_signal;
            end 
            rec_data_and_plus : begin
                if(worker == 4'd8)begin
                    next_state =  decided_mincost;
                end
                else begin
                    next_state = give_signal;
                end
            end
            decided_mincost : begin
                next_state = find_rightmax;
            end
            find_rightmax : begin
                if(find_minMax_done)
                    next_state = seq_adjust;
                else if(seq_all_complete == 1'b1)
                    next_state = all_done;
                else
                    next_state = find_rightmax;
            end
            seq_adjust : begin
                next_state = init;
            end
            all_done : begin
                next_state = all_done;
            end
            default: next_state = give_signal;
        endcase
    end

endmodule