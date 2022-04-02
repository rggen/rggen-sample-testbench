module apb2wishbone_bridge #(
  parameter bit USE_STALL = 1
)(
  input var                 i_clk,
  input var                 i_rst_n,
  rggen_apb_if.slave        apb_if,
  rggen_wishbone_if.master  wishbone_if
);
  logic request_done;

  always_comb begin
    wishbone_if.cyc   = apb_if.psel && apb_if.penable;
    wishbone_if.stb   = apb_if.psel && apb_if.penable && (!request_done);
    wishbone_if.adr   = apb_if.paddr;
    wishbone_if.we    = apb_if.pwrite;
    wishbone_if.dat_w = apb_if.pwdata;
    wishbone_if.sel   = apb_if.pstrb;
  end

  always_comb begin
    apb_if.pready   = wishbone_if.ack || wishbone_if.err || wishbone_if.rty;
    apb_if.prdata   = wishbone_if.dat_r;
    apb_if.pslverr  = wishbone_if.err || wishbone_if.rty;
  end

  if (USE_STALL) begin : g_stall
    always_ff @(posedge i_clk, negedge i_rst_n) begin
      if (!i_rst_n) begin
        request_done  <= '0;
      end
      else if (apb_if.pready) begin
        request_done  <= '0;
      end
      else if (wishbone_if.stb && (!wishbone_if.stall)) begin
        request_done  <= '1;
      end
    end
  end
  else begin : g_no_stall
    always_comb begin
      request_done  <= '0;
    end
  end
endmodule
