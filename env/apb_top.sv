module top;
  timeunit  1ns/1ps;

  import  uvm_pkg::*;
  import  tue_pkg::*;
  import  env_pkg::*;
  import  tvip_apb_pkg::*;
  import  apb_env_pkg::*;

  logic                       clk;
  logic                       rst_n;
  rggen_apb_if #(16, 32)      apb_if[2]();
  logic [3:0]                 register_0_bit_field_0;
  logic [3:0]                 register_0_bit_field_1;
  logic                       register_0_bit_field_2;
  logic [1:0]                 register_0_bit_field_3;
  logic [1:0]                 register_0_bit_field_4;
  logic [1:0]                 register_0_bit_field_5;
  logic                       register_1;
  logic [3:0]                 register_2_bit_field_0;
  logic [3:0]                 register_2_bit_field_1;
  logic [3:0]                 register_3_bit_field_0;
  logic [3:0]                 register_3_bit_field_1;
  logic [3:0]                 register_3_bit_field_2_trigger;
  logic [3:0]                 register_3_bit_field_3_trigger;
  logic [3:0]                 register_4_bit_field_0_set;
  logic [3:0]                 register_4_bit_field_0;
  logic [3:0]                 register_4_bit_field_1_set;
  logic [3:0]                 register_4_bit_field_1;
  logic [3:0]                 register_4_bit_field_1_unmasked;
  logic [3:0]                 register_4_bit_field_3_clear;
  logic [3:0]                 register_4_bit_field_3;
  logic                       register_5_bit_field_0_clear;
  logic [1:0]                 register_5_bit_field_0;
  logic [1:0]                 register_5_bit_field_1;
  logic                       register_5_bit_field_2_set;
  logic [1:0]                 register_5_bit_field_2[2];
  logic [1:0]                 register_5_bit_field_3[2];
  logic                       register_5_bit_field_4_enable;
  logic [1:0]                 register_5_bit_field_4;
  logic [1:0]                 register_5_bit_field_5;
  logic [1:0]                 register_5_bit_field_6;
  logic                       register_5_bit_field_7_lock;
  logic [1:0]                 register_5_bit_field_7;
  logic [1:0]                 register_5_bit_field_8;
  logic [1:0]                 register_5_bit_field_9;
  logic [3:0]                 register_6_bit_field_0_set;
  logic [3:0]                 register_6_bit_field_0;
  logic [3:0]                 register_6_bit_field_1_set;
  logic [3:0]                 register_6_bit_field_1;
  logic [3:0]                 register_6_bit_field_1_unmasked;
  logic [3:0]                 register_6_bit_field_3_set;
  logic [3:0]                 register_6_bit_field_3;
  logic [3:0]                 register_6_bit_field_4_set;
  logic [3:0]                 register_6_bit_field_4;
  logic [3:0]                 register_6_bit_field_4_unmasked;
  logic [3:0]                 register_6_bit_field_6_clear;
  logic [3:0]                 register_6_bit_field_6;
  logic [3:0]                 register_6_bit_field_7_clear;
  logic [3:0]                 register_6_bit_field_7;
  logic [3:0]                 register_6_bit_field_8;
  logic [3:0]                 register_6_bit_field_9;
  logic [3:0]                 register_7_bit_field_0;
  logic [3:0]                 register_7_bit_field_1;
  logic [3:0]                 register_7_bit_field_2;
  logic [3:0]                 register_7_bit_field_3;
  logic [3:0]                 register_8_bit_field_0_set;
  logic [3:0]                 register_8_bit_field_0;
  logic [3:0]                 register_8_bit_field_1_clear;
  logic [3:0]                 register_8_bit_field_1;
  logic [3:0]                 register_8_bit_field_2_set;
  logic [3:0]                 register_8_bit_field_2;
  logic [3:0]                 register_8_bit_field_3_clear;
  logic [3:0]                 register_8_bit_field_3;
  logic [3:0]                 register_8_bit_field_4;
  logic [3:0]                 register_8_bit_field_5;
  logic [3:0][3:0][3:0]       register_9_bit_field_0;
  logic [3:0][3:0][3:0]       register_9_bit_field_1;
  logic [3:0][3:0][3:0]       register_9_bit_field_2;
  logic [1:0][3:0][3:0][7:0]  register_10_bit_field_0;
  logic [1:0][3:0][3:0][7:0]  register_10_bit_field_1;
  logic                       register_11_bit_field_0;
  logic                       register_12_bit_field_0;
  rggen_bus_if #(8, 32)       register_13_bus_if();

  initial begin
    clk = 0;
    forever #(500ps) begin
      clk = ~clk;
    end
  end

  initial begin
    rst_n = 0;
    repeat (10) begin
      @(posedge clk);
    end
    rst_n = 1;
  end

  assign  register_2_bit_field_0        = register_0_bit_field_0;
  assign  register_2_bit_field_1        = register_0_bit_field_1;
  assign  register_4_bit_field_0_set    = register_3_bit_field_3_trigger;
  assign  register_4_bit_field_1_set    = register_3_bit_field_3_trigger;
  assign  register_4_bit_field_3_clear  = register_3_bit_field_2_trigger;
  assign  register_5_bit_field_0_clear  = register_3_bit_field_2_trigger[0];
  assign  register_5_bit_field_2_set    = register_3_bit_field_3_trigger[0];
  assign  register_5_bit_field_2[0]     = register_0_bit_field_0[1:0];
  assign  register_5_bit_field_3[0]     = register_0_bit_field_0[1:0];
  assign  register_5_bit_field_4_enable = register_0_bit_field_2;
  assign  register_5_bit_field_7_lock   = register_0_bit_field_2;
  assign  register_6_bit_field_0_set    = register_3_bit_field_3_trigger;
  assign  register_6_bit_field_1_set    = register_3_bit_field_3_trigger;
  assign  register_6_bit_field_3_set    = register_3_bit_field_3_trigger;
  assign  register_6_bit_field_4_set    = register_3_bit_field_3_trigger;
  assign  register_6_bit_field_6_clear  = register_3_bit_field_2_trigger;
  assign  register_6_bit_field_7_clear  = register_3_bit_field_2_trigger;
  assign  register_8_bit_field_0_set    = register_3_bit_field_3_trigger;
  assign  register_8_bit_field_1_clear  = register_3_bit_field_2_trigger;
  assign  register_8_bit_field_2_set    = register_3_bit_field_3_trigger;
  assign  register_8_bit_field_3_clear  = register_3_bit_field_2_trigger;

  block_0 #(
    .ADDRESS_WIDTH                        (16                       ),
    .PRE_DECODE                           (1                        ),
    .BASE_ADDRESS                         (16'h1000                 ),
    .DEFAULT_READ_DATA                    (32'hDEAD_BEAF            ),
    .REGISTER_9_BIT_FIELD_1_INITIAL_VALUE ({4'hF, 4'hE, 4'hD, 4'hC} )
  ) u_block_0 (
    .i_clk                              (clk                              ),
    .i_rst_n                            (rst_n                            ),
    .apb_if                             (apb_if[0]                        ),
    .o_register_0_bit_field_0           (register_0_bit_field_0           ),
    .o_register_0_bit_field_1           (register_0_bit_field_1           ),
    .o_register_0_bit_field_2           (register_0_bit_field_2           ),
    .o_register_0_bit_field_3           (register_0_bit_field_3           ),
    .o_register_0_bit_field_4           (register_0_bit_field_4           ),
    .o_register_0_bit_field_5           (register_0_bit_field_5           ),
    .o_register_1                       (register_1                       ),
    .i_register_2_bit_field_0           (register_2_bit_field_0           ),
    .i_register_2_bit_field_1           (register_2_bit_field_1           ),
    .o_register_3_bit_field_0           (register_3_bit_field_0           ),
    .o_register_3_bit_field_1           (register_3_bit_field_1           ),
    .o_register_3_bit_field_2_trigger   (register_3_bit_field_2_trigger   ),
    .o_register_3_bit_field_3_trigger   (register_3_bit_field_3_trigger   ),
    .i_register_4_bit_field_0_set       (register_4_bit_field_0_set       ),
    .o_register_4_bit_field_0           (register_4_bit_field_0           ),
    .i_register_4_bit_field_1_set       (register_4_bit_field_1_set       ),
    .o_register_4_bit_field_1           (register_4_bit_field_1           ),
    .o_register_4_bit_field_1_unmasked  (register_4_bit_field_1_unmasked  ),
    .i_register_4_bit_field_3_clear     (register_4_bit_field_3_clear     ),
    .o_register_4_bit_field_3           (register_4_bit_field_3           ),
    .i_register_5_bit_field_0_clear     (register_5_bit_field_0_clear     ),
    .o_register_5_bit_field_0           (register_5_bit_field_0           ),
    .o_register_5_bit_field_1           (register_5_bit_field_1           ),
    .i_register_5_bit_field_2_set       (register_5_bit_field_2_set       ),
    .i_register_5_bit_field_2           (register_5_bit_field_2[0]        ),
    .o_register_5_bit_field_2           (register_5_bit_field_2[1]        ),
    .i_register_5_bit_field_3           (register_5_bit_field_3[0]        ),
    .o_register_5_bit_field_3           (register_5_bit_field_3[1]        ),
    .i_register_5_bit_field_4_enable    (register_5_bit_field_4_enable    ),
    .o_register_5_bit_field_4           (register_5_bit_field_4           ),
    .o_register_5_bit_field_5           (register_5_bit_field_5           ),
    .o_register_5_bit_field_6           (register_5_bit_field_6           ),
    .i_register_5_bit_field_7_lock      (register_5_bit_field_7_lock      ),
    .o_register_5_bit_field_7           (register_5_bit_field_7           ),
    .o_register_5_bit_field_8           (register_5_bit_field_8           ),
    .o_register_5_bit_field_9           (register_5_bit_field_9           ),
    .i_register_6_bit_field_0_set       (register_6_bit_field_0_set       ),
    .o_register_6_bit_field_0           (register_6_bit_field_0           ),
    .i_register_6_bit_field_1_set       (register_6_bit_field_1_set       ),
    .o_register_6_bit_field_1           (register_6_bit_field_1           ),
    .o_register_6_bit_field_1_unmasked  (register_6_bit_field_1_unmasked  ),
    .i_register_6_bit_field_3_set       (register_6_bit_field_3_set       ),
    .o_register_6_bit_field_3           (register_6_bit_field_3           ),
    .i_register_6_bit_field_4_set       (register_6_bit_field_4_set       ),
    .o_register_6_bit_field_4           (register_6_bit_field_4           ),
    .o_register_6_bit_field_4_unmasked  (register_6_bit_field_4_unmasked  ),
    .i_register_6_bit_field_6_clear     (register_6_bit_field_6_clear     ),
    .o_register_6_bit_field_6           (register_6_bit_field_6           ),
    .i_register_6_bit_field_7_clear     (register_6_bit_field_7_clear     ),
    .o_register_6_bit_field_7           (register_6_bit_field_7           ),
    .o_register_6_bit_field_8           (register_6_bit_field_8           ),
    .o_register_6_bit_field_9           (register_6_bit_field_9           ),
    .o_register_7_bit_field_0           (register_7_bit_field_0           ),
    .o_register_7_bit_field_1           (register_7_bit_field_1           ),
    .o_register_7_bit_field_2           (register_7_bit_field_2           ),
    .o_register_7_bit_field_3           (register_7_bit_field_3           ),
    .i_register_8_bit_field_0_set       (register_8_bit_field_0_set       ),
    .o_register_8_bit_field_0           (register_8_bit_field_0           ),
    .i_register_8_bit_field_1_clear     (register_8_bit_field_1_clear     ),
    .o_register_8_bit_field_1           (register_8_bit_field_1           ),
    .i_register_8_bit_field_2_set       (register_8_bit_field_2_set       ),
    .o_register_8_bit_field_2           (register_8_bit_field_2           ),
    .i_register_8_bit_field_3_clear     (register_8_bit_field_3_clear     ),
    .o_register_8_bit_field_3           (register_8_bit_field_3           ),
    .o_register_8_bit_field_4           (register_8_bit_field_4           ),
    .o_register_8_bit_field_5           (register_8_bit_field_5           ),
    .o_register_9_bit_field_0           (register_9_bit_field_0           ),
    .o_register_9_bit_field_1           (register_9_bit_field_1           ),
    .o_register_9_bit_field_2           (register_9_bit_field_2           ),
    .o_register_10_bit_field_0          (register_10_bit_field_0          ),
    .o_register_10_bit_field_1          (register_10_bit_field_1          ),
    .o_register_11_bit_field_0          (register_11_bit_field_0          ),
    .o_register_12_bit_field_0          (register_12_bit_field_0          ),
    .register_13_bus_if                 (register_13_bus_if               )
  );

  rggen_apb_bridge u_bridge (
    .i_clk    (clk                ),
    .i_rst_n  (rst_n              ),
    .bus_if   (register_13_bus_if ),
    .apb_if   (apb_if[1]          )
  );

  block_1 u_block_1 (
    .i_clk                                                    (clk        ),
    .i_rst_n                                                  (rst_n      ),
    .apb_if                                                   (apb_if[1]  ),
    .o_register_file_0_register_0_bit_field_0                 (),
    .o_register_file_0_register_1_bit_field_0                 (),
    .o_register_file_1_register_0_bit_field_0                 (),
    .o_register_file_1_register_1_bit_field_0                 (),
    .o_register_file_2_register_file_0_register_0_bit_field_0 (),
    .o_register_file_2_register_file_0_register_0_bit_field_1 (),
    .o_register_file_2_register_file_0_register_0_bit_field_2 (),
    .o_register_file_2_register_file_0_register_1_bit_field_0 ()
  );

  tvip_apb_if vip_apb_if(clk, rst_n);
  assign  apb_if[0].psel      = vip_apb_if.psel;
  assign  apb_if[0].penable   = vip_apb_if.penable;
  assign  apb_if[0].paddr     = vip_apb_if.paddr;
  assign  apb_if[0].pprot     = vip_apb_if.pprot;
  assign  apb_if[0].pwrite    = vip_apb_if.pwrite;
  assign  apb_if[0].pstrb     = vip_apb_if.pstrb;
  assign  apb_if[0].pwdata    = vip_apb_if.pwdata;
  assign  vip_apb_if.pready   = apb_if[0].pready;
  assign  vip_apb_if.prdata   = apb_if[0].prdata;
  assign  vip_apb_if.pslverr  = apb_if[0].pslverr;

  task automatic run_ral_test(uvm_event reset_event, virtual tvip_apb_if apb_vif);
    tvip_apb_configuration  apb_configuration;
    apb_env_configuration   configuration;

    apb_configuration     = new("apb_configuration");
    apb_configuration.vif = apb_vif;
    void'(apb_configuration.randomize() with {
      address_width == 16;
      data_width    == 32;
    });

    configuration                   = new("configuration");
    configuration.reset_event       = reset_event;
    configuration.apb_configuration = apb_configuration;
    uvm_config_db #(env_configuration)::set(null, "", "configuration", configuration);

    run_test();
  endtask

  task automatic monitor_reset(uvm_event reset_event);
    forever @(posedge rst_n) begin
      reset_event.trigger();
    end
  endtask

  uvm_event reset_event;
  initial begin
    reset_event = new;
    fork
      monitor_reset(reset_event);
    join_none
    run_ral_test(reset_event, vip_apb_if);
  end
endmodule
