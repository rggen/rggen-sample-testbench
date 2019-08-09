module top;
  timeunit  1ns/1ps;

  import  uvm_pkg::*;
  import  tue_pkg::*;
  import  env_pkg::*;
  import  tvip_axi_types_pkg::*;
  import  tvip_axi_pkg::*;
  import  axi4lite_env_pkg::*;

  logic                       clk;
  logic                       rst_n;
  rggen_axi4lite_if #(16, 32) axi4lite_if[2]();
  logic [3:0]                 register_0_bit_field_0;
  logic [3:0]                 register_0_bit_field_1;
  logic                       register_0_bit_field_2;
  logic [3:0]                 register_1_bit_field_0;
  logic [3:0]                 register_1_bit_field_1;
  logic [3:0]                 register_2_bit_field_0;
  logic [3:0]                 register_2_bit_field_1_trigger;
  logic [3:0]                 register_2_bit_field_2_trigger;
  logic [3:0]                 register_3_bit_field_0_set;
  logic [3:0]                 register_3_bit_field_0;
  logic [3:0]                 register_3_bit_field_1_set;
  logic [3:0]                 register_3_bit_field_1;
  logic [3:0]                 register_3_bit_field_1_unmasked;
  logic [3:0]                 register_3_bit_field_3_clear;
  logic [3:0]                 register_3_bit_field_3;
  logic                       register_4_bit_field_0_clear;
  logic [3:0]                 register_4_bit_field_0;
  logic [3:0]                 register_4_bit_field_1;
  logic                       register_4_bit_field_2_enable;
  logic [3:0]                 register_4_bit_field_2;
  logic [3:0]                 register_4_bit_field_3;
  logic                       register_4_bit_field_4_lock;
  logic [3:0]                 register_4_bit_field_4;
  logic [3:0]                 register_4_bit_field_5;
  logic [3:0]                 register_5_bit_field_0_set;
  logic [3:0]                 register_5_bit_field_0;
  logic [3:0]                 register_5_bit_field_1_set;
  logic [3:0]                 register_5_bit_field_1;
  logic [3:0]                 register_5_bit_field_1_unmasked;
  logic [3:0]                 register_5_bit_field_3_set;
  logic [3:0]                 register_5_bit_field_3;
  logic [3:0]                 register_5_bit_field_4_set;
  logic [3:0]                 register_5_bit_field_4;
  logic [3:0]                 register_5_bit_field_4_unmasked;
  logic [3:0]                 register_5_bit_field_6_clear;
  logic [3:0]                 register_5_bit_field_6;
  logic [3:0]                 register_5_bit_field_7_clear;
  logic [3:0]                 register_5_bit_field_7;
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

  assign  register_1_bit_field_0        = register_0_bit_field_0;
  assign  register_1_bit_field_1        = register_0_bit_field_1;
  assign  register_3_bit_field_0_set    = register_2_bit_field_2_trigger;
  assign  register_3_bit_field_1_set    = register_2_bit_field_2_trigger;
  assign  register_3_bit_field_3_clear  = register_2_bit_field_1_trigger;
  assign  register_4_bit_field_0_clear  = register_2_bit_field_1_trigger[0];
  assign  register_4_bit_field_2_enable = register_0_bit_field_2;
  assign  register_4_bit_field_4_lock   = register_0_bit_field_2;
  assign  register_5_bit_field_0_set    = register_2_bit_field_2_trigger;
  assign  register_5_bit_field_1_set    = register_2_bit_field_2_trigger;
  assign  register_5_bit_field_3_set    = register_2_bit_field_2_trigger;
  assign  register_5_bit_field_4_set    = register_2_bit_field_2_trigger;
  assign  register_5_bit_field_6_clear  = register_2_bit_field_1_trigger;
  assign  register_5_bit_field_7_clear  = register_2_bit_field_1_trigger;

  block_0 u_block_0 (
    .i_clk                              (clk                              ),
    .i_rst_n                            (rst_n                            ),
    .axi4lite_if                        (axi4lite_if[0]                   ),
    .o_register_0_bit_field_0           (register_0_bit_field_0           ),
    .o_register_0_bit_field_1           (register_0_bit_field_1           ),
    .o_register_0_bit_field_2           (register_0_bit_field_2           ),
    .i_register_1_bit_field_0           (register_1_bit_field_0           ),
    .i_register_1_bit_field_1           (register_1_bit_field_1           ),
    .o_register_2_bit_field_0           (register_2_bit_field_0           ),
    .o_register_2_bit_field_1_trigger   (register_2_bit_field_1_trigger   ),
    .o_register_2_bit_field_2_trigger   (register_2_bit_field_2_trigger   ),
    .i_register_3_bit_field_0_set       (register_3_bit_field_0_set       ),
    .o_register_3_bit_field_0           (register_3_bit_field_0           ),
    .i_register_3_bit_field_1_set       (register_3_bit_field_1_set       ),
    .o_register_3_bit_field_1           (register_3_bit_field_1           ),
    .o_register_3_bit_field_1_unmasked  (register_3_bit_field_1_unmasked  ),
    .i_register_3_bit_field_3_clear     (register_3_bit_field_3_clear     ),
    .o_register_3_bit_field_3           (register_3_bit_field_3           ),
    .i_register_4_bit_field_0_clear     (register_4_bit_field_0_clear     ),
    .o_register_4_bit_field_0           (register_4_bit_field_0           ),
    .o_register_4_bit_field_1           (register_4_bit_field_1           ),
    .i_register_4_bit_field_2_enable    (register_4_bit_field_2_enable    ),
    .o_register_4_bit_field_2           (register_4_bit_field_2           ),
    .o_register_4_bit_field_3           (register_4_bit_field_3           ),
    .i_register_4_bit_field_4_lock      (register_4_bit_field_4_lock      ),
    .o_register_4_bit_field_4           (register_4_bit_field_4           ),
    .o_register_4_bit_field_5           (register_4_bit_field_5           ),
    .i_register_5_bit_field_0_set       (register_5_bit_field_0_set       ),
    .o_register_5_bit_field_0           (register_5_bit_field_0           ),
    .i_register_5_bit_field_1_set       (register_5_bit_field_1_set       ),
    .o_register_5_bit_field_1           (register_5_bit_field_1           ),
    .o_register_5_bit_field_1_unmasked  (register_5_bit_field_1_unmasked  ),
    .i_register_5_bit_field_3_set       (register_5_bit_field_3_set       ),
    .o_register_5_bit_field_3           (register_5_bit_field_3           ),
    .i_register_5_bit_field_4_set       (register_5_bit_field_4_set       ),
    .o_register_5_bit_field_4           (register_5_bit_field_4           ),
    .o_register_5_bit_field_4_unmasked  (register_5_bit_field_4_unmasked  ),
    .i_register_5_bit_field_6_clear     (register_5_bit_field_6_clear     ),
    .o_register_5_bit_field_6           (register_5_bit_field_6           ),
    .i_register_5_bit_field_7_clear     (register_5_bit_field_7_clear     ),
    .o_register_5_bit_field_7           (register_5_bit_field_7           ),
    .o_register_6_bit_field_0           (register_6_bit_field_0           ),
    .o_register_6_bit_field_1           (register_6_bit_field_1           ),
    .o_register_7_bit_field_0           (register_7_bit_field_0           ),
    .o_register_7_bit_field_1           (register_7_bit_field_1           ),
    .register_8_bus_if                  (register_8_bus_if                )
  );

  rggen_axi4lite_bridge u_bridge (
    .i_clk        (clk                ),
    .i_rst_n      (rst_n              ),
    .bus_if       (register_8_bus_if  ),
    .axi4lite_if  (axi4lite_if[1]     )
  );

  block_1 u_block_1 (
    .i_clk                    (clk            ),
    .i_rst_n                  (rst_n          ),
    .axi4lite_if              (axi4lite_if[1] ),
    .o_register_0_bit_field_0 (),
    .o_register_1_bit_field_1 ()
  );

  tvip_axi_if vip_axi_if(clk, rst_n);
  assign  axi4lite_if[0].awvalid  = vip_axi_if.awvalid;
  assign  vip_axi_if.awready      = axi4lite_if[0].awready;
  assign  axi4lite_if[0].awaddr   = vip_axi_if.awaddr;
  assign  axi4lite_if[0].awprot   = '0;
  assign  axi4lite_if[0].wvalid   = vip_axi_if.wvalid;
  assign  vip_axi_if.wready       = axi4lite_if[0].wready;
  assign  axi4lite_if[0].wdata    = vip_axi_if.wdata;
  assign  axi4lite_if[0].wstrb    = vip_axi_if.wstrb;
  assign  vip_axi_if.bvalid       = axi4lite_if[0].bvalid;
  assign  axi4lite_if[0].bready   = vip_axi_if.bready;
  assign  vip_axi_if.bresp        = tvip_axi_response'(axi4lite_if[0].bresp);
  assign  axi4lite_if[0].arvalid  = vip_axi_if.arvalid;
  assign  vip_axi_if.arready      = axi4lite_if[0].arready;
  assign  axi4lite_if[0].araddr   = vip_axi_if.araddr;
  assign  axi4lite_if[0].arprot   = '0;
  assign  vip_axi_if.rvalid       = axi4lite_if[0].rvalid;
  assign  axi4lite_if[0].rready   = vip_axi_if.rready;
  assign  vip_axi_if.rdata        = axi4lite_if[0].rdata;
  assign  vip_axi_if.rresp        = tvip_axi_response'(axi4lite_if[0].rresp);

  task automatic run_ral_test(uvm_event reset_event, virtual tvip_axi_if axi_vif);
    tvip_axi_configuration      axi4lite_configuration;
    axi4lite_env_configuration  configuration;

    axi4lite_configuration      = new("axi4lite_configuration");
    axi4lite_configuration.vif  = axi_vif;
    void'(axi4lite_configuration.randomize() with {
      protocol      == TVIP_AXI4LITE;
      address_width == 16;
      data_width    == 32;

      write_data_delay.min_delay          == 0;
      write_data_delay.max_delay          == 10;
      write_data_delay.weight_zero_delay  == 6;
      write_data_delay.weight_short_delay == 3;
      write_data_delay.weight_long_delay  == 1;

      bready_delay.min_delay          == 0;
      bready_delay.max_delay          == 10;
      bready_delay.weight_zero_delay  == 6;
      bready_delay.weight_short_delay == 3;
      bready_delay.weight_long_delay  == 1;

      rready_delay.min_delay          == 0;
      rready_delay.max_delay          == 10;
      rready_delay.weight_zero_delay  == 6;
      rready_delay.weight_short_delay == 3;
      rready_delay.weight_long_delay  == 1;
      rready_delay.weight_long_delay  == 1;
      rready_delay.weight_long_delay  == 1;
    });

    configuration                         = new("configuration");
    configuration.reset_event             = reset_event;
    configuration.axi4lite_configuration  = axi4lite_configuration;
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
    run_ral_test(reset_event, vip_axi_if);
  end
endmodule
