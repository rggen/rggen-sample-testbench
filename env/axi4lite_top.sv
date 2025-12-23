module top;
`ifdef  RGGEN_SYSTEMVERILOG
  `define SV_OR_VERYL
`elsif RGGEN_VERYL
  `define SV_OR_VERYL
`endif

  timeunit  1ns/1ps;

  import  uvm_pkg::*;
  import  tue_pkg::*;
  import  env_pkg::*;
  import  tvip_axi_types_pkg::*;
  import  tvip_axi_pkg::*;
  import  axi4lite_env_pkg::*;

  logic                                 clk;
  logic                                 rst_n;
`ifdef RGGEN_VERYL
  rggen_rggen_axi4lite_if #(2, 16, 32)  axi4lite_if[2]();
`else
  rggen_axi4lite_if #(2, 16, 32)        axi4lite_if[2]();
`endif
  logic [3:0]                           register_0_bit_field_0;
  logic [3:0]                           register_0_bit_field_1;
  logic                                 register_0_bit_field_2;
  logic [1:0]                           register_0_bit_field_3;
  logic [1:0]                           register_0_bit_field_4;
  logic [1:0]                           register_0_bit_field_5;
  logic [1:0]                           register_0_bit_field_6;
  logic                                 register_1;
  logic [3:0]                           register_2_bit_field_0;
  logic                                 register_2_bit_field_2_valid;
  logic [1:0][3:0]                      register_2_bit_field_2;
  logic [1:0][3:0]                      register_2_bit_field_3;
  logic [3:0]                           register_3_bit_field_0;
  logic [3:0]                           register_3_bit_field_1;
  logic [3:0]                           register_3_bit_field_2_trigger;
  logic [3:0]                           register_3_bit_field_3_trigger;
  logic [3:0]                           register_4_bit_field_0_set;
  logic [3:0]                           register_4_bit_field_0;
  logic [3:0]                           register_4_bit_field_1_set;
  logic [3:0]                           register_4_bit_field_1;
  logic [3:0]                           register_4_bit_field_1_unmasked;
  logic [3:0]                           register_4_bit_field_3_clear;
  logic [3:0]                           register_4_bit_field_3;
  logic                                 register_5_bit_field_0_clear;
  logic [1:0]                           register_5_bit_field_0;
  logic [1:0]                           register_5_bit_field_1;
  logic                                 register_5_bit_field_2_set;
  logic [1:0]                           register_5_bit_field_2;
  logic [1:0]                           register_5_bit_field_3;
  logic                                 register_5_bit_field_4_valid;
  logic [1:0]                           register_5_bit_field_4[2];
  logic [1:0]                           register_5_bit_field_5[2];
  logic                                 register_5_bit_field_6_enable;
  logic [1:0]                           register_5_bit_field_6;
  logic [1:0]                           register_5_bit_field_7;
  logic [1:0]                           register_5_bit_field_8;
  logic                                 register_5_bit_field_9_lock;
  logic [1:0]                           register_5_bit_field_9;
  logic [1:0]                           register_5_bit_field_10;
  logic [1:0]                           register_5_bit_field_11;
  logic [3:0]                           register_6_bit_field_0_set;
  logic [3:0]                           register_6_bit_field_0;
  logic [3:0]                           register_6_bit_field_1_set;
  logic [3:0]                           register_6_bit_field_1;
  logic [3:0]                           register_6_bit_field_1_unmasked;
  logic [3:0]                           register_6_bit_field_3_set;
  logic [3:0]                           register_6_bit_field_3;
  logic [3:0]                           register_6_bit_field_4_set;
  logic [3:0]                           register_6_bit_field_4;
  logic [3:0]                           register_6_bit_field_4_unmasked;
  logic [3:0]                           register_6_bit_field_6_clear;
  logic [3:0]                           register_6_bit_field_6;
  logic [3:0]                           register_6_bit_field_7_clear;
  logic [3:0]                           register_6_bit_field_7;
  logic [3:0]                           register_6_bit_field_8;
  logic [3:0]                           register_6_bit_field_9;
  logic [3:0]                           register_7_bit_field_0;
  logic [3:0]                           register_7_bit_field_1;
  logic [3:0]                           register_7_bit_field_2;
  logic [3:0]                           register_7_bit_field_3;
  logic [3:0]                           register_8_bit_field_0_set;
  logic [3:0]                           register_8_bit_field_0;
  logic [3:0]                           register_8_bit_field_1_clear;
  logic [3:0]                           register_8_bit_field_1;
  logic [3:0]                           register_8_bit_field_2_set;
  logic [3:0]                           register_8_bit_field_2;
  logic [3:0]                           register_8_bit_field_3_clear;
  logic [3:0]                           register_8_bit_field_3;
  logic [3:0]                           register_8_bit_field_4;
  logic [3:0]                           register_8_bit_field_5;
  logic [1:0]                           register_9_bit_field_0;
  logic [1:0]                           register_9_bit_field_1;
  logic [1:0]                           register_9_bit_field_2;
  logic [1:0][1:0]                      register_9_bit_field_3;
  logic [1:0]                           register_9_bit_field_4;
  logic [1:0]                           register_9_bit_field_5;
  logic [3:0][3:0][1:0]                 register_10_bit_field_0;
  logic [3:0][3:0][1:0]                 register_10_bit_field_1;
  logic [3:0][3:0][1:0]                 register_10_bit_field_2;
  logic [1:0][3:0][3:0][7:0]            register_11_bit_field_0;
  logic [1:0][3:0][3:0][7:0]            register_11_bit_field_1;
  logic                                 register_12_bit_field_0;
  logic                                 register_12_bit_field_1;
  logic [1:0]                           register_13_bit_field_0;
  logic [1:0]                           register_13_bit_field_1;
  logic [1:0]                           register_13_bit_field_2;
  logic [1:0]                           register_13_bit_field_3;
  logic                                 register_13_bit_field_3_write_trigger;
  logic                                 register_13_bit_field_3_read_trigger;
  logic [1:0]                           register_13_bit_field_4;
  logic [1:0]                           register_13_bit_field_5;
  logic [1:0]                           register_13_bit_field_6;
  logic [1:0]                           register_13_bit_field_6_hw_clear;
  logic [1:0]                           register_13_bit_field_7;
  logic [1:0]                           register_13_bit_field_7_hw_set;
  logic [1:0]                           register_13_bit_field_8;
  logic                                 register_13_bit_field_8_hw_write_enable;
  logic [1:0]                           register_13_bit_field_8_hw_write_data;
  logic [7:0]                           register_14_bit_field_0;
  logic [7:0]                           register_14_bit_field_1;
  logic                                 register_15_bit_field_0;
  logic                                 register_16_bit_field_0;
  logic [15:0]                          register_17_bit_field_0;
