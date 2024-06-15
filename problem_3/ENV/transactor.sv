class transactor;
    rand bit en, M;
    rand bit rst;

    constraint in_constraint {
        //Set the probability of input being 0.5
        in dist { [0:0] := 1, [1:1] := 1 };
    }

    function new();
        $$display("Transactor for counter initiated.");
    endfunction //new()

    task disp;
        begin
            $display("**********NEW TRANSACTION***************");
            $display("FROM TRANSACTOR: INPUT GENERATED = %b and RESET = %b", in, rst);
        end
    endtask
endclass //transactor