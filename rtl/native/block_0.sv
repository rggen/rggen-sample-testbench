`ifndef rggen_connect_bit_field_if
  `define rggen_connect_bit_field_if(RIF, FIF, LSB, WIDTH) \
  always_comb begin \
    FIF.write_valid           = RIF.write_valid; \
    FIF.read_valid            = RIF.read_valid; \
    FIF.mask                  = RIF.mask[LSB+:WIDTH]; \
    FIF.write_data            = RIF.write_data[LSB+:WIDTH]; \
    RIF.read_data[LSB+:WIDTH] = FIF.read_data; \
    RIF.value[LSB+:WIDTH]     = FIF.value; \
  end
`endif
`ifndef rggen_tie_off_unused_signals
  `define rggen_tie_off_unused_signals(WIDTH, VALID_BITS, RIF) \
  if (1) begin : __g_tie_off \
    genvar  __i; \
    for (__i = 0;__i < WIDTH;++__i) begin : g \
      if ((((VALID_BITS) >> __i) % 2) == 0) begin : g \
        always_comb begin \
          RIF.read_data[__i]  = '0; \
          RIF.value[__i]      = '0; \
        end \
      end \
    end \
  end
`endif
module block_0
  import rggen_rtl_pkg::*;
#(
  parameter int ADDRESS_WIDTH = 8,
  parameter bit PRE_DECODE = 0,
  parameter bit [ADDRESS_WIDTH-1:0] BASE_ADDRESS = '0,
  parameter bit ERROR_STATUS = 0,
  parameter bit [31:0] DEFAULT_READ_DATA = '0,
  parameter bit INSERT_SLICER = 0,
  parameter int STROBE_WIDTH = 4,
  parameter bit USE_READ_STROBE = 0,
  parameter bit [3:0][3:0][1:0] REGISTER_10_BIT_FIELD_1_INITIAL_VALUE = {16{2'h0}},
  parameter int REGISTER_17_STROBE_WIDTH = 4
)(
  input logic i_clk,
  input logic i_rst_n,
  rggen_bus_if.slave csrbus_if,
  output logic [3:0] o_register_0_bit_field_0,
  output logic [3:0] o_register_0_bit_field_1,
  output logic o_register_0_bit_field_2,
  output logic [1:0] o_register_0_bit_field_3,
  output logic [1:0] o_register_0_bit_field_4,
  output logic [1:0] o_register_0_bit_field_5,
  output logic [1:0] o_register_0_bit_field_6,
  input logic [1:0] i_register_0_bit_field_6,
  output logic o_register_1,
  input logic [3:0] i_register_2_bit_field_0,
  input logic i_register_2_bit_field_2_valid,
  input logic [3:0] i_register_2_bit_field_2,
  output logic [3:0] o_register_2_bit_field_2,
  input logic [3:0] i_register_2_bit_field_3,
  output logic [3:0] o_register_2_bit_field_3,
  output logic [3:0] o_register_3_bit_field_0,
  output logic [3:0] o_register_3_bit_field_1,
  output logic [3:0] o_register_3_bit_field_2_trigger,
  output logic [3:0] o_register_3_bit_field_3_trigger,
  input logic [3:0] i_register_4_bit_field_0_set,
  output logic [3:0] o_register_4_bit_field_0,
  input logic [3:0] i_register_4_bit_field_1_set,
  output logic [3:0] o_register_4_bit_field_1,
  output logic [3:0] o_register_4_bit_field_1_unmasked,
  input logic [3:0] i_register_4_bit_field_3_clear,
  output logic [3:0] o_register_4_bit_field_3,
  input logic i_register_5_bit_field_0_clear,
  output logic [1:0] o_register_5_bit_field_0,
  output logic [1:0] o_register_5_bit_field_1,
  input logic i_register_5_bit_field_2_set,
  output logic [1:0] o_register_5_bit_field_2,
  output logic [1:0] o_register_5_bit_field_3,
  input logic i_register_5_bit_field_4_valid,
  input logic [1:0] i_register_5_bit_field_4,
  output logic [1:0] o_register_5_bit_field_4,
  input logic [1:0] i_register_5_bit_field_5,
  output logic [1:0] o_register_5_bit_field_5,
  input logic i_register_5_bit_field_6_enable,
  output logic [1:0] o_register_5_bit_field_6,
  output logic [1:0] o_register_5_bit_field_7,
  output logic [1:0] o_register_5_bit_field_8,
  input logic i_register_5_bit_field_9_lock,
  output logic [1:0] o_register_5_bit_field_9,
  output logic [1:0] o_register_5_bit_field_10,
  output logic [1:0] o_register_5_bit_field_11,
  input logic [3:0] i_register_6_bit_field_0_set,
  output logic [3:0] o_register_6_bit_field_0,
  input logic [3:0] i_register_6_bit_field_1_set,
  output logic [3:0] o_register_6_bit_field_1,
  output logic [3:0] o_register_6_bit_field_1_unmasked,
  input logic [3:0] i_register_6_bit_field_3_set,
  output logic [3:0] o_register_6_bit_field_3,
  input logic [3:0] i_register_6_bit_field_4_set,
  output logic [3:0] o_register_6_bit_field_4,
  output logic [3:0] o_register_6_bit_field_4_unmasked,
  input logic [3:0] i_register_6_bit_field_6_clear,
  output logic [3:0] o_register_6_bit_field_6,
  input logic [3:0] i_register_6_bit_field_7_clear,
  output logic [3:0] o_register_6_bit_field_7,
  output logic [3:0] o_register_6_bit_field_8,
  output logic [3:0] o_register_6_bit_field_9,
  output logic [3:0] o_register_7_bit_field_0,
  output logic [3:0] o_register_7_bit_field_1,
  output logic [3:0] o_register_7_bit_field_2,
  output logic [3:0] o_register_7_bit_field_3,
  input logic [3:0] i_register_8_bit_field_0_set,
  output logic [3:0] o_register_8_bit_field_0,
  input logic [3:0] i_register_8_bit_field_1_clear,
  output logic [3:0] o_register_8_bit_field_1,
  input logic [3:0] i_register_8_bit_field_2_set,
  output logic [3:0] o_register_8_bit_field_2,
  input logic [3:0] i_register_8_bit_field_3_clear,
  output logic [3:0] o_register_8_bit_field_3,
  output logic [3:0] o_register_8_bit_field_4,
  output logic [3:0] o_register_8_bit_field_5,
  output logic [1:0] o_register_9_bit_field_0,
  output logic o_register_9_bit_field_0_write_trigger,
  output logic o_register_9_bit_field_0_read_trigger,
  input logic [1:0] i_register_9_bit_field_1,
  output logic o_register_9_bit_field_1_read_trigger,
  output logic [1:0] o_register_9_bit_field_2,
  output logic o_register_9_bit_field_2_write_trigger,
  output logic [1:0] o_register_9_bit_field_3,
  input logic [1:0] i_register_9_bit_field_3,
  output logic o_register_9_bit_field_3_write_trigger,
  output logic o_register_9_bit_field_3_read_trigger,
  input logic [1:0] i_register_9_bit_field_4,
  output logic [1:0] o_register_9_bit_field_4_trigger,
  input logic [1:0] i_register_9_bit_field_5,
  output logic [1:0] o_register_9_bit_field_5_trigger,
  output logic [3:0][3:0][1:0] o_register_10_bit_field_0,
  output logic [3:0][3:0][1:0] o_register_10_bit_field_1,
  output logic [3:0][3:0][1:0] o_register_10_bit_field_2,
  output logic [1:0][3:0][3:0][7:0] o_register_11_bit_field_0,
  output logic [1:0][3:0][3:0][7:0] o_register_11_bit_field_1,
  output logic o_register_12_bit_field_0,
  output logic o_register_12_bit_field_1,
  output logic [1:0] o_register_13_bit_field_0,
  input logic [1:0] i_register_13_bit_field_1,
  output logic [1:0] o_register_13_bit_field_2,
  output logic [1:0] o_register_13_bit_field_3,
  output logic o_register_13_bit_field_3_write_trigger,
  output logic o_register_13_bit_field_3_read_trigger,
  output logic [1:0] o_register_13_bit_field_4,
  output logic [1:0] o_register_13_bit_field_5,
  output logic [1:0] o_register_13_bit_field_6,
  input logic [1:0] i_register_13_bit_field_6_hw_clear,
  output logic [1:0] o_register_13_bit_field_7,
  input logic [1:0] i_register_13_bit_field_7_hw_set,
  output logic [1:0] o_register_13_bit_field_8,
  input logic i_register_13_bit_field_8_hw_write_enable,
  input logic [1:0] i_register_13_bit_field_8_hw_write_data,
  input logic i_register_14_bit_field_0,
  output logic o_register_15_bit_field_0,
  rggen_bus_if.master register_17_bus_if
);
  rggen_register_if #(8, 32, 64) register_if[27]();
  rggen_native_adapter #(
    .ADDRESS_WIDTH        (ADDRESS_WIDTH),
    .LOCAL_ADDRESS_WIDTH  (8),
    .BUS_WIDTH            (32),
    .STROBE_WIDTH         (STROBE_WIDTH),
    .REGISTERS            (27),
    .PRE_DECODE           (PRE_DECODE),
    .BASE_ADDRESS         (BASE_ADDRESS),
    .BYTE_SIZE            (256),
    .USE_READ_STROBE      (USE_READ_STROBE),
    .ERROR_STATUS         (ERROR_STATUS),
    .DEFAULT_READ_DATA    (DEFAULT_READ_DATA),
    .INSERT_SLICER        (INSERT_SLICER)
  ) u_adapter (
    .i_clk        (i_clk),
    .i_rst_n      (i_rst_n),
    .csrbus_if    (csrbus_if),
    .register_if  (register_if)
  );
  generate if (1) begin : g_register_0
    rggen_bit_field_if #(32) bit_field_if();
    `rggen_tie_off_unused_signals(32, 32'h0001ffff, bit_field_if)
    rggen_default_register #(
      .READABLE       (1),
      .WRITABLE       (1),
      .ADDRESS_WIDTH  (8),
      .OFFSET_ADDRESS (8'h00),
      .BUS_WIDTH      (32),
      .DATA_WIDTH     (32),
      .VALUE_WIDTH    (64)
    ) u_register (
      .i_clk        (i_clk),
      .i_rst_n      (i_rst_n),
      .register_if  (register_if[0]),
      .bit_field_if (bit_field_if)
    );
    if (1) begin : g_bit_field_0
      localparam bit [3:0] INITIAL_VALUE = 4'h0;
      rggen_bit_field_if #(4) bit_field_sub_if();
      `rggen_connect_bit_field_if(bit_field_if, bit_field_sub_if, 0, 4)
      rggen_bit_field #(
        .WIDTH          (4),
        .INITIAL_VALUE  (INITIAL_VALUE),
        .SW_WRITE_ONCE  (0),
        .TRIGGER        (0)
      ) u_bit_field (
        .i_clk              (i_clk),
        .i_rst_n            (i_rst_n),
        .bit_field_if       (bit_field_sub_if),
        .o_write_trigger    (),
        .o_read_trigger     (),
        .i_sw_write_enable  ('1),
        .i_hw_write_enable  ('0),
        .i_hw_write_data    ('0),
        .i_hw_set           ('0),
        .i_hw_clear         ('0),
        .i_value            ('0),
        .i_mask             ('1),
        .o_value            (o_register_0_bit_field_0),
        .o_value_unmasked   ()
      );
    end
    if (1) begin : g_bit_field_1
      localparam bit [3:0] INITIAL_VALUE = 4'h0;
      rggen_bit_field_if #(4) bit_field_sub_if();
      `rggen_connect_bit_field_if(bit_field_if, bit_field_sub_if, 4, 4)
      rggen_bit_field #(
        .WIDTH          (4),
        .INITIAL_VALUE  (INITIAL_VALUE),
        .SW_WRITE_ONCE  (0),
        .TRIGGER        (0)
      ) u_bit_field (
        .i_clk              (i_clk),
        .i_rst_n            (i_rst_n),
        .bit_field_if       (bit_field_sub_if),
        .o_write_trigger    (),
        .o_read_trigger     (),
        .i_sw_write_enable  ('1),
        .i_hw_write_enable  ('0),
        .i_hw_write_data    ('0),
        .i_hw_set           ('0),
        .i_hw_clear         ('0),
        .i_value            ('0),
        .i_mask             ('1),
        .o_value            (o_register_0_bit_field_1),
        .o_value_unmasked   ()
      );
    end
    if (1) begin : g_bit_field_2
      localparam bit INITIAL_VALUE = 1'h0;
      rggen_bit_field_if #(1) bit_field_sub_if();
      `rggen_connect_bit_field_if(bit_field_if, bit_field_sub_if, 8, 1)
      rggen_bit_field #(
        .WIDTH          (1),
        .INITIAL_VALUE  (INITIAL_VALUE),
        .SW_WRITE_ONCE  (0),
        .TRIGGER        (0)
      ) u_bit_field (
        .i_clk              (i_clk),
        .i_rst_n            (i_rst_n),
        .bit_field_if       (bit_field_sub_if),
        .o_write_trigger    (),
        .o_read_trigger     (),
        .i_sw_write_enable  ('1),
        .i_hw_write_enable  ('0),
        .i_hw_write_data    ('0),
        .i_hw_set           ('0),
        .i_hw_clear         ('0),
        .i_value            ('0),
        .i_mask             ('1),
        .o_value            (o_register_0_bit_field_2),
        .o_value_unmasked   ()
      );
    end
    if (1) begin : g_bit_field_3
      localparam bit [1:0] INITIAL_VALUE = 2'h0;
      rggen_bit_field_if #(2) bit_field_sub_if();
      `rggen_connect_bit_field_if(bit_field_if, bit_field_sub_if, 9, 2)
      rggen_bit_field #(
        .WIDTH          (2),
        .INITIAL_VALUE  (INITIAL_VALUE),
        .SW_WRITE_ONCE  (1),
        .TRIGGER        (0)
      ) u_bit_field (
        .i_clk              (i_clk),
        .i_rst_n            (i_rst_n),
        .bit_field_if       (bit_field_sub_if),
        .o_write_trigger    (),
        .o_read_trigger     (),
        .i_sw_write_enable  ('1),
        .i_hw_write_enable  ('0),
        .i_hw_write_data    ('0),
        .i_hw_set           ('0),
        .i_hw_clear         ('0),
        .i_value            ('0),
        .i_mask             ('1),
        .o_value            (o_register_0_bit_field_3),
        .o_value_unmasked   ()
      );
    end
    if (1) begin : g_bit_field_4
      localparam bit [1:0] INITIAL_VALUE = 2'h0;
      rggen_bit_field_if #(2) bit_field_sub_if();
      `rggen_connect_bit_field_if(bit_field_if, bit_field_sub_if, 11, 2)
      rggen_bit_field #(
        .WIDTH          (2),
        .INITIAL_VALUE  (INITIAL_VALUE),
        .SW_READ_ACTION (RGGEN_READ_CLEAR)
      ) u_bit_field (
        .i_clk              (i_clk),
        .i_rst_n            (i_rst_n),
        .bit_field_if       (bit_field_sub_if),
        .o_write_trigger    (),
        .o_read_trigger     (),
        .i_sw_write_enable  ('1),
        .i_hw_write_enable  ('0),
        .i_hw_write_data    ('0),
        .i_hw_set           ('0),
        .i_hw_clear         ('0),
        .i_value            ('0),
        .i_mask             ('1),
        .o_value            (o_register_0_bit_field_4),
        .o_value_unmasked   ()
      );
    end
    if (1) begin : g_bit_field_5
      localparam bit [1:0] INITIAL_VALUE = 2'h0;
      rggen_bit_field_if #(2) bit_field_sub_if();
      `rggen_connect_bit_field_if(bit_field_if, bit_field_sub_if, 13, 2)
      rggen_bit_field #(
        .WIDTH          (2),
        .INITIAL_VALUE  (INITIAL_VALUE),
        .SW_READ_ACTION (RGGEN_READ_SET)
      ) u_bit_field (
        .i_clk              (i_clk),
        .i_rst_n            (i_rst_n),
        .bit_field_if       (bit_field_sub_if),
        .o_write_trigger    (),
        .o_read_trigger     (),
        .i_sw_write_enable  ('1),
        .i_hw_write_enable  ('0),
        .i_hw_write_data    ('0),
        .i_hw_set           ('0),
        .i_hw_clear         ('0),
        .i_value            ('0),
        .i_mask             ('1),
        .o_value            (o_register_0_bit_field_5),
        .o_value_unmasked   ()
      );
    end
    if (1) begin : g_bit_field_6
      localparam bit [1:0] INITIAL_VALUE = 2'h0;
      rggen_bit_field_if #(2) bit_field_sub_if();
      `rggen_connect_bit_field_if(bit_field_if, bit_field_sub_if, 15, 2)
      rggen_bit_field #(
        .WIDTH              (2),
        .INITIAL_VALUE      (INITIAL_VALUE),
        .EXTERNAL_READ_DATA (1),
        .TRIGGER            (0)
      ) u_bit_field (
        .i_clk              (i_clk),
        .i_rst_n            (i_rst_n),
        .bit_field_if       (bit_field_sub_if),
        .o_write_trigger    (),
        .o_read_trigger     (),
        .i_sw_write_enable  ('1),
        .i_hw_write_enable  ('0),
        .i_hw_write_data    ('0),
        .i_hw_set           ('0),
        .i_hw_clear         ('0),
        .i_value            (i_register_0_bit_field_6),
        .i_mask             ('1),
        .o_value            (o_register_0_bit_field_6),
        .o_value_unmasked   ()
      );
    end
  end endgenerate
  generate if (1) begin : g_register_1
    rggen_bit_field_if #(32) bit_field_if();
    `rggen_tie_off_unused_signals(32, 32'h00000001, bit_field_if)
    rggen_default_register #(
      .READABLE       (1),
      .WRITABLE       (1),
      .ADDRESS_WIDTH  (8),
      .OFFSET_ADDRESS (8'h04),
      .BUS_WIDTH      (32),
      .DATA_WIDTH     (32),
      .VALUE_WIDTH    (64)
    ) u_register (
      .i_clk        (i_clk),
      .i_rst_n      (i_rst_n),
      .register_if  (register_if[1]),
      .bit_field_if (bit_field_if)
    );
    if (1) begin : g_register_1
      localparam bit INITIAL_VALUE = 1'h0;
      rggen_bit_field_if #(1) bit_field_sub_if();
      `rggen_connect_bit_field_if(bit_field_if, bit_field_sub_if, 0, 1)
      rggen_bit_field #(
        .WIDTH          (1),
        .INITIAL_VALUE  (INITIAL_VALUE),
        .SW_WRITE_ONCE  (0),
        .TRIGGER        (0)
      ) u_bit_field (
        .i_clk              (i_clk),
        .i_rst_n            (i_rst_n),
        .bit_field_if       (bit_field_sub_if),
        .o_write_trigger    (),
        .o_read_trigger     (),
        .i_sw_write_enable  ('1),
        .i_hw_write_enable  ('0),
        .i_hw_write_data    ('0),
        .i_hw_set           ('0),
        .i_hw_clear         ('0),
        .i_value            ('0),
        .i_mask             ('1),
        .o_value            (o_register_1),
        .o_value_unmasked   ()
      );
    end
  end endgenerate
  generate if (1) begin : g_register_2
    rggen_bit_field_if #(32) bit_field_if();
    `rggen_tie_off_unused_signals(32, 32'h00ffff0f, bit_field_if)
    rggen_default_register #(
      .READABLE       (1),
      .WRITABLE       (0),
      .ADDRESS_WIDTH  (8),
      .OFFSET_ADDRESS (8'h08),
      .BUS_WIDTH      (32),
      .DATA_WIDTH     (32),
      .VALUE_WIDTH    (64)
    ) u_register (
      .i_clk        (i_clk),
      .i_rst_n      (i_rst_n),
      .register_if  (register_if[2]),
      .bit_field_if (bit_field_if)
    );
    if (1) begin : g_bit_field_0
      rggen_bit_field_if #(4) bit_field_sub_if();
      `rggen_connect_bit_field_if(bit_field_if, bit_field_sub_if, 0, 4)
      rggen_bit_field #(
        .WIDTH              (4),
        .STORAGE            (0),
        .EXTERNAL_READ_DATA (1),
        .TRIGGER            (0)
      ) u_bit_field (
        .i_clk              (i_clk),
        .i_rst_n            (i_rst_n),
        .bit_field_if       (bit_field_sub_if),
        .o_write_trigger    (),
        .o_read_trigger     (),
        .i_sw_write_enable  ('0),
        .i_hw_write_enable  ('0),
        .i_hw_write_data    ('0),
        .i_hw_set           ('0),
        .i_hw_clear         ('0),
        .i_value            (i_register_2_bit_field_0),
        .i_mask             ('1),
        .o_value            (),
        .o_value_unmasked   ()
      );
    end
    if (1) begin : g_bit_field_1
      localparam bit [7:0] INITIAL_VALUE = 8'hab;
      rggen_bit_field_if #(8) bit_field_sub_if();
      `rggen_connect_bit_field_if(bit_field_if, bit_field_sub_if, 8, 8)
      rggen_bit_field #(
        .WIDTH              (8),
        .STORAGE            (0),
        .EXTERNAL_READ_DATA (1)
      ) u_bit_field (
        .i_clk              ('0),
        .i_rst_n            ('0),
        .bit_field_if       (bit_field_sub_if),
        .o_write_trigger    (),
        .o_read_trigger     (),
        .i_sw_write_enable  ('0),
        .i_hw_write_enable  ('0),
        .i_hw_write_data    ('0),
        .i_hw_set           ('0),
        .i_hw_clear         ('0),
        .i_value            (INITIAL_VALUE),
        .i_mask             ('1),
        .o_value            (),
        .o_value_unmasked   ()
      );
    end
    if (1) begin : g_bit_field_2
      localparam bit [3:0] INITIAL_VALUE = 4'h0;
      rggen_bit_field_if #(4) bit_field_sub_if();
      `rggen_connect_bit_field_if(bit_field_if, bit_field_sub_if, 16, 4)
      rggen_bit_field #(
        .WIDTH            (4),
        .INITIAL_VALUE    (INITIAL_VALUE),
        .SW_WRITE_ACTION  (RGGEN_WRITE_NONE),
        .HW_ACCESS        (3'b001)
      ) u_bit_field (
        .i_clk              (i_clk),
        .i_rst_n            (i_rst_n),
        .bit_field_if       (bit_field_sub_if),
        .o_write_trigger    (),
        .o_read_trigger     (),
        .i_sw_write_enable  ('1),
        .i_hw_write_enable  (i_register_2_bit_field_2_valid),
        .i_hw_write_data    (i_register_2_bit_field_2),
        .i_hw_set           ('0),
        .i_hw_clear         ('0),
        .i_value            ('0),
        .i_mask             ('1),
        .o_value            (o_register_2_bit_field_2),
        .o_value_unmasked   ()
      );
    end
    if (1) begin : g_bit_field_3
      localparam bit [3:0] INITIAL_VALUE = 4'h0;
      rggen_bit_field_if #(4) bit_field_sub_if();
      `rggen_connect_bit_field_if(bit_field_if, bit_field_sub_if, 20, 4)
      rggen_bit_field #(
        .WIDTH            (4),
        .INITIAL_VALUE    (INITIAL_VALUE),
        .SW_WRITE_ACTION  (RGGEN_WRITE_NONE),
        .HW_ACCESS        (3'b001)
      ) u_bit_field (
        .i_clk              (i_clk),
        .i_rst_n            (i_rst_n),
        .bit_field_if       (bit_field_sub_if),
        .o_write_trigger    (),
        .o_read_trigger     (),
        .i_sw_write_enable  ('1),
        .i_hw_write_enable  (register_if[3].value[16+:1]),
        .i_hw_write_data    (i_register_2_bit_field_3),
        .i_hw_set           ('0),
        .i_hw_clear         ('0),
        .i_value            ('0),
        .i_mask             ('1),
        .o_value            (o_register_2_bit_field_3),
        .o_value_unmasked   ()
      );
    end
  end endgenerate
  generate if (1) begin : g_register_3
    rggen_bit_field_if #(32) bit_field_if();
    `rggen_tie_off_unused_signals(32, 32'h000f0fff, bit_field_if)
    rggen_default_register #(
      .READABLE       (0),
      .WRITABLE       (1),
      .ADDRESS_WIDTH  (8),
      .OFFSET_ADDRESS (8'h08),
      .BUS_WIDTH      (32),
      .DATA_WIDTH     (32),
      .VALUE_WIDTH    (64)
    ) u_register (
      .i_clk        (i_clk),
      .i_rst_n      (i_rst_n),
      .register_if  (register_if[3]),
      .bit_field_if (bit_field_if)
    );
    if (1) begin : g_bit_field_0
      localparam bit [3:0] INITIAL_VALUE = 4'h0;
      rggen_bit_field_if #(4) bit_field_sub_if();
      `rggen_connect_bit_field_if(bit_field_if, bit_field_sub_if, 0, 4)
      rggen_bit_field #(
        .WIDTH          (4),
        .INITIAL_VALUE  (INITIAL_VALUE),
        .SW_READ_ACTION (RGGEN_READ_NONE),
        .SW_WRITE_ONCE  (0),
        .TRIGGER        (0)
      ) u_bit_field (
        .i_clk              (i_clk),
        .i_rst_n            (i_rst_n),
        .bit_field_if       (bit_field_sub_if),
        .o_write_trigger    (),
        .o_read_trigger     (),
        .i_sw_write_enable  ('1),
        .i_hw_write_enable  ('0),
        .i_hw_write_data    ('0),
        .i_hw_set           ('0),
        .i_hw_clear         ('0),
        .i_value            ('0),
        .i_mask             ('1),
        .o_value            (o_register_3_bit_field_0),
        .o_value_unmasked   ()
      );
    end
    if (1) begin : g_bit_field_1
      localparam bit [3:0] INITIAL_VALUE = 4'h0;
      rggen_bit_field_if #(4) bit_field_sub_if();
      `rggen_connect_bit_field_if(bit_field_if, bit_field_sub_if, 4, 4)
      rggen_bit_field #(
        .WIDTH          (4),
        .INITIAL_VALUE  (INITIAL_VALUE),
        .SW_READ_ACTION (RGGEN_READ_NONE),
        .SW_WRITE_ONCE  (1),
        .TRIGGER        (0)
      ) u_bit_field (
        .i_clk              (i_clk),
        .i_rst_n            (i_rst_n),
        .bit_field_if       (bit_field_sub_if),
        .o_write_trigger    (),
        .o_read_trigger     (),
        .i_sw_write_enable  ('1),
        .i_hw_write_enable  ('0),
        .i_hw_write_data    ('0),
        .i_hw_set           ('0),
        .i_hw_clear         ('0),
        .i_value            ('0),
        .i_mask             ('1),
        .o_value            (o_register_3_bit_field_1),
        .o_value_unmasked   ()
      );
    end
    if (1) begin : g_bit_field_2
      rggen_bit_field_if #(4) bit_field_sub_if();
      `rggen_connect_bit_field_if(bit_field_if, bit_field_sub_if, 8, 4)
      rggen_bit_field_w01trg #(
        .TRIGGER_VALUE  (1'b0),
        .WIDTH          (4)
      ) u_bit_field (
        .i_clk        (i_clk),
        .i_rst_n      (i_rst_n),
        .bit_field_if (bit_field_sub_if),
        .i_value      ('0),
        .o_trigger    (o_register_3_bit_field_2_trigger)
      );
    end
    if (1) begin : g_bit_field_3
      rggen_bit_field_if #(4) bit_field_sub_if();
      `rggen_connect_bit_field_if(bit_field_if, bit_field_sub_if, 16, 4)
      rggen_bit_field_w01trg #(
        .TRIGGER_VALUE  (1'b1),
        .WIDTH          (4)
      ) u_bit_field (
        .i_clk        (i_clk),
        .i_rst_n      (i_rst_n),
        .bit_field_if (bit_field_sub_if),
        .i_value      ('0),
        .o_trigger    (o_register_3_bit_field_3_trigger)
      );
    end
  end endgenerate
  generate if (1) begin : g_register_4
    rggen_bit_field_if #(32) bit_field_if();
    `rggen_tie_off_unused_signals(32, 32'h000fff0f, bit_field_if)
    rggen_default_register #(
      .READABLE       (1),
      .WRITABLE       (0),
      .ADDRESS_WIDTH  (8),
      .OFFSET_ADDRESS (8'h0c),
      .BUS_WIDTH      (32),
      .DATA_WIDTH     (32),
      .VALUE_WIDTH    (64)
    ) u_register (
      .i_clk        (i_clk),
      .i_rst_n      (i_rst_n),
      .register_if  (register_if[4]),
      .bit_field_if (bit_field_if)
    );
    if (1) begin : g_bit_field_0
      localparam bit [3:0] INITIAL_VALUE = 4'h0;
      rggen_bit_field_if #(4) bit_field_sub_if();
      `rggen_connect_bit_field_if(bit_field_if, bit_field_sub_if, 0, 4)
      rggen_bit_field #(
        .WIDTH            (4),
        .INITIAL_VALUE    (INITIAL_VALUE),
        .SW_READ_ACTION   (RGGEN_READ_CLEAR),
        .SW_WRITE_ACTION  (RGGEN_WRITE_NONE),
        .HW_ACCESS        (3'b010),
        .EXTERNAL_MASK    (0)
      ) u_bit_field (
        .i_clk              (i_clk),
        .i_rst_n            (i_rst_n),
        .bit_field_if       (bit_field_sub_if),
        .o_write_trigger    (),
        .o_read_trigger     (),
        .i_sw_write_enable  ('1),
        .i_hw_write_enable  ('0),
        .i_hw_write_data    ('0),
        .i_hw_set           (i_register_4_bit_field_0_set),
        .i_hw_clear         ('0),
        .i_value            ('0),
        .i_mask             ('1),
        .o_value            (o_register_4_bit_field_0),
        .o_value_unmasked   ()
      );
    end
    if (1) begin : g_bit_field_1
      localparam bit [3:0] INITIAL_VALUE = 4'h0;
      rggen_bit_field_if #(4) bit_field_sub_if();
      `rggen_connect_bit_field_if(bit_field_if, bit_field_sub_if, 8, 4)
      rggen_bit_field #(
        .WIDTH            (4),
        .INITIAL_VALUE    (INITIAL_VALUE),
        .SW_READ_ACTION   (RGGEN_READ_CLEAR),
        .SW_WRITE_ACTION  (RGGEN_WRITE_NONE),
        .HW_ACCESS        (3'b010),
        .EXTERNAL_MASK    (1)
      ) u_bit_field (
        .i_clk              (i_clk),
        .i_rst_n            (i_rst_n),
        .bit_field_if       (bit_field_sub_if),
        .o_write_trigger    (),
        .o_read_trigger     (),
        .i_sw_write_enable  ('1),
        .i_hw_write_enable  ('0),
        .i_hw_write_data    ('0),
        .i_hw_set           (i_register_4_bit_field_1_set),
        .i_hw_clear         ('0),
        .i_value            ('0),
        .i_mask             (register_if[0].value[0+:4]),
        .o_value            (o_register_4_bit_field_1),
        .o_value_unmasked   (o_register_4_bit_field_1_unmasked)
      );
    end
    if (1) begin : g_bit_field_2
      rggen_bit_field_if #(4) bit_field_sub_if();
      `rggen_connect_bit_field_if(bit_field_if, bit_field_sub_if, 12, 4)
      rggen_bit_field #(
        .WIDTH              (4),
        .STORAGE            (0),
        .EXTERNAL_READ_DATA (1),
        .TRIGGER            (0)
      ) u_bit_field (
        .i_clk              (i_clk),
        .i_rst_n            (i_rst_n),
        .bit_field_if       (bit_field_sub_if),
        .o_write_trigger    (),
        .o_read_trigger     (),
        .i_sw_write_enable  ('0),
        .i_hw_write_enable  ('0),
        .i_hw_write_data    ('0),
        .i_hw_set           ('0),
        .i_hw_clear         ('0),
        .i_value            (register_if[4].value[8+:4]),
        .i_mask             ('1),
        .o_value            (),
        .o_value_unmasked   ()
      );
    end
    if (1) begin : g_bit_field_3
      localparam bit [3:0] INITIAL_VALUE = 4'h0;
      rggen_bit_field_if #(4) bit_field_sub_if();
      `rggen_connect_bit_field_if(bit_field_if, bit_field_sub_if, 16, 4)
      rggen_bit_field #(
        .WIDTH            (4),
        .INITIAL_VALUE    (INITIAL_VALUE),
        .SW_READ_ACTION   (RGGEN_READ_SET),
        .SW_WRITE_ACTION  (RGGEN_WRITE_NONE),
        .HW_ACCESS        (3'b100)
      ) u_bit_field (
        .i_clk              (i_clk),
        .i_rst_n            (i_rst_n),
        .bit_field_if       (bit_field_sub_if),
        .o_write_trigger    (),
        .o_read_trigger     (),
        .i_sw_write_enable  ('1),
        .i_hw_write_enable  ('0),
        .i_hw_write_data    ('0),
        .i_hw_set           ('0),
        .i_hw_clear         (i_register_4_bit_field_3_clear),
        .i_value            ('0),
        .i_mask             ('1),
        .o_value            (o_register_4_bit_field_3),
        .o_value_unmasked   ()
      );
    end
  end endgenerate
  generate if (1) begin : g_register_5
    rggen_bit_field_if #(32) bit_field_if();
    `rggen_tie_off_unused_signals(32, 32'h03f3ffff, bit_field_if)
    rggen_default_register #(
      .READABLE       (1),
      .WRITABLE       (1),
      .ADDRESS_WIDTH  (8),
      .OFFSET_ADDRESS (8'h10),
      .BUS_WIDTH      (32),
      .DATA_WIDTH     (32),
      .VALUE_WIDTH    (64)
    ) u_register (
      .i_clk        (i_clk),
      .i_rst_n      (i_rst_n),
      .register_if  (register_if[5]),
      .bit_field_if (bit_field_if)
    );
    if (1) begin : g_bit_field_0
      localparam bit [1:0] INITIAL_VALUE = 2'h0;
      rggen_bit_field_if #(2) bit_field_sub_if();
      `rggen_connect_bit_field_if(bit_field_if, bit_field_sub_if, 0, 2)
      rggen_bit_field #(
        .WIDTH          (2),
        .INITIAL_VALUE  (INITIAL_VALUE),
        .HW_ACCESS      (3'b100),
        .HW_CLEAR_WIDTH (1)
      ) u_bit_field (
        .i_clk              (i_clk),
        .i_rst_n            (i_rst_n),
        .bit_field_if       (bit_field_sub_if),
        .o_write_trigger    (),
        .o_read_trigger     (),
        .i_sw_write_enable  ('1),
        .i_hw_write_enable  ('0),
        .i_hw_write_data    ('0),
        .i_hw_set           ('0),
        .i_hw_clear         (i_register_5_bit_field_0_clear),
        .i_value            ('0),
        .i_mask             ('1),
        .o_value            (o_register_5_bit_field_0),
        .o_value_unmasked   ()
      );
    end
    if (1) begin : g_bit_field_1
      localparam bit [1:0] INITIAL_VALUE = 2'h0;
      rggen_bit_field_if #(2) bit_field_sub_if();
      `rggen_connect_bit_field_if(bit_field_if, bit_field_sub_if, 2, 2)
      rggen_bit_field #(
        .WIDTH          (2),
        .INITIAL_VALUE  (INITIAL_VALUE),
        .HW_ACCESS      (3'b100),
        .HW_CLEAR_WIDTH (1)
      ) u_bit_field (
        .i_clk              (i_clk),
        .i_rst_n            (i_rst_n),
        .bit_field_if       (bit_field_sub_if),
        .o_write_trigger    (),
        .o_read_trigger     (),
        .i_sw_write_enable  ('1),
        .i_hw_write_enable  ('0),
        .i_hw_write_data    ('0),
        .i_hw_set           ('0),
        .i_hw_clear         (register_if[3].value[8+:1]),
        .i_value            ('0),
        .i_mask             ('1),
        .o_value            (o_register_5_bit_field_1),
        .o_value_unmasked   ()
      );
    end
    if (1) begin : g_bit_field_2
      localparam bit [1:0] INITIAL_VALUE = 2'h0;
      rggen_bit_field_if #(2) bit_field_sub_if();
      `rggen_connect_bit_field_if(bit_field_if, bit_field_sub_if, 4, 2)
      rggen_bit_field #(
        .WIDTH          (2),
        .INITIAL_VALUE  (INITIAL_VALUE),
        .HW_ACCESS      (3'b010),
        .HW_SET_WIDTH   (1)
      ) u_bit_field (
        .i_clk              (i_clk),
        .i_rst_n            (i_rst_n),
        .bit_field_if       (bit_field_sub_if),
        .o_write_trigger    (),
        .o_read_trigger     (),
        .i_sw_write_enable  ('1),
        .i_hw_write_enable  ('0),
        .i_hw_write_data    ('0),
        .i_hw_set           (i_register_5_bit_field_2_set),
        .i_hw_clear         ('0),
        .i_value            ('0),
        .i_mask             ('1),
        .o_value            (o_register_5_bit_field_2),
        .o_value_unmasked   ()
      );
    end
    if (1) begin : g_bit_field_3
      localparam bit [1:0] INITIAL_VALUE = 2'h0;
      rggen_bit_field_if #(2) bit_field_sub_if();
      `rggen_connect_bit_field_if(bit_field_if, bit_field_sub_if, 6, 2)
      rggen_bit_field #(
        .WIDTH          (2),
        .INITIAL_VALUE  (INITIAL_VALUE),
        .HW_ACCESS      (3'b010),
        .HW_SET_WIDTH   (1)
      ) u_bit_field (
        .i_clk              (i_clk),
        .i_rst_n            (i_rst_n),
        .bit_field_if       (bit_field_sub_if),
        .o_write_trigger    (),
        .o_read_trigger     (),
        .i_sw_write_enable  ('1),
        .i_hw_write_enable  ('0),
        .i_hw_write_data    ('0),
        .i_hw_set           (register_if[3].value[8+:1]),
        .i_hw_clear         ('0),
        .i_value            ('0),
        .i_mask             ('1),
        .o_value            (o_register_5_bit_field_3),
        .o_value_unmasked   ()
      );
    end
    if (1) begin : g_bit_field_4
      localparam bit [1:0] INITIAL_VALUE = 2'h0;
      rggen_bit_field_if #(2) bit_field_sub_if();
      `rggen_connect_bit_field_if(bit_field_if, bit_field_sub_if, 8, 2)
      rggen_bit_field #(
        .WIDTH          (2),
        .INITIAL_VALUE  (INITIAL_VALUE),
        .HW_ACCESS      (3'b001)
      ) u_bit_field (
        .i_clk              (i_clk),
        .i_rst_n            (i_rst_n),
        .bit_field_if       (bit_field_sub_if),
        .o_write_trigger    (),
        .o_read_trigger     (),
        .i_sw_write_enable  ('1),
        .i_hw_write_enable  (i_register_5_bit_field_4_valid),
        .i_hw_write_data    (i_register_5_bit_field_4),
        .i_hw_set           ('0),
        .i_hw_clear         ('0),
        .i_value            ('0),
        .i_mask             ('1),
        .o_value            (o_register_5_bit_field_4),
        .o_value_unmasked   ()
      );
    end
    if (1) begin : g_bit_field_5
      localparam bit [1:0] INITIAL_VALUE = 2'h0;
      rggen_bit_field_if #(2) bit_field_sub_if();
      `rggen_connect_bit_field_if(bit_field_if, bit_field_sub_if, 10, 2)
      rggen_bit_field #(
        .WIDTH          (2),
        .INITIAL_VALUE  (INITIAL_VALUE),
        .HW_ACCESS      (3'b001)
      ) u_bit_field (
        .i_clk              (i_clk),
        .i_rst_n            (i_rst_n),
        .bit_field_if       (bit_field_sub_if),
        .o_write_trigger    (),
        .o_read_trigger     (),
        .i_sw_write_enable  ('1),
        .i_hw_write_enable  (register_if[3].value[16+:1]),
        .i_hw_write_data    (i_register_5_bit_field_5),
        .i_hw_set           ('0),
        .i_hw_clear         ('0),
        .i_value            ('0),
        .i_mask             ('1),
        .o_value            (o_register_5_bit_field_5),
        .o_value_unmasked   ()
      );
    end
    if (1) begin : g_bit_field_6
      localparam bit [1:0] INITIAL_VALUE = 2'h0;
      rggen_bit_field_if #(2) bit_field_sub_if();
      `rggen_connect_bit_field_if(bit_field_if, bit_field_sub_if, 12, 2)
      rggen_bit_field #(
        .WIDTH                    (2),
        .INITIAL_VALUE            (INITIAL_VALUE),
        .SW_WRITE_CONTROL         (1),
        .SW_WRITE_ENABLE_POLARITY (RGGEN_ACTIVE_HIGH)
      ) u_bit_field (
        .i_clk              (i_clk),
        .i_rst_n            (i_rst_n),
        .bit_field_if       (bit_field_sub_if),
        .o_write_trigger    (),
        .o_read_trigger     (),
        .i_sw_write_enable  (i_register_5_bit_field_6_enable),
        .i_hw_write_enable  ('0),
        .i_hw_write_data    ('0),
        .i_hw_set           ('0),
        .i_hw_clear         ('0),
        .i_value            ('0),
        .i_mask             ('1),
        .o_value            (o_register_5_bit_field_6),
        .o_value_unmasked   ()
      );
    end
    if (1) begin : g_bit_field_7
      localparam bit [1:0] INITIAL_VALUE = 2'h0;
      rggen_bit_field_if #(2) bit_field_sub_if();
      `rggen_connect_bit_field_if(bit_field_if, bit_field_sub_if, 14, 2)
      rggen_bit_field #(
        .WIDTH                    (2),
        .INITIAL_VALUE            (INITIAL_VALUE),
        .SW_WRITE_CONTROL         (1),
        .SW_WRITE_ENABLE_POLARITY (RGGEN_ACTIVE_HIGH)
      ) u_bit_field (
        .i_clk              (i_clk),
        .i_rst_n            (i_rst_n),
        .bit_field_if       (bit_field_sub_if),
        .o_write_trigger    (),
        .o_read_trigger     (),
        .i_sw_write_enable  (register_if[0].value[8+:1]),
        .i_hw_write_enable  ('0),
        .i_hw_write_data    ('0),
        .i_hw_set           ('0),
        .i_hw_clear         ('0),
        .i_value            ('0),
        .i_mask             ('1),
        .o_value            (o_register_5_bit_field_7),
        .o_value_unmasked   ()
      );
    end
    if (1) begin : g_bit_field_8
      localparam bit [1:0] INITIAL_VALUE = 2'h0;
      rggen_bit_field_if #(2) bit_field_sub_if();
      `rggen_connect_bit_field_if(bit_field_if, bit_field_sub_if, 16, 2)
      rggen_bit_field #(
        .WIDTH                    (2),
        .INITIAL_VALUE            (INITIAL_VALUE),
        .SW_WRITE_CONTROL         (1),
        .SW_WRITE_ENABLE_POLARITY (RGGEN_ACTIVE_HIGH)
      ) u_bit_field (
        .i_clk              (i_clk),
        .i_rst_n            (i_rst_n),
        .bit_field_if       (bit_field_sub_if),
        .o_write_trigger    (),
        .o_read_trigger     (),
        .i_sw_write_enable  (register_if[1].value[0+:1]),
        .i_hw_write_enable  ('0),
        .i_hw_write_data    ('0),
        .i_hw_set           ('0),
        .i_hw_clear         ('0),
        .i_value            ('0),
        .i_mask             ('1),
        .o_value            (o_register_5_bit_field_8),
        .o_value_unmasked   ()
      );
    end
    if (1) begin : g_bit_field_9
      localparam bit [1:0] INITIAL_VALUE = 2'h0;
      rggen_bit_field_if #(2) bit_field_sub_if();
      `rggen_connect_bit_field_if(bit_field_if, bit_field_sub_if, 20, 2)
      rggen_bit_field #(
        .WIDTH                    (2),
        .INITIAL_VALUE            (INITIAL_VALUE),
        .SW_WRITE_CONTROL         (1),
        .SW_WRITE_ENABLE_POLARITY (RGGEN_ACTIVE_LOW)
      ) u_bit_field (
        .i_clk              (i_clk),
        .i_rst_n            (i_rst_n),
        .bit_field_if       (bit_field_sub_if),
        .o_write_trigger    (),
        .o_read_trigger     (),
        .i_sw_write_enable  (i_register_5_bit_field_9_lock),
        .i_hw_write_enable  ('0),
        .i_hw_write_data    ('0),
        .i_hw_set           ('0),
        .i_hw_clear         ('0),
        .i_value            ('0),
        .i_mask             ('1),
        .o_value            (o_register_5_bit_field_9),
        .o_value_unmasked   ()
      );
    end
    if (1) begin : g_bit_field_10
      localparam bit [1:0] INITIAL_VALUE = 2'h0;
      rggen_bit_field_if #(2) bit_field_sub_if();
      `rggen_connect_bit_field_if(bit_field_if, bit_field_sub_if, 22, 2)
      rggen_bit_field #(
        .WIDTH                    (2),
        .INITIAL_VALUE            (INITIAL_VALUE),
        .SW_WRITE_CONTROL         (1),
        .SW_WRITE_ENABLE_POLARITY (RGGEN_ACTIVE_LOW)
      ) u_bit_field (
        .i_clk              (i_clk),
        .i_rst_n            (i_rst_n),
        .bit_field_if       (bit_field_sub_if),
        .o_write_trigger    (),
        .o_read_trigger     (),
        .i_sw_write_enable  (register_if[0].value[8+:1]),
        .i_hw_write_enable  ('0),
        .i_hw_write_data    ('0),
        .i_hw_set           ('0),
        .i_hw_clear         ('0),
        .i_value            ('0),
        .i_mask             ('1),
        .o_value            (o_register_5_bit_field_10),
        .o_value_unmasked   ()
      );
    end
    if (1) begin : g_bit_field_11
      localparam bit [1:0] INITIAL_VALUE = 2'h0;
      rggen_bit_field_if #(2) bit_field_sub_if();
      `rggen_connect_bit_field_if(bit_field_if, bit_field_sub_if, 24, 2)
      rggen_bit_field #(
        .WIDTH                    (2),
        .INITIAL_VALUE            (INITIAL_VALUE),
        .SW_WRITE_CONTROL         (1),
        .SW_WRITE_ENABLE_POLARITY (RGGEN_ACTIVE_LOW)
      ) u_bit_field (
        .i_clk              (i_clk),
        .i_rst_n            (i_rst_n),
        .bit_field_if       (bit_field_sub_if),
        .o_write_trigger    (),
        .o_read_trigger     (),
        .i_sw_write_enable  (register_if[1].value[0+:1]),
        .i_hw_write_enable  ('0),
        .i_hw_write_data    ('0),
        .i_hw_set           ('0),
        .i_hw_clear         ('0),
        .i_value            ('0),
        .i_mask             ('1),
        .o_value            (o_register_5_bit_field_11),
        .o_value_unmasked   ()
      );
    end
  end endgenerate
  generate if (1) begin : g_register_6
    rggen_bit_field_if #(64) bit_field_if();
    `rggen_tie_off_unused_signals(64, 64'h000000ffffffffff, bit_field_if)
    rggen_default_register #(
      .READABLE       (1),
      .WRITABLE       (1),
      .ADDRESS_WIDTH  (8),
      .OFFSET_ADDRESS (8'h14),
      .BUS_WIDTH      (32),
      .DATA_WIDTH     (64),
      .VALUE_WIDTH    (64)
    ) u_register (
      .i_clk        (i_clk),
      .i_rst_n      (i_rst_n),
      .register_if  (register_if[6]),
      .bit_field_if (bit_field_if)
    );
    if (1) begin : g_bit_field_0
      localparam bit [3:0] INITIAL_VALUE = 4'h0;
      rggen_bit_field_if #(4) bit_field_sub_if();
      `rggen_connect_bit_field_if(bit_field_if, bit_field_sub_if, 0, 4)
      rggen_bit_field #(
        .WIDTH            (4),
        .INITIAL_VALUE    (INITIAL_VALUE),
        .SW_READ_ACTION   (RGGEN_READ_DEFAULT),
        .SW_WRITE_ACTION  (RGGEN_WRITE_0_CLEAR),
        .HW_ACCESS        (3'b010),
        .EXTERNAL_MASK    (0)
      ) u_bit_field (
        .i_clk              (i_clk),
        .i_rst_n            (i_rst_n),
        .bit_field_if       (bit_field_sub_if),
        .o_write_trigger    (),
        .o_read_trigger     (),
        .i_sw_write_enable  ('1),
        .i_hw_write_enable  ('0),
        .i_hw_write_data    ('0),
        .i_hw_set           (i_register_6_bit_field_0_set),
        .i_hw_clear         ('0),
        .i_value            ('0),
        .i_mask             ('1),
        .o_value            (o_register_6_bit_field_0),
        .o_value_unmasked   ()
      );
    end
    if (1) begin : g_bit_field_1
      localparam bit [3:0] INITIAL_VALUE = 4'h0;
      rggen_bit_field_if #(4) bit_field_sub_if();
      `rggen_connect_bit_field_if(bit_field_if, bit_field_sub_if, 4, 4)
      rggen_bit_field #(
        .WIDTH            (4),
        .INITIAL_VALUE    (INITIAL_VALUE),
        .SW_READ_ACTION   (RGGEN_READ_DEFAULT),
        .SW_WRITE_ACTION  (RGGEN_WRITE_0_CLEAR),
        .HW_ACCESS        (3'b010),
        .EXTERNAL_MASK    (1)
      ) u_bit_field (
        .i_clk              (i_clk),
        .i_rst_n            (i_rst_n),
        .bit_field_if       (bit_field_sub_if),
        .o_write_trigger    (),
        .o_read_trigger     (),
        .i_sw_write_enable  ('1),
        .i_hw_write_enable  ('0),
        .i_hw_write_data    ('0),
        .i_hw_set           (i_register_6_bit_field_1_set),
        .i_hw_clear         ('0),
        .i_value            ('0),
        .i_mask             (register_if[0].value[0+:4]),
        .o_value            (o_register_6_bit_field_1),
        .o_value_unmasked   (o_register_6_bit_field_1_unmasked)
      );
    end
    if (1) begin : g_bit_field_2
      rggen_bit_field_if #(4) bit_field_sub_if();
      `rggen_connect_bit_field_if(bit_field_if, bit_field_sub_if, 8, 4)
      rggen_bit_field #(
        .WIDTH              (4),
        .STORAGE            (0),
        .EXTERNAL_READ_DATA (1),
        .TRIGGER            (0)
      ) u_bit_field (
        .i_clk              (i_clk),
        .i_rst_n            (i_rst_n),
        .bit_field_if       (bit_field_sub_if),
        .o_write_trigger    (),
        .o_read_trigger     (),
        .i_sw_write_enable  ('0),
        .i_hw_write_enable  ('0),
        .i_hw_write_data    ('0),
        .i_hw_set           ('0),
        .i_hw_clear         ('0),
        .i_value            (register_if[6].value[4+:4]),
        .i_mask             ('1),
        .o_value            (),
        .o_value_unmasked   ()
      );
    end
    if (1) begin : g_bit_field_3
      localparam bit [3:0] INITIAL_VALUE = 4'h0;
      rggen_bit_field_if #(4) bit_field_sub_if();
      `rggen_connect_bit_field_if(bit_field_if, bit_field_sub_if, 12, 4)
      rggen_bit_field #(
        .WIDTH            (4),
        .INITIAL_VALUE    (INITIAL_VALUE),
        .SW_READ_ACTION   (RGGEN_READ_DEFAULT),
        .SW_WRITE_ACTION  (RGGEN_WRITE_1_CLEAR),
        .HW_ACCESS        (3'b010),
        .EXTERNAL_MASK    (0)
      ) u_bit_field (
        .i_clk              (i_clk),
        .i_rst_n            (i_rst_n),
        .bit_field_if       (bit_field_sub_if),
        .o_write_trigger    (),
        .o_read_trigger     (),
        .i_sw_write_enable  ('1),
        .i_hw_write_enable  ('0),
        .i_hw_write_data    ('0),
        .i_hw_set           (i_register_6_bit_field_3_set),
        .i_hw_clear         ('0),
        .i_value            ('0),
        .i_mask             ('1),
        .o_value            (o_register_6_bit_field_3),
        .o_value_unmasked   ()
      );
    end
    if (1) begin : g_bit_field_4
      localparam bit [3:0] INITIAL_VALUE = 4'h0;
      rggen_bit_field_if #(4) bit_field_sub_if();
      `rggen_connect_bit_field_if(bit_field_if, bit_field_sub_if, 16, 4)
      rggen_bit_field #(
        .WIDTH            (4),
        .INITIAL_VALUE    (INITIAL_VALUE),
        .SW_READ_ACTION   (RGGEN_READ_DEFAULT),
        .SW_WRITE_ACTION  (RGGEN_WRITE_1_CLEAR),
        .HW_ACCESS        (3'b010),
        .EXTERNAL_MASK    (1)
      ) u_bit_field (
        .i_clk              (i_clk),
        .i_rst_n            (i_rst_n),
        .bit_field_if       (bit_field_sub_if),
        .o_write_trigger    (),
        .o_read_trigger     (),
        .i_sw_write_enable  ('1),
        .i_hw_write_enable  ('0),
        .i_hw_write_data    ('0),
        .i_hw_set           (i_register_6_bit_field_4_set),
        .i_hw_clear         ('0),
        .i_value            ('0),
        .i_mask             (register_if[0].value[0+:4]),
        .o_value            (o_register_6_bit_field_4),
        .o_value_unmasked   (o_register_6_bit_field_4_unmasked)
      );
    end
    if (1) begin : g_bit_field_5
      rggen_bit_field_if #(4) bit_field_sub_if();
      `rggen_connect_bit_field_if(bit_field_if, bit_field_sub_if, 20, 4)
      rggen_bit_field #(
        .WIDTH              (4),
        .STORAGE            (0),
        .EXTERNAL_READ_DATA (1),
        .TRIGGER            (0)
      ) u_bit_field (
        .i_clk              (i_clk),
        .i_rst_n            (i_rst_n),
        .bit_field_if       (bit_field_sub_if),
        .o_write_trigger    (),
        .o_read_trigger     (),
        .i_sw_write_enable  ('0),
        .i_hw_write_enable  ('0),
        .i_hw_write_data    ('0),
        .i_hw_set           ('0),
        .i_hw_clear         ('0),
        .i_value            (register_if[6].value[16+:4]),
        .i_mask             ('1),
        .o_value            (),
        .o_value_unmasked   ()
      );
    end
    if (1) begin : g_bit_field_6
      localparam bit [3:0] INITIAL_VALUE = 4'h0;
      rggen_bit_field_if #(4) bit_field_sub_if();
      `rggen_connect_bit_field_if(bit_field_if, bit_field_sub_if, 24, 4)
      rggen_bit_field #(
        .WIDTH            (4),
        .INITIAL_VALUE    (INITIAL_VALUE),
        .SW_READ_ACTION   (RGGEN_READ_DEFAULT),
        .SW_WRITE_ACTION  (RGGEN_WRITE_0_SET),
        .HW_ACCESS        (3'b100)
      ) u_bit_field (
        .i_clk              (i_clk),
        .i_rst_n            (i_rst_n),
        .bit_field_if       (bit_field_sub_if),
        .o_write_trigger    (),
        .o_read_trigger     (),
        .i_sw_write_enable  ('1),
        .i_hw_write_enable  ('0),
        .i_hw_write_data    ('0),
        .i_hw_set           ('0),
        .i_hw_clear         (i_register_6_bit_field_6_clear),
        .i_value            ('0),
        .i_mask             ('1),
        .o_value            (o_register_6_bit_field_6),
        .o_value_unmasked   ()
      );
    end
    if (1) begin : g_bit_field_7
      localparam bit [3:0] INITIAL_VALUE = 4'h0;
      rggen_bit_field_if #(4) bit_field_sub_if();
      `rggen_connect_bit_field_if(bit_field_if, bit_field_sub_if, 28, 4)
      rggen_bit_field #(
        .WIDTH            (4),
        .INITIAL_VALUE    (INITIAL_VALUE),
        .SW_READ_ACTION   (RGGEN_READ_DEFAULT),
        .SW_WRITE_ACTION  (RGGEN_WRITE_1_SET),
        .HW_ACCESS        (3'b100)
      ) u_bit_field (
        .i_clk              (i_clk),
        .i_rst_n            (i_rst_n),
        .bit_field_if       (bit_field_sub_if),
        .o_write_trigger    (),
        .o_read_trigger     (),
        .i_sw_write_enable  ('1),
        .i_hw_write_enable  ('0),
        .i_hw_write_data    ('0),
        .i_hw_set           ('0),
        .i_hw_clear         (i_register_6_bit_field_7_clear),
        .i_value            ('0),
        .i_mask             ('1),
        .o_value            (o_register_6_bit_field_7),
        .o_value_unmasked   ()
      );
    end
    if (1) begin : g_bit_field_8
      localparam bit [3:0] INITIAL_VALUE = 4'h0;
      rggen_bit_field_if #(4) bit_field_sub_if();
      `rggen_connect_bit_field_if(bit_field_if, bit_field_sub_if, 32, 4)
      rggen_bit_field #(
        .WIDTH            (4),
        .INITIAL_VALUE    (INITIAL_VALUE),
        .SW_WRITE_ACTION  (RGGEN_WRITE_0_TOGGLE)
      ) u_bit_field (
        .i_clk              (i_clk),
        .i_rst_n            (i_rst_n),
        .bit_field_if       (bit_field_sub_if),
        .o_write_trigger    (),
        .o_read_trigger     (),
        .i_sw_write_enable  ('1),
        .i_hw_write_enable  ('0),
        .i_hw_write_data    ('0),
        .i_hw_set           ('0),
        .i_hw_clear         ('0),
        .i_value            ('0),
        .i_mask             ('1),
        .o_value            (o_register_6_bit_field_8),
        .o_value_unmasked   ()
      );
    end
    if (1) begin : g_bit_field_9
      localparam bit [3:0] INITIAL_VALUE = 4'h0;
      rggen_bit_field_if #(4) bit_field_sub_if();
      `rggen_connect_bit_field_if(bit_field_if, bit_field_sub_if, 36, 4)
      rggen_bit_field #(
        .WIDTH            (4),
        .INITIAL_VALUE    (INITIAL_VALUE),
        .SW_WRITE_ACTION  (RGGEN_WRITE_1_TOGGLE)
      ) u_bit_field (
        .i_clk              (i_clk),
        .i_rst_n            (i_rst_n),
        .bit_field_if       (bit_field_sub_if),
        .o_write_trigger    (),
        .o_read_trigger     (),
        .i_sw_write_enable  ('1),
        .i_hw_write_enable  ('0),
        .i_hw_write_data    ('0),
        .i_hw_set           ('0),
        .i_hw_clear         ('0),
        .i_value            ('0),
        .i_mask             ('1),
        .o_value            (o_register_6_bit_field_9),
        .o_value_unmasked   ()
      );
    end
  end endgenerate
  generate if (1) begin : g_register_7
    rggen_bit_field_if #(32) bit_field_if();
    `rggen_tie_off_unused_signals(32, 32'h0f0f0f0f, bit_field_if)
    rggen_default_register #(
      .READABLE       (1),
      .WRITABLE       (1),
      .ADDRESS_WIDTH  (8),
      .OFFSET_ADDRESS (8'h1c),
      .BUS_WIDTH      (32),
      .DATA_WIDTH     (32),
      .VALUE_WIDTH    (64)
    ) u_register (
      .i_clk        (i_clk),
      .i_rst_n      (i_rst_n),
      .register_if  (register_if[7]),
      .bit_field_if (bit_field_if)
    );
    if (1) begin : g_bit_field_0
      localparam bit [3:0] INITIAL_VALUE = 4'h0;
      rggen_bit_field_if #(4) bit_field_sub_if();
      `rggen_connect_bit_field_if(bit_field_if, bit_field_sub_if, 0, 4)
      rggen_bit_field #(
        .WIDTH            (4),
        .INITIAL_VALUE    (INITIAL_VALUE),
        .SW_READ_ACTION   (RGGEN_READ_SET),
        .SW_WRITE_ACTION  (RGGEN_WRITE_0_CLEAR)
      ) u_bit_field (
        .i_clk              (i_clk),
        .i_rst_n            (i_rst_n),
        .bit_field_if       (bit_field_sub_if),
        .o_write_trigger    (),
        .o_read_trigger     (),
        .i_sw_write_enable  ('1),
        .i_hw_write_enable  ('0),
        .i_hw_write_data    ('0),
        .i_hw_set           ('0),
        .i_hw_clear         ('0),
        .i_value            ('0),
        .i_mask             ('1),
        .o_value            (o_register_7_bit_field_0),
        .o_value_unmasked   ()
      );
    end
    if (1) begin : g_bit_field_1
      localparam bit [3:0] INITIAL_VALUE = 4'h0;
      rggen_bit_field_if #(4) bit_field_sub_if();
      `rggen_connect_bit_field_if(bit_field_if, bit_field_sub_if, 8, 4)
      rggen_bit_field #(
        .WIDTH            (4),
        .INITIAL_VALUE    (INITIAL_VALUE),
        .SW_READ_ACTION   (RGGEN_READ_SET),
        .SW_WRITE_ACTION  (RGGEN_WRITE_1_CLEAR)
      ) u_bit_field (
        .i_clk              (i_clk),
        .i_rst_n            (i_rst_n),
        .bit_field_if       (bit_field_sub_if),
        .o_write_trigger    (),
        .o_read_trigger     (),
        .i_sw_write_enable  ('1),
        .i_hw_write_enable  ('0),
        .i_hw_write_data    ('0),
        .i_hw_set           ('0),
        .i_hw_clear         ('0),
        .i_value            ('0),
        .i_mask             ('1),
        .o_value            (o_register_7_bit_field_1),
        .o_value_unmasked   ()
      );
    end
    if (1) begin : g_bit_field_2
      localparam bit [3:0] INITIAL_VALUE = 4'h0;
      rggen_bit_field_if #(4) bit_field_sub_if();
      `rggen_connect_bit_field_if(bit_field_if, bit_field_sub_if, 16, 4)
      rggen_bit_field #(
        .WIDTH            (4),
        .INITIAL_VALUE    (INITIAL_VALUE),
        .SW_READ_ACTION   (RGGEN_READ_CLEAR),
        .SW_WRITE_ACTION  (RGGEN_WRITE_0_SET)
      ) u_bit_field (
        .i_clk              (i_clk),
        .i_rst_n            (i_rst_n),
        .bit_field_if       (bit_field_sub_if),
        .o_write_trigger    (),
        .o_read_trigger     (),
        .i_sw_write_enable  ('1),
        .i_hw_write_enable  ('0),
        .i_hw_write_data    ('0),
        .i_hw_set           ('0),
        .i_hw_clear         ('0),
        .i_value            ('0),
        .i_mask             ('1),
        .o_value            (o_register_7_bit_field_2),
        .o_value_unmasked   ()
      );
    end
    if (1) begin : g_bit_field_3
      localparam bit [3:0] INITIAL_VALUE = 4'h0;
      rggen_bit_field_if #(4) bit_field_sub_if();
      `rggen_connect_bit_field_if(bit_field_if, bit_field_sub_if, 24, 4)
      rggen_bit_field #(
        .WIDTH            (4),
        .INITIAL_VALUE    (INITIAL_VALUE),
        .SW_READ_ACTION   (RGGEN_READ_CLEAR),
        .SW_WRITE_ACTION  (RGGEN_WRITE_1_SET)
      ) u_bit_field (
        .i_clk              (i_clk),
        .i_rst_n            (i_rst_n),
        .bit_field_if       (bit_field_sub_if),
        .o_write_trigger    (),
        .o_read_trigger     (),
        .i_sw_write_enable  ('1),
        .i_hw_write_enable  ('0),
        .i_hw_write_data    ('0),
        .i_hw_set           ('0),
        .i_hw_clear         ('0),
        .i_value            ('0),
        .i_mask             ('1),
        .o_value            (o_register_7_bit_field_3),
        .o_value_unmasked   ()
      );
    end
  end endgenerate
  generate if (1) begin : g_register_8
    rggen_bit_field_if #(64) bit_field_if();
    `rggen_tie_off_unused_signals(64, 64'h00000f0f0f0f0f0f, bit_field_if)
    rggen_default_register #(
      .READABLE       (1),
      .WRITABLE       (1),
      .ADDRESS_WIDTH  (8),
      .OFFSET_ADDRESS (8'h20),
      .BUS_WIDTH      (32),
      .DATA_WIDTH     (64),
      .VALUE_WIDTH    (64)
    ) u_register (
      .i_clk        (i_clk),
      .i_rst_n      (i_rst_n),
      .register_if  (register_if[8]),
      .bit_field_if (bit_field_if)
    );
    if (1) begin : g_bit_field_0
      localparam bit [3:0] INITIAL_VALUE = 4'h0;
      rggen_bit_field_if #(4) bit_field_sub_if();
      `rggen_connect_bit_field_if(bit_field_if, bit_field_sub_if, 0, 4)
      rggen_bit_field #(
        .WIDTH            (4),
        .INITIAL_VALUE    (INITIAL_VALUE),
        .SW_READ_ACTION   (RGGEN_READ_DEFAULT),
        .SW_WRITE_ACTION  (RGGEN_WRITE_CLEAR),
        .HW_ACCESS        (3'b010),
        .EXTERNAL_MASK    (0)
      ) u_bit_field (
        .i_clk              (i_clk),
        .i_rst_n            (i_rst_n),
        .bit_field_if       (bit_field_sub_if),
        .o_write_trigger    (),
        .o_read_trigger     (),
        .i_sw_write_enable  ('1),
        .i_hw_write_enable  ('0),
        .i_hw_write_data    ('0),
        .i_hw_set           (i_register_8_bit_field_0_set),
        .i_hw_clear         ('0),
        .i_value            ('0),
        .i_mask             ('1),
        .o_value            (o_register_8_bit_field_0),
        .o_value_unmasked   ()
      );
    end
    if (1) begin : g_bit_field_1
      localparam bit [3:0] INITIAL_VALUE = 4'h0;
      rggen_bit_field_if #(4) bit_field_sub_if();
      `rggen_connect_bit_field_if(bit_field_if, bit_field_sub_if, 8, 4)
      rggen_bit_field #(
        .WIDTH            (4),
        .INITIAL_VALUE    (INITIAL_VALUE),
        .SW_READ_ACTION   (RGGEN_READ_DEFAULT),
        .SW_WRITE_ACTION  (RGGEN_WRITE_SET),
        .HW_ACCESS        (3'b100)
      ) u_bit_field (
        .i_clk              (i_clk),
        .i_rst_n            (i_rst_n),
        .bit_field_if       (bit_field_sub_if),
        .o_write_trigger    (),
        .o_read_trigger     (),
        .i_sw_write_enable  ('1),
        .i_hw_write_enable  ('0),
        .i_hw_write_data    ('0),
        .i_hw_set           ('0),
        .i_hw_clear         (i_register_8_bit_field_1_clear),
        .i_value            ('0),
        .i_mask             ('1),
        .o_value            (o_register_8_bit_field_1),
        .o_value_unmasked   ()
      );
    end
    if (1) begin : g_bit_field_2
      localparam bit [3:0] INITIAL_VALUE = 4'h0;
      rggen_bit_field_if #(4) bit_field_sub_if();
      `rggen_connect_bit_field_if(bit_field_if, bit_field_sub_if, 16, 4)
      rggen_bit_field #(
        .WIDTH            (4),
        .INITIAL_VALUE    (INITIAL_VALUE),
        .SW_READ_ACTION   (RGGEN_READ_NONE),
        .SW_WRITE_ACTION  (RGGEN_WRITE_CLEAR),
        .HW_ACCESS        (3'b010),
        .EXTERNAL_MASK    (0)
      ) u_bit_field (
        .i_clk              (i_clk),
        .i_rst_n            (i_rst_n),
        .bit_field_if       (bit_field_sub_if),
        .o_write_trigger    (),
        .o_read_trigger     (),
        .i_sw_write_enable  ('1),
        .i_hw_write_enable  ('0),
        .i_hw_write_data    ('0),
        .i_hw_set           (i_register_8_bit_field_2_set),
        .i_hw_clear         ('0),
        .i_value            ('0),
        .i_mask             ('1),
        .o_value            (o_register_8_bit_field_2),
        .o_value_unmasked   ()
      );
    end
    if (1) begin : g_bit_field_3
      localparam bit [3:0] INITIAL_VALUE = 4'h0;
      rggen_bit_field_if #(4) bit_field_sub_if();
      `rggen_connect_bit_field_if(bit_field_if, bit_field_sub_if, 24, 4)
      rggen_bit_field #(
        .WIDTH            (4),
        .INITIAL_VALUE    (INITIAL_VALUE),
        .SW_READ_ACTION   (RGGEN_READ_NONE),
        .SW_WRITE_ACTION  (RGGEN_WRITE_SET),
        .HW_ACCESS        (3'b100)
      ) u_bit_field (
        .i_clk              (i_clk),
        .i_rst_n            (i_rst_n),
        .bit_field_if       (bit_field_sub_if),
        .o_write_trigger    (),
        .o_read_trigger     (),
        .i_sw_write_enable  ('1),
        .i_hw_write_enable  ('0),
        .i_hw_write_data    ('0),
        .i_hw_set           ('0),
        .i_hw_clear         (i_register_8_bit_field_3_clear),
        .i_value            ('0),
        .i_mask             ('1),
        .o_value            (o_register_8_bit_field_3),
        .o_value_unmasked   ()
      );
    end
    if (1) begin : g_bit_field_4
      localparam bit [3:0] INITIAL_VALUE = 4'h0;
      rggen_bit_field_if #(4) bit_field_sub_if();
      `rggen_connect_bit_field_if(bit_field_if, bit_field_sub_if, 32, 4)
      rggen_bit_field #(
        .WIDTH            (4),
        .INITIAL_VALUE    (INITIAL_VALUE),
        .SW_READ_ACTION   (RGGEN_READ_SET),
        .SW_WRITE_ACTION  (RGGEN_WRITE_CLEAR)
      ) u_bit_field (
        .i_clk              (i_clk),
        .i_rst_n            (i_rst_n),
        .bit_field_if       (bit_field_sub_if),
        .o_write_trigger    (),
        .o_read_trigger     (),
        .i_sw_write_enable  ('1),
        .i_hw_write_enable  ('0),
        .i_hw_write_data    ('0),
        .i_hw_set           ('0),
        .i_hw_clear         ('0),
        .i_value            ('0),
        .i_mask             ('1),
        .o_value            (o_register_8_bit_field_4),
        .o_value_unmasked   ()
      );
    end
    if (1) begin : g_bit_field_5
      localparam bit [3:0] INITIAL_VALUE = 4'h0;
      rggen_bit_field_if #(4) bit_field_sub_if();
      `rggen_connect_bit_field_if(bit_field_if, bit_field_sub_if, 40, 4)
      rggen_bit_field #(
        .WIDTH            (4),
        .INITIAL_VALUE    (INITIAL_VALUE),
        .SW_READ_ACTION   (RGGEN_READ_CLEAR),
        .SW_WRITE_ACTION  (RGGEN_WRITE_SET)
      ) u_bit_field (
        .i_clk              (i_clk),
        .i_rst_n            (i_rst_n),
        .bit_field_if       (bit_field_sub_if),
        .o_write_trigger    (),
        .o_read_trigger     (),
        .i_sw_write_enable  ('1),
        .i_hw_write_enable  ('0),
        .i_hw_write_data    ('0),
        .i_hw_set           ('0),
        .i_hw_clear         ('0),
        .i_value            ('0),
        .i_mask             ('1),
        .o_value            (o_register_8_bit_field_5),
        .o_value_unmasked   ()
      );
    end
  end endgenerate
  generate if (1) begin : g_register_9
    rggen_bit_field_if #(32) bit_field_if();
    `rggen_tie_off_unused_signals(32, 32'h00000fff, bit_field_if)
    rggen_default_register #(
      .READABLE       (1),
      .WRITABLE       (1),
      .ADDRESS_WIDTH  (8),
      .OFFSET_ADDRESS (8'h28),
      .BUS_WIDTH      (32),
      .DATA_WIDTH     (32),
      .VALUE_WIDTH    (64)
    ) u_register (
      .i_clk        (i_clk),
      .i_rst_n      (i_rst_n),
      .register_if  (register_if[9]),
      .bit_field_if (bit_field_if)
    );
    if (1) begin : g_bit_field_0
      localparam bit [1:0] INITIAL_VALUE = 2'h0;
      rggen_bit_field_if #(2) bit_field_sub_if();
      `rggen_connect_bit_field_if(bit_field_if, bit_field_sub_if, 0, 2)
      rggen_bit_field #(
        .WIDTH          (2),
        .INITIAL_VALUE  (INITIAL_VALUE),
        .SW_WRITE_ONCE  (0),
        .TRIGGER        (1)
      ) u_bit_field (
        .i_clk              (i_clk),
        .i_rst_n            (i_rst_n),
        .bit_field_if       (bit_field_sub_if),
        .o_write_trigger    (o_register_9_bit_field_0_write_trigger),
        .o_read_trigger     (o_register_9_bit_field_0_read_trigger),
        .i_sw_write_enable  ('1),
        .i_hw_write_enable  ('0),
        .i_hw_write_data    ('0),
        .i_hw_set           ('0),
        .i_hw_clear         ('0),
        .i_value            ('0),
        .i_mask             ('1),
        .o_value            (o_register_9_bit_field_0),
        .o_value_unmasked   ()
      );
    end
    if (1) begin : g_bit_field_1
      rggen_bit_field_if #(2) bit_field_sub_if();
      `rggen_connect_bit_field_if(bit_field_if, bit_field_sub_if, 2, 2)
      rggen_bit_field #(
        .WIDTH              (2),
        .STORAGE            (0),
        .EXTERNAL_READ_DATA (1),
        .TRIGGER            (1)
      ) u_bit_field (
        .i_clk              (i_clk),
        .i_rst_n            (i_rst_n),
        .bit_field_if       (bit_field_sub_if),
        .o_write_trigger    (),
        .o_read_trigger     (o_register_9_bit_field_1_read_trigger),
        .i_sw_write_enable  ('0),
        .i_hw_write_enable  ('0),
        .i_hw_write_data    ('0),
        .i_hw_set           ('0),
        .i_hw_clear         ('0),
        .i_value            (i_register_9_bit_field_1),
        .i_mask             ('1),
        .o_value            (),
        .o_value_unmasked   ()
      );
    end
    if (1) begin : g_bit_field_2
      localparam bit [1:0] INITIAL_VALUE = 2'h0;
      rggen_bit_field_if #(2) bit_field_sub_if();
      `rggen_connect_bit_field_if(bit_field_if, bit_field_sub_if, 4, 2)
      rggen_bit_field #(
        .WIDTH          (2),
        .INITIAL_VALUE  (INITIAL_VALUE),
        .SW_READ_ACTION (RGGEN_READ_NONE),
        .SW_WRITE_ONCE  (0),
        .TRIGGER        (1)
      ) u_bit_field (
        .i_clk              (i_clk),
        .i_rst_n            (i_rst_n),
        .bit_field_if       (bit_field_sub_if),
        .o_write_trigger    (o_register_9_bit_field_2_write_trigger),
        .o_read_trigger     (),
        .i_sw_write_enable  ('1),
        .i_hw_write_enable  ('0),
        .i_hw_write_data    ('0),
        .i_hw_set           ('0),
        .i_hw_clear         ('0),
        .i_value            ('0),
        .i_mask             ('1),
        .o_value            (o_register_9_bit_field_2),
        .o_value_unmasked   ()
      );
    end
    if (1) begin : g_bit_field_3
      localparam bit [1:0] INITIAL_VALUE = 2'h0;
      rggen_bit_field_if #(2) bit_field_sub_if();
      `rggen_connect_bit_field_if(bit_field_if, bit_field_sub_if, 6, 2)
      rggen_bit_field #(
        .WIDTH              (2),
        .INITIAL_VALUE      (INITIAL_VALUE),
        .EXTERNAL_READ_DATA (1),
        .TRIGGER            (1)
      ) u_bit_field (
        .i_clk              (i_clk),
        .i_rst_n            (i_rst_n),
        .bit_field_if       (bit_field_sub_if),
        .o_write_trigger    (o_register_9_bit_field_3_write_trigger),
        .o_read_trigger     (o_register_9_bit_field_3_read_trigger),
        .i_sw_write_enable  ('1),
        .i_hw_write_enable  ('0),
        .i_hw_write_data    ('0),
        .i_hw_set           ('0),
        .i_hw_clear         ('0),
        .i_value            (i_register_9_bit_field_3),
        .i_mask             ('1),
        .o_value            (o_register_9_bit_field_3),
        .o_value_unmasked   ()
      );
    end
    if (1) begin : g_bit_field_4
      rggen_bit_field_if #(2) bit_field_sub_if();
      `rggen_connect_bit_field_if(bit_field_if, bit_field_sub_if, 8, 2)
      rggen_bit_field_w01trg #(
        .TRIGGER_VALUE  (1'b0),
        .WIDTH          (2)
      ) u_bit_field (
        .i_clk        (i_clk),
        .i_rst_n      (i_rst_n),
        .bit_field_if (bit_field_sub_if),
        .i_value      (i_register_9_bit_field_4),
        .o_trigger    (o_register_9_bit_field_4_trigger)
      );
    end
    if (1) begin : g_bit_field_5
      rggen_bit_field_if #(2) bit_field_sub_if();
      `rggen_connect_bit_field_if(bit_field_if, bit_field_sub_if, 10, 2)
      rggen_bit_field_w01trg #(
        .TRIGGER_VALUE  (1'b1),
        .WIDTH          (2)
      ) u_bit_field (
        .i_clk        (i_clk),
        .i_rst_n      (i_rst_n),
        .bit_field_if (bit_field_sub_if),
        .i_value      (i_register_9_bit_field_5),
        .o_trigger    (o_register_9_bit_field_5_trigger)
      );
    end
  end endgenerate
  generate if (1) begin : g_register_10
    genvar i;
    for (i = 0;i < 4;++i) begin : g
      rggen_bit_field_if #(32) bit_field_if();
      `rggen_tie_off_unused_signals(32, 32'h3f3f3f3f, bit_field_if)
      rggen_default_register #(
        .READABLE       (1),
        .WRITABLE       (1),
        .ADDRESS_WIDTH  (8),
        .OFFSET_ADDRESS (8'h30+8'(8*i)),
        .BUS_WIDTH      (32),
        .DATA_WIDTH     (32),
        .VALUE_WIDTH    (64)
      ) u_register (
        .i_clk        (i_clk),
        .i_rst_n      (i_rst_n),
        .register_if  (register_if[10+i]),
        .bit_field_if (bit_field_if)
      );
      if (1) begin : g_bit_field_0
        genvar j;
        for (j = 0;j < 4;++j) begin : g
          localparam bit [1:0] INITIAL_VALUE = 2'h0;
          rggen_bit_field_if #(2) bit_field_sub_if();
          `rggen_connect_bit_field_if(bit_field_if, bit_field_sub_if, 0+8*j, 2)
          rggen_bit_field #(
            .WIDTH          (2),
            .INITIAL_VALUE  (INITIAL_VALUE),
            .SW_WRITE_ONCE  (0),
            .TRIGGER        (0)
          ) u_bit_field (
            .i_clk              (i_clk),
            .i_rst_n            (i_rst_n),
            .bit_field_if       (bit_field_sub_if),
            .o_write_trigger    (),
            .o_read_trigger     (),
            .i_sw_write_enable  ('1),
            .i_hw_write_enable  ('0),
            .i_hw_write_data    ('0),
            .i_hw_set           ('0),
            .i_hw_clear         ('0),
            .i_value            ('0),
            .i_mask             ('1),
            .o_value            (o_register_10_bit_field_0[i][j]),
            .o_value_unmasked   ()
          );
        end
      end
      if (1) begin : g_bit_field_1
        genvar j;
        for (j = 0;j < 4;++j) begin : g
          rggen_bit_field_if #(2) bit_field_sub_if();
          `rggen_connect_bit_field_if(bit_field_if, bit_field_sub_if, 2+8*j, 2)
          rggen_bit_field #(
            .WIDTH          (2),
            .INITIAL_VALUE  (REGISTER_10_BIT_FIELD_1_INITIAL_VALUE[i][j]),
            .SW_WRITE_ONCE  (0),
            .TRIGGER        (0)
          ) u_bit_field (
            .i_clk              (i_clk),
            .i_rst_n            (i_rst_n),
            .bit_field_if       (bit_field_sub_if),
            .o_write_trigger    (),
            .o_read_trigger     (),
            .i_sw_write_enable  ('1),
            .i_hw_write_enable  ('0),
            .i_hw_write_data    ('0),
            .i_hw_set           ('0),
            .i_hw_clear         ('0),
            .i_value            ('0),
            .i_mask             ('1),
            .o_value            (o_register_10_bit_field_1[i][j]),
            .o_value_unmasked   ()
          );
        end
      end
      if (1) begin : g_bit_field_2
        genvar j;
        for (j = 0;j < 4;++j) begin : g
          localparam bit [3:0][3:0][1:0] INITIAL_VALUE = {2'h2, 2'h1, 2'h0, 2'h3, 2'h1, 2'h0, 2'h3, 2'h2, 2'h0, 2'h3, 2'h2, 2'h1, 2'h3, 2'h2, 2'h1, 2'h0};
          rggen_bit_field_if #(2) bit_field_sub_if();
          `rggen_connect_bit_field_if(bit_field_if, bit_field_sub_if, 4+8*j, 2)
          rggen_bit_field #(
            .WIDTH          (2),
            .INITIAL_VALUE  (INITIAL_VALUE[i][j]),
            .SW_WRITE_ONCE  (0),
            .TRIGGER        (0)
          ) u_bit_field (
            .i_clk              (i_clk),
            .i_rst_n            (i_rst_n),
            .bit_field_if       (bit_field_sub_if),
            .o_write_trigger    (),
            .o_read_trigger     (),
            .i_sw_write_enable  ('1),
            .i_hw_write_enable  ('0),
            .i_hw_write_data    ('0),
            .i_hw_set           ('0),
            .i_hw_clear         ('0),
            .i_value            ('0),
            .i_mask             ('1),
            .o_value            (o_register_10_bit_field_2[i][j]),
            .o_value_unmasked   ()
          );
        end
      end
    end
  end endgenerate
  generate if (1) begin : g_register_11
    genvar i;
    genvar j;
    for (i = 0;i < 2;++i) begin : g
      for (j = 0;j < 4;++j) begin : g
        rggen_bit_field_if #(64) bit_field_if();
        logic [2:0] indirect_match;
        `rggen_tie_off_unused_signals(64, 64'hffffffffffffffff, bit_field_if)
        assign indirect_match[0] = register_if[0].value[0+:4] == 4'(i);
        assign indirect_match[1] = register_if[0].value[4+:4] == 4'(j);
        assign indirect_match[2] = register_if[0].value[8+:1] == 1'h0;
        rggen_indirect_register #(
          .READABLE             (1),
          .WRITABLE             (1),
          .ADDRESS_WIDTH        (8),
          .OFFSET_ADDRESS       (8'h50),
          .BUS_WIDTH            (32),
          .DATA_WIDTH           (64),
          .VALUE_WIDTH          (64),
          .INDIRECT_MATCH_WIDTH (3)
        ) u_register (
          .i_clk            (i_clk),
          .i_rst_n          (i_rst_n),
          .register_if      (register_if[14+4*i+j]),
          .i_indirect_match (indirect_match),
          .bit_field_if     (bit_field_if)
        );
        if (1) begin : g_bit_field_0
          genvar k;
          for (k = 0;k < 4;++k) begin : g
            localparam bit [7:0] INITIAL_VALUE = 8'h00;
            rggen_bit_field_if #(8) bit_field_sub_if();
            `rggen_connect_bit_field_if(bit_field_if, bit_field_sub_if, 0+16*k, 8)
            rggen_bit_field #(
              .WIDTH          (8),
              .INITIAL_VALUE  (INITIAL_VALUE),
              .SW_WRITE_ONCE  (0),
              .TRIGGER        (0)
            ) u_bit_field (
              .i_clk              (i_clk),
              .i_rst_n            (i_rst_n),
              .bit_field_if       (bit_field_sub_if),
              .o_write_trigger    (),
              .o_read_trigger     (),
              .i_sw_write_enable  ('1),
              .i_hw_write_enable  ('0),
              .i_hw_write_data    ('0),
              .i_hw_set           ('0),
              .i_hw_clear         ('0),
              .i_value            ('0),
              .i_mask             ('1),
              .o_value            (o_register_11_bit_field_0[i][j][k]),
              .o_value_unmasked   ()
            );
          end
        end
        if (1) begin : g_bit_field_1
          genvar k;
          for (k = 0;k < 4;++k) begin : g
            localparam bit [7:0] INITIAL_VALUE = 8'h00;
            rggen_bit_field_if #(8) bit_field_sub_if();
            `rggen_connect_bit_field_if(bit_field_if, bit_field_sub_if, 8+16*k, 8)
            rggen_bit_field #(
              .WIDTH          (8),
              .INITIAL_VALUE  (INITIAL_VALUE),
              .SW_WRITE_ONCE  (0),
              .TRIGGER        (0)
            ) u_bit_field (
              .i_clk              (i_clk),
              .i_rst_n            (i_rst_n),
              .bit_field_if       (bit_field_sub_if),
              .o_write_trigger    (),
              .o_read_trigger     (),
              .i_sw_write_enable  ('1),
              .i_hw_write_enable  ('0),
              .i_hw_write_data    ('0),
              .i_hw_set           ('0),
              .i_hw_clear         ('0),
              .i_value            ('0),
              .i_mask             ('1),
              .o_value            (o_register_11_bit_field_1[i][j][k]),
              .o_value_unmasked   ()
            );
          end
        end
      end
    end
  end endgenerate
  generate if (1) begin : g_register_12
    rggen_bit_field_if #(64) bit_field_if();
    logic indirect_match;
    `rggen_tie_off_unused_signals(64, 64'h0000000100000001, bit_field_if)
    assign indirect_match = register_if[0].value[8+:1] == 1'h1;
    rggen_indirect_register #(
      .READABLE             (1),
      .WRITABLE             (1),
      .ADDRESS_WIDTH        (8),
      .OFFSET_ADDRESS       (8'h50),
      .BUS_WIDTH            (32),
      .DATA_WIDTH           (64),
      .VALUE_WIDTH          (64),
      .INDIRECT_MATCH_WIDTH (1)
    ) u_register (
      .i_clk            (i_clk),
      .i_rst_n          (i_rst_n),
      .register_if      (register_if[22]),
      .i_indirect_match (indirect_match),
      .bit_field_if     (bit_field_if)
    );
    if (1) begin : g_bit_field_0
      localparam bit INITIAL_VALUE = 1'h0;
      rggen_bit_field_if #(1) bit_field_sub_if();
      `rggen_connect_bit_field_if(bit_field_if, bit_field_sub_if, 0, 1)
      rggen_bit_field #(
        .WIDTH          (1),
        .INITIAL_VALUE  (INITIAL_VALUE),
        .SW_WRITE_ONCE  (0),
        .TRIGGER        (0)
      ) u_bit_field (
        .i_clk              (i_clk),
        .i_rst_n            (i_rst_n),
        .bit_field_if       (bit_field_sub_if),
        .o_write_trigger    (),
        .o_read_trigger     (),
        .i_sw_write_enable  ('1),
        .i_hw_write_enable  ('0),
        .i_hw_write_data    ('0),
        .i_hw_set           ('0),
        .i_hw_clear         ('0),
        .i_value            ('0),
        .i_mask             ('1),
        .o_value            (o_register_12_bit_field_0),
        .o_value_unmasked   ()
      );
    end
    if (1) begin : g_bit_field_1
      localparam bit INITIAL_VALUE = 1'h0;
      rggen_bit_field_if #(1) bit_field_sub_if();
      `rggen_connect_bit_field_if(bit_field_if, bit_field_sub_if, 32, 1)
      rggen_bit_field #(
        .WIDTH          (1),
        .INITIAL_VALUE  (INITIAL_VALUE),
        .SW_WRITE_ONCE  (0),
        .TRIGGER        (0)
      ) u_bit_field (
        .i_clk              (i_clk),
        .i_rst_n            (i_rst_n),
        .bit_field_if       (bit_field_sub_if),
        .o_write_trigger    (),
        .o_read_trigger     (),
        .i_sw_write_enable  ('1),
        .i_hw_write_enable  ('0),
        .i_hw_write_data    ('0),
        .i_hw_set           ('0),
        .i_hw_clear         ('0),
        .i_value            ('0),
        .i_mask             ('1),
        .o_value            (o_register_12_bit_field_1),
        .o_value_unmasked   ()
      );
    end
  end endgenerate
  generate if (1) begin : g_register_13
    rggen_bit_field_if #(32) bit_field_if();
    `rggen_tie_off_unused_signals(32, 32'h0003ffff, bit_field_if)
    rggen_default_register #(
      .READABLE       (1),
      .WRITABLE       (1),
      .ADDRESS_WIDTH  (8),
      .OFFSET_ADDRESS (8'h60),
      .BUS_WIDTH      (32),
      .DATA_WIDTH     (32),
      .VALUE_WIDTH    (64)
    ) u_register (
      .i_clk        (i_clk),
      .i_rst_n      (i_rst_n),
      .register_if  (register_if[23]),
      .bit_field_if (bit_field_if)
    );
    if (1) begin : g_bit_field_0
      localparam bit [1:0] INITIAL_VALUE = 2'h0;
      rggen_bit_field_if #(2) bit_field_sub_if();
      `rggen_connect_bit_field_if(bit_field_if, bit_field_sub_if, 0, 2)
      rggen_bit_field #(
        .WIDTH              (2),
        .INITIAL_VALUE      (INITIAL_VALUE),
        .SW_READ_ACTION     (RGGEN_READ_DEFAULT),
        .SW_WRITE_ACTION    (RGGEN_WRITE_DEFAULT),
        .SW_WRITE_ONCE      (0),
        .HW_ACCESS          (3'b000),
        .STORAGE            (1),
        .EXTERNAL_READ_DATA (0),
        .TRIGGER            (0)
      ) u_bit_field (
        .i_clk              (i_clk),
        .i_rst_n            (i_rst_n),
        .bit_field_if       (bit_field_sub_if),
        .o_write_trigger    (),
        .o_read_trigger     (),
        .i_sw_write_enable  ('1),
        .i_hw_write_enable  ('0),
        .i_hw_write_data    ('0),
        .i_hw_set           ('0),
        .i_hw_clear         ('0),
        .i_value            ('0),
        .i_mask             ('1),
        .o_value            (o_register_13_bit_field_0),
        .o_value_unmasked   ()
      );
    end
    if (1) begin : g_bit_field_1
      rggen_bit_field_if #(2) bit_field_sub_if();
      `rggen_connect_bit_field_if(bit_field_if, bit_field_sub_if, 2, 2)
      rggen_bit_field #(
        .WIDTH              (2),
        .INITIAL_VALUE      ('0),
        .SW_READ_ACTION     (RGGEN_READ_DEFAULT),
        .SW_WRITE_ACTION    (RGGEN_WRITE_NONE),
        .SW_WRITE_ONCE      (0),
        .HW_ACCESS          (3'b000),
        .STORAGE            (0),
        .EXTERNAL_READ_DATA (1),
        .TRIGGER            (0)
      ) u_bit_field (
        .i_clk              (i_clk),
        .i_rst_n            (i_rst_n),
        .bit_field_if       (bit_field_sub_if),
        .o_write_trigger    (),
        .o_read_trigger     (),
        .i_sw_write_enable  ('1),
        .i_hw_write_enable  ('0),
        .i_hw_write_data    ('0),
        .i_hw_set           ('0),
        .i_hw_clear         ('0),
        .i_value            (i_register_13_bit_field_1),
        .i_mask             ('1),
        .o_value            (),
        .o_value_unmasked   ()
      );
    end
    if (1) begin : g_bit_field_2
      localparam bit [1:0] INITIAL_VALUE = 2'h0;
      rggen_bit_field_if #(2) bit_field_sub_if();
      `rggen_connect_bit_field_if(bit_field_if, bit_field_sub_if, 4, 2)
      rggen_bit_field #(
        .WIDTH              (2),
        .INITIAL_VALUE      (INITIAL_VALUE),
        .SW_READ_ACTION     (RGGEN_READ_DEFAULT),
        .SW_WRITE_ACTION    (RGGEN_WRITE_DEFAULT),
        .SW_WRITE_ONCE      (1),
        .HW_ACCESS          (3'b000),
        .STORAGE            (1),
        .EXTERNAL_READ_DATA (0),
        .TRIGGER            (0)
      ) u_bit_field (
        .i_clk              (i_clk),
        .i_rst_n            (i_rst_n),
        .bit_field_if       (bit_field_sub_if),
        .o_write_trigger    (),
        .o_read_trigger     (),
        .i_sw_write_enable  ('1),
        .i_hw_write_enable  ('0),
        .i_hw_write_data    ('0),
        .i_hw_set           ('0),
        .i_hw_clear         ('0),
        .i_value            ('0),
        .i_mask             ('1),
        .o_value            (o_register_13_bit_field_2),
        .o_value_unmasked   ()
      );
    end
    if (1) begin : g_bit_field_3
      localparam bit [1:0] INITIAL_VALUE = 2'h0;
      rggen_bit_field_if #(2) bit_field_sub_if();
      `rggen_connect_bit_field_if(bit_field_if, bit_field_sub_if, 6, 2)
      rggen_bit_field #(
        .WIDTH              (2),
        .INITIAL_VALUE      (INITIAL_VALUE),
        .SW_READ_ACTION     (RGGEN_READ_DEFAULT),
        .SW_WRITE_ACTION    (RGGEN_WRITE_DEFAULT),
        .SW_WRITE_ONCE      (0),
        .HW_ACCESS          (3'b000),
        .STORAGE            (1),
        .EXTERNAL_READ_DATA (0),
        .TRIGGER            (1)
      ) u_bit_field (
        .i_clk              (i_clk),
        .i_rst_n            (i_rst_n),
        .bit_field_if       (bit_field_sub_if),
        .o_write_trigger    (o_register_13_bit_field_3_write_trigger),
        .o_read_trigger     (o_register_13_bit_field_3_read_trigger),
        .i_sw_write_enable  ('1),
        .i_hw_write_enable  ('0),
        .i_hw_write_data    ('0),
        .i_hw_set           ('0),
        .i_hw_clear         ('0),
        .i_value            ('0),
        .i_mask             ('1),
        .o_value            (o_register_13_bit_field_3),
        .o_value_unmasked   ()
      );
    end
    if (1) begin : g_bit_field_4
      localparam bit [1:0] INITIAL_VALUE = 2'h0;
      rggen_bit_field_if #(2) bit_field_sub_if();
      `rggen_connect_bit_field_if(bit_field_if, bit_field_sub_if, 8, 2)
      rggen_bit_field #(
        .WIDTH              (2),
        .INITIAL_VALUE      (INITIAL_VALUE),
        .SW_READ_ACTION     (RGGEN_READ_CLEAR),
        .SW_WRITE_ACTION    (RGGEN_WRITE_1_SET),
        .SW_WRITE_ONCE      (0),
        .HW_ACCESS          (3'b000),
        .STORAGE            (1),
        .EXTERNAL_READ_DATA (0),
        .TRIGGER            (0)
      ) u_bit_field (
        .i_clk              (i_clk),
        .i_rst_n            (i_rst_n),
        .bit_field_if       (bit_field_sub_if),
        .o_write_trigger    (),
        .o_read_trigger     (),
        .i_sw_write_enable  ('1),
        .i_hw_write_enable  ('0),
        .i_hw_write_data    ('0),
        .i_hw_set           ('0),
        .i_hw_clear         ('0),
        .i_value            ('0),
        .i_mask             ('1),
        .o_value            (o_register_13_bit_field_4),
        .o_value_unmasked   ()
      );
    end
    if (1) begin : g_bit_field_5
      localparam bit [1:0] INITIAL_VALUE = 2'h0;
      rggen_bit_field_if #(2) bit_field_sub_if();
      `rggen_connect_bit_field_if(bit_field_if, bit_field_sub_if, 10, 2)
      rggen_bit_field #(
        .WIDTH              (2),
        .INITIAL_VALUE      (INITIAL_VALUE),
        .SW_READ_ACTION     (RGGEN_READ_SET),
        .SW_WRITE_ACTION    (RGGEN_WRITE_1_CLEAR),
        .SW_WRITE_ONCE      (0),
        .HW_ACCESS          (3'b000),
        .STORAGE            (1),
        .EXTERNAL_READ_DATA (0),
        .TRIGGER            (0)
      ) u_bit_field (
        .i_clk              (i_clk),
        .i_rst_n            (i_rst_n),
        .bit_field_if       (bit_field_sub_if),
        .o_write_trigger    (),
        .o_read_trigger     (),
        .i_sw_write_enable  ('1),
        .i_hw_write_enable  ('0),
        .i_hw_write_data    ('0),
        .i_hw_set           ('0),
        .i_hw_clear         ('0),
        .i_value            ('0),
        .i_mask             ('1),
        .o_value            (o_register_13_bit_field_5),
        .o_value_unmasked   ()
      );
    end
    if (1) begin : g_bit_field_6
      localparam bit [1:0] INITIAL_VALUE = 2'h0;
      rggen_bit_field_if #(2) bit_field_sub_if();
      `rggen_connect_bit_field_if(bit_field_if, bit_field_sub_if, 12, 2)
      rggen_bit_field #(
        .WIDTH              (2),
        .INITIAL_VALUE      (INITIAL_VALUE),
        .SW_READ_ACTION     (RGGEN_READ_DEFAULT),
        .SW_WRITE_ACTION    (RGGEN_WRITE_1_SET),
        .SW_WRITE_ONCE      (0),
        .HW_ACCESS          (3'b100),
        .STORAGE            (1),
        .EXTERNAL_READ_DATA (0),
        .TRIGGER            (0)
      ) u_bit_field (
        .i_clk              (i_clk),
        .i_rst_n            (i_rst_n),
        .bit_field_if       (bit_field_sub_if),
        .o_write_trigger    (),
        .o_read_trigger     (),
        .i_sw_write_enable  ('1),
        .i_hw_write_enable  ('0),
        .i_hw_write_data    ('0),
        .i_hw_set           ('0),
        .i_hw_clear         (i_register_13_bit_field_6_hw_clear),
        .i_value            ('0),
        .i_mask             ('1),
        .o_value            (o_register_13_bit_field_6),
        .o_value_unmasked   ()
      );
    end
    if (1) begin : g_bit_field_7
      localparam bit [1:0] INITIAL_VALUE = 2'h0;
      rggen_bit_field_if #(2) bit_field_sub_if();
      `rggen_connect_bit_field_if(bit_field_if, bit_field_sub_if, 14, 2)
      rggen_bit_field #(
        .WIDTH              (2),
        .INITIAL_VALUE      (INITIAL_VALUE),
        .SW_READ_ACTION     (RGGEN_READ_DEFAULT),
        .SW_WRITE_ACTION    (RGGEN_WRITE_1_CLEAR),
        .SW_WRITE_ONCE      (0),
        .HW_ACCESS          (3'b010),
        .STORAGE            (1),
        .EXTERNAL_READ_DATA (0),
        .TRIGGER            (0)
      ) u_bit_field (
        .i_clk              (i_clk),
        .i_rst_n            (i_rst_n),
        .bit_field_if       (bit_field_sub_if),
        .o_write_trigger    (),
        .o_read_trigger     (),
        .i_sw_write_enable  ('1),
        .i_hw_write_enable  ('0),
        .i_hw_write_data    ('0),
        .i_hw_set           (i_register_13_bit_field_7_hw_set),
        .i_hw_clear         ('0),
        .i_value            ('0),
        .i_mask             ('1),
        .o_value            (o_register_13_bit_field_7),
        .o_value_unmasked   ()
      );
    end
    if (1) begin : g_bit_field_8
      localparam bit [1:0] INITIAL_VALUE = 2'h0;
      rggen_bit_field_if #(2) bit_field_sub_if();
      `rggen_connect_bit_field_if(bit_field_if, bit_field_sub_if, 16, 2)
      rggen_bit_field #(
        .WIDTH              (2),
        .INITIAL_VALUE      (INITIAL_VALUE),
        .SW_READ_ACTION     (RGGEN_READ_DEFAULT),
        .SW_WRITE_ACTION    (RGGEN_WRITE_DEFAULT),
        .SW_WRITE_ONCE      (0),
        .HW_ACCESS          (3'b001),
        .STORAGE            (1),
        .EXTERNAL_READ_DATA (0),
        .TRIGGER            (0)
      ) u_bit_field (
        .i_clk              (i_clk),
        .i_rst_n            (i_rst_n),
        .bit_field_if       (bit_field_sub_if),
        .o_write_trigger    (),
        .o_read_trigger     (),
        .i_sw_write_enable  ('1),
        .i_hw_write_enable  (i_register_13_bit_field_8_hw_write_enable),
        .i_hw_write_data    (i_register_13_bit_field_8_hw_write_data),
        .i_hw_set           ('0),
        .i_hw_clear         ('0),
        .i_value            ('0),
        .i_mask             ('1),
        .o_value            (o_register_13_bit_field_8),
        .o_value_unmasked   ()
      );
    end
  end endgenerate
  generate if (1) begin : g_register_14
    rggen_bit_field_if #(32) bit_field_if();
    `rggen_tie_off_unused_signals(32, 32'h00000001, bit_field_if)
    rggen_default_register #(
      .READABLE       (1),
      .WRITABLE       (1),
      .ADDRESS_WIDTH  (8),
      .OFFSET_ADDRESS (8'h70),
      .BUS_WIDTH      (32),
      .DATA_WIDTH     (32),
      .VALUE_WIDTH    (64)
    ) u_register (
      .i_clk        (i_clk),
      .i_rst_n      (i_rst_n),
      .register_if  (register_if[24]),
      .bit_field_if (bit_field_if)
    );
    if (1) begin : g_bit_field_0
      rggen_bit_field_if #(1) bit_field_sub_if();
      `rggen_connect_bit_field_if(bit_field_if, bit_field_sub_if, 0, 1)
      rggen_bit_field #(
        .WIDTH              (1),
        .STORAGE            (0),
        .EXTERNAL_READ_DATA (1),
        .TRIGGER            (0)
      ) u_bit_field (
        .i_clk              (i_clk),
        .i_rst_n            (i_rst_n),
        .bit_field_if       (bit_field_sub_if),
        .o_write_trigger    (),
        .o_read_trigger     (),
        .i_sw_write_enable  ('0),
        .i_hw_write_enable  ('0),
        .i_hw_write_data    ('0),
        .i_hw_set           ('0),
        .i_hw_clear         ('0),
        .i_value            (i_register_14_bit_field_0),
        .i_mask             ('1),
        .o_value            (),
        .o_value_unmasked   ()
      );
    end
  end endgenerate
  generate if (1) begin : g_register_15
    rggen_bit_field_if #(32) bit_field_if();
    `rggen_tie_off_unused_signals(32, 32'h00000001, bit_field_if)
    rggen_default_register #(
      .READABLE       (1),
      .WRITABLE       (1),
      .ADDRESS_WIDTH  (8),
      .OFFSET_ADDRESS (8'h74),
      .BUS_WIDTH      (32),
      .DATA_WIDTH     (32),
      .VALUE_WIDTH    (64)
    ) u_register (
      .i_clk        (i_clk),
      .i_rst_n      (i_rst_n),
      .register_if  (register_if[25]),
      .bit_field_if (bit_field_if)
    );
    if (1) begin : g_bit_field_0
      localparam bit INITIAL_VALUE = 1'h0;
      rggen_bit_field_if #(1) bit_field_sub_if();
      `rggen_connect_bit_field_if(bit_field_if, bit_field_sub_if, 0, 1)
      rggen_bit_field #(
        .WIDTH          (1),
        .INITIAL_VALUE  (INITIAL_VALUE),
        .SW_READ_ACTION (RGGEN_READ_NONE),
        .SW_WRITE_ONCE  (0),
        .TRIGGER        (0)
      ) u_bit_field (
        .i_clk              (i_clk),
        .i_rst_n            (i_rst_n),
        .bit_field_if       (bit_field_sub_if),
        .o_write_trigger    (),
        .o_read_trigger     (),
        .i_sw_write_enable  ('1),
        .i_hw_write_enable  ('0),
        .i_hw_write_data    ('0),
        .i_hw_set           ('0),
        .i_hw_clear         ('0),
        .i_value            ('0),
        .i_mask             ('1),
        .o_value            (o_register_15_bit_field_0),
        .o_value_unmasked   ()
      );
    end
  end endgenerate
  generate if (1) begin : g_register_17
    rggen_external_register #(
      .ADDRESS_WIDTH  (8),
      .BUS_WIDTH      (32),
      .VALUE_WIDTH    (64),
      .STROBE_WIDTH   (REGISTER_17_STROBE_WIDTH),
      .START_ADDRESS  (8'h80),
      .BYTE_SIZE      (128)
    ) u_register (
      .i_clk        (i_clk),
      .i_rst_n      (i_rst_n),
      .register_if  (register_if[26]),
      .bus_if       (register_17_bus_if)
    );
  end endgenerate
endmodule
