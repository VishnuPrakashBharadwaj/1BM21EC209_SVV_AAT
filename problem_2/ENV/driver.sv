`include "transactor.sv"

class driver;

    transactor tr_drv; /* Transactor object*/
    virtual even_ones_if.TEST_MP dr_if;
    
    // constructor
    function new(virtual even_ones_if.TEST_MP dr_if); 
        begin
            this.dr_if = dr_if; // virtual interface intialization
            tr_drv = new();
        end
    endfunction

    task drive_reset;
        begin
            $display("\nRESETTING...");
          	dr_if.rst = 1;
          	repeat(2)@(posedge dr_if.clk);
            dr_if.rst = 0;
          	$display("RESET DONE.\n");
          	$display("------------------------------------------------");
        end
    endtask

    task drive_ip;
        begin
            if (tr_drv.randomize()) begin
                dr_if.in = tr_drv.in;
            end else begin
                $display("RANDOMIZATION FAILED");
            end

          #1 $display("INPUT SENT TO DUT: %b", dr_if.in);

          @(posedge dr_if.clk);
          $display("OUTPUT RECEIVED from DUT: %b", dr_if.out);
          $display("------------------------------------------------");
        end
    endtask
endclass
