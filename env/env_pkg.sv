package env_pkg;
  import  uvm_pkg::*;
  import  tue_pkg::*;
  import  block_0_ral_pkg::*;
  import  block_1_ral_pkg::*;

  `include  "uvm_macros.svh"
  `include  "tue_macros.svh"
  `include  "rggen_ral_macros.svh"

  typedef block_0_block_model #(
    .INTEGRATE_REGISTER_8 (0  )
  ) ral_model;

  `include  "env_configuration.svh"
  `include  "env_ral_model.svh"
  `include  "env_ral_monitor.svh"
  `include  "env_sequencer.svh"
  `include  "env.svh"
  `include  "ral_test.svh"
endpackage
