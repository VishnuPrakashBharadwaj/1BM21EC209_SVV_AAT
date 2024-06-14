class transactor;
	randc bit [7:0] a0, a1, a2, a3, a4, a5, a6, a7;
	bit [7:0] temp;

	task circular_shift;
		begin
			temp = a0;
			a0 = a1;
			a1 = a2;
			a2 = a3;
			a3 = a4;
			a4 = a5;
			a5 = a6;
			a6 = a7;
			a7 = temp;
		end
	endtask

	task disp;
		begin
			$display("**********NEW TRANSACTION***************\n");
			$display("FROM TRANSACTOR: INPUTS GENERATED = %d %d %d %d %d %d %d %d", a0, a1, a2, a3, a4, a5, a5, a7);
		end
	endtask

endclass
