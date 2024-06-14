`include "transactor.sv"

class driver;

	transactor tr_drv; /* Transactor object*/
	virtual sorter_if.TEST_MP dr_if;
	
	// constructor
	function new(virtual sorter_if.TEST_MP dr_if);
		this.dr_if = dr_if; // virtual interface intialization
		tr_drv=new();
		if(tr_drv.randomize()) begin
			$display("RANDOMIZED THE INPUTS\n");
		end else begin
			$display("RANDOMIZATION FAILED");
		end
	endfunction

	task drive_ips;
		begin
			tr_drv.circular_shift();

			dr_if.a0 = tr_drv.a0;
			dr_if.a1 = tr_drv.a1;
			dr_if.a2 = tr_drv.a2;
			dr_if.a3 = tr_drv.a3;
			dr_if.a4 = tr_drv.a4;
			dr_if.a5 = tr_drv.a5;
			dr_if.a6 = tr_drv.a6;
			dr_if.a7 = tr_drv.a7;

			tr_drv.disp();
			#1 $display("FROM DRIVER: SENT INPUTS TO DUT: %d %d %d %d %d %d %d %d", dr_if.a0, dr_if.a1, dr_if.a2, dr_if.a3, dr_if.a4, dr_if.a5, dr_if.a6, dr_if.a7);

			$display("SORTED OUTPUT RECEIVED from DUT: %b %b %b %b %b %b %b %b", dr_if.y0, dr_if.y1, dr_if.y2, dr_if.y3, dr_if.y4, dr_if.y5, dr_if.y6, dr_if.y7);

			$display("**********TRANSACTION DONE***************\n");
    	end
  	endtask
endclass
