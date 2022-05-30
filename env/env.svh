class env_base extends tue_env #(
  .CONFIGURATION  (env_configuration  )
);
  env_sequencer sequencer;

  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    sequencer = env_sequencer::type_id::create("sequencer", this);
    sequencer.set_configuration(configuration);
  endfunction

  `tue_component_default_constructor(env_base)
  `uvm_component_utils(env_base)
endclass

class env_param_base #(
  type  AGENT       = uvm_agent,
  type  RAL_MONITOR = uvm_component
) extends env_base;
  protected AGENT       agent;
  protected RAL_MONITOR ral_monitor;

  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    create_agent();
    create_ral_monitor();
  endfunction

  function void connect_phase(uvm_phase phase);
    super.connect_phase(phase);
    ral_monitor.connect_sequencer(agent.sequencer);
    agent.item_port.connect(ral_monitor.bus_in);
    sequencer.bus_sequencer = agent.sequencer;
    sequencer.model         = ral_monitor.model;
  endfunction

  protected virtual function void create_agent();
  endfunction

  protected virtual function void create_ral_monitor();
    ral_monitor = RAL_MONITOR::type_id::create("ral_monitor", this);
    ral_monitor.set_configuration(configuration);
  endfunction

  `tue_component_default_constructor(env_param_base)
endclass
