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
  import  tvip_apb_pkg::*;
  import  apb_env_pkg::*;

  logic                         clk;
  logic                         rst_n;
`ifdef RGGEN_VERYL
  rggen_rggen_bus_if #(16, 32)  csrbus_if();
`elsif RGGEN_SYSTEMVERILOG
  rggen_bus_if #(16, 32)        csrbus_if();
`else
  logic                         csrbus_valid;
  logic [1:0]                   csrbus_access;
  logic [15:0]                  csrbus_address;
  logic [31:0]                  csrbus_write_data;
  logic [3:0]                   csrbus_strobe;
  logic                         csrbus_ready;
  logic [1:0]                   csrbus_status;
  logic [31:0]                  csrbus_read_data;
`endif
  logic [3:0]                   register_0_bit_field_0;
  logic [3:0]                   register_0_bit_field_1;
  logic                         register_0_bit_field_2;
  logic [1:0]                   register_0_bit_field_3;
  logic [1:0]                   register_0_bit_field_4;
  logic [1:0]                   register_0_bit_field_5;
  logic [1:0]                   register_0_bit_field_6;
  logic                         register_1;
  logic [3:0]                   register_2_bit_field_0;
  logic                         register_2_bit_field_2_valid;
  logic [1:0][3:0]              register_2_bit_field_2;
  logic [1:0][3:0]              register_2_bit_field_3;
  logic [3:0]                   register_3_bit_field_0;
  logic [3:0]                   register_3_bit_field_1;
  logic [3:0]                   register_3_bit_field_2_trigger;
  logic [3:0]                   register_3_bit_field_3_trigger;
  logic [3:0]                   register_4_bit_field_0_set;
  logic [3:0]                   register_4_bit_field_0;
  logic [3:0]                   register_4_bit_field_1_set;
  logic [3:0]                   register_4_bit_field_1;
  logic [3:0]                   register_4_bit_field_1_unmasked;
  logic [3:0]                   register_4_bit_field_3_clear;
  logic [3:0]                   register_4_bit_field_3;
  logic                         register_5_bit_field_0_clear;
  logic [1:0]                   register_5_bit_field_0;
  logic [1:0]                   register_5_bit_field_1;
  logic                         register_5_bit_field_2_set;
  logic [1:0]                   register_5_bit_field_2;
  logic [1:0]                   register_5_bit_field_3;
  logic                         register_5_bit_field_4_valid;
  logic [1:0]                   register_5_bit_field_4[2];
  logic [1:0]                   register_5_bit_field_5[2];
  logic                         register_5_bit_field_6_enable;
  logic [1:0]                   register_5_bit_field_6;
  logic [1:0]                   register_5_bit_field_7;
  logic [1:0]                   register_5_bit_field_8;
  logic                         register_5_bit_field_9_lock;
  logic [1:0]                   register_5_bit_field_9;
  logic [1:0]                   register_5_bit_field_10;
  logic [1:0]                   register_5_bit_field_11;
  logic [3:0]                   register_6_bit_field_0_set;
  logic [3:0]                   register_6_bit_field_0;
  logic [3:0]                   register_6_bit_field_1_set;
  logic [3:0]                   register_6_bit_field_1;
  logic [3:0]                   register_6_bit_field_1_unmasked;
  logic [3:0]                   register_6_bit_field_3_set;
  logic [3:0]                   register_6_bit_field_3;
  logic [3:0]                   register_6_bit_field_4_set;
  logic [3:0]                   register_6_bit_field_4;
  logic [3:0]                   register_6_bit_field_4_unmasked;
  logic [3:0]                   register_6_bit_field_6_clear;
  logic [3:0]                   register_6_bit_field_6;
  logic [3:0]                   register_6_bit_field_7_clear;
  logic [3:0]                   register_6_bit_field_7;
  logic [3:0]                   register_6_bit_field_8;
  logic [3:0]                   register_6_bit_field_9;
  logic [3:0]                   register_7_bit_field_0;
  logic [3:0]                   register_7_bit_field_1;
  logic [3:0]                   register_7_bit_field_2;
  logic [3:0]                   register_7_bit_field_3;
  logic [3:0]                   register_8_bit_field_0_set;
  logic [3:0]                   register_8_bit_field_0;
  logic [3:0]                   register_8_bit_field_1_clear;
  logic [3:0]                   register_8_bit_field_1;
  logic [3:0]                   register_8_bit_field_2_set;
  logic [3:0]                   register_8_bit_field_2;
  logic [3:0]                   register_8_bit_field_3_clear;
  logic [3:0]                   register_8_bit_field_3;
  logic [3:0]                   register_8_bit_field_4;
  logic [3:0]                   register_8_bit_field_5;
  logic [1:0]                   register_9_bit_field_0;
  logic [1:0]                   register_9_bit_field_1;
  logic [1:0]                   register_9_bit_field_2;
  logic [1:0][1:0]              register_9_bit_field_3;
  logic [1:0]                   register_9_bit_field_4;
  logic [1:0]                   register_9_bit_field_5;
  logic [3:0][3:0][1:0]         register_10_bit_field_0;
  logic [3:0][3:0][1:0]         register_10_bit_field_1;
  logic [3:0][3:0][1:0]         register_10_bit_field_2;
  logic [1:0][3:0][3:0][7:0]    register_11_bit_field_0;
  logic [1:0][3:0][3:0][7:0]    register_11_bit_field_1;
  logic                         register_12_bit_field_0;
  logic                         register_12_bit_field_1;
  logic [1:0]                   register_13_bit_field_0;
  logic [1:0]                   register_13_bit_field_1;
  logic [1:0]                   register_13_bit_field_2;
  logic [1:0]                   register_13_bit_field_3;
  logic                         register_13_bit_field_3_write_trigger;
  logic                         register_13_bit_field_3_read_trigger;
  logic [1:0]                   register_13_bit_field_4;
  logic [1:0]                   register_13_bit_field_5;
  logic [1:0]                   register_13_bit_field_6;
  logic [1:0]                   register_13_bit_field_6_hw_clear;
  logic [1:0]                   register_13_bit_field_7;
  logic [1:0]                   register_13_bit_field_7_hw_set;
  logic [1:0]                   register_13_bit_field_8;
  logic                         register_13_bit_field_8_hw_write_enable;
  logic [1:0]                   register_13_bit_field_8_hw_write_data;
  logic                         register_14_bit_field_0;
  logic                         register_15_bit_field_0;
