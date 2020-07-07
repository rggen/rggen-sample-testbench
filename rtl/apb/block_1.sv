`ifndef rggen_connect_bit_field_if
  `define rggen_connect_bit_field_if(RIF, FIF, LSB, WIDTH) \
  assign  FIF.valid                 = RIF.valid; \
  assign  FIF.read_mask             = RIF.read_mask[LSB+:WIDTH]; \
  assign  FIF.write_mask            = RIF.write_mask[LSB+:WIDTH]; \
  assign  FIF.write_data            = RIF.write_data[LSB+:WIDTH]; \
  assign  RIF.read_data[LSB+:WIDTH] = FIF.read_data; \
  assign  RIF.value[LSB+:WIDTH]     = FIF.value;
`endif
module block_1
  import rggen_rtl_pkg::*;
#(
  parameter bit ERROR_STATUS = 0,
  parameter bit [31:0] DEFAULT_READ_DATA = 32'h00000000
)(
  input logic i_clk,
  input logic i_rst_n,
  rggen_apb_if.slave apb_if,
  output logic [7:0] o_register_file_0_register_0_bit_field_0,
  output logic [7:0] o_register_file_0_register_1_bit_field_0,
  output logic [1:0][7:0] o_register_file_1_register_0_bit_field_0,
  output logic [1:0][7:0] o_register_file_1_register_1_bit_field_0,
  output logic [1:0][1:0][2:0][1:0][3:0] o_register_file_2_register_file_0_register_0_bit_field_0,
  output logic [1:0][1:0][2:0][1:0][3:0] o_register_file_2_register_file_0_register_0_bit_field_1,
  output logic [1:0][1:0][2:0][1:0][3:0] o_register_file_2_register_file_0_register_0_bit_field_2,
  output logic [1:0][1:0] o_register_file_2_register_file_0_register_1_bit_field_0
);
  rggen_register_if #(7, 32, 32) register_if[20]();
  rggen_apb_adapter #(
    .ADDRESS_WIDTH      (7),
    .BUS_WIDTH          (32),
    .REGISTERS          (20),
    .ERROR_STATUS       (ERROR_STATUS),
    .DEFAULT_READ_DATA  (DEFAULT_READ_DATA)
  ) u_adapter (
    .i_clk        (i_clk),
    .i_rst_n      (i_rst_n),
    .apb_if       (apb_if),
    .register_if  (register_if)
  );
  generate if (1) begin : g_register_file_0
    if (1) begin : g_register_0
      rggen_bit_field_if #(32) bit_field_if();
      rggen_default_register #(
        .READABLE       (1),
        .WRITABLE       (1),
        .ADDRESS_WIDTH  (7),
        .OFFSET_ADDRESS (7'h00),
        .BUS_WIDTH      (32),
        .DATA_WIDTH     (32),
        .VALID_BITS     (32'h000000ff),
        .REGISTER_INDEX (0)
      ) u_register (
        .i_clk        (i_clk),
        .i_rst_n      (i_rst_n),
        .register_if  (register_if[0]),
        .bit_field_if (bit_field_if)
      );
      if (1) begin : g_bit_field_0
        localparam bit [7:0] INITIAL_VALUE = 8'h00;
        rggen_bit_field_if #(8) bit_field_sub_if();
        `rggen_connect_bit_field_if(bit_field_if, bit_field_sub_if, 0, 8)
        rggen_bit_field_rw_wo #(
          .WIDTH          (8),
          .INITIAL_VALUE  (INITIAL_VALUE),
          .WRITE_ONLY     (0),
          .WRITE_ONCE     (0)
        ) u_bit_field (
          .i_clk        (i_clk),
          .i_rst_n      (i_rst_n),
          .bit_field_if (bit_field_sub_if),
          .o_value      (o_register_file_0_register_0_bit_field_0)
        );
      end
    end
    if (1) begin : g_register_1
      rggen_bit_field_if #(32) bit_field_if();
      rggen_default_register #(
        .READABLE       (1),
        .WRITABLE       (1),
        .ADDRESS_WIDTH  (7),
        .OFFSET_ADDRESS (7'h04),
        .BUS_WIDTH      (32),
        .DATA_WIDTH     (32),
        .VALID_BITS     (32'h000000ff),
        .REGISTER_INDEX (0)
      ) u_register (
        .i_clk        (i_clk),
        .i_rst_n      (i_rst_n),
        .register_if  (register_if[1]),
        .bit_field_if (bit_field_if)
      );
      if (1) begin : g_bit_field_0
        localparam bit [7:0] INITIAL_VALUE = 8'h00;
        rggen_bit_field_if #(8) bit_field_sub_if();
        `rggen_connect_bit_field_if(bit_field_if, bit_field_sub_if, 0, 8)
        rggen_bit_field_rw_wo #(
          .WIDTH          (8),
          .INITIAL_VALUE  (INITIAL_VALUE),
          .WRITE_ONLY     (0),
          .WRITE_ONCE     (0)
        ) u_bit_field (
          .i_clk        (i_clk),
          .i_rst_n      (i_rst_n),
          .bit_field_if (bit_field_sub_if),
          .o_value      (o_register_file_0_register_1_bit_field_0)
        );
      end
    end
  end endgenerate
  generate if (1) begin : g_register_file_1
    if (1) begin : g_register_0
      genvar i;
      for (i = 0;i < 2;++i) begin : g
        logic [15:0] indirect_index;
        rggen_bit_field_if #(32) bit_field_if();
        assign indirect_index = {register_if[0].value[0+:8], register_if[1].value[0+:8]};
        rggen_indirect_register #(
          .READABLE             (1),
          .WRITABLE             (1),
          .ADDRESS_WIDTH        (7),
          .OFFSET_ADDRESS       (7'h10),
          .BUS_WIDTH            (32),
          .DATA_WIDTH           (32),
          .VALID_BITS           (32'h000000ff),
          .INDIRECT_INDEX_WIDTH (16),
          .INDIRECT_INDEX_VALUE ({i[0+:8], 8'h00})
        ) u_register (
          .i_clk            (i_clk),
          .i_rst_n          (i_rst_n),
          .register_if      (register_if[2+i]),
          .i_indirect_index (indirect_index),
          .bit_field_if     (bit_field_if)
        );
        if (1) begin : g_bit_field_0
          localparam bit [7:0] INITIAL_VALUE = 8'h00;
          rggen_bit_field_if #(8) bit_field_sub_if();
          `rggen_connect_bit_field_if(bit_field_if, bit_field_sub_if, 0, 8)
          rggen_bit_field_rw_wo #(
            .WIDTH          (8),
            .INITIAL_VALUE  (INITIAL_VALUE),
            .WRITE_ONLY     (0),
            .WRITE_ONCE     (0)
          ) u_bit_field (
            .i_clk        (i_clk),
            .i_rst_n      (i_rst_n),
            .bit_field_if (bit_field_sub_if),
            .o_value      (o_register_file_1_register_0_bit_field_0[i])
          );
        end
      end
    end
    if (1) begin : g_register_1
      genvar i;
      for (i = 0;i < 2;++i) begin : g
        logic [15:0] indirect_index;
        rggen_bit_field_if #(32) bit_field_if();
        assign indirect_index = {register_if[0].value[0+:8], register_if[1].value[0+:8]};
        rggen_indirect_register #(
          .READABLE             (1),
          .WRITABLE             (1),
          .ADDRESS_WIDTH        (7),
          .OFFSET_ADDRESS       (7'h10),
          .BUS_WIDTH            (32),
          .DATA_WIDTH           (32),
          .VALID_BITS           (32'h000000ff),
          .INDIRECT_INDEX_WIDTH (16),
          .INDIRECT_INDEX_VALUE ({i[0+:8], 8'h01})
        ) u_register (
          .i_clk            (i_clk),
          .i_rst_n          (i_rst_n),
          .register_if      (register_if[4+i]),
          .i_indirect_index (indirect_index),
          .bit_field_if     (bit_field_if)
        );
        if (1) begin : g_bit_field_0
          localparam bit [7:0] INITIAL_VALUE = 8'h00;
          rggen_bit_field_if #(8) bit_field_sub_if();
          `rggen_connect_bit_field_if(bit_field_if, bit_field_sub_if, 0, 8)
          rggen_bit_field_rw_wo #(
            .WIDTH          (8),
            .INITIAL_VALUE  (INITIAL_VALUE),
            .WRITE_ONLY     (0),
            .WRITE_ONCE     (0)
          ) u_bit_field (
            .i_clk        (i_clk),
            .i_rst_n      (i_rst_n),
            .bit_field_if (bit_field_sub_if),
            .o_value      (o_register_file_1_register_1_bit_field_0[i])
          );
        end
      end
    end
  end endgenerate
  generate if (1) begin : g_register_file_2
    genvar i;
    for (i = 0;i < 2;++i) begin : g
      if (1) begin : g_register_file_0
        if (1) begin : g_register_0
          genvar j;
          genvar k;
          for (j = 0;j < 2;++j) begin : g
            for (k = 0;k < 3;++k) begin : g
              rggen_bit_field_if #(32) bit_field_if();
              rggen_default_register #(
                .READABLE       (1),
                .WRITABLE       (1),
                .ADDRESS_WIDTH  (7),
                .OFFSET_ADDRESS (7'h20+28*(i)),
                .BUS_WIDTH      (32),
                .DATA_WIDTH     (32),
                .VALID_BITS     (32'h00ffffff),
                .REGISTER_INDEX (3*j+k)
              ) u_register (
                .i_clk        (i_clk),
                .i_rst_n      (i_rst_n),
                .register_if  (register_if[6+7*(i)+3*j+k]),
                .bit_field_if (bit_field_if)
              );
              if (1) begin : g_bit_field_0
                genvar l;
                for (l = 0;l < 2;++l) begin : g
                  localparam bit [3:0] INITIAL_VALUE = 4'h0;
                  rggen_bit_field_if #(4) bit_field_sub_if();
                  `rggen_connect_bit_field_if(bit_field_if, bit_field_sub_if, 0+4*l, 4)
                  rggen_bit_field_rw_wo #(
                    .WIDTH          (4),
                    .INITIAL_VALUE  (INITIAL_VALUE),
                    .WRITE_ONLY     (0),
                    .WRITE_ONCE     (0)
                  ) u_bit_field (
                    .i_clk        (i_clk),
                    .i_rst_n      (i_rst_n),
                    .bit_field_if (bit_field_sub_if),
                    .o_value      (o_register_file_2_register_file_0_register_0_bit_field_0[i][j][k][l])
                  );
                end
              end
              if (1) begin : g_bit_field_1
                genvar l;
                for (l = 0;l < 2;++l) begin : g
                  localparam bit [3:0] INITIAL_VALUE = 4'h0;
                  rggen_bit_field_if #(4) bit_field_sub_if();
                  `rggen_connect_bit_field_if(bit_field_if, bit_field_sub_if, 8+4*l, 4)
                  rggen_bit_field_rwe #(
                    .WIDTH          (4),
                    .INITIAL_VALUE  (INITIAL_VALUE)
                  ) u_bit_field (
                    .i_clk        (i_clk),
                    .i_rst_n      (i_rst_n),
                    .bit_field_if (bit_field_sub_if),
                    .i_enable     (register_if[0].value[0+:1]),
                    .o_value      (o_register_file_2_register_file_0_register_0_bit_field_1[i][j][k][l])
                  );
                end
              end
              if (1) begin : g_bit_field_2
                genvar l;
                for (l = 0;l < 2;++l) begin : g
                  localparam bit [3:0] INITIAL_VALUE = 4'h0;
                  rggen_bit_field_if #(4) bit_field_sub_if();
                  `rggen_connect_bit_field_if(bit_field_if, bit_field_sub_if, 16+4*l, 4)
                  rggen_bit_field_rwl #(
                    .WIDTH          (4),
                    .INITIAL_VALUE  (INITIAL_VALUE)
                  ) u_bit_field (
                    .i_clk        (i_clk),
                    .i_rst_n      (i_rst_n),
                    .bit_field_if (bit_field_sub_if),
                    .i_lock       (register_if[6+7*(i)+6].value[0+1*l+:1]),
                    .o_value      (o_register_file_2_register_file_0_register_0_bit_field_2[i][j][k][l])
                  );
                end
              end
            end
          end
        end
        if (1) begin : g_register_1
          rggen_bit_field_if #(32) bit_field_if();
          rggen_default_register #(
            .READABLE       (1),
            .WRITABLE       (1),
            .ADDRESS_WIDTH  (7),
            .OFFSET_ADDRESS (7'h20+28*(i)+7'h18),
            .BUS_WIDTH      (32),
            .DATA_WIDTH     (32),
            .VALID_BITS     (32'h00000003),
            .REGISTER_INDEX (0)
          ) u_register (
            .i_clk        (i_clk),
            .i_rst_n      (i_rst_n),
            .register_if  (register_if[6+7*(i)+6]),
            .bit_field_if (bit_field_if)
          );
          if (1) begin : g_bit_field_0
            genvar j;
            for (j = 0;j < 2;++j) begin : g
              localparam bit INITIAL_VALUE = 1'h0;
              rggen_bit_field_if #(1) bit_field_sub_if();
              `rggen_connect_bit_field_if(bit_field_if, bit_field_sub_if, 0+1*j, 1)
              rggen_bit_field_rw_wo #(
                .WIDTH          (1),
                .INITIAL_VALUE  (INITIAL_VALUE),
                .WRITE_ONLY     (0),
                .WRITE_ONCE     (0)
              ) u_bit_field (
                .i_clk        (i_clk),
                .i_rst_n      (i_rst_n),
                .bit_field_if (bit_field_sub_if),
                .o_value      (o_register_file_2_register_file_0_register_1_bit_field_0[i][j])
              );
            end
          end
        end
      end
    end
  end endgenerate
endmodule
