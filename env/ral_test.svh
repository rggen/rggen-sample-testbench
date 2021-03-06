class ral_test_sequence #(
  type  RAL_SEQUENCE  = uvm_sequence
) extends tue_sequence #(
  .CONFIGURATION  (env_configuration  )
);
  function new(string name = "ral_test_sequence");
    super.new(name);
    set_automatic_phase_objection(1);
  endfunction

  task body();
    RAL_SEQUENCE  ral_sequence;
    `uvm_create(ral_sequence)
    ral_sequence.model  = p_sequencer.model;
    `uvm_send(ral_sequence)
  endtask

  `uvm_declare_p_sequencer(env_sequencer)
  `uvm_object_param_utils(ral_test_sequence #(RAL_SEQUENCE))
endclass

class ral_test_base extends tue_test #(
  .CONFIGURATION  (env_configuration  )
);
  env_base  env;

  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    env = env_base::type_id::create("env", this);
    env.set_configuration(configuration);
  endfunction

  function void start_of_simulation_phase(uvm_phase phase);
    super.start_of_simulation_phase(phase);
    uvm_config_db #(uvm_object_wrapper)::set(
      env.sequencer, "main_phase", "default_sequence", get_main_sequence()
    );
  endfunction

  protected virtual function uvm_object_wrapper get_main_sequence();
    return null;
  endfunction

  `tue_component_default_constructor(ral_test_base)
endclass

`ifdef RGGEN_ENABLE_ENHANCED_RAL
typedef tue_reg_hw_reset_seq  ral_hw_reset_test_sequence;
typedef tue_reg_bit_bash_seq  ral_bit_bash_test_sequence;
typedef tue_reg_access_seq    ral_access_test_sequence;
`else
typedef uvm_reg_hw_reset_seq  ral_hw_reset_test_sequence;
typedef uvm_reg_bit_bash_seq  ral_bit_bash_test_sequence;
typedef uvm_reg_access_seq    ral_access_test_sequence;
`endif

class ral_hw_reset_test extends ral_test_base;
  protected virtual function uvm_object_wrapper get_main_sequence();
    return ral_test_sequence #(ral_hw_reset_test_sequence)::type_id::get();
  endfunction
  `tue_component_default_constructor(ral_hw_reset_test)
  `uvm_component_utils(ral_hw_reset_test)
endclass

class ral_bit_bash_test extends ral_test_base;
  protected virtual function uvm_object_wrapper get_main_sequence();
    return ral_test_sequence #(ral_bit_bash_test_sequence)::type_id::get();
  endfunction
  `tue_component_default_constructor(ral_bit_bash_test)
  `uvm_component_utils(ral_bit_bash_test)
endclass

class ral_access_test extends ral_test_base;
  protected virtual function uvm_object_wrapper get_main_sequence();
    return ral_test_sequence #(ral_access_test_sequence)::type_id::get();
  endfunction
  `tue_component_default_constructor(ral_access_test)
  `uvm_component_utils(ral_access_test)
endclass
