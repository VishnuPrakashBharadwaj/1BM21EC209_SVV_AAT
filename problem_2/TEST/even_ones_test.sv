`include "driver.sv"

program even_ones_test(even_ones_if.TEST_MP sortif);
    driver drv_dut;

    initial begin
        drv_dut = new(sortif);
        drv_dut.drive_reset();
		repeat (20) begin 
            drv_dut.drive_ip();
        end
		$finish;
    end
endprogram