`ifdef RGGEN_VERYL
  rggen_rggen_bus_if #(8, 32)   register_17_bus_if();
`elsif RGGEN_SYSTEMVERILOG
  rggen_bus_if #(8, 32)         register_17_bus_if();
`else
  logic                         register_17_valid;
  logic [1:0]                   register_17_access;
  logic [7:0]                   register_17_address;
  logic [31:0]                  register_17_write_data;
  logic [3:0]                   register_17_strobe;
  logic                         register_17_ready;
  logic [1:0]                   register_17_status;
  logic [31:0]                  register_17_read_data;
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
    register_14_bit_field_0                 = register_0_bit_field_0[0];
  end

  block_0 #(
    .ADDRESS_WIDTH                          (16                                                                                               ),
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
    .i_clk                                      (clk                              ),
    .i_rst_n                                    (rst_n                            ),
`ifdef SV_OR_VERYL
    .csrbus_if                                  (csrbus_if                        ),
`else
    .i_csrbus_valid                             (csrbus_valid                     ),
    .i_csrbus_access                            (csrbus_access                    ),
    .i_csrbus_address                           (csrbus_address                   ),
    .i_csrbus_write_data                        (csrbus_write_data                ),
    .i_csrbus_strobe                            (csrbus_strobe                    ),
    .o_csrbus_ready                             (csrbus_ready                     ),
    .o_csrbus_status                            (csrbus_status                    ),
    .o_csrbus_read_data                         (csrbus_read_data                 ),
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
    .i_register_14_bit_field_0                  (register_14_bit_field_0                  ),
    .o_register_15_bit_field_0                  (register_15_bit_field_0                  ),
`ifdef SV_OR_VERYL
    .register_17_bus_if                         (register_17_bus_if                       )
