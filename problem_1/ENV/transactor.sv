class transactor;
	randc bit [7:0] a0, a1, a2, a3, a4, a5, a6, a7;

	/*
	constraint random_value_constraint {
		//Set the probability of random_signal being 1
		rst dist { [0:0] := 8, [1:1] := 1 };
	}
	*/

	task disp;
		begin
			$display("**********NEW TRANSACTION***************\n");
			$display("FROM TRANSACTOR: INPUTS GENERATED = %b %b %b %b %b %b %b %b", a0, a1, a2, a3, a4, a5, a5, a7);
		end
	endtask

endclass
