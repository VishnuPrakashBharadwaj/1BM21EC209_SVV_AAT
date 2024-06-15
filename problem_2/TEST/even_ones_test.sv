`include "driver.sv"

program even_ones_test(even_ones_if.TEST_MP evenonesif);
    driver drv_dut;

    property got_even_ones;
        @ (posedge evenonesif.clk) evenonesif.out == (((~evenonesif.in) & ($past(evenonesif.in) & $past(evenonesif.in, 2)))|((evenonesif.in) & ($past(evenonesif.in) ^ $past(evenonesif.in, 2))));
    endproperty

    //assert property (@ (posedge evenonesif.clk) ((~evenonesif.out) & ($past(venonesif.out) & $past(venonesif.out, 2)))|((evenonesif.out) & ($past(venonesif.out) ^ $past(venonesif.out, 2))));
    assert property (got_even_ones);
    
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
