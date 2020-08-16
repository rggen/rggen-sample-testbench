package block_0_ral_pkg;
  import uvm_pkg::*;
  import rggen_ral_pkg::*;
  `include "uvm_macros.svh"
  `include "rggen_ral_macros.svh"
  class register_0_reg_model extends rggen_ral_reg;
    rand rggen_ral_field bit_field_0;
    rand rggen_ral_field bit_field_1;
    rand rggen_ral_field bit_field_2;
    rand rggen_ral_field bit_field_3;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(bit_field_0, 0, 4, "RW", 0, 4'h0, 1, -1, "")
      `rggen_ral_create_field(bit_field_1, 4, 4, "RW", 0, 4'h0, 1, -1, "")
      `rggen_ral_create_field(bit_field_2, 8, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(bit_field_3, 9, 2, "W1", 0, 2'h0, 1, -1, "")
    endfunction
  endclass
  class register_1_reg_model extends rggen_ral_reg;
    rand rggen_ral_field register_1;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(register_1, 0, 1, "RW", 0, 1'h0, 1, -1, "")
    endfunction
  endclass
  class register_2_reg_model extends rggen_ral_reg;
    rand rggen_ral_field bit_field_0;
    rand rggen_ral_field bit_field_1;
    rand rggen_ral_field bit_field_2;
    rand rggen_ral_field bit_field_3;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(bit_field_0, 0, 4, "RO", 1, 4'h0, 0, -1, "")
      `rggen_ral_create_field(bit_field_1, 8, 4, "RO", 1, 4'h0, 0, -1, "")
      `rggen_ral_create_field(bit_field_2, 16, 8, "RO", 0, 8'hab, 1, -1, "")
      `rggen_ral_create_field(bit_field_3, 24, 8, "RO", 0, 8'h00, 0, -1, "")
    endfunction
  endclass
  class register_3_reg_model extends rggen_ral_reg;
    rand rggen_ral_field bit_field_0;
    rand rggen_ral_field bit_field_1;
    rand rggen_ral_w0trg_field bit_field_2;
    rand rggen_ral_w1trg_field bit_field_3;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(bit_field_0, 0, 4, "WO", 0, 4'h0, 1, -1, "")
      `rggen_ral_create_field(bit_field_1, 4, 4, "WO1", 0, 4'h0, 1, -1, "")
      `rggen_ral_create_field(bit_field_2, 8, 4, "W0TRG", 0, 4'h0, 0, -1, "")
      `rggen_ral_create_field(bit_field_3, 16, 4, "W1TRG", 0, 4'h0, 0, -1, "")
    endfunction
  endclass
  class register_4_reg_model extends rggen_ral_reg;
    rand rggen_ral_field bit_field_0;
    rand rggen_ral_field bit_field_1;
    rand rggen_ral_field bit_field_2;
    rand rggen_ral_field bit_field_3;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(bit_field_0, 0, 4, "RC", 1, 4'h0, 1, -1, "")
      `rggen_ral_create_field(bit_field_1, 8, 4, "RC", 1, 4'h0, 1, -1, "register_0.bit_field_0")
      `rggen_ral_create_field(bit_field_2, 12, 4, "RO", 1, 4'h0, 0, -1, "register_4.bit_field_1")
      `rggen_ral_create_field(bit_field_3, 16, 4, "RS", 1, 4'h0, 1, -1, "")
    endfunction
  endclass
  class register_5_reg_model extends rggen_ral_reg;
    rand rggen_ral_field bit_field_0;
    rand rggen_ral_field bit_field_1;
    rand rggen_ral_field bit_field_2;
    rand rggen_ral_field bit_field_3;
    rand rggen_ral_rwe_field bit_field_4;
    rand rggen_ral_rwe_field bit_field_5;
    rand rggen_ral_rwe_field bit_field_6;
    rand rggen_ral_rwl_field bit_field_7;
    rand rggen_ral_rwl_field bit_field_8;
    rand rggen_ral_rwl_field bit_field_9;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(bit_field_0, 0, 2, "RW", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(bit_field_1, 2, 2, "RW", 1, 2'h0, 1, -1, "register_3.bit_field_2")
      `rggen_ral_create_field(bit_field_2, 4, 2, "RW", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(bit_field_3, 6, 2, "RW", 1, 2'h0, 1, -1, "register_3.bit_field_3")
      `rggen_ral_create_field(bit_field_4, 8, 2, "RWE", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(bit_field_5, 10, 2, "RWE", 0, 2'h0, 1, -1, "register_0.bit_field_2")
      `rggen_ral_create_field(bit_field_6, 12, 2, "RWE", 0, 2'h0, 1, -1, "register_1.register_1")
      `rggen_ral_create_field(bit_field_7, 16, 2, "RWL", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(bit_field_8, 18, 2, "RWL", 0, 2'h0, 1, -1, "register_0.bit_field_2")
      `rggen_ral_create_field(bit_field_9, 20, 2, "RWL", 0, 2'h0, 1, -1, "register_1.register_1")
    endfunction
  endclass
  class register_6_reg_model extends rggen_ral_reg;
    rand rggen_ral_field bit_field_0;
    rand rggen_ral_field bit_field_1;
    rand rggen_ral_field bit_field_2;
    rand rggen_ral_field bit_field_3;
    rand rggen_ral_field bit_field_4;
    rand rggen_ral_field bit_field_5;
    rand rggen_ral_field bit_field_6;
    rand rggen_ral_field bit_field_7;
    rand rggen_ral_field bit_field_8;
    rand rggen_ral_field bit_field_9;
    function new(string name);
      super.new(name, 64, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(bit_field_0, 0, 4, "W0C", 1, 4'h0, 1, -1, "")
      `rggen_ral_create_field(bit_field_1, 4, 4, "W0C", 1, 4'h0, 1, -1, "register_0.bit_field_0")
      `rggen_ral_create_field(bit_field_2, 8, 4, "RO", 1, 4'h0, 0, -1, "register_6.bit_field_1")
      `rggen_ral_create_field(bit_field_3, 12, 4, "W1C", 1, 4'h0, 1, -1, "")
      `rggen_ral_create_field(bit_field_4, 16, 4, "W1C", 1, 4'h0, 1, -1, "register_0.bit_field_0")
      `rggen_ral_create_field(bit_field_5, 20, 4, "RO", 1, 4'h0, 0, -1, "register_6.bit_field_4")
      `rggen_ral_create_field(bit_field_6, 24, 4, "W0S", 1, 4'h0, 1, -1, "")
      `rggen_ral_create_field(bit_field_7, 28, 4, "W1S", 1, 4'h0, 1, -1, "")
      `rggen_ral_create_field(bit_field_8, 32, 4, "W0T", 0, 4'h0, 1, -1, "")
      `rggen_ral_create_field(bit_field_9, 36, 4, "W1T", 0, 4'h0, 1, -1, "")
    endfunction
  endclass
  class register_7_reg_model extends rggen_ral_reg;
    rand rggen_ral_field bit_field_0;
    rand rggen_ral_field bit_field_1;
    rand rggen_ral_field bit_field_2;
    rand rggen_ral_field bit_field_3;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(bit_field_0, 0, 4, "W0CRS", 0, 4'h0, 1, -1, "")
      `rggen_ral_create_field(bit_field_1, 8, 4, "W1CRS", 0, 4'h0, 1, -1, "")
      `rggen_ral_create_field(bit_field_2, 16, 4, "W0SRC", 0, 4'h0, 1, -1, "")
      `rggen_ral_create_field(bit_field_3, 24, 4, "W1SRC", 0, 4'h0, 1, -1, "")
    endfunction
  endclass
  class register_8_reg_model extends rggen_ral_reg;
    rand rggen_ral_field bit_field_0[4];
    rand rggen_ral_field bit_field_1[4];
    rand rggen_ral_field bit_field_2[4];
    function new(string name);
      super.new(name, 64, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(bit_field_0[0], 0, 4, "RW", 0, 4'h0, 1, 0, "")
      `rggen_ral_create_field(bit_field_0[1], 16, 4, "RW", 0, 4'h0, 1, 1, "")
      `rggen_ral_create_field(bit_field_0[2], 32, 4, "RW", 0, 4'h0, 1, 2, "")
      `rggen_ral_create_field(bit_field_0[3], 48, 4, "RW", 0, 4'h0, 1, 3, "")
      `rggen_ral_create_field(bit_field_1[0], 4, 4, "RW", 0, 4'h0, 1, 0, "")
      `rggen_ral_create_field(bit_field_1[1], 20, 4, "RW", 0, 4'h0, 1, 1, "")
      `rggen_ral_create_field(bit_field_1[2], 36, 4, "RW", 0, 4'h0, 1, 2, "")
      `rggen_ral_create_field(bit_field_1[3], 52, 4, "RW", 0, 4'h0, 1, 3, "")
      `rggen_ral_create_field(bit_field_2[0], 8, 4, "RW", 0, 4'h0, 1, 0, "")
      `rggen_ral_create_field(bit_field_2[1], 24, 4, "RW", 0, 4'h1, 1, 1, "")
      `rggen_ral_create_field(bit_field_2[2], 40, 4, "RW", 0, 4'h2, 1, 2, "")
      `rggen_ral_create_field(bit_field_2[3], 56, 4, "RW", 0, 4'h3, 1, 3, "")
    endfunction
  endclass
  class register_9_reg_model extends rggen_ral_indirect_reg;
    rand rggen_ral_field bit_field_0[4];
    rand rggen_ral_field bit_field_1[4];
    function new(string name);
      super.new(name, 64, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(bit_field_0[0], 0, 8, "RW", 0, 8'h00, 1, 0, "")
      `rggen_ral_create_field(bit_field_0[1], 16, 8, "RW", 0, 8'h00, 1, 1, "")
      `rggen_ral_create_field(bit_field_0[2], 32, 8, "RW", 0, 8'h00, 1, 2, "")
      `rggen_ral_create_field(bit_field_0[3], 48, 8, "RW", 0, 8'h00, 1, 3, "")
      `rggen_ral_create_field(bit_field_1[0], 8, 8, "RW", 0, 8'h00, 1, 0, "")
      `rggen_ral_create_field(bit_field_1[1], 24, 8, "RW", 0, 8'h00, 1, 1, "")
      `rggen_ral_create_field(bit_field_1[2], 40, 8, "RW", 0, 8'h00, 1, 2, "")
      `rggen_ral_create_field(bit_field_1[3], 56, 8, "RW", 0, 8'h00, 1, 3, "")
    endfunction
    function void setup_index_fields();
      setup_index_field("register_0.bit_field_0", array_index[0]);
      setup_index_field("register_0.bit_field_1", array_index[1]);
      setup_index_field("register_0.bit_field_2", 1'h0);
    endfunction
  endclass
  class register_10_reg_model extends rggen_ral_indirect_reg;
    rand rggen_ral_field bit_field_0;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(bit_field_0, 0, 1, "RW", 0, 1'h0, 1, -1, "")
    endfunction
    function void setup_index_fields();
      setup_index_field("register_0.bit_field_2", 1'h1);
    endfunction
  endclass
  class register_11_reg_model extends rggen_ral_indirect_reg;
    rand rggen_ral_field bit_field_0;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(bit_field_0, 0, 1, "RW", 0, 1'h0, 1, -1, "")
    endfunction
    function void setup_index_fields();
      setup_index_field("register_0.bit_field_2", 1'h1);
    endfunction
  endclass
  class block_0_block_model #(
    type REGISTER_12 = rggen_ral_block,
    bit INTEGRATE_REGISTER_12 = 1
  ) extends rggen_ral_block;
    rand register_0_reg_model register_0;
    rand register_1_reg_model register_1;
    rand register_2_reg_model register_2;
    rand register_3_reg_model register_3;
    rand register_4_reg_model register_4;
    rand register_5_reg_model register_5;
    rand register_6_reg_model register_6;
    rand register_7_reg_model register_7;
    rand register_8_reg_model register_8[4];
    rand register_9_reg_model register_9[2][4];
    rand register_10_reg_model register_10;
    rand register_11_reg_model register_11;
    rand REGISTER_12 register_12;
    function new(string name);
      super.new(name, 4, 0);
    endfunction
    function void build();
      `rggen_ral_create_reg(register_0, '{}, 8'h00, "RW", "g_register_0.u_register")
      `rggen_ral_create_reg(register_1, '{}, 8'h04, "RW", "g_register_1.u_register")
      `rggen_ral_create_reg(register_2, '{}, 8'h08, "RO", "g_register_2.u_register")
      `rggen_ral_create_reg(register_3, '{}, 8'h08, "WO", "g_register_3.u_register")
      `rggen_ral_create_reg(register_4, '{}, 8'h0c, "RO", "g_register_4.u_register")
      `rggen_ral_create_reg(register_5, '{}, 8'h10, "RW", "g_register_5.u_register")
      `rggen_ral_create_reg(register_6, '{}, 8'h14, "RW", "g_register_6.u_register")
      `rggen_ral_create_reg(register_7, '{}, 8'h1c, "RW", "g_register_7.u_register")
      `rggen_ral_create_reg(register_8[0], '{0}, 8'h20, "RW", "g_register_8.g[0].u_register")
      `rggen_ral_create_reg(register_8[1], '{1}, 8'h28, "RW", "g_register_8.g[1].u_register")
      `rggen_ral_create_reg(register_8[2], '{2}, 8'h30, "RW", "g_register_8.g[2].u_register")
      `rggen_ral_create_reg(register_8[3], '{3}, 8'h38, "RW", "g_register_8.g[3].u_register")
      `rggen_ral_create_reg(register_9[0][0], '{0, 0}, 8'h40, "RW", "g_register_9.g[0].g[0].u_register")
      `rggen_ral_create_reg(register_9[0][1], '{0, 1}, 8'h40, "RW", "g_register_9.g[0].g[1].u_register")
      `rggen_ral_create_reg(register_9[0][2], '{0, 2}, 8'h40, "RW", "g_register_9.g[0].g[2].u_register")
      `rggen_ral_create_reg(register_9[0][3], '{0, 3}, 8'h40, "RW", "g_register_9.g[0].g[3].u_register")
      `rggen_ral_create_reg(register_9[1][0], '{1, 0}, 8'h40, "RW", "g_register_9.g[1].g[0].u_register")
      `rggen_ral_create_reg(register_9[1][1], '{1, 1}, 8'h40, "RW", "g_register_9.g[1].g[1].u_register")
      `rggen_ral_create_reg(register_9[1][2], '{1, 2}, 8'h40, "RW", "g_register_9.g[1].g[2].u_register")
      `rggen_ral_create_reg(register_9[1][3], '{1, 3}, 8'h40, "RW", "g_register_9.g[1].g[3].u_register")
      `rggen_ral_create_reg(register_10, '{}, 8'h40, "RW", "g_register_10.u_register")
      `rggen_ral_create_reg(register_11, '{}, 8'h44, "RW", "g_register_11.u_register")
      `rggen_ral_create_block(register_12, 8'h80, this, INTEGRATE_REGISTER_12)
    endfunction
  endclass
endpackage
