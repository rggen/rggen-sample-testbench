`include "rggen_rtl_macros.vh"
module block_0 #(
  parameter ADDRESS_WIDTH = 8,
  parameter PRE_DECODE = 0,
  parameter [ADDRESS_WIDTH-1:0] BASE_ADDRESS = 0,
  parameter ERROR_STATUS = 0,
  parameter [31:0] DEFAULT_READ_DATA = 0,
  parameter [15:0] REGISTER_9_BIT_FIELD_1_INITIAL_VALUE = {4{4'h0}}
)(
  input i_psel,
  input i_penable,
  input [ADDRESS_WIDTH-1:0] i_paddr,
  input [2:0] i_pprot,
  input i_pwrite,
  input [3:0] i_pstrb,
  input [31:0] i_pwdata,
  output o_pready,
  output [31:0] o_prdata,
  output o_pslverr,
  input i_clk,
  input i_rst_n,
  output [3:0] o_register_0_bit_field_0,
  output [3:0] o_register_0_bit_field_1,
  output o_register_0_bit_field_2,
  output [1:0] o_register_0_bit_field_3,
  output [1:0] o_register_0_bit_field_4,
  output [1:0] o_register_0_bit_field_5,
  output o_register_1,
  input [3:0] i_register_2_bit_field_0,
  input [3:0] i_register_2_bit_field_1,
  output [3:0] o_register_3_bit_field_0,
  output [3:0] o_register_3_bit_field_1,
  output [3:0] o_register_3_bit_field_2_trigger,
  output [3:0] o_register_3_bit_field_3_trigger,
  input [3:0] i_register_4_bit_field_0_set,
  output [3:0] o_register_4_bit_field_0,
  input [3:0] i_register_4_bit_field_1_set,
  output [3:0] o_register_4_bit_field_1,
  output [3:0] o_register_4_bit_field_1_unmasked,
  input [3:0] i_register_4_bit_field_3_clear,
  output [3:0] o_register_4_bit_field_3,
  input i_register_5_bit_field_0_clear,
  output [1:0] o_register_5_bit_field_0,
  output [1:0] o_register_5_bit_field_1,
  input i_register_5_bit_field_2_set,
  input [1:0] i_register_5_bit_field_2,
  output [1:0] o_register_5_bit_field_2,
  input [1:0] i_register_5_bit_field_3,
  output [1:0] o_register_5_bit_field_3,
  input i_register_5_bit_field_4_enable,
  output [1:0] o_register_5_bit_field_4,
  output [1:0] o_register_5_bit_field_5,
  output [1:0] o_register_5_bit_field_6,
  input i_register_5_bit_field_7_lock,
  output [1:0] o_register_5_bit_field_7,
  output [1:0] o_register_5_bit_field_8,
  output [1:0] o_register_5_bit_field_9,
  input [3:0] i_register_6_bit_field_0_set,
  output [3:0] o_register_6_bit_field_0,
  input [3:0] i_register_6_bit_field_1_set,
  output [3:0] o_register_6_bit_field_1,
  output [3:0] o_register_6_bit_field_1_unmasked,
  input [3:0] i_register_6_bit_field_3_set,
  output [3:0] o_register_6_bit_field_3,
  input [3:0] i_register_6_bit_field_4_set,
  output [3:0] o_register_6_bit_field_4,
  output [3:0] o_register_6_bit_field_4_unmasked,
  input [3:0] i_register_6_bit_field_6_clear,
  output [3:0] o_register_6_bit_field_6,
  input [3:0] i_register_6_bit_field_7_clear,
  output [3:0] o_register_6_bit_field_7,
  output [3:0] o_register_6_bit_field_8,
  output [3:0] o_register_6_bit_field_9,
  output [3:0] o_register_7_bit_field_0,
  output [3:0] o_register_7_bit_field_1,
  output [3:0] o_register_7_bit_field_2,
  output [3:0] o_register_7_bit_field_3,
  input [3:0] i_register_8_bit_field_0_set,
  output [3:0] o_register_8_bit_field_0,
  input [3:0] i_register_8_bit_field_1_clear,
  output [3:0] o_register_8_bit_field_1,
  input [3:0] i_register_8_bit_field_2_set,
  output [3:0] o_register_8_bit_field_2,
  input [3:0] i_register_8_bit_field_3_clear,
  output [3:0] o_register_8_bit_field_3,
  output [3:0] o_register_8_bit_field_4,
  output [3:0] o_register_8_bit_field_5,
  output [63:0] o_register_9_bit_field_0,
  output [63:0] o_register_9_bit_field_1,
  output [63:0] o_register_9_bit_field_2,
  output [255:0] o_register_10_bit_field_0,
  output [255:0] o_register_10_bit_field_1,
  output o_register_11_bit_field_0,
  output o_register_12_bit_field_0,
  output o_register_14_valid,
  output [1:0] o_register_14_access,
  output [7:0] o_register_14_address,
  output [31:0] o_register_14_data,
  output [3:0] o_register_14_strobe,
  input i_register_14_ready,
  input [1:0] i_register_14_status,
  input [31:0] i_register_14_data
);
  wire w_register_valid;
  wire [1:0] w_register_access;
  wire [7:0] w_register_address;
  wire [31:0] w_register_write_data;
  wire [3:0] w_register_strobe;
  wire [23:0] w_register_active;
  wire [23:0] w_register_ready;
  wire [47:0] w_register_status;
  wire [767:0] w_register_read_data;
  wire [1535:0] w_register_value;
  rggen_apb_adapter #(
    .ADDRESS_WIDTH        (ADDRESS_WIDTH),
    .LOCAL_ADDRESS_WIDTH  (8),
    .BUS_WIDTH            (32),
    .REGISTERS            (24),
    .PRE_DECODE           (PRE_DECODE),
    .BASE_ADDRESS         (BASE_ADDRESS),
    .BYTE_SIZE            (256),
    .ERROR_STATUS         (ERROR_STATUS),
    .DEFAULT_READ_DATA    (DEFAULT_READ_DATA)
  ) u_adapter (
    .i_clk                  (i_clk),
    .i_rst_n                (i_rst_n),
    .i_psel                 (i_psel),
    .i_penable              (i_penable),
    .i_paddr                (i_paddr),
    .i_pprot                (i_pprot),
    .i_pwrite               (i_pwrite),
    .i_pstrb                (i_pstrb),
    .i_pwdata               (i_pwdata),
    .o_pready               (o_pready),
    .o_prdata               (o_prdata),
    .o_pslverr              (o_pslverr),
    .o_register_valid       (w_register_valid),
    .o_register_access      (w_register_access),
    .o_register_address     (w_register_address),
    .o_register_write_data  (w_register_write_data),
    .o_register_strobe      (w_register_strobe),
    .i_register_active      (w_register_active),
    .i_register_ready       (w_register_ready),
    .i_register_status      (w_register_status),
    .i_register_read_data   (w_register_read_data)
  );
  generate if (1) begin : g_register_0
    wire w_bit_field_valid;
    wire [31:0] w_bit_field_read_mask;
    wire [31:0] w_bit_field_write_mask;
    wire [31:0] w_bit_field_write_data;
    wire [31:0] w_bit_field_read_data;
    wire [31:0] w_bit_field_value;
    rggen_default_register #(
      .READABLE       (1),
      .WRITABLE       (1),
      .ADDRESS_WIDTH  (8),
      .OFFSET_ADDRESS (8'h00),
      .BUS_WIDTH      (32),
      .DATA_WIDTH     (32),
      .VALID_BITS     (32'h00007fff),
      .REGISTER_INDEX (0)
    ) u_register (
      .i_clk                  (i_clk),
      .i_rst_n                (i_rst_n),
      .i_register_valid       (w_register_valid),
      .i_register_access      (w_register_access),
      .i_register_address     (w_register_address),
      .i_register_write_data  (w_register_write_data),
      .i_register_strobe      (w_register_strobe),
      .o_register_active      (w_register_active[0+:1]),
      .o_register_ready       (w_register_ready[0+:1]),
      .o_register_status      (w_register_status[0+:2]),
      .o_register_read_data   (w_register_read_data[0+:32]),
      .o_register_value       (w_register_value[0+:32]),
      .o_bit_field_valid      (w_bit_field_valid),
      .o_bit_field_read_mask  (w_bit_field_read_mask),
      .o_bit_field_write_mask (w_bit_field_write_mask),
      .o_bit_field_write_data (w_bit_field_write_data),
      .i_bit_field_read_data  (w_bit_field_read_data),
      .i_bit_field_value      (w_bit_field_value)
    );
    if (1) begin : g_bit_field_0
      rggen_bit_field #(
        .WIDTH          (4),
        .INITIAL_VALUE  (`rggen_slice(4'h0, 4, 0)),
        .SW_READ_ACTION (`RGGEN_READ_DEFAULT),
        .SW_WRITE_ONCE  (0)
      ) u_bit_field (
        .i_clk              (i_clk),
        .i_rst_n            (i_rst_n),
        .i_sw_valid         (w_bit_field_valid),
        .i_sw_read_mask     (w_bit_field_read_mask[0+:4]),
        .i_sw_write_enable  (1'b1),
        .i_sw_write_mask    (w_bit_field_write_mask[0+:4]),
        .i_sw_write_data    (w_bit_field_write_data[0+:4]),
        .o_sw_read_data     (w_bit_field_read_data[0+:4]),
        .o_sw_value         (w_bit_field_value[0+:4]),
        .i_hw_write_enable  (1'b0),
        .i_hw_write_data    ({4{1'b0}}),
        .i_hw_set           ({4{1'b0}}),
        .i_hw_clear         ({4{1'b0}}),
        .i_value            ({4{1'b0}}),
        .i_mask             ({4{1'b1}}),
        .o_value            (o_register_0_bit_field_0),
        .o_value_unmasked   ()
      );
    end
    if (1) begin : g_bit_field_1
      rggen_bit_field #(
        .WIDTH          (4),
        .INITIAL_VALUE  (`rggen_slice(4'h0, 4, 0)),
        .SW_READ_ACTION (`RGGEN_READ_DEFAULT),
        .SW_WRITE_ONCE  (0)
      ) u_bit_field (
        .i_clk              (i_clk),
        .i_rst_n            (i_rst_n),
        .i_sw_valid         (w_bit_field_valid),
        .i_sw_read_mask     (w_bit_field_read_mask[4+:4]),
        .i_sw_write_enable  (1'b1),
        .i_sw_write_mask    (w_bit_field_write_mask[4+:4]),
        .i_sw_write_data    (w_bit_field_write_data[4+:4]),
        .o_sw_read_data     (w_bit_field_read_data[4+:4]),
        .o_sw_value         (w_bit_field_value[4+:4]),
        .i_hw_write_enable  (1'b0),
        .i_hw_write_data    ({4{1'b0}}),
        .i_hw_set           ({4{1'b0}}),
        .i_hw_clear         ({4{1'b0}}),
        .i_value            ({4{1'b0}}),
        .i_mask             ({4{1'b1}}),
        .o_value            (o_register_0_bit_field_1),
        .o_value_unmasked   ()
      );
    end
    if (1) begin : g_bit_field_2
      rggen_bit_field #(
        .WIDTH          (1),
        .INITIAL_VALUE  (`rggen_slice(1'h0, 1, 0)),
        .SW_READ_ACTION (`RGGEN_READ_DEFAULT),
        .SW_WRITE_ONCE  (0)
      ) u_bit_field (
        .i_clk              (i_clk),
        .i_rst_n            (i_rst_n),
        .i_sw_valid         (w_bit_field_valid),
        .i_sw_read_mask     (w_bit_field_read_mask[8+:1]),
        .i_sw_write_enable  (1'b1),
        .i_sw_write_mask    (w_bit_field_write_mask[8+:1]),
        .i_sw_write_data    (w_bit_field_write_data[8+:1]),
        .o_sw_read_data     (w_bit_field_read_data[8+:1]),
        .o_sw_value         (w_bit_field_value[8+:1]),
        .i_hw_write_enable  (1'b0),
        .i_hw_write_data    ({1{1'b0}}),
        .i_hw_set           ({1{1'b0}}),
        .i_hw_clear         ({1{1'b0}}),
        .i_value            ({1{1'b0}}),
        .i_mask             ({1{1'b1}}),
        .o_value            (o_register_0_bit_field_2),
        .o_value_unmasked   ()
      );
    end
    if (1) begin : g_bit_field_3
      rggen_bit_field #(
        .WIDTH          (2),
        .INITIAL_VALUE  (`rggen_slice(2'h0, 2, 0)),
        .SW_READ_ACTION (`RGGEN_READ_DEFAULT),
        .SW_WRITE_ONCE  (1)
      ) u_bit_field (
        .i_clk              (i_clk),
        .i_rst_n            (i_rst_n),
        .i_sw_valid         (w_bit_field_valid),
        .i_sw_read_mask     (w_bit_field_read_mask[9+:2]),
        .i_sw_write_enable  (1'b1),
        .i_sw_write_mask    (w_bit_field_write_mask[9+:2]),
        .i_sw_write_data    (w_bit_field_write_data[9+:2]),
        .o_sw_read_data     (w_bit_field_read_data[9+:2]),
        .o_sw_value         (w_bit_field_value[9+:2]),
        .i_hw_write_enable  (1'b0),
        .i_hw_write_data    ({2{1'b0}}),
        .i_hw_set           ({2{1'b0}}),
        .i_hw_clear         ({2{1'b0}}),
        .i_value            ({2{1'b0}}),
        .i_mask             ({2{1'b1}}),
        .o_value            (o_register_0_bit_field_3),
        .o_value_unmasked   ()
      );
    end
    if (1) begin : g_bit_field_4
      rggen_bit_field #(
        .WIDTH          (2),
        .INITIAL_VALUE  (`rggen_slice(2'h0, 2, 0)),
        .SW_READ_ACTION (`RGGEN_READ_CLEAR)
      ) u_bit_field (
        .i_clk              (i_clk),
        .i_rst_n            (i_rst_n),
        .i_sw_valid         (w_bit_field_valid),
        .i_sw_read_mask     (w_bit_field_read_mask[11+:2]),
        .i_sw_write_enable  (1'b1),
        .i_sw_write_mask    (w_bit_field_write_mask[11+:2]),
        .i_sw_write_data    (w_bit_field_write_data[11+:2]),
        .o_sw_read_data     (w_bit_field_read_data[11+:2]),
        .o_sw_value         (w_bit_field_value[11+:2]),
        .i_hw_write_enable  (1'b0),
        .i_hw_write_data    ({2{1'b0}}),
        .i_hw_set           ({2{1'b0}}),
        .i_hw_clear         ({2{1'b0}}),
        .i_value            ({2{1'b0}}),
        .i_mask             ({2{1'b1}}),
        .o_value            (o_register_0_bit_field_4),
        .o_value_unmasked   ()
      );
    end
    if (1) begin : g_bit_field_5
      rggen_bit_field #(
        .WIDTH          (2),
        .INITIAL_VALUE  (`rggen_slice(2'h0, 2, 0)),
        .SW_READ_ACTION (`RGGEN_READ_SET)
      ) u_bit_field (
        .i_clk              (i_clk),
        .i_rst_n            (i_rst_n),
        .i_sw_valid         (w_bit_field_valid),
        .i_sw_read_mask     (w_bit_field_read_mask[13+:2]),
        .i_sw_write_enable  (1'b1),
        .i_sw_write_mask    (w_bit_field_write_mask[13+:2]),
        .i_sw_write_data    (w_bit_field_write_data[13+:2]),
        .o_sw_read_data     (w_bit_field_read_data[13+:2]),
        .o_sw_value         (w_bit_field_value[13+:2]),
        .i_hw_write_enable  (1'b0),
        .i_hw_write_data    ({2{1'b0}}),
        .i_hw_set           ({2{1'b0}}),
        .i_hw_clear         ({2{1'b0}}),
        .i_value            ({2{1'b0}}),
        .i_mask             ({2{1'b1}}),
        .o_value            (o_register_0_bit_field_5),
        .o_value_unmasked   ()
      );
    end
  end endgenerate
  generate if (1) begin : g_register_1
    wire w_bit_field_valid;
    wire [31:0] w_bit_field_read_mask;
    wire [31:0] w_bit_field_write_mask;
    wire [31:0] w_bit_field_write_data;
    wire [31:0] w_bit_field_read_data;
    wire [31:0] w_bit_field_value;
    rggen_default_register #(
      .READABLE       (1),
      .WRITABLE       (1),
      .ADDRESS_WIDTH  (8),
      .OFFSET_ADDRESS (8'h04),
      .BUS_WIDTH      (32),
      .DATA_WIDTH     (32),
      .VALID_BITS     (32'h00000001),
      .REGISTER_INDEX (0)
    ) u_register (
      .i_clk                  (i_clk),
      .i_rst_n                (i_rst_n),
      .i_register_valid       (w_register_valid),
      .i_register_access      (w_register_access),
      .i_register_address     (w_register_address),
      .i_register_write_data  (w_register_write_data),
      .i_register_strobe      (w_register_strobe),
      .o_register_active      (w_register_active[1+:1]),
      .o_register_ready       (w_register_ready[1+:1]),
      .o_register_status      (w_register_status[2+:2]),
      .o_register_read_data   (w_register_read_data[32+:32]),
      .o_register_value       (w_register_value[64+:32]),
      .o_bit_field_valid      (w_bit_field_valid),
      .o_bit_field_read_mask  (w_bit_field_read_mask),
      .o_bit_field_write_mask (w_bit_field_write_mask),
      .o_bit_field_write_data (w_bit_field_write_data),
      .i_bit_field_read_data  (w_bit_field_read_data),
      .i_bit_field_value      (w_bit_field_value)
    );
    if (1) begin : g_register_1
      rggen_bit_field #(
        .WIDTH          (1),
        .INITIAL_VALUE  (`rggen_slice(1'h0, 1, 0)),
        .SW_READ_ACTION (`RGGEN_READ_DEFAULT),
        .SW_WRITE_ONCE  (0)
      ) u_bit_field (
        .i_clk              (i_clk),
        .i_rst_n            (i_rst_n),
        .i_sw_valid         (w_bit_field_valid),
        .i_sw_read_mask     (w_bit_field_read_mask[0+:1]),
        .i_sw_write_enable  (1'b1),
        .i_sw_write_mask    (w_bit_field_write_mask[0+:1]),
        .i_sw_write_data    (w_bit_field_write_data[0+:1]),
        .o_sw_read_data     (w_bit_field_read_data[0+:1]),
        .o_sw_value         (w_bit_field_value[0+:1]),
        .i_hw_write_enable  (1'b0),
        .i_hw_write_data    ({1{1'b0}}),
        .i_hw_set           ({1{1'b0}}),
        .i_hw_clear         ({1{1'b0}}),
        .i_value            ({1{1'b0}}),
        .i_mask             ({1{1'b1}}),
        .o_value            (o_register_1),
        .o_value_unmasked   ()
      );
    end
  end endgenerate
  generate if (1) begin : g_register_2
    wire w_bit_field_valid;
    wire [31:0] w_bit_field_read_mask;
    wire [31:0] w_bit_field_write_mask;
    wire [31:0] w_bit_field_write_data;
    wire [31:0] w_bit_field_read_data;
    wire [31:0] w_bit_field_value;
    rggen_default_register #(
      .READABLE       (1),
      .WRITABLE       (0),
      .ADDRESS_WIDTH  (8),
      .OFFSET_ADDRESS (8'h08),
      .BUS_WIDTH      (32),
      .DATA_WIDTH     (32),
      .VALID_BITS     (32'h00ff0f0f),
      .REGISTER_INDEX (0)
    ) u_register (
      .i_clk                  (i_clk),
      .i_rst_n                (i_rst_n),
      .i_register_valid       (w_register_valid),
      .i_register_access      (w_register_access),
      .i_register_address     (w_register_address),
      .i_register_write_data  (w_register_write_data),
      .i_register_strobe      (w_register_strobe),
      .o_register_active      (w_register_active[2+:1]),
      .o_register_ready       (w_register_ready[2+:1]),
      .o_register_status      (w_register_status[4+:2]),
      .o_register_read_data   (w_register_read_data[64+:32]),
      .o_register_value       (w_register_value[128+:32]),
      .o_bit_field_valid      (w_bit_field_valid),
      .o_bit_field_read_mask  (w_bit_field_read_mask),
      .o_bit_field_write_mask (w_bit_field_write_mask),
      .o_bit_field_write_data (w_bit_field_write_data),
      .i_bit_field_read_data  (w_bit_field_read_data),
      .i_bit_field_value      (w_bit_field_value)
    );
    if (1) begin : g_bit_field_0
      rggen_bit_field #(
        .WIDTH    (4),
        .STORAGE  (0)
      ) u_bit_field (
        .i_clk              (1'b0),
        .i_rst_n            (1'b0),
        .i_sw_valid         (w_bit_field_valid),
        .i_sw_read_mask     (w_bit_field_read_mask[0+:4]),
        .i_sw_write_enable  (1'b0),
        .i_sw_write_mask    (w_bit_field_write_mask[0+:4]),
        .i_sw_write_data    (w_bit_field_write_data[0+:4]),
        .o_sw_read_data     (w_bit_field_read_data[0+:4]),
        .o_sw_value         (w_bit_field_value[0+:4]),
        .i_hw_write_enable  (1'b0),
        .i_hw_write_data    ({4{1'b0}}),
        .i_hw_set           ({4{1'b0}}),
        .i_hw_clear         ({4{1'b0}}),
        .i_value            (i_register_2_bit_field_0),
        .i_mask             ({4{1'b1}}),
        .o_value            (),
        .o_value_unmasked   ()
      );
    end
    if (1) begin : g_bit_field_1
      rggen_bit_field #(
        .WIDTH    (4),
        .STORAGE  (0)
      ) u_bit_field (
        .i_clk              (1'b0),
        .i_rst_n            (1'b0),
        .i_sw_valid         (w_bit_field_valid),
        .i_sw_read_mask     (w_bit_field_read_mask[8+:4]),
        .i_sw_write_enable  (1'b0),
        .i_sw_write_mask    (w_bit_field_write_mask[8+:4]),
        .i_sw_write_data    (w_bit_field_write_data[8+:4]),
        .o_sw_read_data     (w_bit_field_read_data[8+:4]),
        .o_sw_value         (w_bit_field_value[8+:4]),
        .i_hw_write_enable  (1'b0),
        .i_hw_write_data    ({4{1'b0}}),
        .i_hw_set           ({4{1'b0}}),
        .i_hw_clear         ({4{1'b0}}),
        .i_value            (i_register_2_bit_field_1),
        .i_mask             ({4{1'b1}}),
        .o_value            (),
        .o_value_unmasked   ()
      );
    end
    if (1) begin : g_bit_field_2
      rggen_bit_field #(
        .WIDTH    (8),
        .STORAGE  (0)
      ) u_bit_field (
        .i_clk              (1'b0),
        .i_rst_n            (1'b0),
        .i_sw_valid         (w_bit_field_valid),
        .i_sw_read_mask     (w_bit_field_read_mask[16+:8]),
        .i_sw_write_enable  (1'b0),
        .i_sw_write_mask    (w_bit_field_write_mask[16+:8]),
        .i_sw_write_data    (w_bit_field_write_data[16+:8]),
        .o_sw_read_data     (w_bit_field_read_data[16+:8]),
        .o_sw_value         (w_bit_field_value[16+:8]),
        .i_hw_write_enable  (1'b0),
        .i_hw_write_data    ({8{1'b0}}),
        .i_hw_set           ({8{1'b0}}),
        .i_hw_clear         ({8{1'b0}}),
        .i_value            (`rggen_slice(8'hab, 8, 0)),
        .i_mask             ({8{1'b1}}),
        .o_value            (),
        .o_value_unmasked   ()
      );
    end
  end endgenerate
  generate if (1) begin : g_register_3
    wire w_bit_field_valid;
    wire [31:0] w_bit_field_read_mask;
    wire [31:0] w_bit_field_write_mask;
    wire [31:0] w_bit_field_write_data;
    wire [31:0] w_bit_field_read_data;
    wire [31:0] w_bit_field_value;
    rggen_default_register #(
      .READABLE       (0),
      .WRITABLE       (1),
      .ADDRESS_WIDTH  (8),
      .OFFSET_ADDRESS (8'h08),
      .BUS_WIDTH      (32),
      .DATA_WIDTH     (32),
      .VALID_BITS     (32'h000f0fff),
      .REGISTER_INDEX (0)
    ) u_register (
      .i_clk                  (i_clk),
      .i_rst_n                (i_rst_n),
      .i_register_valid       (w_register_valid),
      .i_register_access      (w_register_access),
      .i_register_address     (w_register_address),
      .i_register_write_data  (w_register_write_data),
      .i_register_strobe      (w_register_strobe),
      .o_register_active      (w_register_active[3+:1]),
      .o_register_ready       (w_register_ready[3+:1]),
      .o_register_status      (w_register_status[6+:2]),
      .o_register_read_data   (w_register_read_data[96+:32]),
      .o_register_value       (w_register_value[192+:32]),
      .o_bit_field_valid      (w_bit_field_valid),
      .o_bit_field_read_mask  (w_bit_field_read_mask),
      .o_bit_field_write_mask (w_bit_field_write_mask),
      .o_bit_field_write_data (w_bit_field_write_data),
      .i_bit_field_read_data  (w_bit_field_read_data),
      .i_bit_field_value      (w_bit_field_value)
    );
    if (1) begin : g_bit_field_0
      rggen_bit_field #(
        .WIDTH          (4),
        .INITIAL_VALUE  (`rggen_slice(4'h0, 4, 0)),
        .SW_READ_ACTION (`RGGEN_READ_NONE),
        .SW_WRITE_ONCE  (0)
      ) u_bit_field (
        .i_clk              (i_clk),
        .i_rst_n            (i_rst_n),
        .i_sw_valid         (w_bit_field_valid),
        .i_sw_read_mask     (w_bit_field_read_mask[0+:4]),
        .i_sw_write_enable  (1'b1),
        .i_sw_write_mask    (w_bit_field_write_mask[0+:4]),
        .i_sw_write_data    (w_bit_field_write_data[0+:4]),
        .o_sw_read_data     (w_bit_field_read_data[0+:4]),
        .o_sw_value         (w_bit_field_value[0+:4]),
        .i_hw_write_enable  (1'b0),
        .i_hw_write_data    ({4{1'b0}}),
        .i_hw_set           ({4{1'b0}}),
        .i_hw_clear         ({4{1'b0}}),
        .i_value            ({4{1'b0}}),
        .i_mask             ({4{1'b1}}),
        .o_value            (o_register_3_bit_field_0),
        .o_value_unmasked   ()
      );
    end
    if (1) begin : g_bit_field_1
      rggen_bit_field #(
        .WIDTH          (4),
        .INITIAL_VALUE  (`rggen_slice(4'h0, 4, 0)),
        .SW_READ_ACTION (`RGGEN_READ_NONE),
        .SW_WRITE_ONCE  (1)
      ) u_bit_field (
        .i_clk              (i_clk),
        .i_rst_n            (i_rst_n),
        .i_sw_valid         (w_bit_field_valid),
        .i_sw_read_mask     (w_bit_field_read_mask[4+:4]),
        .i_sw_write_enable  (1'b1),
        .i_sw_write_mask    (w_bit_field_write_mask[4+:4]),
        .i_sw_write_data    (w_bit_field_write_data[4+:4]),
        .o_sw_read_data     (w_bit_field_read_data[4+:4]),
        .o_sw_value         (w_bit_field_value[4+:4]),
        .i_hw_write_enable  (1'b0),
        .i_hw_write_data    ({4{1'b0}}),
        .i_hw_set           ({4{1'b0}}),
        .i_hw_clear         ({4{1'b0}}),
        .i_value            ({4{1'b0}}),
        .i_mask             ({4{1'b1}}),
        .o_value            (o_register_3_bit_field_1),
        .o_value_unmasked   ()
      );
    end
    if (1) begin : g_bit_field_2
      rggen_bit_field_w01trg #(
        .TRIGGER_VALUE  (1'b0),
        .WIDTH          (4)
      ) u_bit_field (
        .i_clk                  (i_clk),
        .i_rst_n                (i_rst_n),
        .i_bit_field_valid      (w_bit_field_valid),
        .i_bit_field_read_mask  (w_bit_field_read_mask[8+:4]),
        .i_bit_field_write_mask (w_bit_field_write_mask[8+:4]),
        .i_bit_field_write_data (w_bit_field_write_data[8+:4]),
        .o_bit_field_read_data  (w_bit_field_read_data[8+:4]),
        .o_bit_field_value      (w_bit_field_value[8+:4]),
        .o_trigger              (o_register_3_bit_field_2_trigger)
      );
    end
    if (1) begin : g_bit_field_3
      rggen_bit_field_w01trg #(
        .TRIGGER_VALUE  (1'b1),
        .WIDTH          (4)
      ) u_bit_field (
        .i_clk                  (i_clk),
        .i_rst_n                (i_rst_n),
        .i_bit_field_valid      (w_bit_field_valid),
        .i_bit_field_read_mask  (w_bit_field_read_mask[16+:4]),
        .i_bit_field_write_mask (w_bit_field_write_mask[16+:4]),
        .i_bit_field_write_data (w_bit_field_write_data[16+:4]),
        .o_bit_field_read_data  (w_bit_field_read_data[16+:4]),
        .o_bit_field_value      (w_bit_field_value[16+:4]),
        .o_trigger              (o_register_3_bit_field_3_trigger)
      );
    end
  end endgenerate
  generate if (1) begin : g_register_4
    wire w_bit_field_valid;
    wire [31:0] w_bit_field_read_mask;
    wire [31:0] w_bit_field_write_mask;
    wire [31:0] w_bit_field_write_data;
    wire [31:0] w_bit_field_read_data;
    wire [31:0] w_bit_field_value;
    rggen_default_register #(
      .READABLE       (1),
      .WRITABLE       (0),
      .ADDRESS_WIDTH  (8),
      .OFFSET_ADDRESS (8'h0c),
      .BUS_WIDTH      (32),
      .DATA_WIDTH     (32),
      .VALID_BITS     (32'h000fff0f),
      .REGISTER_INDEX (0)
    ) u_register (
      .i_clk                  (i_clk),
      .i_rst_n                (i_rst_n),
      .i_register_valid       (w_register_valid),
      .i_register_access      (w_register_access),
      .i_register_address     (w_register_address),
      .i_register_write_data  (w_register_write_data),
      .i_register_strobe      (w_register_strobe),
      .o_register_active      (w_register_active[4+:1]),
      .o_register_ready       (w_register_ready[4+:1]),
      .o_register_status      (w_register_status[8+:2]),
      .o_register_read_data   (w_register_read_data[128+:32]),
      .o_register_value       (w_register_value[256+:32]),
      .o_bit_field_valid      (w_bit_field_valid),
      .o_bit_field_read_mask  (w_bit_field_read_mask),
      .o_bit_field_write_mask (w_bit_field_write_mask),
      .o_bit_field_write_data (w_bit_field_write_data),
      .i_bit_field_read_data  (w_bit_field_read_data),
      .i_bit_field_value      (w_bit_field_value)
    );
    if (1) begin : g_bit_field_0
      rggen_bit_field #(
        .WIDTH            (4),
        .INITIAL_VALUE    (`rggen_slice(4'h0, 4, 0)),
        .SW_READ_ACTION   (`RGGEN_READ_CLEAR),
        .SW_WRITE_ACTION  (`RGGEN_WRITE_NONE)
      ) u_bit_field (
        .i_clk              (i_clk),
        .i_rst_n            (i_rst_n),
        .i_sw_valid         (w_bit_field_valid),
        .i_sw_read_mask     (w_bit_field_read_mask[0+:4]),
        .i_sw_write_enable  (1'b0),
        .i_sw_write_mask    (w_bit_field_write_mask[0+:4]),
        .i_sw_write_data    (w_bit_field_write_data[0+:4]),
        .o_sw_read_data     (w_bit_field_read_data[0+:4]),
        .o_sw_value         (w_bit_field_value[0+:4]),
        .i_hw_write_enable  (1'b0),
        .i_hw_write_data    ({4{1'b0}}),
        .i_hw_set           (i_register_4_bit_field_0_set),
        .i_hw_clear         ({4{1'b0}}),
        .i_value            ({4{1'b0}}),
        .i_mask             ({4{1'b1}}),
        .o_value            (o_register_4_bit_field_0),
        .o_value_unmasked   ()
      );
    end
    if (1) begin : g_bit_field_1
      rggen_bit_field #(
        .WIDTH            (4),
        .INITIAL_VALUE    (`rggen_slice(4'h0, 4, 0)),
        .SW_READ_ACTION   (`RGGEN_READ_CLEAR),
        .SW_WRITE_ACTION  (`RGGEN_WRITE_NONE)
      ) u_bit_field (
        .i_clk              (i_clk),
        .i_rst_n            (i_rst_n),
        .i_sw_valid         (w_bit_field_valid),
        .i_sw_read_mask     (w_bit_field_read_mask[8+:4]),
        .i_sw_write_enable  (1'b0),
        .i_sw_write_mask    (w_bit_field_write_mask[8+:4]),
        .i_sw_write_data    (w_bit_field_write_data[8+:4]),
        .o_sw_read_data     (w_bit_field_read_data[8+:4]),
        .o_sw_value         (w_bit_field_value[8+:4]),
        .i_hw_write_enable  (1'b0),
        .i_hw_write_data    ({4{1'b0}}),
        .i_hw_set           (i_register_4_bit_field_1_set),
        .i_hw_clear         ({4{1'b0}}),
        .i_value            ({4{1'b0}}),
        .i_mask             (w_register_value[0+:4]),
        .o_value            (o_register_4_bit_field_1),
        .o_value_unmasked   (o_register_4_bit_field_1_unmasked)
      );
    end
    if (1) begin : g_bit_field_2
      rggen_bit_field #(
        .WIDTH    (4),
        .STORAGE  (0)
      ) u_bit_field (
        .i_clk              (1'b0),
        .i_rst_n            (1'b0),
        .i_sw_valid         (w_bit_field_valid),
        .i_sw_read_mask     (w_bit_field_read_mask[12+:4]),
        .i_sw_write_enable  (1'b0),
        .i_sw_write_mask    (w_bit_field_write_mask[12+:4]),
        .i_sw_write_data    (w_bit_field_write_data[12+:4]),
        .o_sw_read_data     (w_bit_field_read_data[12+:4]),
        .o_sw_value         (w_bit_field_value[12+:4]),
        .i_hw_write_enable  (1'b0),
        .i_hw_write_data    ({4{1'b0}}),
        .i_hw_set           ({4{1'b0}}),
        .i_hw_clear         ({4{1'b0}}),
        .i_value            (w_register_value[264+:4]),
        .i_mask             ({4{1'b1}}),
        .o_value            (),
        .o_value_unmasked   ()
      );
    end
    if (1) begin : g_bit_field_3
      rggen_bit_field #(
        .WIDTH            (4),
        .INITIAL_VALUE    (`rggen_slice(4'h0, 4, 0)),
        .SW_READ_ACTION   (`RGGEN_READ_SET),
        .SW_WRITE_ACTION  (`RGGEN_WRITE_NONE)
      ) u_bit_field (
        .i_clk              (i_clk),
        .i_rst_n            (i_rst_n),
        .i_sw_valid         (w_bit_field_valid),
        .i_sw_read_mask     (w_bit_field_read_mask[16+:4]),
        .i_sw_write_enable  (1'b0),
        .i_sw_write_mask    (w_bit_field_write_mask[16+:4]),
        .i_sw_write_data    (w_bit_field_write_data[16+:4]),
        .o_sw_read_data     (w_bit_field_read_data[16+:4]),
        .o_sw_value         (w_bit_field_value[16+:4]),
        .i_hw_write_enable  (1'b0),
        .i_hw_write_data    ({4{1'b0}}),
        .i_hw_set           ({4{1'b0}}),
        .i_hw_clear         (i_register_4_bit_field_3_clear),
        .i_value            ({4{1'b0}}),
        .i_mask             ({4{1'b1}}),
        .o_value            (o_register_4_bit_field_3),
        .o_value_unmasked   ()
      );
    end
  end endgenerate
  generate if (1) begin : g_register_5
    wire w_bit_field_valid;
    wire [31:0] w_bit_field_read_mask;
    wire [31:0] w_bit_field_write_mask;
    wire [31:0] w_bit_field_write_data;
    wire [31:0] w_bit_field_read_data;
    wire [31:0] w_bit_field_value;
    rggen_default_register #(
      .READABLE       (1),
      .WRITABLE       (1),
      .ADDRESS_WIDTH  (8),
      .OFFSET_ADDRESS (8'h10),
      .BUS_WIDTH      (32),
      .DATA_WIDTH     (32),
      .VALID_BITS     (32'h003f3fff),
      .REGISTER_INDEX (0)
    ) u_register (
      .i_clk                  (i_clk),
      .i_rst_n                (i_rst_n),
      .i_register_valid       (w_register_valid),
      .i_register_access      (w_register_access),
      .i_register_address     (w_register_address),
      .i_register_write_data  (w_register_write_data),
      .i_register_strobe      (w_register_strobe),
      .o_register_active      (w_register_active[5+:1]),
      .o_register_ready       (w_register_ready[5+:1]),
      .o_register_status      (w_register_status[10+:2]),
      .o_register_read_data   (w_register_read_data[160+:32]),
      .o_register_value       (w_register_value[320+:32]),
      .o_bit_field_valid      (w_bit_field_valid),
      .o_bit_field_read_mask  (w_bit_field_read_mask),
      .o_bit_field_write_mask (w_bit_field_write_mask),
      .o_bit_field_write_data (w_bit_field_write_data),
      .i_bit_field_read_data  (w_bit_field_read_data),
      .i_bit_field_value      (w_bit_field_value)
    );
    if (1) begin : g_bit_field_0
      rggen_bit_field #(
        .WIDTH          (2),
        .INITIAL_VALUE  (`rggen_slice(2'h0, 2, 0)),
        .HW_CLEAR_WIDTH (1)
      ) u_bit_field (
        .i_clk              (i_clk),
        .i_rst_n            (i_rst_n),
        .i_sw_valid         (w_bit_field_valid),
        .i_sw_read_mask     (w_bit_field_read_mask[0+:2]),
        .i_sw_write_enable  (1'b1),
        .i_sw_write_mask    (w_bit_field_write_mask[0+:2]),
        .i_sw_write_data    (w_bit_field_write_data[0+:2]),
        .o_sw_read_data     (w_bit_field_read_data[0+:2]),
        .o_sw_value         (w_bit_field_value[0+:2]),
        .i_hw_write_enable  (1'b0),
        .i_hw_write_data    ({2{1'b0}}),
        .i_hw_set           ({2{1'b0}}),
        .i_hw_clear         (i_register_5_bit_field_0_clear),
        .i_value            ({2{1'b0}}),
        .i_mask             ({2{1'b1}}),
        .o_value            (o_register_5_bit_field_0),
        .o_value_unmasked   ()
      );
    end
    if (1) begin : g_bit_field_1
      rggen_bit_field #(
        .WIDTH          (2),
        .INITIAL_VALUE  (`rggen_slice(2'h0, 2, 0)),
        .HW_CLEAR_WIDTH (1)
      ) u_bit_field (
        .i_clk              (i_clk),
        .i_rst_n            (i_rst_n),
        .i_sw_valid         (w_bit_field_valid),
        .i_sw_read_mask     (w_bit_field_read_mask[2+:2]),
        .i_sw_write_enable  (1'b1),
        .i_sw_write_mask    (w_bit_field_write_mask[2+:2]),
        .i_sw_write_data    (w_bit_field_write_data[2+:2]),
        .o_sw_read_data     (w_bit_field_read_data[2+:2]),
        .o_sw_value         (w_bit_field_value[2+:2]),
        .i_hw_write_enable  (1'b0),
        .i_hw_write_data    ({2{1'b0}}),
        .i_hw_set           ({2{1'b0}}),
        .i_hw_clear         (w_register_value[200+:1]),
        .i_value            ({2{1'b0}}),
        .i_mask             ({2{1'b1}}),
        .o_value            (o_register_5_bit_field_1),
        .o_value_unmasked   ()
      );
    end
    if (1) begin : g_bit_field_2
      rggen_bit_field #(
        .WIDTH          (2),
        .INITIAL_VALUE  (`rggen_slice(2'h0, 2, 0))
      ) u_bit_field (
        .i_clk              (i_clk),
        .i_rst_n            (i_rst_n),
        .i_sw_valid         (w_bit_field_valid),
        .i_sw_read_mask     (w_bit_field_read_mask[4+:2]),
        .i_sw_write_enable  (1'b1),
        .i_sw_write_mask    (w_bit_field_write_mask[4+:2]),
        .i_sw_write_data    (w_bit_field_write_data[4+:2]),
        .o_sw_read_data     (w_bit_field_read_data[4+:2]),
        .o_sw_value         (w_bit_field_value[4+:2]),
        .i_hw_write_enable  (i_register_5_bit_field_2_set),
        .i_hw_write_data    (i_register_5_bit_field_2),
        .i_hw_set           ({2{1'b0}}),
        .i_hw_clear         ({2{1'b0}}),
        .i_value            ({2{1'b0}}),
        .i_mask             ({2{1'b1}}),
        .o_value            (o_register_5_bit_field_2),
        .o_value_unmasked   ()
      );
    end
    if (1) begin : g_bit_field_3
      rggen_bit_field #(
        .WIDTH          (2),
        .INITIAL_VALUE  (`rggen_slice(2'h0, 2, 0))
      ) u_bit_field (
        .i_clk              (i_clk),
        .i_rst_n            (i_rst_n),
        .i_sw_valid         (w_bit_field_valid),
        .i_sw_read_mask     (w_bit_field_read_mask[6+:2]),
        .i_sw_write_enable  (1'b1),
        .i_sw_write_mask    (w_bit_field_write_mask[6+:2]),
        .i_sw_write_data    (w_bit_field_write_data[6+:2]),
        .o_sw_read_data     (w_bit_field_read_data[6+:2]),
        .o_sw_value         (w_bit_field_value[6+:2]),
        .i_hw_write_enable  (w_register_value[208+:1]),
        .i_hw_write_data    (i_register_5_bit_field_3),
        .i_hw_set           ({2{1'b0}}),
        .i_hw_clear         ({2{1'b0}}),
        .i_value            ({2{1'b0}}),
        .i_mask             ({2{1'b1}}),
        .o_value            (o_register_5_bit_field_3),
        .o_value_unmasked   ()
      );
    end
    if (1) begin : g_bit_field_4
      rggen_bit_field #(
        .WIDTH                    (2),
        .INITIAL_VALUE            (`rggen_slice(2'h0, 2, 0)),
        .SW_WRITE_ENABLE_POLARITY (`RGGEN_ACTIVE_HIGH)
      ) u_bit_field (
        .i_clk              (i_clk),
        .i_rst_n            (i_rst_n),
        .i_sw_valid         (w_bit_field_valid),
        .i_sw_read_mask     (w_bit_field_read_mask[8+:2]),
        .i_sw_write_enable  (i_register_5_bit_field_4_enable),
        .i_sw_write_mask    (w_bit_field_write_mask[8+:2]),
        .i_sw_write_data    (w_bit_field_write_data[8+:2]),
        .o_sw_read_data     (w_bit_field_read_data[8+:2]),
        .o_sw_value         (w_bit_field_value[8+:2]),
        .i_hw_write_enable  (1'b0),
        .i_hw_write_data    ({2{1'b0}}),
        .i_hw_set           ({2{1'b0}}),
        .i_hw_clear         ({2{1'b0}}),
        .i_value            ({2{1'b0}}),
        .i_mask             ({2{1'b1}}),
        .o_value            (o_register_5_bit_field_4),
        .o_value_unmasked   ()
      );
    end
    if (1) begin : g_bit_field_5
      rggen_bit_field #(
        .WIDTH                    (2),
        .INITIAL_VALUE            (`rggen_slice(2'h0, 2, 0)),
        .SW_WRITE_ENABLE_POLARITY (`RGGEN_ACTIVE_HIGH)
      ) u_bit_field (
        .i_clk              (i_clk),
        .i_rst_n            (i_rst_n),
        .i_sw_valid         (w_bit_field_valid),
        .i_sw_read_mask     (w_bit_field_read_mask[10+:2]),
        .i_sw_write_enable  (w_register_value[8+:1]),
        .i_sw_write_mask    (w_bit_field_write_mask[10+:2]),
        .i_sw_write_data    (w_bit_field_write_data[10+:2]),
        .o_sw_read_data     (w_bit_field_read_data[10+:2]),
        .o_sw_value         (w_bit_field_value[10+:2]),
        .i_hw_write_enable  (1'b0),
        .i_hw_write_data    ({2{1'b0}}),
        .i_hw_set           ({2{1'b0}}),
        .i_hw_clear         ({2{1'b0}}),
        .i_value            ({2{1'b0}}),
        .i_mask             ({2{1'b1}}),
        .o_value            (o_register_5_bit_field_5),
        .o_value_unmasked   ()
      );
    end
    if (1) begin : g_bit_field_6
      rggen_bit_field #(
        .WIDTH                    (2),
        .INITIAL_VALUE            (`rggen_slice(2'h0, 2, 0)),
        .SW_WRITE_ENABLE_POLARITY (`RGGEN_ACTIVE_HIGH)
      ) u_bit_field (
        .i_clk              (i_clk),
        .i_rst_n            (i_rst_n),
        .i_sw_valid         (w_bit_field_valid),
        .i_sw_read_mask     (w_bit_field_read_mask[12+:2]),
        .i_sw_write_enable  (w_register_value[64+:1]),
        .i_sw_write_mask    (w_bit_field_write_mask[12+:2]),
        .i_sw_write_data    (w_bit_field_write_data[12+:2]),
        .o_sw_read_data     (w_bit_field_read_data[12+:2]),
        .o_sw_value         (w_bit_field_value[12+:2]),
        .i_hw_write_enable  (1'b0),
        .i_hw_write_data    ({2{1'b0}}),
        .i_hw_set           ({2{1'b0}}),
        .i_hw_clear         ({2{1'b0}}),
        .i_value            ({2{1'b0}}),
        .i_mask             ({2{1'b1}}),
        .o_value            (o_register_5_bit_field_6),
        .o_value_unmasked   ()
      );
    end
    if (1) begin : g_bit_field_7
      rggen_bit_field #(
        .WIDTH                    (2),
        .INITIAL_VALUE            (`rggen_slice(2'h0, 2, 0)),
        .SW_WRITE_ENABLE_POLARITY (`RGGEN_ACTIVE_LOW)
      ) u_bit_field (
        .i_clk              (i_clk),
        .i_rst_n            (i_rst_n),
        .i_sw_valid         (w_bit_field_valid),
        .i_sw_read_mask     (w_bit_field_read_mask[16+:2]),
        .i_sw_write_enable  (i_register_5_bit_field_7_lock),
        .i_sw_write_mask    (w_bit_field_write_mask[16+:2]),
        .i_sw_write_data    (w_bit_field_write_data[16+:2]),
        .o_sw_read_data     (w_bit_field_read_data[16+:2]),
        .o_sw_value         (w_bit_field_value[16+:2]),
        .i_hw_write_enable  (1'b0),
        .i_hw_write_data    ({2{1'b0}}),
        .i_hw_set           ({2{1'b0}}),
        .i_hw_clear         ({2{1'b0}}),
        .i_value            ({2{1'b0}}),
        .i_mask             ({2{1'b1}}),
        .o_value            (o_register_5_bit_field_7),
        .o_value_unmasked   ()
      );
    end
    if (1) begin : g_bit_field_8
      rggen_bit_field #(
        .WIDTH                    (2),
        .INITIAL_VALUE            (`rggen_slice(2'h0, 2, 0)),
        .SW_WRITE_ENABLE_POLARITY (`RGGEN_ACTIVE_LOW)
      ) u_bit_field (
        .i_clk              (i_clk),
        .i_rst_n            (i_rst_n),
        .i_sw_valid         (w_bit_field_valid),
        .i_sw_read_mask     (w_bit_field_read_mask[18+:2]),
        .i_sw_write_enable  (w_register_value[8+:1]),
        .i_sw_write_mask    (w_bit_field_write_mask[18+:2]),
        .i_sw_write_data    (w_bit_field_write_data[18+:2]),
        .o_sw_read_data     (w_bit_field_read_data[18+:2]),
        .o_sw_value         (w_bit_field_value[18+:2]),
        .i_hw_write_enable  (1'b0),
        .i_hw_write_data    ({2{1'b0}}),
        .i_hw_set           ({2{1'b0}}),
        .i_hw_clear         ({2{1'b0}}),
        .i_value            ({2{1'b0}}),
        .i_mask             ({2{1'b1}}),
        .o_value            (o_register_5_bit_field_8),
        .o_value_unmasked   ()
      );
    end
    if (1) begin : g_bit_field_9
      rggen_bit_field #(
        .WIDTH                    (2),
        .INITIAL_VALUE            (`rggen_slice(2'h0, 2, 0)),
        .SW_WRITE_ENABLE_POLARITY (`RGGEN_ACTIVE_LOW)
      ) u_bit_field (
        .i_clk              (i_clk),
        .i_rst_n            (i_rst_n),
        .i_sw_valid         (w_bit_field_valid),
        .i_sw_read_mask     (w_bit_field_read_mask[20+:2]),
        .i_sw_write_enable  (w_register_value[64+:1]),
        .i_sw_write_mask    (w_bit_field_write_mask[20+:2]),
        .i_sw_write_data    (w_bit_field_write_data[20+:2]),
        .o_sw_read_data     (w_bit_field_read_data[20+:2]),
        .o_sw_value         (w_bit_field_value[20+:2]),
        .i_hw_write_enable  (1'b0),
        .i_hw_write_data    ({2{1'b0}}),
        .i_hw_set           ({2{1'b0}}),
        .i_hw_clear         ({2{1'b0}}),
        .i_value            ({2{1'b0}}),
        .i_mask             ({2{1'b1}}),
        .o_value            (o_register_5_bit_field_9),
        .o_value_unmasked   ()
      );
    end
  end endgenerate
  generate if (1) begin : g_register_6
    wire w_bit_field_valid;
    wire [63:0] w_bit_field_read_mask;
    wire [63:0] w_bit_field_write_mask;
    wire [63:0] w_bit_field_write_data;
    wire [63:0] w_bit_field_read_data;
    wire [63:0] w_bit_field_value;
    rggen_default_register #(
      .READABLE       (1),
      .WRITABLE       (1),
      .ADDRESS_WIDTH  (8),
      .OFFSET_ADDRESS (8'h14),
      .BUS_WIDTH      (32),
      .DATA_WIDTH     (64),
      .VALID_BITS     (64'h000000ffffffffff),
      .REGISTER_INDEX (0)
    ) u_register (
      .i_clk                  (i_clk),
      .i_rst_n                (i_rst_n),
      .i_register_valid       (w_register_valid),
      .i_register_access      (w_register_access),
      .i_register_address     (w_register_address),
      .i_register_write_data  (w_register_write_data),
      .i_register_strobe      (w_register_strobe),
      .o_register_active      (w_register_active[6+:1]),
      .o_register_ready       (w_register_ready[6+:1]),
      .o_register_status      (w_register_status[12+:2]),
      .o_register_read_data   (w_register_read_data[192+:32]),
      .o_register_value       (w_register_value[384+:64]),
      .o_bit_field_valid      (w_bit_field_valid),
      .o_bit_field_read_mask  (w_bit_field_read_mask),
      .o_bit_field_write_mask (w_bit_field_write_mask),
      .o_bit_field_write_data (w_bit_field_write_data),
      .i_bit_field_read_data  (w_bit_field_read_data),
      .i_bit_field_value      (w_bit_field_value)
    );
    if (1) begin : g_bit_field_0
      rggen_bit_field #(
        .WIDTH            (4),
        .INITIAL_VALUE    (`rggen_slice(4'h0, 4, 0)),
        .SW_READ_ACTION   (`RGGEN_READ_DEFAULT),
        .SW_WRITE_ACTION  (`RGGEN_WRITE_0_CLEAR)
      ) u_bit_field (
        .i_clk              (i_clk),
        .i_rst_n            (i_rst_n),
        .i_sw_valid         (w_bit_field_valid),
        .i_sw_read_mask     (w_bit_field_read_mask[0+:4]),
        .i_sw_write_enable  (1'b1),
        .i_sw_write_mask    (w_bit_field_write_mask[0+:4]),
        .i_sw_write_data    (w_bit_field_write_data[0+:4]),
        .o_sw_read_data     (w_bit_field_read_data[0+:4]),
        .o_sw_value         (w_bit_field_value[0+:4]),
        .i_hw_write_enable  (1'b0),
        .i_hw_write_data    ({4{1'b0}}),
        .i_hw_set           (i_register_6_bit_field_0_set),
        .i_hw_clear         ({4{1'b0}}),
        .i_value            ({4{1'b0}}),
        .i_mask             ({4{1'b1}}),
        .o_value            (o_register_6_bit_field_0),
        .o_value_unmasked   ()
      );
    end
    if (1) begin : g_bit_field_1
      rggen_bit_field #(
        .WIDTH            (4),
        .INITIAL_VALUE    (`rggen_slice(4'h0, 4, 0)),
        .SW_READ_ACTION   (`RGGEN_READ_DEFAULT),
        .SW_WRITE_ACTION  (`RGGEN_WRITE_0_CLEAR)
      ) u_bit_field (
        .i_clk              (i_clk),
        .i_rst_n            (i_rst_n),
        .i_sw_valid         (w_bit_field_valid),
        .i_sw_read_mask     (w_bit_field_read_mask[4+:4]),
        .i_sw_write_enable  (1'b1),
        .i_sw_write_mask    (w_bit_field_write_mask[4+:4]),
        .i_sw_write_data    (w_bit_field_write_data[4+:4]),
        .o_sw_read_data     (w_bit_field_read_data[4+:4]),
        .o_sw_value         (w_bit_field_value[4+:4]),
        .i_hw_write_enable  (1'b0),
        .i_hw_write_data    ({4{1'b0}}),
        .i_hw_set           (i_register_6_bit_field_1_set),
        .i_hw_clear         ({4{1'b0}}),
        .i_value            ({4{1'b0}}),
        .i_mask             (w_register_value[0+:4]),
        .o_value            (o_register_6_bit_field_1),
        .o_value_unmasked   (o_register_6_bit_field_1_unmasked)
      );
    end
    if (1) begin : g_bit_field_2
      rggen_bit_field #(
        .WIDTH    (4),
        .STORAGE  (0)
      ) u_bit_field (
        .i_clk              (1'b0),
        .i_rst_n            (1'b0),
        .i_sw_valid         (w_bit_field_valid),
        .i_sw_read_mask     (w_bit_field_read_mask[8+:4]),
        .i_sw_write_enable  (1'b0),
        .i_sw_write_mask    (w_bit_field_write_mask[8+:4]),
        .i_sw_write_data    (w_bit_field_write_data[8+:4]),
        .o_sw_read_data     (w_bit_field_read_data[8+:4]),
        .o_sw_value         (w_bit_field_value[8+:4]),
        .i_hw_write_enable  (1'b0),
        .i_hw_write_data    ({4{1'b0}}),
        .i_hw_set           ({4{1'b0}}),
        .i_hw_clear         ({4{1'b0}}),
        .i_value            (w_register_value[388+:4]),
        .i_mask             ({4{1'b1}}),
        .o_value            (),
        .o_value_unmasked   ()
      );
    end
    if (1) begin : g_bit_field_3
      rggen_bit_field #(
        .WIDTH            (4),
        .INITIAL_VALUE    (`rggen_slice(4'h0, 4, 0)),
        .SW_READ_ACTION   (`RGGEN_READ_DEFAULT),
        .SW_WRITE_ACTION  (`RGGEN_WRITE_1_CLEAR)
      ) u_bit_field (
        .i_clk              (i_clk),
        .i_rst_n            (i_rst_n),
        .i_sw_valid         (w_bit_field_valid),
        .i_sw_read_mask     (w_bit_field_read_mask[12+:4]),
        .i_sw_write_enable  (1'b1),
        .i_sw_write_mask    (w_bit_field_write_mask[12+:4]),
        .i_sw_write_data    (w_bit_field_write_data[12+:4]),
        .o_sw_read_data     (w_bit_field_read_data[12+:4]),
        .o_sw_value         (w_bit_field_value[12+:4]),
        .i_hw_write_enable  (1'b0),
        .i_hw_write_data    ({4{1'b0}}),
        .i_hw_set           (i_register_6_bit_field_3_set),
        .i_hw_clear         ({4{1'b0}}),
        .i_value            ({4{1'b0}}),
        .i_mask             ({4{1'b1}}),
        .o_value            (o_register_6_bit_field_3),
        .o_value_unmasked   ()
      );
    end
    if (1) begin : g_bit_field_4
      rggen_bit_field #(
        .WIDTH            (4),
        .INITIAL_VALUE    (`rggen_slice(4'h0, 4, 0)),
        .SW_READ_ACTION   (`RGGEN_READ_DEFAULT),
        .SW_WRITE_ACTION  (`RGGEN_WRITE_1_CLEAR)
      ) u_bit_field (
        .i_clk              (i_clk),
        .i_rst_n            (i_rst_n),
        .i_sw_valid         (w_bit_field_valid),
        .i_sw_read_mask     (w_bit_field_read_mask[16+:4]),
        .i_sw_write_enable  (1'b1),
        .i_sw_write_mask    (w_bit_field_write_mask[16+:4]),
        .i_sw_write_data    (w_bit_field_write_data[16+:4]),
        .o_sw_read_data     (w_bit_field_read_data[16+:4]),
        .o_sw_value         (w_bit_field_value[16+:4]),
        .i_hw_write_enable  (1'b0),
        .i_hw_write_data    ({4{1'b0}}),
        .i_hw_set           (i_register_6_bit_field_4_set),
        .i_hw_clear         ({4{1'b0}}),
        .i_value            ({4{1'b0}}),
        .i_mask             (w_register_value[0+:4]),
        .o_value            (o_register_6_bit_field_4),
        .o_value_unmasked   (o_register_6_bit_field_4_unmasked)
      );
    end
    if (1) begin : g_bit_field_5
      rggen_bit_field #(
        .WIDTH    (4),
        .STORAGE  (0)
      ) u_bit_field (
        .i_clk              (1'b0),
        .i_rst_n            (1'b0),
        .i_sw_valid         (w_bit_field_valid),
        .i_sw_read_mask     (w_bit_field_read_mask[20+:4]),
        .i_sw_write_enable  (1'b0),
        .i_sw_write_mask    (w_bit_field_write_mask[20+:4]),
        .i_sw_write_data    (w_bit_field_write_data[20+:4]),
        .o_sw_read_data     (w_bit_field_read_data[20+:4]),
        .o_sw_value         (w_bit_field_value[20+:4]),
        .i_hw_write_enable  (1'b0),
        .i_hw_write_data    ({4{1'b0}}),
        .i_hw_set           ({4{1'b0}}),
        .i_hw_clear         ({4{1'b0}}),
        .i_value            (w_register_value[400+:4]),
        .i_mask             ({4{1'b1}}),
        .o_value            (),
        .o_value_unmasked   ()
      );
    end
    if (1) begin : g_bit_field_6
      rggen_bit_field #(
        .WIDTH            (4),
        .INITIAL_VALUE    (`rggen_slice(4'h0, 4, 0)),
        .SW_READ_ACTION   (`RGGEN_READ_DEFAULT),
        .SW_WRITE_ACTION  (`RGGEN_WRITE_0_SET)
      ) u_bit_field (
        .i_clk              (i_clk),
        .i_rst_n            (i_rst_n),
        .i_sw_valid         (w_bit_field_valid),
        .i_sw_read_mask     (w_bit_field_read_mask[24+:4]),
        .i_sw_write_enable  (1'b1),
        .i_sw_write_mask    (w_bit_field_write_mask[24+:4]),
        .i_sw_write_data    (w_bit_field_write_data[24+:4]),
        .o_sw_read_data     (w_bit_field_read_data[24+:4]),
        .o_sw_value         (w_bit_field_value[24+:4]),
        .i_hw_write_enable  (1'b0),
        .i_hw_write_data    ({4{1'b0}}),
        .i_hw_set           ({4{1'b0}}),
        .i_hw_clear         (i_register_6_bit_field_6_clear),
        .i_value            ({4{1'b0}}),
        .i_mask             ({4{1'b1}}),
        .o_value            (o_register_6_bit_field_6),
        .o_value_unmasked   ()
      );
    end
    if (1) begin : g_bit_field_7
      rggen_bit_field #(
        .WIDTH            (4),
        .INITIAL_VALUE    (`rggen_slice(4'h0, 4, 0)),
        .SW_READ_ACTION   (`RGGEN_READ_DEFAULT),
        .SW_WRITE_ACTION  (`RGGEN_WRITE_1_SET)
      ) u_bit_field (
        .i_clk              (i_clk),
        .i_rst_n            (i_rst_n),
        .i_sw_valid         (w_bit_field_valid),
        .i_sw_read_mask     (w_bit_field_read_mask[28+:4]),
        .i_sw_write_enable  (1'b1),
        .i_sw_write_mask    (w_bit_field_write_mask[28+:4]),
        .i_sw_write_data    (w_bit_field_write_data[28+:4]),
        .o_sw_read_data     (w_bit_field_read_data[28+:4]),
        .o_sw_value         (w_bit_field_value[28+:4]),
        .i_hw_write_enable  (1'b0),
        .i_hw_write_data    ({4{1'b0}}),
        .i_hw_set           ({4{1'b0}}),
        .i_hw_clear         (i_register_6_bit_field_7_clear),
        .i_value            ({4{1'b0}}),
        .i_mask             ({4{1'b1}}),
        .o_value            (o_register_6_bit_field_7),
        .o_value_unmasked   ()
      );
    end
    if (1) begin : g_bit_field_8
      rggen_bit_field #(
        .WIDTH            (4),
        .INITIAL_VALUE    (`rggen_slice(4'h0, 4, 0)),
        .SW_WRITE_ACTION  (`RGGEN_WRITE_0_TOGGLE)
      ) u_bit_field (
        .i_clk              (i_clk),
        .i_rst_n            (i_rst_n),
        .i_sw_valid         (w_bit_field_valid),
        .i_sw_read_mask     (w_bit_field_read_mask[32+:4]),
        .i_sw_write_enable  (1'b1),
        .i_sw_write_mask    (w_bit_field_write_mask[32+:4]),
        .i_sw_write_data    (w_bit_field_write_data[32+:4]),
        .o_sw_read_data     (w_bit_field_read_data[32+:4]),
        .o_sw_value         (w_bit_field_value[32+:4]),
        .i_hw_write_enable  (1'b0),
        .i_hw_write_data    ({4{1'b0}}),
        .i_hw_set           ({4{1'b0}}),
        .i_hw_clear         ({4{1'b0}}),
        .i_value            ({4{1'b0}}),
        .i_mask             ({4{1'b1}}),
        .o_value            (o_register_6_bit_field_8),
        .o_value_unmasked   ()
      );
    end
    if (1) begin : g_bit_field_9
      rggen_bit_field #(
        .WIDTH            (4),
        .INITIAL_VALUE    (`rggen_slice(4'h0, 4, 0)),
        .SW_WRITE_ACTION  (`RGGEN_WRITE_1_TOGGLE)
      ) u_bit_field (
        .i_clk              (i_clk),
        .i_rst_n            (i_rst_n),
        .i_sw_valid         (w_bit_field_valid),
        .i_sw_read_mask     (w_bit_field_read_mask[36+:4]),
        .i_sw_write_enable  (1'b1),
        .i_sw_write_mask    (w_bit_field_write_mask[36+:4]),
        .i_sw_write_data    (w_bit_field_write_data[36+:4]),
        .o_sw_read_data     (w_bit_field_read_data[36+:4]),
        .o_sw_value         (w_bit_field_value[36+:4]),
        .i_hw_write_enable  (1'b0),
        .i_hw_write_data    ({4{1'b0}}),
        .i_hw_set           ({4{1'b0}}),
        .i_hw_clear         ({4{1'b0}}),
        .i_value            ({4{1'b0}}),
        .i_mask             ({4{1'b1}}),
        .o_value            (o_register_6_bit_field_9),
        .o_value_unmasked   ()
      );
    end
  end endgenerate
  generate if (1) begin : g_register_7
    wire w_bit_field_valid;
    wire [31:0] w_bit_field_read_mask;
    wire [31:0] w_bit_field_write_mask;
    wire [31:0] w_bit_field_write_data;
    wire [31:0] w_bit_field_read_data;
    wire [31:0] w_bit_field_value;
    rggen_default_register #(
      .READABLE       (1),
      .WRITABLE       (1),
      .ADDRESS_WIDTH  (8),
      .OFFSET_ADDRESS (8'h1c),
      .BUS_WIDTH      (32),
      .DATA_WIDTH     (32),
      .VALID_BITS     (32'h0f0f0f0f),
      .REGISTER_INDEX (0)
    ) u_register (
      .i_clk                  (i_clk),
      .i_rst_n                (i_rst_n),
      .i_register_valid       (w_register_valid),
      .i_register_access      (w_register_access),
      .i_register_address     (w_register_address),
      .i_register_write_data  (w_register_write_data),
      .i_register_strobe      (w_register_strobe),
      .o_register_active      (w_register_active[7+:1]),
      .o_register_ready       (w_register_ready[7+:1]),
      .o_register_status      (w_register_status[14+:2]),
      .o_register_read_data   (w_register_read_data[224+:32]),
      .o_register_value       (w_register_value[448+:32]),
      .o_bit_field_valid      (w_bit_field_valid),
      .o_bit_field_read_mask  (w_bit_field_read_mask),
      .o_bit_field_write_mask (w_bit_field_write_mask),
      .o_bit_field_write_data (w_bit_field_write_data),
      .i_bit_field_read_data  (w_bit_field_read_data),
      .i_bit_field_value      (w_bit_field_value)
    );
    if (1) begin : g_bit_field_0
      rggen_bit_field #(
        .WIDTH            (4),
        .INITIAL_VALUE    (`rggen_slice(4'h0, 4, 0)),
        .SW_READ_ACTION   (`RGGEN_READ_SET),
        .SW_WRITE_ACTION  (`RGGEN_WRITE_0_CLEAR)
      ) u_bit_field (
        .i_clk              (i_clk),
        .i_rst_n            (i_rst_n),
        .i_sw_valid         (w_bit_field_valid),
        .i_sw_read_mask     (w_bit_field_read_mask[0+:4]),
        .i_sw_write_enable  (1'b1),
        .i_sw_write_mask    (w_bit_field_write_mask[0+:4]),
        .i_sw_write_data    (w_bit_field_write_data[0+:4]),
        .o_sw_read_data     (w_bit_field_read_data[0+:4]),
        .o_sw_value         (w_bit_field_value[0+:4]),
        .i_hw_write_enable  (1'b0),
        .i_hw_write_data    ({4{1'b0}}),
        .i_hw_set           ({4{1'b0}}),
        .i_hw_clear         ({4{1'b0}}),
        .i_value            ({4{1'b0}}),
        .i_mask             ({4{1'b1}}),
        .o_value            (o_register_7_bit_field_0),
        .o_value_unmasked   ()
      );
    end
    if (1) begin : g_bit_field_1
      rggen_bit_field #(
        .WIDTH            (4),
        .INITIAL_VALUE    (`rggen_slice(4'h0, 4, 0)),
        .SW_READ_ACTION   (`RGGEN_READ_SET),
        .SW_WRITE_ACTION  (`RGGEN_WRITE_1_CLEAR)
      ) u_bit_field (
        .i_clk              (i_clk),
        .i_rst_n            (i_rst_n),
        .i_sw_valid         (w_bit_field_valid),
        .i_sw_read_mask     (w_bit_field_read_mask[8+:4]),
        .i_sw_write_enable  (1'b1),
        .i_sw_write_mask    (w_bit_field_write_mask[8+:4]),
        .i_sw_write_data    (w_bit_field_write_data[8+:4]),
        .o_sw_read_data     (w_bit_field_read_data[8+:4]),
        .o_sw_value         (w_bit_field_value[8+:4]),
        .i_hw_write_enable  (1'b0),
        .i_hw_write_data    ({4{1'b0}}),
        .i_hw_set           ({4{1'b0}}),
        .i_hw_clear         ({4{1'b0}}),
        .i_value            ({4{1'b0}}),
        .i_mask             ({4{1'b1}}),
        .o_value            (o_register_7_bit_field_1),
        .o_value_unmasked   ()
      );
    end
    if (1) begin : g_bit_field_2
      rggen_bit_field #(
        .WIDTH            (4),
        .INITIAL_VALUE    (`rggen_slice(4'h0, 4, 0)),
        .SW_READ_ACTION   (`RGGEN_READ_CLEAR),
        .SW_WRITE_ACTION  (`RGGEN_WRITE_0_SET)
      ) u_bit_field (
        .i_clk              (i_clk),
        .i_rst_n            (i_rst_n),
        .i_sw_valid         (w_bit_field_valid),
        .i_sw_read_mask     (w_bit_field_read_mask[16+:4]),
        .i_sw_write_enable  (1'b1),
        .i_sw_write_mask    (w_bit_field_write_mask[16+:4]),
        .i_sw_write_data    (w_bit_field_write_data[16+:4]),
        .o_sw_read_data     (w_bit_field_read_data[16+:4]),
        .o_sw_value         (w_bit_field_value[16+:4]),
        .i_hw_write_enable  (1'b0),
        .i_hw_write_data    ({4{1'b0}}),
        .i_hw_set           ({4{1'b0}}),
        .i_hw_clear         ({4{1'b0}}),
        .i_value            ({4{1'b0}}),
        .i_mask             ({4{1'b1}}),
        .o_value            (o_register_7_bit_field_2),
        .o_value_unmasked   ()
      );
    end
    if (1) begin : g_bit_field_3
      rggen_bit_field #(
        .WIDTH            (4),
        .INITIAL_VALUE    (`rggen_slice(4'h0, 4, 0)),
        .SW_READ_ACTION   (`RGGEN_READ_CLEAR),
        .SW_WRITE_ACTION  (`RGGEN_WRITE_1_SET)
      ) u_bit_field (
        .i_clk              (i_clk),
        .i_rst_n            (i_rst_n),
        .i_sw_valid         (w_bit_field_valid),
        .i_sw_read_mask     (w_bit_field_read_mask[24+:4]),
        .i_sw_write_enable  (1'b1),
        .i_sw_write_mask    (w_bit_field_write_mask[24+:4]),
        .i_sw_write_data    (w_bit_field_write_data[24+:4]),
        .o_sw_read_data     (w_bit_field_read_data[24+:4]),
        .o_sw_value         (w_bit_field_value[24+:4]),
        .i_hw_write_enable  (1'b0),
        .i_hw_write_data    ({4{1'b0}}),
        .i_hw_set           ({4{1'b0}}),
        .i_hw_clear         ({4{1'b0}}),
        .i_value            ({4{1'b0}}),
        .i_mask             ({4{1'b1}}),
        .o_value            (o_register_7_bit_field_3),
        .o_value_unmasked   ()
      );
    end
  end endgenerate
  generate if (1) begin : g_register_8
    wire w_bit_field_valid;
    wire [63:0] w_bit_field_read_mask;
    wire [63:0] w_bit_field_write_mask;
    wire [63:0] w_bit_field_write_data;
    wire [63:0] w_bit_field_read_data;
    wire [63:0] w_bit_field_value;
    rggen_default_register #(
      .READABLE       (1),
      .WRITABLE       (1),
      .ADDRESS_WIDTH  (8),
      .OFFSET_ADDRESS (8'h20),
      .BUS_WIDTH      (32),
      .DATA_WIDTH     (64),
      .VALID_BITS     (64'h00000f0f0f0f0f0f),
      .REGISTER_INDEX (0)
    ) u_register (
      .i_clk                  (i_clk),
      .i_rst_n                (i_rst_n),
      .i_register_valid       (w_register_valid),
      .i_register_access      (w_register_access),
      .i_register_address     (w_register_address),
      .i_register_write_data  (w_register_write_data),
      .i_register_strobe      (w_register_strobe),
      .o_register_active      (w_register_active[8+:1]),
      .o_register_ready       (w_register_ready[8+:1]),
      .o_register_status      (w_register_status[16+:2]),
      .o_register_read_data   (w_register_read_data[256+:32]),
      .o_register_value       (w_register_value[512+:64]),
      .o_bit_field_valid      (w_bit_field_valid),
      .o_bit_field_read_mask  (w_bit_field_read_mask),
      .o_bit_field_write_mask (w_bit_field_write_mask),
      .o_bit_field_write_data (w_bit_field_write_data),
      .i_bit_field_read_data  (w_bit_field_read_data),
      .i_bit_field_value      (w_bit_field_value)
    );
    if (1) begin : g_bit_field_0
      rggen_bit_field #(
        .WIDTH            (4),
        .INITIAL_VALUE    (`rggen_slice(4'h0, 4, 0)),
        .SW_READ_ACTION   (`RGGEN_READ_DEFAULT),
        .SW_WRITE_ACTION  (`RGGEN_WRITE_CLEAR)
      ) u_bit_field (
        .i_clk              (i_clk),
        .i_rst_n            (i_rst_n),
        .i_sw_valid         (w_bit_field_valid),
        .i_sw_read_mask     (w_bit_field_read_mask[0+:4]),
        .i_sw_write_enable  (1'b1),
        .i_sw_write_mask    (w_bit_field_write_mask[0+:4]),
        .i_sw_write_data    (w_bit_field_write_data[0+:4]),
        .o_sw_read_data     (w_bit_field_read_data[0+:4]),
        .o_sw_value         (w_bit_field_value[0+:4]),
        .i_hw_write_enable  (1'b0),
        .i_hw_write_data    ({4{1'b0}}),
        .i_hw_set           (i_register_8_bit_field_0_set),
        .i_hw_clear         ({4{1'b0}}),
        .i_value            ({4{1'b0}}),
        .i_mask             ({4{1'b1}}),
        .o_value            (o_register_8_bit_field_0),
        .o_value_unmasked   ()
      );
    end
    if (1) begin : g_bit_field_1
      rggen_bit_field #(
        .WIDTH            (4),
        .INITIAL_VALUE    (`rggen_slice(4'h0, 4, 0)),
        .SW_READ_ACTION   (`RGGEN_READ_DEFAULT),
        .SW_WRITE_ACTION  (`RGGEN_WRITE_SET)
      ) u_bit_field (
        .i_clk              (i_clk),
        .i_rst_n            (i_rst_n),
        .i_sw_valid         (w_bit_field_valid),
        .i_sw_read_mask     (w_bit_field_read_mask[8+:4]),
        .i_sw_write_enable  (1'b1),
        .i_sw_write_mask    (w_bit_field_write_mask[8+:4]),
        .i_sw_write_data    (w_bit_field_write_data[8+:4]),
        .o_sw_read_data     (w_bit_field_read_data[8+:4]),
        .o_sw_value         (w_bit_field_value[8+:4]),
        .i_hw_write_enable  (1'b0),
        .i_hw_write_data    ({4{1'b0}}),
        .i_hw_set           ({4{1'b0}}),
        .i_hw_clear         (i_register_8_bit_field_1_clear),
        .i_value            ({4{1'b0}}),
        .i_mask             ({4{1'b1}}),
        .o_value            (o_register_8_bit_field_1),
        .o_value_unmasked   ()
      );
    end
    if (1) begin : g_bit_field_2
      rggen_bit_field #(
        .WIDTH            (4),
        .INITIAL_VALUE    (`rggen_slice(4'h0, 4, 0)),
        .SW_READ_ACTION   (`RGGEN_READ_NONE),
        .SW_WRITE_ACTION  (`RGGEN_WRITE_CLEAR)
      ) u_bit_field (
        .i_clk              (i_clk),
        .i_rst_n            (i_rst_n),
        .i_sw_valid         (w_bit_field_valid),
        .i_sw_read_mask     (w_bit_field_read_mask[16+:4]),
        .i_sw_write_enable  (1'b1),
        .i_sw_write_mask    (w_bit_field_write_mask[16+:4]),
        .i_sw_write_data    (w_bit_field_write_data[16+:4]),
        .o_sw_read_data     (w_bit_field_read_data[16+:4]),
        .o_sw_value         (w_bit_field_value[16+:4]),
        .i_hw_write_enable  (1'b0),
        .i_hw_write_data    ({4{1'b0}}),
        .i_hw_set           (i_register_8_bit_field_2_set),
        .i_hw_clear         ({4{1'b0}}),
        .i_value            ({4{1'b0}}),
        .i_mask             ({4{1'b1}}),
        .o_value            (o_register_8_bit_field_2),
        .o_value_unmasked   ()
      );
    end
    if (1) begin : g_bit_field_3
      rggen_bit_field #(
        .WIDTH            (4),
        .INITIAL_VALUE    (`rggen_slice(4'h0, 4, 0)),
        .SW_READ_ACTION   (`RGGEN_READ_NONE),
        .SW_WRITE_ACTION  (`RGGEN_WRITE_SET)
      ) u_bit_field (
        .i_clk              (i_clk),
        .i_rst_n            (i_rst_n),
        .i_sw_valid         (w_bit_field_valid),
        .i_sw_read_mask     (w_bit_field_read_mask[24+:4]),
        .i_sw_write_enable  (1'b1),
        .i_sw_write_mask    (w_bit_field_write_mask[24+:4]),
        .i_sw_write_data    (w_bit_field_write_data[24+:4]),
        .o_sw_read_data     (w_bit_field_read_data[24+:4]),
        .o_sw_value         (w_bit_field_value[24+:4]),
        .i_hw_write_enable  (1'b0),
        .i_hw_write_data    ({4{1'b0}}),
        .i_hw_set           ({4{1'b0}}),
        .i_hw_clear         (i_register_8_bit_field_3_clear),
        .i_value            ({4{1'b0}}),
        .i_mask             ({4{1'b1}}),
        .o_value            (o_register_8_bit_field_3),
        .o_value_unmasked   ()
      );
    end
    if (1) begin : g_bit_field_4
      rggen_bit_field #(
        .WIDTH            (4),
        .INITIAL_VALUE    (`rggen_slice(4'h0, 4, 0)),
        .SW_READ_ACTION   (`RGGEN_READ_SET),
        .SW_WRITE_ACTION  (`RGGEN_WRITE_CLEAR)
      ) u_bit_field (
        .i_clk              (i_clk),
        .i_rst_n            (i_rst_n),
        .i_sw_valid         (w_bit_field_valid),
        .i_sw_read_mask     (w_bit_field_read_mask[32+:4]),
        .i_sw_write_enable  (1'b1),
        .i_sw_write_mask    (w_bit_field_write_mask[32+:4]),
        .i_sw_write_data    (w_bit_field_write_data[32+:4]),
        .o_sw_read_data     (w_bit_field_read_data[32+:4]),
        .o_sw_value         (w_bit_field_value[32+:4]),
        .i_hw_write_enable  (1'b0),
        .i_hw_write_data    ({4{1'b0}}),
        .i_hw_set           ({4{1'b0}}),
        .i_hw_clear         ({4{1'b0}}),
        .i_value            ({4{1'b0}}),
        .i_mask             ({4{1'b1}}),
        .o_value            (o_register_8_bit_field_4),
        .o_value_unmasked   ()
      );
    end
    if (1) begin : g_bit_field_5
      rggen_bit_field #(
        .WIDTH            (4),
        .INITIAL_VALUE    (`rggen_slice(4'h0, 4, 0)),
        .SW_READ_ACTION   (`RGGEN_READ_CLEAR),
        .SW_WRITE_ACTION  (`RGGEN_WRITE_SET)
      ) u_bit_field (
        .i_clk              (i_clk),
        .i_rst_n            (i_rst_n),
        .i_sw_valid         (w_bit_field_valid),
        .i_sw_read_mask     (w_bit_field_read_mask[40+:4]),
        .i_sw_write_enable  (1'b1),
        .i_sw_write_mask    (w_bit_field_write_mask[40+:4]),
        .i_sw_write_data    (w_bit_field_write_data[40+:4]),
        .o_sw_read_data     (w_bit_field_read_data[40+:4]),
        .o_sw_value         (w_bit_field_value[40+:4]),
        .i_hw_write_enable  (1'b0),
        .i_hw_write_data    ({4{1'b0}}),
        .i_hw_set           ({4{1'b0}}),
        .i_hw_clear         ({4{1'b0}}),
        .i_value            ({4{1'b0}}),
        .i_mask             ({4{1'b1}}),
        .o_value            (o_register_8_bit_field_5),
        .o_value_unmasked   ()
      );
    end
  end endgenerate
  generate if (1) begin : g_register_9
    genvar i;
    for (i = 0;i < 4;i = i + 1) begin : g
      wire w_bit_field_valid;
      wire [63:0] w_bit_field_read_mask;
      wire [63:0] w_bit_field_write_mask;
      wire [63:0] w_bit_field_write_data;
      wire [63:0] w_bit_field_read_data;
      wire [63:0] w_bit_field_value;
      rggen_default_register #(
        .READABLE       (1),
        .WRITABLE       (1),
        .ADDRESS_WIDTH  (8),
        .OFFSET_ADDRESS (8'h30),
        .BUS_WIDTH      (32),
        .DATA_WIDTH     (64),
        .VALID_BITS     (64'h0fff0fff0fff0fff),
        .REGISTER_INDEX (i)
      ) u_register (
        .i_clk                  (i_clk),
        .i_rst_n                (i_rst_n),
        .i_register_valid       (w_register_valid),
        .i_register_access      (w_register_access),
        .i_register_address     (w_register_address),
        .i_register_write_data  (w_register_write_data),
        .i_register_strobe      (w_register_strobe),
        .o_register_active      (w_register_active[1*(9+i)+:1]),
        .o_register_ready       (w_register_ready[1*(9+i)+:1]),
        .o_register_status      (w_register_status[2*(9+i)+:2]),
        .o_register_read_data   (w_register_read_data[32*(9+i)+:32]),
        .o_register_value       (w_register_value[64*(9+i)+0+:64]),
        .o_bit_field_valid      (w_bit_field_valid),
        .o_bit_field_read_mask  (w_bit_field_read_mask),
        .o_bit_field_write_mask (w_bit_field_write_mask),
        .o_bit_field_write_data (w_bit_field_write_data),
        .i_bit_field_read_data  (w_bit_field_read_data),
        .i_bit_field_value      (w_bit_field_value)
      );
      if (1) begin : g_bit_field_0
        genvar j;
        for (j = 0;j < 4;j = j + 1) begin : g
          rggen_bit_field #(
            .WIDTH          (4),
            .INITIAL_VALUE  (`rggen_slice(4'h0, 4, 0)),
            .SW_READ_ACTION (`RGGEN_READ_DEFAULT),
            .SW_WRITE_ONCE  (0)
          ) u_bit_field (
            .i_clk              (i_clk),
            .i_rst_n            (i_rst_n),
            .i_sw_valid         (w_bit_field_valid),
            .i_sw_read_mask     (w_bit_field_read_mask[0+16*j+:4]),
            .i_sw_write_enable  (1'b1),
            .i_sw_write_mask    (w_bit_field_write_mask[0+16*j+:4]),
            .i_sw_write_data    (w_bit_field_write_data[0+16*j+:4]),
            .o_sw_read_data     (w_bit_field_read_data[0+16*j+:4]),
            .o_sw_value         (w_bit_field_value[0+16*j+:4]),
            .i_hw_write_enable  (1'b0),
            .i_hw_write_data    ({4{1'b0}}),
            .i_hw_set           ({4{1'b0}}),
            .i_hw_clear         ({4{1'b0}}),
            .i_value            ({4{1'b0}}),
            .i_mask             ({4{1'b1}}),
            .o_value            (o_register_9_bit_field_0[4*(4*i+j)+:4]),
            .o_value_unmasked   ()
          );
        end
      end
      if (1) begin : g_bit_field_1
        genvar j;
        for (j = 0;j < 4;j = j + 1) begin : g
          rggen_bit_field #(
            .WIDTH          (4),
            .INITIAL_VALUE  (`rggen_slice(REGISTER_9_BIT_FIELD_1_INITIAL_VALUE, 4, j)),
            .SW_READ_ACTION (`RGGEN_READ_DEFAULT),
            .SW_WRITE_ONCE  (0)
          ) u_bit_field (
            .i_clk              (i_clk),
            .i_rst_n            (i_rst_n),
            .i_sw_valid         (w_bit_field_valid),
            .i_sw_read_mask     (w_bit_field_read_mask[4+16*j+:4]),
            .i_sw_write_enable  (1'b1),
            .i_sw_write_mask    (w_bit_field_write_mask[4+16*j+:4]),
            .i_sw_write_data    (w_bit_field_write_data[4+16*j+:4]),
            .o_sw_read_data     (w_bit_field_read_data[4+16*j+:4]),
            .o_sw_value         (w_bit_field_value[4+16*j+:4]),
            .i_hw_write_enable  (1'b0),
            .i_hw_write_data    ({4{1'b0}}),
            .i_hw_set           ({4{1'b0}}),
            .i_hw_clear         ({4{1'b0}}),
            .i_value            ({4{1'b0}}),
            .i_mask             ({4{1'b1}}),
            .o_value            (o_register_9_bit_field_1[4*(4*i+j)+:4]),
            .o_value_unmasked   ()
          );
        end
      end
      if (1) begin : g_bit_field_2
        genvar j;
        for (j = 0;j < 4;j = j + 1) begin : g
          rggen_bit_field #(
            .WIDTH          (4),
            .INITIAL_VALUE  (`rggen_slice({4'h3, 4'h2, 4'h1, 4'h0}, 4, j)),
            .SW_READ_ACTION (`RGGEN_READ_DEFAULT),
            .SW_WRITE_ONCE  (0)
          ) u_bit_field (
            .i_clk              (i_clk),
            .i_rst_n            (i_rst_n),
            .i_sw_valid         (w_bit_field_valid),
            .i_sw_read_mask     (w_bit_field_read_mask[8+16*j+:4]),
            .i_sw_write_enable  (1'b1),
            .i_sw_write_mask    (w_bit_field_write_mask[8+16*j+:4]),
            .i_sw_write_data    (w_bit_field_write_data[8+16*j+:4]),
            .o_sw_read_data     (w_bit_field_read_data[8+16*j+:4]),
            .o_sw_value         (w_bit_field_value[8+16*j+:4]),
            .i_hw_write_enable  (1'b0),
            .i_hw_write_data    ({4{1'b0}}),
            .i_hw_set           ({4{1'b0}}),
            .i_hw_clear         ({4{1'b0}}),
            .i_value            ({4{1'b0}}),
            .i_mask             ({4{1'b1}}),
            .o_value            (o_register_9_bit_field_2[4*(4*i+j)+:4]),
            .o_value_unmasked   ()
          );
        end
      end
    end
  end endgenerate
  generate if (1) begin : g_register_10
    genvar i;
    genvar j;
    for (i = 0;i < 2;i = i + 1) begin : g
      for (j = 0;j < 4;j = j + 1) begin : g
        wire [8:0] w_indirect_index;
        wire w_bit_field_valid;
        wire [63:0] w_bit_field_read_mask;
        wire [63:0] w_bit_field_write_mask;
        wire [63:0] w_bit_field_write_data;
        wire [63:0] w_bit_field_read_data;
        wire [63:0] w_bit_field_value;
        assign w_indirect_index = {w_register_value[0+:4], w_register_value[4+:4], w_register_value[8+:1]};
        rggen_indirect_register #(
          .READABLE             (1),
          .WRITABLE             (1),
          .ADDRESS_WIDTH        (8),
          .OFFSET_ADDRESS       (8'h50),
          .BUS_WIDTH            (32),
          .DATA_WIDTH           (64),
          .VALID_BITS           (64'hffffffffffffffff),
          .INDIRECT_INDEX_WIDTH (9),
          .INDIRECT_INDEX_VALUE ({i[0+:4], j[0+:4], 1'h0})
        ) u_register (
          .i_clk                  (i_clk),
          .i_rst_n                (i_rst_n),
          .i_register_valid       (w_register_valid),
          .i_register_access      (w_register_access),
          .i_register_address     (w_register_address),
          .i_register_write_data  (w_register_write_data),
          .i_register_strobe      (w_register_strobe),
          .o_register_active      (w_register_active[1*(13+4*i+j)+:1]),
          .o_register_ready       (w_register_ready[1*(13+4*i+j)+:1]),
          .o_register_status      (w_register_status[2*(13+4*i+j)+:2]),
          .o_register_read_data   (w_register_read_data[32*(13+4*i+j)+:32]),
          .o_register_value       (w_register_value[64*(13+4*i+j)+0+:64]),
          .i_indirect_index       (w_indirect_index),
          .o_bit_field_valid      (w_bit_field_valid),
          .o_bit_field_read_mask  (w_bit_field_read_mask),
          .o_bit_field_write_mask (w_bit_field_write_mask),
          .o_bit_field_write_data (w_bit_field_write_data),
          .i_bit_field_read_data  (w_bit_field_read_data),
          .i_bit_field_value      (w_bit_field_value)
        );
        if (1) begin : g_bit_field_0
          genvar k;
          for (k = 0;k < 4;k = k + 1) begin : g
            rggen_bit_field #(
              .WIDTH          (8),
              .INITIAL_VALUE  (`rggen_slice(8'h00, 8, 0)),
              .SW_READ_ACTION (`RGGEN_READ_DEFAULT),
              .SW_WRITE_ONCE  (0)
            ) u_bit_field (
              .i_clk              (i_clk),
              .i_rst_n            (i_rst_n),
              .i_sw_valid         (w_bit_field_valid),
              .i_sw_read_mask     (w_bit_field_read_mask[0+16*k+:8]),
              .i_sw_write_enable  (1'b1),
              .i_sw_write_mask    (w_bit_field_write_mask[0+16*k+:8]),
              .i_sw_write_data    (w_bit_field_write_data[0+16*k+:8]),
              .o_sw_read_data     (w_bit_field_read_data[0+16*k+:8]),
              .o_sw_value         (w_bit_field_value[0+16*k+:8]),
              .i_hw_write_enable  (1'b0),
              .i_hw_write_data    ({8{1'b0}}),
              .i_hw_set           ({8{1'b0}}),
              .i_hw_clear         ({8{1'b0}}),
              .i_value            ({8{1'b0}}),
              .i_mask             ({8{1'b1}}),
              .o_value            (o_register_10_bit_field_0[8*(16*i+4*j+k)+:8]),
              .o_value_unmasked   ()
            );
          end
        end
        if (1) begin : g_bit_field_1
          genvar k;
          for (k = 0;k < 4;k = k + 1) begin : g
            rggen_bit_field #(
              .WIDTH          (8),
              .INITIAL_VALUE  (`rggen_slice(8'h00, 8, 0)),
              .SW_READ_ACTION (`RGGEN_READ_DEFAULT),
              .SW_WRITE_ONCE  (0)
            ) u_bit_field (
              .i_clk              (i_clk),
              .i_rst_n            (i_rst_n),
              .i_sw_valid         (w_bit_field_valid),
              .i_sw_read_mask     (w_bit_field_read_mask[8+16*k+:8]),
              .i_sw_write_enable  (1'b1),
              .i_sw_write_mask    (w_bit_field_write_mask[8+16*k+:8]),
              .i_sw_write_data    (w_bit_field_write_data[8+16*k+:8]),
              .o_sw_read_data     (w_bit_field_read_data[8+16*k+:8]),
              .o_sw_value         (w_bit_field_value[8+16*k+:8]),
              .i_hw_write_enable  (1'b0),
              .i_hw_write_data    ({8{1'b0}}),
              .i_hw_set           ({8{1'b0}}),
              .i_hw_clear         ({8{1'b0}}),
              .i_value            ({8{1'b0}}),
              .i_mask             ({8{1'b1}}),
              .o_value            (o_register_10_bit_field_1[8*(16*i+4*j+k)+:8]),
              .o_value_unmasked   ()
            );
          end
        end
      end
    end
  end endgenerate
  generate if (1) begin : g_register_11
    wire w_indirect_index;
    wire w_bit_field_valid;
    wire [31:0] w_bit_field_read_mask;
    wire [31:0] w_bit_field_write_mask;
    wire [31:0] w_bit_field_write_data;
    wire [31:0] w_bit_field_read_data;
    wire [31:0] w_bit_field_value;
    assign w_indirect_index = {w_register_value[8+:1]};
    rggen_indirect_register #(
      .READABLE             (1),
      .WRITABLE             (1),
      .ADDRESS_WIDTH        (8),
      .OFFSET_ADDRESS       (8'h50),
      .BUS_WIDTH            (32),
      .DATA_WIDTH           (32),
      .VALID_BITS           (32'h00000001),
      .INDIRECT_INDEX_WIDTH (1),
      .INDIRECT_INDEX_VALUE ({1'h1})
    ) u_register (
      .i_clk                  (i_clk),
      .i_rst_n                (i_rst_n),
      .i_register_valid       (w_register_valid),
      .i_register_access      (w_register_access),
      .i_register_address     (w_register_address),
      .i_register_write_data  (w_register_write_data),
      .i_register_strobe      (w_register_strobe),
      .o_register_active      (w_register_active[21+:1]),
      .o_register_ready       (w_register_ready[21+:1]),
      .o_register_status      (w_register_status[42+:2]),
      .o_register_read_data   (w_register_read_data[672+:32]),
      .o_register_value       (w_register_value[1344+:32]),
      .i_indirect_index       (w_indirect_index),
      .o_bit_field_valid      (w_bit_field_valid),
      .o_bit_field_read_mask  (w_bit_field_read_mask),
      .o_bit_field_write_mask (w_bit_field_write_mask),
      .o_bit_field_write_data (w_bit_field_write_data),
      .i_bit_field_read_data  (w_bit_field_read_data),
      .i_bit_field_value      (w_bit_field_value)
    );
    if (1) begin : g_bit_field_0
      rggen_bit_field #(
        .WIDTH          (1),
        .INITIAL_VALUE  (`rggen_slice(1'h0, 1, 0)),
        .SW_READ_ACTION (`RGGEN_READ_DEFAULT),
        .SW_WRITE_ONCE  (0)
      ) u_bit_field (
        .i_clk              (i_clk),
        .i_rst_n            (i_rst_n),
        .i_sw_valid         (w_bit_field_valid),
        .i_sw_read_mask     (w_bit_field_read_mask[0+:1]),
        .i_sw_write_enable  (1'b1),
        .i_sw_write_mask    (w_bit_field_write_mask[0+:1]),
        .i_sw_write_data    (w_bit_field_write_data[0+:1]),
        .o_sw_read_data     (w_bit_field_read_data[0+:1]),
        .o_sw_value         (w_bit_field_value[0+:1]),
        .i_hw_write_enable  (1'b0),
        .i_hw_write_data    ({1{1'b0}}),
        .i_hw_set           ({1{1'b0}}),
        .i_hw_clear         ({1{1'b0}}),
        .i_value            ({1{1'b0}}),
        .i_mask             ({1{1'b1}}),
        .o_value            (o_register_11_bit_field_0),
        .o_value_unmasked   ()
      );
    end
  end endgenerate
  generate if (1) begin : g_register_12
    wire w_indirect_index;
    wire w_bit_field_valid;
    wire [31:0] w_bit_field_read_mask;
    wire [31:0] w_bit_field_write_mask;
    wire [31:0] w_bit_field_write_data;
    wire [31:0] w_bit_field_read_data;
    wire [31:0] w_bit_field_value;
    assign w_indirect_index = {w_register_value[8+:1]};
    rggen_indirect_register #(
      .READABLE             (1),
      .WRITABLE             (1),
      .ADDRESS_WIDTH        (8),
      .OFFSET_ADDRESS       (8'h54),
      .BUS_WIDTH            (32),
      .DATA_WIDTH           (32),
      .VALID_BITS           (32'h00000001),
      .INDIRECT_INDEX_WIDTH (1),
      .INDIRECT_INDEX_VALUE ({1'h1})
    ) u_register (
      .i_clk                  (i_clk),
      .i_rst_n                (i_rst_n),
      .i_register_valid       (w_register_valid),
      .i_register_access      (w_register_access),
      .i_register_address     (w_register_address),
      .i_register_write_data  (w_register_write_data),
      .i_register_strobe      (w_register_strobe),
      .o_register_active      (w_register_active[22+:1]),
      .o_register_ready       (w_register_ready[22+:1]),
      .o_register_status      (w_register_status[44+:2]),
      .o_register_read_data   (w_register_read_data[704+:32]),
      .o_register_value       (w_register_value[1408+:32]),
      .i_indirect_index       (w_indirect_index),
      .o_bit_field_valid      (w_bit_field_valid),
      .o_bit_field_read_mask  (w_bit_field_read_mask),
      .o_bit_field_write_mask (w_bit_field_write_mask),
      .o_bit_field_write_data (w_bit_field_write_data),
      .i_bit_field_read_data  (w_bit_field_read_data),
      .i_bit_field_value      (w_bit_field_value)
    );
    if (1) begin : g_bit_field_0
      rggen_bit_field #(
        .WIDTH          (1),
        .INITIAL_VALUE  (`rggen_slice(1'h0, 1, 0)),
        .SW_READ_ACTION (`RGGEN_READ_DEFAULT),
        .SW_WRITE_ONCE  (0)
      ) u_bit_field (
        .i_clk              (i_clk),
        .i_rst_n            (i_rst_n),
        .i_sw_valid         (w_bit_field_valid),
        .i_sw_read_mask     (w_bit_field_read_mask[0+:1]),
        .i_sw_write_enable  (1'b1),
        .i_sw_write_mask    (w_bit_field_write_mask[0+:1]),
        .i_sw_write_data    (w_bit_field_write_data[0+:1]),
        .o_sw_read_data     (w_bit_field_read_data[0+:1]),
        .o_sw_value         (w_bit_field_value[0+:1]),
        .i_hw_write_enable  (1'b0),
        .i_hw_write_data    ({1{1'b0}}),
        .i_hw_set           ({1{1'b0}}),
        .i_hw_clear         ({1{1'b0}}),
        .i_value            ({1{1'b0}}),
        .i_mask             ({1{1'b1}}),
        .o_value            (o_register_12_bit_field_0),
        .o_value_unmasked   ()
      );
    end
  end endgenerate
  generate if (1) begin : g_register_14
    rggen_external_register #(
      .ADDRESS_WIDTH  (8),
      .BUS_WIDTH      (32),
      .START_ADDRESS  (8'h80),
      .END_ADDRESS    (8'hff)
    ) u_register (
      .i_clk                  (i_clk),
      .i_rst_n                (i_rst_n),
      .i_register_valid       (w_register_valid),
      .i_register_access      (w_register_access),
      .i_register_address     (w_register_address),
      .i_register_write_data  (w_register_write_data),
      .i_register_strobe      (w_register_strobe),
      .o_register_active      (w_register_active[23+:1]),
      .o_register_ready       (w_register_ready[23+:1]),
      .o_register_status      (w_register_status[46+:2]),
      .o_register_read_data   (w_register_read_data[736+:32]),
      .o_register_value       (w_register_value[1472+:32]),
      .o_external_valid       (o_register_14_valid),
      .o_external_access      (o_register_14_access),
      .o_external_address     (o_register_14_address),
      .o_external_data        (o_register_14_data),
      .o_external_strobe      (o_register_14_strobe),
      .i_external_ready       (i_register_14_ready),
      .i_external_status      (i_register_14_status),
      .i_external_data        (i_register_14_data)
    );
  end endgenerate
endmodule
