class env_sequencer extends tue_sequencer #(
  .CONFIGURATION  (env_configuration  )
);
  uvm_sequencer_base  bus_sequencer;
  env_ral_model       model;
  `tue_component_default_constructor(env_sequencer)
  `uvm_component_utils(env_sequencer)
endclass
