`include "driver.sv"

program sorter_test(sorter_if.TEST_MP sortif);
	driver drv_dut;
	
	initial begin
		drv_dut = new(sortif);
		repeat (10) begin 
			drv_dut.drive_ips();
		end

		$finish;
	end
endprogram