`else
    .o_register_17_valid                        (register_17_valid                        ),
    .o_register_17_access                       (register_17_access                       ),
    .o_register_17_address                      (register_17_address                      ),
    .o_register_17_data                         (register_17_write_data                   ),
    .o_register_17_strobe                       (register_17_strobe                       ),
    .i_register_17_ready                        (register_17_ready                        ),
    .i_register_17_status                       (register_17_status                       ),
    .i_register_17_data                         (register_17_read_data                    )
`endif
  );

  block_1 u_block_1 (
    .i_clk                                                    (clk                      ),
    .i_rst_n                                                  (rst_n                    ),
`ifdef SV_OR_VERYL
    .csrbus_if                                                (register_17_bus_if       ),
`else
    .i_csrbus_valid                                           (register_17_valid        ),
    .i_csrbus_access                                          (register_17_access       ),
    .i_csrbus_address                                         (register_17_address[6:0] ),
    .i_csrbus_write_data                                      (register_17_write_data   ),
    .i_csrbus_strobe                                          (register_17_strobe       ),
    .o_csrbus_ready                                           (register_17_ready        ),
    .o_csrbus_status                                          (register_17_status       ),
    .o_csrbus_read_data                                       (register_17_read_data    ),
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

  tvip_apb_if vip_apb_if(clk, rst_n);
`ifdef RGGEN_VERYL
  always @* begin
    csrbus_if.valid       = vip_apb_if.penable;
    csrbus_if.address     = vip_apb_if.paddr;
    csrbus_if.write_data  = vip_apb_if.pwdata;
    csrbus_if.strobe      = vip_apb_if.pstrb;
    if (vip_apb_if.pwrite) begin
      csrbus_if.access  = rggen_rggen_rtl_pkg::rggen_access_WRITE;
    end
    else begin
      csrbus_if.access  = rggen_rggen_rtl_pkg::rggen_access_READ;
    end
  end

  always @* begin
    vip_apb_if.pready   = csrbus_if.ready;
    vip_apb_if.pslverr  = csrbus_if.status[1];
    vip_apb_if.prdata   = csrbus_if.read_data;
  end
`elsif RGGEN_SYSTEMVERILOG
  always @* begin
    csrbus_if.valid       = vip_apb_if.penable;
    csrbus_if.address     = vip_apb_if.paddr;
    csrbus_if.write_data  = vip_apb_if.pwdata;
    csrbus_if.strobe      = vip_apb_if.pstrb;
    if (vip_apb_if.pwrite) begin
      csrbus_if.access  = rggen_rtl_pkg::RGGEN_WRITE;
    end
    else begin
      csrbus_if.access  = rggen_rtl_pkg::RGGEN_READ;
    end
  end

  always @* begin
    vip_apb_if.pready   = csrbus_if.ready;
    vip_apb_if.pslverr  = csrbus_if.status[1];
    vip_apb_if.prdata   = csrbus_if.read_data;
  end
`else
always @* begin
    csrbus_valid      = vip_apb_if.penable;
    csrbus_address    = vip_apb_if.paddr;
    csrbus_write_data = vip_apb_if.pwdata;
    csrbus_strobe     = vip_apb_if.pstrb;
    if (vip_apb_if.pwrite) begin
      csrbus_access = 2'b11;
    end
    else begin
      csrbus_access = 2'b10;
    end
  end

  always @* begin
    vip_apb_if.pready   = csrbus_ready;
    vip_apb_if.pslverr  = csrbus_status[1];
    vip_apb_if.prdata   = csrbus_read_data;
  end
`endif

  task automatic run_ral_test(uvm_event reset_event, virtual tvip_apb_if apb_vif);
    uvm_factory             factory;
    tvip_apb_configuration  apb_configuration;
    apb_env_configuration   configuration;

    factory = uvm_factory::get();
    factory.set_type_override_by_type(env_base::type_id::get(), apb_env::type_id::get());

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
