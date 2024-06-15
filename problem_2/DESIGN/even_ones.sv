module even_ones(even_ones_if.DUT_MP evenonesif);
    reg [2:0] shift_reg;

    always @ (posedge evenonesif.clk or posedge evenonesif.rst) begin
        if(evenonesif.rst)
            shift_reg <= 3'd0;
        else
            shift_reg <= {shift_reg[1:0], evenonesif.in};
    end

    assign evenonesif.out = ((~shift_reg[0])&(shift_reg[1]&shift_reg[2]))|((shift_reg[0])&(shift_reg[1]^shift_reg[2]));
endmodule
