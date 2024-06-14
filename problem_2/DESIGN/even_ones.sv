/*
    Author : Vishnu Prakash Bharadwaj
	Module : even_ones.sv
	Description : Detects even number of ones based on the current input and past 2 values of the input.
*/ 

module even_ones(
    input clk,
    input rst,
    input in,
    output out
);

    reg [2:0] shift_reg;

    always @(posedge clk or posedge rst) begin
        if(rst)
            shift_reg <= 3'd0;
        else
            shift_reg <= {shift_reg[1:0], in};
    end

    assign out = (shift_reg[0] & shift_reg[1]) | (shift_reg[1] & shift_reg[2]) | (shift_reg[2] & shift_reg[0]);
endmodule