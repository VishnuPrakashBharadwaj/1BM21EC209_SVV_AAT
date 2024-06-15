`include "transactor.sv"

class driver;

    trans_req tr_drv; /* Transactor object*/
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
            tr_drv.reset_on();
            @(posedge dr_if.clk);
            tr_drv.reset_off();
            $display("RESET DONE.");
        end
    endtask

    task drive_ip;
        begin
            if (tr_drv.randomize()) begin
                dr_if.in = tr_drv.in;
                tr_drv.disp();
            end else begin
                $display("RANDOMIZATION FAILED");
            end

            #1 $display("\nFROM DRIVER: SENT INPUT TO DUT: %b\n", dr_if.req);

            repeat (2) @(posedge dr_if.clk);
            $display("OUTPUT RECEIVED from DUT: %b\n", dr_if.grant);
            $display("**********TRANSACTION DONE***************\n\n");
        end
    endtask
endclass
