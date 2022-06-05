`include "rggen_rtl_macros.vh"
module block_1 #(
  parameter ADDRESS_WIDTH = 7,
  parameter PRE_DECODE = 0,
  parameter [ADDRESS_WIDTH-1:0] BASE_ADDRESS = 0,
  parameter ERROR_STATUS = 0,
  parameter [31:0] DEFAULT_READ_DATA = 0,
  parameter ID_WIDTH = 0,
  parameter WRITE_FIRST = 1
)(
  input i_clk,
  input i_rst_n,
  input i_awvalid,
  output o_awready,
  input [((ID_WIDTH == 0) ? 1 : ID_WIDTH)-1:0] i_awid,
  input [ADDRESS_WIDTH-1:0] i_awaddr,
  input [2:0] i_awprot,
  input i_wvalid,
  output o_wready,
  input [31:0] i_wdata,
  input [3:0] i_wstrb,
  output o_bvalid,
  input i_bready,
  output [((ID_WIDTH == 0) ? 1 : ID_WIDTH)-1:0] o_bid,
  output [1:0] o_bresp,
  input i_arvalid,
  output o_arready,
  input [((ID_WIDTH == 0) ? 1 : ID_WIDTH)-1:0] i_arid,
  input [ADDRESS_WIDTH-1:0] i_araddr,
  input [2:0] i_arprot,
  output o_rvalid,
  input i_rready,
  output [((ID_WIDTH == 0) ? 1 : ID_WIDTH)-1:0] o_rid,
  output [31:0] o_rdata,
  output [1:0] o_rresp,
  output [7:0] o_register_file_0_register_0_bit_field_0,
  output [7:0] o_register_file_0_register_1_bit_field_0,
  output [15:0] o_register_file_1_register_0_bit_field_0,
  output [15:0] o_register_file_1_register_1_bit_field_0,
  output [95:0] o_register_file_2_register_file_0_register_0_bit_field_0,
  output [95:0] o_register_file_2_register_file_0_register_0_bit_field_1,
  output [95:0] o_register_file_2_register_file_0_register_0_bit_field_2,
  output [3:0] o_register_file_2_register_file_0_register_1_bit_field_0
);
  wire w_register_valid;
  wire [1:0] w_register_access;
  wire [6:0] w_register_address;
  wire [31:0] w_register_write_data;
  wire [3:0] w_register_strobe;
  wire [19:0] w_register_active;
  wire [19:0] w_register_ready;
  wire [39:0] w_register_status;
  wire [639:0] w_register_read_data;
  wire [639:0] w_register_value;
  rggen_axi4lite_adapter #(
    .ID_WIDTH             (ID_WIDTH),
    .ADDRESS_WIDTH        (ADDRESS_WIDTH),
    .LOCAL_ADDRESS_WIDTH  (7),
    .BUS_WIDTH            (32),
    .REGISTERS            (20),
    .PRE_DECODE           (PRE_DECODE),
    .BASE_ADDRESS         (BASE_ADDRESS),
    .BYTE_SIZE            (128),
    .ERROR_STATUS         (ERROR_STATUS),
    .DEFAULT_READ_DATA    (DEFAULT_READ_DATA),
    .WRITE_FIRST          (WRITE_FIRST)
  ) u_adapter (
    .i_clk                  (i_clk),
    .i_rst_n                (i_rst_n),
    .i_awvalid              (i_awvalid),
    .o_awready              (o_awready),
    .i_awid                 (i_awid),
    .i_awaddr               (i_awaddr),
    .i_awprot               (i_awprot),
    .i_wvalid               (i_wvalid),
    .o_wready               (o_wready),
    .i_wdata                (i_wdata),
    .i_wstrb                (i_wstrb),
    .o_bvalid               (o_bvalid),
    .i_bready               (i_bready),
    .o_bid                  (o_bid),
    .o_bresp                (o_bresp),
    .i_arvalid              (i_arvalid),
    .o_arready              (o_arready),
    .i_arid                 (i_arid),
    .i_araddr               (i_araddr),
    .i_arprot               (i_arprot),
    .o_rvalid               (o_rvalid),
    .i_rready               (i_rready),
    .o_rid                  (o_rid),
    .o_rdata                (o_rdata),
    .o_rresp                (o_rresp),
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
  generate if (1) begin : g_register_file_0
    if (1) begin : g_register_0
      wire w_bit_field_valid;
      wire [31:0] w_bit_field_read_mask;
      wire [31:0] w_bit_field_write_mask;
      wire [31:0] w_bit_field_write_data;
      wire [31:0] w_bit_field_read_data;
      wire [31:0] w_bit_field_value;
      `rggen_tie_off_unused_signals(32, 32'h000000ff, w_bit_field_read_data, w_bit_field_value)
      rggen_default_register #(
        .READABLE       (1),
        .WRITABLE       (1),
        .ADDRESS_WIDTH  (7),
        .OFFSET_ADDRESS (7'h00),
        .BUS_WIDTH      (32),
        .DATA_WIDTH     (32),
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
          .WIDTH          (8),
          .INITIAL_VALUE  (`rggen_slice(8'h00, 8, 0)),
          .SW_WRITE_ONCE  (0),
          .TRIGGER        (0)
        ) u_bit_field (
          .i_clk              (i_clk),
          .i_rst_n            (i_rst_n),
          .i_sw_valid         (w_bit_field_valid),
          .i_sw_read_mask     (w_bit_field_read_mask[0+:8]),
          .i_sw_write_enable  (1'b1),
          .i_sw_write_mask    (w_bit_field_write_mask[0+:8]),
          .i_sw_write_data    (w_bit_field_write_data[0+:8]),
          .o_sw_read_data     (w_bit_field_read_data[0+:8]),
          .o_sw_value         (w_bit_field_value[0+:8]),
          .o_write_trigger    (),
          .o_read_trigger     (),
          .i_hw_write_enable  (1'b0),
          .i_hw_write_data    ({8{1'b0}}),
          .i_hw_set           ({8{1'b0}}),
          .i_hw_clear         ({8{1'b0}}),
          .i_value            ({8{1'b0}}),
          .i_mask             ({8{1'b1}}),
          .o_value            (o_register_file_0_register_0_bit_field_0),
          .o_value_unmasked   ()
        );
      end
    end
    if (1) begin : g_register_1
      wire w_bit_field_valid;
      wire [31:0] w_bit_field_read_mask;
      wire [31:0] w_bit_field_write_mask;
      wire [31:0] w_bit_field_write_data;
      wire [31:0] w_bit_field_read_data;
      wire [31:0] w_bit_field_value;
      `rggen_tie_off_unused_signals(32, 32'h000000ff, w_bit_field_read_data, w_bit_field_value)
      rggen_default_register #(
        .READABLE       (1),
        .WRITABLE       (1),
        .ADDRESS_WIDTH  (7),
        .OFFSET_ADDRESS (7'h04),
        .BUS_WIDTH      (32),
        .DATA_WIDTH     (32),
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
        .o_register_value       (w_register_value[32+:32]),
        .o_bit_field_valid      (w_bit_field_valid),
        .o_bit_field_read_mask  (w_bit_field_read_mask),
        .o_bit_field_write_mask (w_bit_field_write_mask),
        .o_bit_field_write_data (w_bit_field_write_data),
        .i_bit_field_read_data  (w_bit_field_read_data),
        .i_bit_field_value      (w_bit_field_value)
      );
      if (1) begin : g_bit_field_0
        rggen_bit_field #(
          .WIDTH          (8),
          .INITIAL_VALUE  (`rggen_slice(8'h00, 8, 0)),
          .SW_WRITE_ONCE  (0),
          .TRIGGER        (0)
        ) u_bit_field (
          .i_clk              (i_clk),
          .i_rst_n            (i_rst_n),
          .i_sw_valid         (w_bit_field_valid),
          .i_sw_read_mask     (w_bit_field_read_mask[0+:8]),
          .i_sw_write_enable  (1'b1),
          .i_sw_write_mask    (w_bit_field_write_mask[0+:8]),
          .i_sw_write_data    (w_bit_field_write_data[0+:8]),
          .o_sw_read_data     (w_bit_field_read_data[0+:8]),
          .o_sw_value         (w_bit_field_value[0+:8]),
          .o_write_trigger    (),
          .o_read_trigger     (),
          .i_hw_write_enable  (1'b0),
          .i_hw_write_data    ({8{1'b0}}),
          .i_hw_set           ({8{1'b0}}),
          .i_hw_clear         ({8{1'b0}}),
          .i_value            ({8{1'b0}}),
          .i_mask             ({8{1'b1}}),
          .o_value            (o_register_file_0_register_1_bit_field_0),
          .o_value_unmasked   ()
        );
      end
    end
  end endgenerate
  generate if (1) begin : g_register_file_1
    if (1) begin : g_register_0
      genvar i;
      for (i = 0;i < 2;i = i + 1) begin : g
        wire [15:0] w_indirect_index;
        wire w_bit_field_valid;
        wire [31:0] w_bit_field_read_mask;
        wire [31:0] w_bit_field_write_mask;
        wire [31:0] w_bit_field_write_data;
        wire [31:0] w_bit_field_read_data;
        wire [31:0] w_bit_field_value;
        `rggen_tie_off_unused_signals(32, 32'h000000ff, w_bit_field_read_data, w_bit_field_value)
        assign w_indirect_index = {w_register_value[0+:8], w_register_value[32+:8]};
        rggen_indirect_register #(
          .READABLE             (1),
          .WRITABLE             (1),
          .ADDRESS_WIDTH        (7),
          .OFFSET_ADDRESS       (7'h10),
          .BUS_WIDTH            (32),
          .DATA_WIDTH           (32),
          .INDIRECT_INDEX_WIDTH (16),
          .INDIRECT_INDEX_VALUE ({i[0+:8], 8'h00})
        ) u_register (
          .i_clk                  (i_clk),
          .i_rst_n                (i_rst_n),
          .i_register_valid       (w_register_valid),
          .i_register_access      (w_register_access),
          .i_register_address     (w_register_address),
          .i_register_write_data  (w_register_write_data),
          .i_register_strobe      (w_register_strobe),
          .o_register_active      (w_register_active[1*(2+i)+:1]),
          .o_register_ready       (w_register_ready[1*(2+i)+:1]),
          .o_register_status      (w_register_status[2*(2+i)+:2]),
          .o_register_read_data   (w_register_read_data[32*(2+i)+:32]),
          .o_register_value       (w_register_value[32*(2+i)+0+:32]),
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
            .WIDTH          (8),
            .INITIAL_VALUE  (`rggen_slice(8'h00, 8, 0)),
            .SW_WRITE_ONCE  (0),
            .TRIGGER        (0)
          ) u_bit_field (
            .i_clk              (i_clk),
            .i_rst_n            (i_rst_n),
            .i_sw_valid         (w_bit_field_valid),
            .i_sw_read_mask     (w_bit_field_read_mask[0+:8]),
            .i_sw_write_enable  (1'b1),
            .i_sw_write_mask    (w_bit_field_write_mask[0+:8]),
            .i_sw_write_data    (w_bit_field_write_data[0+:8]),
            .o_sw_read_data     (w_bit_field_read_data[0+:8]),
            .o_sw_value         (w_bit_field_value[0+:8]),
            .o_write_trigger    (),
            .o_read_trigger     (),
            .i_hw_write_enable  (1'b0),
            .i_hw_write_data    ({8{1'b0}}),
            .i_hw_set           ({8{1'b0}}),
            .i_hw_clear         ({8{1'b0}}),
            .i_value            ({8{1'b0}}),
            .i_mask             ({8{1'b1}}),
            .o_value            (o_register_file_1_register_0_bit_field_0[8*(i)+:8]),
            .o_value_unmasked   ()
          );
        end
      end
    end
    if (1) begin : g_register_1
      genvar i;
      for (i = 0;i < 2;i = i + 1) begin : g
        wire [15:0] w_indirect_index;
        wire w_bit_field_valid;
        wire [31:0] w_bit_field_read_mask;
        wire [31:0] w_bit_field_write_mask;
        wire [31:0] w_bit_field_write_data;
        wire [31:0] w_bit_field_read_data;
        wire [31:0] w_bit_field_value;
        `rggen_tie_off_unused_signals(32, 32'h000000ff, w_bit_field_read_data, w_bit_field_value)
        assign w_indirect_index = {w_register_value[0+:8], w_register_value[32+:8]};
        rggen_indirect_register #(
          .READABLE             (1),
          .WRITABLE             (1),
          .ADDRESS_WIDTH        (7),
          .OFFSET_ADDRESS       (7'h10),
          .BUS_WIDTH            (32),
          .DATA_WIDTH           (32),
          .INDIRECT_INDEX_WIDTH (16),
          .INDIRECT_INDEX_VALUE ({i[0+:8], 8'h01})
        ) u_register (
          .i_clk                  (i_clk),
          .i_rst_n                (i_rst_n),
          .i_register_valid       (w_register_valid),
          .i_register_access      (w_register_access),
          .i_register_address     (w_register_address),
          .i_register_write_data  (w_register_write_data),
          .i_register_strobe      (w_register_strobe),
          .o_register_active      (w_register_active[1*(4+i)+:1]),
          .o_register_ready       (w_register_ready[1*(4+i)+:1]),
          .o_register_status      (w_register_status[2*(4+i)+:2]),
          .o_register_read_data   (w_register_read_data[32*(4+i)+:32]),
          .o_register_value       (w_register_value[32*(4+i)+0+:32]),
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
            .WIDTH          (8),
            .INITIAL_VALUE  (`rggen_slice(8'h00, 8, 0)),
            .SW_WRITE_ONCE  (0),
            .TRIGGER        (0)
          ) u_bit_field (
            .i_clk              (i_clk),
            .i_rst_n            (i_rst_n),
            .i_sw_valid         (w_bit_field_valid),
            .i_sw_read_mask     (w_bit_field_read_mask[0+:8]),
            .i_sw_write_enable  (1'b1),
            .i_sw_write_mask    (w_bit_field_write_mask[0+:8]),
            .i_sw_write_data    (w_bit_field_write_data[0+:8]),
            .o_sw_read_data     (w_bit_field_read_data[0+:8]),
            .o_sw_value         (w_bit_field_value[0+:8]),
            .o_write_trigger    (),
            .o_read_trigger     (),
            .i_hw_write_enable  (1'b0),
            .i_hw_write_data    ({8{1'b0}}),
            .i_hw_set           ({8{1'b0}}),
            .i_hw_clear         ({8{1'b0}}),
            .i_value            ({8{1'b0}}),
            .i_mask             ({8{1'b1}}),
            .o_value            (o_register_file_1_register_1_bit_field_0[8*(i)+:8]),
            .o_value_unmasked   ()
          );
        end
      end
    end
  end endgenerate
  generate if (1) begin : g_register_file_2
    genvar i;
    for (i = 0;i < 2;i = i + 1) begin : g
      if (1) begin : g_register_file_0
        if (1) begin : g_register_0
          genvar j;
          genvar k;
          for (j = 0;j < 2;j = j + 1) begin : g
            for (k = 0;k < 3;k = k + 1) begin : g
              wire w_bit_field_valid;
              wire [31:0] w_bit_field_read_mask;
              wire [31:0] w_bit_field_write_mask;
              wire [31:0] w_bit_field_write_data;
              wire [31:0] w_bit_field_read_data;
              wire [31:0] w_bit_field_value;
              `rggen_tie_off_unused_signals(32, 32'h00ffffff, w_bit_field_read_data, w_bit_field_value)
              rggen_default_register #(
                .READABLE       (1),
                .WRITABLE       (1),
                .ADDRESS_WIDTH  (7),
                .OFFSET_ADDRESS (7'h20+28*(i)),
                .BUS_WIDTH      (32),
                .DATA_WIDTH     (32),
                .REGISTER_INDEX (3*j+k)
              ) u_register (
                .i_clk                  (i_clk),
                .i_rst_n                (i_rst_n),
                .i_register_valid       (w_register_valid),
                .i_register_access      (w_register_access),
                .i_register_address     (w_register_address),
                .i_register_write_data  (w_register_write_data),
                .i_register_strobe      (w_register_strobe),
                .o_register_active      (w_register_active[1*(6+7*(i)+3*j+k)+:1]),
                .o_register_ready       (w_register_ready[1*(6+7*(i)+3*j+k)+:1]),
                .o_register_status      (w_register_status[2*(6+7*(i)+3*j+k)+:2]),
                .o_register_read_data   (w_register_read_data[32*(6+7*(i)+3*j+k)+:32]),
                .o_register_value       (w_register_value[32*(6+7*(i)+3*j+k)+0+:32]),
                .o_bit_field_valid      (w_bit_field_valid),
                .o_bit_field_read_mask  (w_bit_field_read_mask),
                .o_bit_field_write_mask (w_bit_field_write_mask),
                .o_bit_field_write_data (w_bit_field_write_data),
                .i_bit_field_read_data  (w_bit_field_read_data),
                .i_bit_field_value      (w_bit_field_value)
              );
              if (1) begin : g_bit_field_0
                genvar l;
                for (l = 0;l < 2;l = l + 1) begin : g
                  rggen_bit_field #(
                    .WIDTH          (4),
                    .INITIAL_VALUE  (`rggen_slice(4'h0, 4, 0)),
                    .SW_WRITE_ONCE  (0),
                    .TRIGGER        (0)
                  ) u_bit_field (
                    .i_clk              (i_clk),
                    .i_rst_n            (i_rst_n),
                    .i_sw_valid         (w_bit_field_valid),
                    .i_sw_read_mask     (w_bit_field_read_mask[0+4*l+:4]),
                    .i_sw_write_enable  (1'b1),
                    .i_sw_write_mask    (w_bit_field_write_mask[0+4*l+:4]),
                    .i_sw_write_data    (w_bit_field_write_data[0+4*l+:4]),
                    .o_sw_read_data     (w_bit_field_read_data[0+4*l+:4]),
                    .o_sw_value         (w_bit_field_value[0+4*l+:4]),
                    .o_write_trigger    (),
                    .o_read_trigger     (),
                    .i_hw_write_enable  (1'b0),
                    .i_hw_write_data    ({4{1'b0}}),
                    .i_hw_set           ({4{1'b0}}),
                    .i_hw_clear         ({4{1'b0}}),
                    .i_value            ({4{1'b0}}),
                    .i_mask             ({4{1'b1}}),
                    .o_value            (o_register_file_2_register_file_0_register_0_bit_field_0[4*(12*i+6*j+2*k+l)+:4]),
                    .o_value_unmasked   ()
                  );
                end
              end
              if (1) begin : g_bit_field_1
                genvar l;
                for (l = 0;l < 2;l = l + 1) begin : g
                  rggen_bit_field #(
                    .WIDTH                    (4),
                    .INITIAL_VALUE            (`rggen_slice(4'h0, 4, 0)),
                    .SW_WRITE_ENABLE_POLARITY (`RGGEN_ACTIVE_HIGH)
                  ) u_bit_field (
                    .i_clk              (i_clk),
                    .i_rst_n            (i_rst_n),
                    .i_sw_valid         (w_bit_field_valid),
                    .i_sw_read_mask     (w_bit_field_read_mask[8+4*l+:4]),
                    .i_sw_write_enable  (w_register_value[0+:1]),
                    .i_sw_write_mask    (w_bit_field_write_mask[8+4*l+:4]),
                    .i_sw_write_data    (w_bit_field_write_data[8+4*l+:4]),
                    .o_sw_read_data     (w_bit_field_read_data[8+4*l+:4]),
                    .o_sw_value         (w_bit_field_value[8+4*l+:4]),
                    .o_write_trigger    (),
                    .o_read_trigger     (),
                    .i_hw_write_enable  (1'b0),
                    .i_hw_write_data    ({4{1'b0}}),
                    .i_hw_set           ({4{1'b0}}),
                    .i_hw_clear         ({4{1'b0}}),
                    .i_value            ({4{1'b0}}),
                    .i_mask             ({4{1'b1}}),
                    .o_value            (o_register_file_2_register_file_0_register_0_bit_field_1[4*(12*i+6*j+2*k+l)+:4]),
                    .o_value_unmasked   ()
                  );
                end
              end
              if (1) begin : g_bit_field_2
                genvar l;
                for (l = 0;l < 2;l = l + 1) begin : g
                  rggen_bit_field #(
                    .WIDTH                    (4),
                    .INITIAL_VALUE            (`rggen_slice(4'h0, 4, 0)),
                    .SW_WRITE_ENABLE_POLARITY (`RGGEN_ACTIVE_LOW)
                  ) u_bit_field (
                    .i_clk              (i_clk),
                    .i_rst_n            (i_rst_n),
                    .i_sw_valid         (w_bit_field_valid),
                    .i_sw_read_mask     (w_bit_field_read_mask[16+4*l+:4]),
                    .i_sw_write_enable  (w_register_value[32*(6+7*(i)+6)+0+1*l+:1]),
                    .i_sw_write_mask    (w_bit_field_write_mask[16+4*l+:4]),
                    .i_sw_write_data    (w_bit_field_write_data[16+4*l+:4]),
                    .o_sw_read_data     (w_bit_field_read_data[16+4*l+:4]),
                    .o_sw_value         (w_bit_field_value[16+4*l+:4]),
                    .o_write_trigger    (),
                    .o_read_trigger     (),
                    .i_hw_write_enable  (1'b0),
                    .i_hw_write_data    ({4{1'b0}}),
                    .i_hw_set           ({4{1'b0}}),
                    .i_hw_clear         ({4{1'b0}}),
                    .i_value            ({4{1'b0}}),
                    .i_mask             ({4{1'b1}}),
                    .o_value            (o_register_file_2_register_file_0_register_0_bit_field_2[4*(12*i+6*j+2*k+l)+:4]),
                    .o_value_unmasked   ()
                  );
                end
              end
            end
          end
        end
        if (1) begin : g_register_1
          wire w_bit_field_valid;
          wire [31:0] w_bit_field_read_mask;
          wire [31:0] w_bit_field_write_mask;
          wire [31:0] w_bit_field_write_data;
          wire [31:0] w_bit_field_read_data;
          wire [31:0] w_bit_field_value;
          `rggen_tie_off_unused_signals(32, 32'h00000003, w_bit_field_read_data, w_bit_field_value)
          rggen_default_register #(
            .READABLE       (1),
            .WRITABLE       (1),
            .ADDRESS_WIDTH  (7),
            .OFFSET_ADDRESS (7'h20+28*(i)+7'h18),
            .BUS_WIDTH      (32),
            .DATA_WIDTH     (32),
            .REGISTER_INDEX (0)
          ) u_register (
            .i_clk                  (i_clk),
            .i_rst_n                (i_rst_n),
            .i_register_valid       (w_register_valid),
            .i_register_access      (w_register_access),
            .i_register_address     (w_register_address),
            .i_register_write_data  (w_register_write_data),
            .i_register_strobe      (w_register_strobe),
            .o_register_active      (w_register_active[1*(6+7*(i)+6)+:1]),
            .o_register_ready       (w_register_ready[1*(6+7*(i)+6)+:1]),
            .o_register_status      (w_register_status[2*(6+7*(i)+6)+:2]),
            .o_register_read_data   (w_register_read_data[32*(6+7*(i)+6)+:32]),
            .o_register_value       (w_register_value[32*(6+7*(i)+6)+0+:32]),
            .o_bit_field_valid      (w_bit_field_valid),
            .o_bit_field_read_mask  (w_bit_field_read_mask),
            .o_bit_field_write_mask (w_bit_field_write_mask),
            .o_bit_field_write_data (w_bit_field_write_data),
            .i_bit_field_read_data  (w_bit_field_read_data),
            .i_bit_field_value      (w_bit_field_value)
          );
          if (1) begin : g_bit_field_0
            genvar j;
            for (j = 0;j < 2;j = j + 1) begin : g
              rggen_bit_field #(
                .WIDTH          (1),
                .INITIAL_VALUE  (`rggen_slice(1'h0, 1, 0)),
                .SW_WRITE_ONCE  (0),
                .TRIGGER        (0)
              ) u_bit_field (
                .i_clk              (i_clk),
                .i_rst_n            (i_rst_n),
                .i_sw_valid         (w_bit_field_valid),
                .i_sw_read_mask     (w_bit_field_read_mask[0+1*j+:1]),
                .i_sw_write_enable  (1'b1),
                .i_sw_write_mask    (w_bit_field_write_mask[0+1*j+:1]),
                .i_sw_write_data    (w_bit_field_write_data[0+1*j+:1]),
                .o_sw_read_data     (w_bit_field_read_data[0+1*j+:1]),
                .o_sw_value         (w_bit_field_value[0+1*j+:1]),
                .o_write_trigger    (),
                .o_read_trigger     (),
                .i_hw_write_enable  (1'b0),
                .i_hw_write_data    ({1{1'b0}}),
                .i_hw_set           ({1{1'b0}}),
                .i_hw_clear         ({1{1'b0}}),
                .i_value            ({1{1'b0}}),
                .i_mask             ({1{1'b1}}),
                .o_value            (o_register_file_2_register_file_0_register_1_bit_field_0[1*(2*i+j)+:1]),
                .o_value_unmasked   ()
              );
            end
          end
        end
      end
    end
  end endgenerate
endmodule
