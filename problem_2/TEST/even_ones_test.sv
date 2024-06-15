`include "driver.sv"

program even_ones_test(even_ones_if.TEST_MP evenonesif);
    driver drv_dut;

    initial begin
      	$dumpfile("dump.vcd");
      	$dumpvars;
        drv_dut = new(evenonesif);
        drv_dut.drive_reset();
      	repeat (30) @(negedge evenonesif.clk) begin 
            drv_dut.drive_ip();
        end
		$finish;
    end
endprogram
