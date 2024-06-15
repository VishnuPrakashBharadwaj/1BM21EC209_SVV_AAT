class transactor;

    rand bit in;
    bit rst;

    constraint in_constraint {
        //Set the probability of reset being 1
        in dist { [0:0] := 10, [1:1] := 1 };
    }

    task disp;
        begin
            // $display("**********NEW TRANSACTION***************\n");
            $display("FROM TRANSACTOR: INPUT GENERATED = %b and RESET = %b", in, rst);
        end
    endtask
endclass //transactor