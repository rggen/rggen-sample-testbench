module top;
  timeunit  1ns/1ps;

  import  uvm_pkg::*;
  import  tue_pkg::*;
  import  env_pkg::*;
  import  tvip_apb_pkg::*;
  import  apb_env_pkg::*;

  logic                       clk;
  logic                       rst_n;
  rggen_apb_if #(16, 32)      apb_if();
  logic [3:0]                 register_0_bit_field_0;
  logic [3:0]                 register_0_bit_field_1;
  logic                       register_0_bit_field_2;
  logic [3:0]                 register_1_bit_field_0;
  logic [3:0]                 register_1_bit_field_1;
  logic [3:0]                 register_2_bit_field_0;
  logic [3:0]                 register_2_bit_field_1;
  logic [3:0]                 register_3_bit_field_0_set;
  logic [3:0]                 register_3_bit_field_0;
  logic [3:0]                 register_3_bit_field_1_set;
  logic [3:0]                 register_3_bit_field_1;
  logic [3:0]                 register_3_bit_field_1_unmasked;
  logic [3:0]                 register_3_bit_field_2_clear;
  logic [3:0]                 register_3_bit_field_2;
  logic [7:0]                 register_4_bit_field_0;
  logic [7:0]                 register_4_bit_field_1;
  logic [3:0]                 register_5_bit_field_0_set;
  logic [3:0]                 register_5_bit_field_0;
  logic [3:0]                 register_5_bit_field_1_set;
  logic [3:0]                 register_5_bit_field_1;
  logic [3:0]                 register_5_bit_field_1_unmasked;
  logic [3:0]                 register_5_bit_field_2_set;
  logic [3:0]                 register_5_bit_field_2;
  logic [3:0]                 register_5_bit_field_3_set;
  logic [3:0]                 register_5_bit_field_3;
  logic [3:0]                 register_5_bit_field_3_unmasked;
  logic [3:0]                 register_5_bit_field_4_clear;
  logic [3:0]                 register_5_bit_field_4;
  logic [3:0]                 register_5_bit_field_5_clear;
  logic [3:0]                 register_5_bit_field_5;
  logic [3:0][3:0][7:0]       register_6_bit_field_0;
  logic [3:0][3:0][7:0]       register_6_bit_field_1;
  logic [1:0][3:0][3:0][7:0]  register_7_bit_field_0;
  logic [1:0][3:0][3:0][7:0]  register_7_bit_field_1;
  rggen_bus_if #(8, 32)       register_8_bus_if();

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

  assign  register_1_bit_field_0        = register_2_bit_field_0;
  assign  register_1_bit_field_1        = register_2_bit_field_1;
  assign  register_3_bit_field_0_set    = register_0_bit_field_0;
  assign  register_3_bit_field_1_set    = register_0_bit_field_1;
  assign  register_3_bit_field_2_clear  = register_0_bit_field_0;
  assign  register_5_bit_field_0_set    = register_0_bit_field_1;
  assign  register_5_bit_field_1_set    = register_0_bit_field_0;
  assign  register_5_bit_field_2_set    = register_0_bit_field_1;
  assign  register_5_bit_field_3_set    = register_0_bit_field_0;
  assign  register_5_bit_field_4_clear  = register_0_bit_field_1;
  assign  register_5_bit_field_5_clear  = register_0_bit_field_0;
  assign  register_8_bus_if.ready       = register_8_bus_if.valid;
  assign  register_8_bus_if.status      = rggen_rtl_pkg::RGGEN_OKAY;
  assign  register_8_bus_if.read_data   = '0;

  block_0 u_block_0 (
    .i_clk                              (clk                              ),
    .i_rst_n                            (rst_n                            ),
    .apb_if                             (apb_if                           ),
    .o_register_0_bit_field_0           (register_0_bit_field_0           ),
    .o_register_0_bit_field_1           (register_0_bit_field_1           ),
    .o_register_0_bit_field_2           (register_0_bit_field_2           ),
    .i_register_1_bit_field_0           (register_1_bit_field_0           ),
    .i_register_1_bit_field_1           (register_1_bit_field_1           ),
    .o_register_2_bit_field_0           (register_2_bit_field_0           ),
    .o_register_2_bit_field_1           (register_2_bit_field_1           ),
    .i_register_3_bit_field_0_set       (register_3_bit_field_0_set       ),
    .o_register_3_bit_field_0           (register_3_bit_field_0           ),
    .i_register_3_bit_field_1_set       (register_3_bit_field_1_set       ),
    .o_register_3_bit_field_1           (register_3_bit_field_1           ),
    .o_register_3_bit_field_1_unmasked  (register_3_bit_field_1_unmasked  ),
    .i_register_3_bit_field_2_clear     (register_3_bit_field_2_clear     ),
    .o_register_3_bit_field_2           (register_3_bit_field_2           ),
    .o_register_4_bit_field_0           (register_4_bit_field_0           ),
    .o_register_4_bit_field_1           (register_4_bit_field_1           ),
    .i_register_5_bit_field_0_set       (register_5_bit_field_0_set       ),
    .o_register_5_bit_field_0           (register_5_bit_field_0           ),
    .i_register_5_bit_field_1_set       (register_5_bit_field_1_set       ),
    .o_register_5_bit_field_1           (register_5_bit_field_1           ),
    .o_register_5_bit_field_1_unmasked  (register_5_bit_field_1_unmasked  ),
    .i_register_5_bit_field_2_set       (register_5_bit_field_2_set       ),
    .o_register_5_bit_field_2           (register_5_bit_field_2           ),
    .i_register_5_bit_field_3_set       (register_5_bit_field_3_set       ),
    .o_register_5_bit_field_3           (register_5_bit_field_3           ),
    .o_register_5_bit_field_3_unmasked  (register_5_bit_field_3_unmasked  ),
    .i_register_5_bit_field_4_clear     (register_5_bit_field_4_clear     ),
    .o_register_5_bit_field_4           (register_5_bit_field_4           ),
    .i_register_5_bit_field_5_clear     (register_5_bit_field_5_clear     ),
    .o_register_5_bit_field_5           (register_5_bit_field_5           ),
    .o_register_6_bit_field_0           (register_6_bit_field_0           ),
    .o_register_6_bit_field_1           (register_6_bit_field_1           ),
    .o_register_7_bit_field_0           (register_7_bit_field_0           ),
    .o_register_7_bit_field_1           (register_7_bit_field_1           ),
    .register_8_bus_if                  (register_8_bus_if                )
  );

  tvip_apb_if vip_apb_if(clk, rst_n);
  assign  apb_if.psel         = vip_apb_if.psel;
  assign  apb_if.penable      = vip_apb_if.penable;
  assign  apb_if.paddr        = vip_apb_if.paddr;
  assign  apb_if.pprot        = vip_apb_if.pprot;
  assign  apb_if.pwrite       = vip_apb_if.pwrite;
  assign  apb_if.pstrb        = vip_apb_if.pstrb;
  assign  apb_if.pwdata       = vip_apb_if.pwdata;
  assign  vip_apb_if.pready   = apb_if.pready;
  assign  vip_apb_if.prdata   = apb_if.prdata;
  assign  vip_apb_if.pslverr  = apb_if.pslverr;

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