`ifdef RGGEN_VERYL
  rggen_rggen_bus_if #(8, 32)           register_19_bus_if();
`elsif RGGEN_SYSTEMVERILOG
  rggen_bus_if #(8, 32)                 register_19_bus_if();
`else
  logic                                 register_19_valid;
  logic [1:0]                           register_19_access;
  logic [7:0]                           register_19_address;
  logic [31:0]                          register_19_write_data;
  logic [3:0]                           register_19_strobe;
  logic                                 register_19_ready;
  logic [1:0]                           register_19_status;
  logic [31:0]                          register_19_read_data;
`endif

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

  always_comb begin
    register_2_bit_field_0                  = register_0_bit_field_0;
    register_2_bit_field_2_valid            = register_3_bit_field_3_trigger[0];
    register_2_bit_field_2[0]               = register_0_bit_field_0;
    register_2_bit_field_3[0]               = register_0_bit_field_0;
    register_4_bit_field_0_set              = register_3_bit_field_3_trigger;
    register_4_bit_field_1_set              = register_3_bit_field_3_trigger;
    register_4_bit_field_3_clear            = register_3_bit_field_2_trigger;
    register_5_bit_field_0_clear            = register_3_bit_field_2_trigger[0];
    register_5_bit_field_2_set              = register_3_bit_field_2_trigger[0];
    register_5_bit_field_4_valid            = register_3_bit_field_3_trigger[0];
    register_5_bit_field_4[0]               = register_0_bit_field_0[1:0];
    register_5_bit_field_5[0]               = register_0_bit_field_0[1:0];
    register_5_bit_field_6_enable           = register_0_bit_field_2;
    register_5_bit_field_9_lock             = register_0_bit_field_2;
    register_6_bit_field_0_set              = register_3_bit_field_3_trigger;
    register_6_bit_field_1_set              = register_3_bit_field_3_trigger;
    register_6_bit_field_3_set              = register_3_bit_field_3_trigger;
    register_6_bit_field_4_set              = register_3_bit_field_3_trigger;
    register_6_bit_field_6_clear            = register_3_bit_field_2_trigger;
    register_6_bit_field_7_clear            = register_3_bit_field_2_trigger;
    register_8_bit_field_0_set              = register_3_bit_field_3_trigger;
    register_8_bit_field_1_clear            = register_3_bit_field_2_trigger;
    register_8_bit_field_2_set              = register_3_bit_field_3_trigger;
    register_8_bit_field_3_clear            = register_3_bit_field_2_trigger;
    register_9_bit_field_1                  = register_0_bit_field_0[1:0];
    register_9_bit_field_3[1]               = register_0_bit_field_0[1:0];
    register_9_bit_field_4                  = register_0_bit_field_0[1:0];
    register_9_bit_field_5                  = register_0_bit_field_0[1:0];
    register_13_bit_field_1                 = register_13_bit_field_0;
    register_13_bit_field_6_hw_clear        = register_13_bit_field_3_read_trigger;
    register_13_bit_field_7_hw_set          = register_13_bit_field_3_read_trigger;
    register_13_bit_field_8_hw_write_enable = register_13_bit_field_3_write_trigger;
    register_13_bit_field_8_hw_write_data   = register_13_bit_field_3;
    register_15_bit_field_0                 = register_0_bit_field_0[0];
  end

  block_0 #(
    .ADDRESS_WIDTH                          (16                                                                                               ),
    .ID_WIDTH                               (2                                                                                                ),
    .PRE_DECODE                             (1'b1                                                                                             ),
    .INSERT_SLICER                          (1'b1                                                                                             ),
`ifndef RGGEN_VHDL
    .BASE_ADDRESS                           (16'h1000                                                                                         ),
    .DEFAULT_READ_DATA                      (32'hDEAD_BEAF                                                                                    ),
    .REGISTER_10_BIT_FIELD_1_INITIAL_VALUE  ({2'h3, 2'h2, 2'h1, 2'h0, 2'h3, 2'h2, 2'h1, 2'h0, 2'h3, 2'h2, 2'h1, 2'h0, 2'h3, 2'h2, 2'h1, 2'h0} )
`else
  `ifdef DSIM
    .BASE_ADDRESS                           (16'h1000                                                                                         ),
    .REGISTER_10_BIT_FIELD_1_INITIAL_VALUE  ({2'h3, 2'h2, 2'h1, 2'h0, 2'h3, 2'h2, 2'h1, 2'h0, 2'h3, 2'h2, 2'h1, 2'h0, 2'h3, 2'h2, 2'h1, 2'h0} )
  `else
    .BASE_ADDRESS                           ("0001000000000000"                                                                               ),
    .REGISTER_10_BIT_FIELD_1_INITIAL_VALUE  ("11100100111001001110010011100100"                                                               )
  `endif
`endif
  ) u_block_0 (
    .i_clk                                      (clk                                      ),
    .i_rst_n                                    (rst_n                                    ),
`ifdef SV_OR_VERYL
    .axi4lite_if                                (axi4lite_if[0]                           ),
`else
    .i_awvalid                                  (axi4lite_if[0].awvalid                   ),
    .o_awready                                  (axi4lite_if[0].awready                   ),
    .i_awid                                     (axi4lite_if[0].awid                      ),
    .i_awaddr                                   (axi4lite_if[0].awaddr                    ),
    .i_awprot                                   (axi4lite_if[0].awprot                    ),
    .i_wvalid                                   (axi4lite_if[0].wvalid                    ),
    .o_wready                                   (axi4lite_if[0].wready                    ),
    .i_wdata                                    (axi4lite_if[0].wdata                     ),
    .i_wstrb                                    (axi4lite_if[0].wstrb                     ),
    .o_bvalid                                   (axi4lite_if[0].bvalid                    ),
    .i_bready                                   (axi4lite_if[0].bready                    ),
    .o_bid                                      (axi4lite_if[0].bid                       ),
    .o_bresp                                    (axi4lite_if[0].bresp                     ),
    .i_arvalid                                  (axi4lite_if[0].arvalid                   ),
    .o_arready                                  (axi4lite_if[0].arready                   ),
    .i_araddr                                   (axi4lite_if[0].araddr                    ),
    .i_arid                                     (axi4lite_if[0].arid                      ),
    .i_arprot                                   (axi4lite_if[0].arprot                    ),
    .o_rvalid                                   (axi4lite_if[0].rvalid                    ),
    .i_rready                                   (axi4lite_if[0].rready                    ),
    .o_rid                                      (axi4lite_if[0].rid                       ),
    .o_rresp                                    (axi4lite_if[0].rresp                     ),
    .o_rdata                                    (axi4lite_if[0].rdata                     ),
`endif
    .o_register_0_bit_field_0                   (register_0_bit_field_0                   ),
    .o_register_0_bit_field_1                   (register_0_bit_field_1                   ),
    .o_register_0_bit_field_2                   (register_0_bit_field_2                   ),
    .o_register_0_bit_field_3                   (register_0_bit_field_3                   ),
    .o_register_0_bit_field_4                   (register_0_bit_field_4                   ),
    .o_register_0_bit_field_5                   (register_0_bit_field_5                   ),
    .o_register_0_bit_field_6                   (register_0_bit_field_6                   ),
    .i_register_0_bit_field_6                   (register_0_bit_field_6                   ),
    .o_register_1                               (register_1                               ),
    .i_register_2_bit_field_0                   (register_2_bit_field_0                   ),
    .i_register_2_bit_field_2_valid             (register_2_bit_field_2_valid             ),
    .i_register_2_bit_field_2                   (register_2_bit_field_2[0]                ),
    .o_register_2_bit_field_2                   (register_2_bit_field_2[1]                ),
    .i_register_2_bit_field_3                   (register_2_bit_field_3[0]                ),
    .o_register_2_bit_field_3                   (register_2_bit_field_3[1]                ),
    .o_register_3_bit_field_0                   (register_3_bit_field_0                   ),
    .o_register_3_bit_field_1                   (register_3_bit_field_1                   ),
    .o_register_3_bit_field_2_trigger           (register_3_bit_field_2_trigger           ),
    .o_register_3_bit_field_3_trigger           (register_3_bit_field_3_trigger           ),
    .i_register_4_bit_field_0_set               (register_4_bit_field_0_set               ),
    .o_register_4_bit_field_0                   (register_4_bit_field_0                   ),
    .i_register_4_bit_field_1_set               (register_4_bit_field_1_set               ),
    .o_register_4_bit_field_1                   (register_4_bit_field_1                   ),
    .o_register_4_bit_field_1_unmasked          (register_4_bit_field_1_unmasked          ),
    .i_register_4_bit_field_3_clear             (register_4_bit_field_3_clear             ),
    .o_register_4_bit_field_3                   (register_4_bit_field_3                   ),
    .i_register_5_bit_field_0_clear             (register_5_bit_field_0_clear             ),
    .o_register_5_bit_field_0                   (register_5_bit_field_0                   ),
    .o_register_5_bit_field_1                   (register_5_bit_field_1                   ),
    .i_register_5_bit_field_2_set               (register_5_bit_field_2_set               ),
    .o_register_5_bit_field_2                   (register_5_bit_field_2                   ),
    .o_register_5_bit_field_3                   (register_5_bit_field_3                   ),
    .i_register_5_bit_field_4_valid             (register_5_bit_field_4_valid             ),
    .i_register_5_bit_field_4                   (register_5_bit_field_4[0]                ),
    .o_register_5_bit_field_4                   (register_5_bit_field_4[1]                ),
    .i_register_5_bit_field_5                   (register_5_bit_field_5[0]                ),
    .o_register_5_bit_field_5                   (register_5_bit_field_5[1]                ),
    .i_register_5_bit_field_6_enable            (register_5_bit_field_6_enable            ),
    .o_register_5_bit_field_6                   (register_5_bit_field_6                   ),
    .o_register_5_bit_field_7                   (register_5_bit_field_7                   ),
    .o_register_5_bit_field_8                   (register_5_bit_field_8                   ),
    .i_register_5_bit_field_9_lock              (register_5_bit_field_9_lock              ),
    .o_register_5_bit_field_9                   (register_5_bit_field_9                   ),
    .o_register_5_bit_field_10                  (register_5_bit_field_10                  ),
    .o_register_5_bit_field_11                  (register_5_bit_field_11                  ),
    .i_register_6_bit_field_0_set               (register_6_bit_field_0_set               ),
    .o_register_6_bit_field_0                   (register_6_bit_field_0                   ),
    .i_register_6_bit_field_1_set               (register_6_bit_field_1_set               ),
    .o_register_6_bit_field_1                   (register_6_bit_field_1                   ),
    .o_register_6_bit_field_1_unmasked          (register_6_bit_field_1_unmasked          ),
    .i_register_6_bit_field_3_set               (register_6_bit_field_3_set               ),
    .o_register_6_bit_field_3                   (register_6_bit_field_3                   ),
    .i_register_6_bit_field_4_set               (register_6_bit_field_4_set               ),
    .o_register_6_bit_field_4                   (register_6_bit_field_4                   ),
    .o_register_6_bit_field_4_unmasked          (register_6_bit_field_4_unmasked          ),
    .i_register_6_bit_field_6_clear             (register_6_bit_field_6_clear             ),
    .o_register_6_bit_field_6                   (register_6_bit_field_6                   ),
    .i_register_6_bit_field_7_clear             (register_6_bit_field_7_clear             ),
    .o_register_6_bit_field_7                   (register_6_bit_field_7                   ),
    .o_register_6_bit_field_8                   (register_6_bit_field_8                   ),
    .o_register_6_bit_field_9                   (register_6_bit_field_9                   ),
    .o_register_7_bit_field_0                   (register_7_bit_field_0                   ),
    .o_register_7_bit_field_1                   (register_7_bit_field_1                   ),
    .o_register_7_bit_field_2                   (register_7_bit_field_2                   ),
    .o_register_7_bit_field_3                   (register_7_bit_field_3                   ),
    .i_register_8_bit_field_0_set               (register_8_bit_field_0_set               ),
    .o_register_8_bit_field_0                   (register_8_bit_field_0                   ),
    .i_register_8_bit_field_1_clear             (register_8_bit_field_1_clear             ),
    .o_register_8_bit_field_1                   (register_8_bit_field_1                   ),
    .i_register_8_bit_field_2_set               (register_8_bit_field_2_set               ),
    .o_register_8_bit_field_2                   (register_8_bit_field_2                   ),
    .i_register_8_bit_field_3_clear             (register_8_bit_field_3_clear             ),
    .o_register_8_bit_field_3                   (register_8_bit_field_3                   ),
    .o_register_8_bit_field_4                   (register_8_bit_field_4                   ),
    .o_register_8_bit_field_5                   (register_8_bit_field_5                   ),
    .o_register_9_bit_field_0                   (register_9_bit_field_0                   ),
    .o_register_9_bit_field_0_write_trigger     (),
    .o_register_9_bit_field_0_read_trigger      (),
    .i_register_9_bit_field_1                   (register_9_bit_field_1                   ),
    .o_register_9_bit_field_1_read_trigger      (),
    .o_register_9_bit_field_2                   (register_9_bit_field_2                   ),
    .o_register_9_bit_field_2_write_trigger     (),
    .o_register_9_bit_field_3                   (register_9_bit_field_3[0]                ),
    .i_register_9_bit_field_3                   (register_9_bit_field_3[1]                ),
    .o_register_9_bit_field_3_write_trigger     (),
    .o_register_9_bit_field_3_read_trigger      (),
    .i_register_9_bit_field_4                   (register_9_bit_field_4                   ),
    .o_register_9_bit_field_4_trigger           (),
    .i_register_9_bit_field_5                   (register_9_bit_field_5                   ),
    .o_register_9_bit_field_5_trigger           (),
    .o_register_10_bit_field_0                  (register_10_bit_field_0                  ),
    .o_register_10_bit_field_1                  (register_10_bit_field_1                  ),
    .o_register_10_bit_field_2                  (register_10_bit_field_2                  ),
    .o_register_11_bit_field_0                  (register_11_bit_field_0                  ),
    .o_register_11_bit_field_1                  (register_11_bit_field_1                  ),
    .o_register_12_bit_field_0                  (register_12_bit_field_0                  ),
    .o_register_12_bit_field_1                  (register_12_bit_field_1                  ),
    .o_register_13_bit_field_0                  (register_13_bit_field_0                  ),
    .i_register_13_bit_field_1                  (register_13_bit_field_1                  ),
    .o_register_13_bit_field_2                  (register_13_bit_field_2                  ),
    .o_register_13_bit_field_3                  (register_13_bit_field_3                  ),
    .o_register_13_bit_field_3_write_trigger    (register_13_bit_field_3_write_trigger    ),
    .o_register_13_bit_field_3_read_trigger     (register_13_bit_field_3_read_trigger     ),
    .o_register_13_bit_field_4                  (register_13_bit_field_4                  ),
    .o_register_13_bit_field_5                  (register_13_bit_field_5                  ),
    .o_register_13_bit_field_6                  (register_13_bit_field_6                  ),
    .i_register_13_bit_field_6_hw_clear         (register_13_bit_field_6_hw_clear         ),
    .o_register_13_bit_field_7                  (register_13_bit_field_7                  ),
    .i_register_13_bit_field_7_hw_set           (register_13_bit_field_7_hw_set           ),
    .o_register_13_bit_field_8                  (register_13_bit_field_8                  ),
    .i_register_13_bit_field_8_hw_write_enable  (register_13_bit_field_8_hw_write_enable  ),
    .i_register_13_bit_field_8_hw_write_data    (register_13_bit_field_8_hw_write_data    ),
    .i_register_15_bit_field_0                  (register_15_bit_field_0                  ),
    .i_register_14_bit_field_0_up               (register_0_bit_field_0[0]                ),
    .i_register_14_bit_field_0_down             (register_0_bit_field_1[0]                ),
    .i_register_14_bit_field_0_clear            (register_3_bit_field_3_trigger[0]        ),
    .o_register_14_bit_field_0                  (register_14_bit_field_0                  ),
    .i_register_14_bit_field_1_up               (register_0_bit_field_0[0]                ),
    .i_register_14_bit_field_1_down             (register_0_bit_field_1[0]                ),
    .o_register_14_bit_field_1                  (register_14_bit_field_1                  ),
    .o_register_16_bit_field_0                  (register_16_bit_field_0                  ),
    .o_register_17_bit_field_0                  (register_17_bit_field_0                  ),
`ifdef SV_OR_VERYL
    .register_19_bus_if                         (register_19_bus_if                       )
`else
    .o_register_19_valid                        (register_19_valid                        ),
    .o_register_19_access                       (register_19_access                       ),
    .o_register_19_address                      (register_19_address                      ),
    .o_register_19_data                         (register_19_write_data                   ),
    .o_register_19_strobe                       (register_19_strobe                       ),
    .i_register_19_ready                        (register_19_ready                        ),
    .i_register_19_status                       (register_19_status                       ),
    .i_register_19_data                         (register_19_read_data                    )
`endif
  );

`ifdef RGGEN_VERYL
  axi4lite_bridge u_bridge (
    .i_clk        (clk                ),
    .i_rst_n      (rst_n              ),
    .bus_if       (register_19_bus_if ),
    .axi4lite_if  (axi4lite_if[1]     )
  );
`elsif RGGEN_SYSTEMVERILOG
  rggen_axi4lite_bridge u_bridge (
    .i_clk        (clk                ),
    .i_rst_n      (rst_n              ),
    .bus_if       (register_19_bus_if ),
    .axi4lite_if  (axi4lite_if[1]     )
  );
`else
  rggen_axi4lite_bridge #(
    .ADDRESS_WIDTH  (8  ),
    .BUS_WIDTH      (32 )
  ) u_bridge (
    .i_clk            (clk                        ),
    .i_rst_n          (rst_n                      ),
    .i_bus_valid      (register_19_valid          ),
    .i_bus_access     (register_19_access         ),
    .i_bus_address    (register_19_address        ),
    .i_bus_write_data (register_19_write_data     ),
    .i_bus_strobe     (register_19_strobe         ),
    .o_bus_ready      (register_19_ready          ),
    .o_bus_status     (register_19_status         ),
    .o_bus_read_data  (register_19_read_data      ),
    .o_awvalid        (axi4lite_if[1].awvalid     ),
    .i_awready        (axi4lite_if[1].awready     ),
    .o_awid           (axi4lite_if[1].awid[0]     ),
    .o_awaddr         (axi4lite_if[1].awaddr[7:0] ),
    .o_awprot         (axi4lite_if[1].awprot      ),
    .o_wvalid         (axi4lite_if[1].wvalid      ),
    .i_wready         (axi4lite_if[1].wready      ),
    .o_wdata          (axi4lite_if[1].wdata       ),
    .o_wstrb          (axi4lite_if[1].wstrb       ),
    .i_bvalid         (axi4lite_if[1].bvalid      ),
    .o_bready         (axi4lite_if[1].bready      ),
    .i_bid            (axi4lite_if[1].bid[0]      ),
    .i_bresp          (axi4lite_if[1].bresp       ),
    .o_arvalid        (axi4lite_if[1].arvalid     ),
    .i_arready        (axi4lite_if[1].arready     ),
    .o_araddr         (axi4lite_if[1].araddr[7:0] ),
    .o_arid           (axi4lite_if[1].arid[0]     ),
    .o_arprot         (axi4lite_if[1].arprot      ),
    .i_rvalid         (axi4lite_if[1].rvalid      ),
    .o_rready         (axi4lite_if[1].rready      ),
    .i_rid            (axi4lite_if[1].rid[0]      ),
    .i_rresp          (axi4lite_if[1].rresp       ),
    .i_rdata          (axi4lite_if[1].rdata       )
  );
`endif

  block_1 u_block_1 (
    .i_clk                                                    (clk            ),
    .i_rst_n                                                  (rst_n          ),
`ifdef SV_OR_VERYL
    .axi4lite_if                                              (axi4lite_if[1]                   ),
`else
    .i_awvalid                                                (axi4lite_if[1].awvalid           ),
    .o_awready                                                (axi4lite_if[1].awready           ),
    .i_awid                                                   (axi4lite_if[1].awid[0]           ),
    .i_awaddr                                                 (axi4lite_if[1].awaddr[6:0]       ),
    .i_awprot                                                 (axi4lite_if[1].awprot            ),
    .i_wvalid                                                 (axi4lite_if[1].wvalid            ),
    .o_wready                                                 (axi4lite_if[1].wready            ),
    .i_wdata                                                  (axi4lite_if[1].wdata             ),
    .i_wstrb                                                  (axi4lite_if[1].wstrb             ),
    .o_bvalid                                                 (axi4lite_if[1].bvalid            ),
    .i_bready                                                 (axi4lite_if[1].bready            ),
    .o_bid                                                    (axi4lite_if[1].bid[0]            ),
    .o_bresp                                                  (axi4lite_if[1].bresp             ),
    .i_arvalid                                                (axi4lite_if[1].arvalid           ),
    .o_arready                                                (axi4lite_if[1].arready           ),
    .i_araddr                                                 (axi4lite_if[1].araddr[6:0]       ),
    .i_arid                                                   (axi4lite_if[1].arid[0]           ),
    .i_arprot                                                 (axi4lite_if[1].arprot            ),
    .o_rvalid                                                 (axi4lite_if[1].rvalid            ),
    .i_rready                                                 (axi4lite_if[1].rready            ),
    .o_rid                                                    (axi4lite_if[1].rid[0]            ),
    .o_rresp                                                  (axi4lite_if[1].rresp             ),
    .o_rdata                                                  (axi4lite_if[1].rdata             ),
`endif
    .o_register_file_0_register_0_bit_field_0                 (),
    .o_register_file_0_register_1_bit_field_0                 (),
    .o_register_file_1_register_0_bit_field_0                 (),
    .o_register_file_1_register_1_bit_field_0                 (),
    .o_register_file_2_register_file_0_register_0_bit_field_0 (),
    .o_register_file_2_register_file_0_register_0_bit_field_1 (),
    .o_register_file_2_register_file_0_register_0_bit_field_2 (),
    .o_register_file_2_register_file_0_register_1_bit_field_0 ()
  );

  tvip_axi_if vip_axi_if(clk, rst_n);
  always @* begin
    axi4lite_if[0].awvalid  = vip_axi_if.awvalid;
    vip_axi_if.awready      = axi4lite_if[0].awready;
    axi4lite_if[0].awid     = vip_axi_if.awid;
    axi4lite_if[0].awaddr   = vip_axi_if.awaddr;
    axi4lite_if[0].awprot   = vip_axi_if.awprot;
    axi4lite_if[0].wvalid   = vip_axi_if.wvalid;
    vip_axi_if.wready       = axi4lite_if[0].wready;
    axi4lite_if[0].wdata    = vip_axi_if.wdata;
    axi4lite_if[0].wstrb    = vip_axi_if.wstrb;
    vip_axi_if.bvalid       = axi4lite_if[0].bvalid;
    axi4lite_if[0].bready   = vip_axi_if.bready;
    vip_axi_if.bid          = axi4lite_if[0].bid;
    vip_axi_if.bresp        = tvip_axi_response'(axi4lite_if[0].bresp);
    axi4lite_if[0].arvalid  = vip_axi_if.arvalid;
    vip_axi_if.arready      = axi4lite_if[0].arready;
    axi4lite_if[0].arid     = vip_axi_if.arid;
    axi4lite_if[0].araddr   = vip_axi_if.araddr;
    axi4lite_if[0].arprot   = vip_axi_if.arprot;
    vip_axi_if.rvalid       = axi4lite_if[0].rvalid;
    axi4lite_if[0].rready   = vip_axi_if.rready;
    vip_axi_if.rid          = axi4lite_if[0].rid;
    vip_axi_if.rdata        = axi4lite_if[0].rdata;
    vip_axi_if.rresp        = tvip_axi_response'(axi4lite_if[0].rresp);
  end

  task automatic run_ral_test(uvm_event reset_event, virtual tvip_axi_if axi_vif);
    uvm_factory                 factory;
    tvip_axi_configuration      axi4lite_configuration;
    axi4lite_env_configuration  configuration;

    factory = uvm_factory::get();
    factory.set_type_override_by_type(env_base::type_id::get(), axi4lite_env::type_id::get());

    axi4lite_configuration                = new("axi4lite_configuration");
    axi4lite_configuration.vif            = axi_vif;
    axi4lite_configuration.protocol       = TVIP_AXI4LITE;
    axi4lite_configuration.id_width       = 2;
    axi4lite_configuration.address_width  = 16;
    axi4lite_configuration.data_width     = 32;

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
