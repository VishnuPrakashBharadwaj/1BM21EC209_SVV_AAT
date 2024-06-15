class transactor;

    rand bit in;
    bit rst;

    constraint in_constraint {
        //Set the probability of reset being 1
        in dist { [0:0] := 5, [1:1] := 1 };
    }

    task reset_on;
        rst = 1;
    endtask

    task reset_off;
        rst = 0;
    endtask

    task disp;
        begin
            $display("**********NEW TRANSACTION***************\n");
            $display("FROM TRANSACTOR: INPUT GENERATED = %b and RESET = %b", in, rst);
        end
    endtask
endclass //transactor