package apb_env_pkg;
  import  uvm_pkg::*;
  import  tue_pkg::*;
  import  env_pkg::*;
  import  tvip_apb_pkg::*;

  `include  "uvm_macros.svh"
  `include  "tue_macros.svh"

  typedef env_ral_monitor #(
    .ITEM       (tvip_apb_master_item           ),
    .ADAPTER    (tvip_apb_master_ral_adapter    ),
    .PREDICTOR  (tvip_apb_master_ral_predictor  )
  ) env_apb_ral_monitor;

  class apb_env_configuration extends env_configuration;
    tvip_apb_configuration  apb_configuration;

    function tue_configuration get_agent_configuration();
      return apb_configuration;
    endfunction

    `tue_object_default_constructor(apb_env_configuration)
    `uvm_object_utils_begin(apb_env_configuration)
      `uvm_field_object(apb_configuration, UVM_DEFAULT)
    `uvm_object_utils_end
  endclass

  class apb_env extends env_param_base #(
    .AGENT        (tvip_apb_master_agent  ),
    .RAL_MONITOR  (env_apb_ral_monitor    )
  );
    protected function void create_agent();
      agent = tvip_apb_master_agent::type_id::create("agent", this);
      agent.set_configuration(configuration.get_agent_configuration());
    endfunction

    `tue_component_default_constructor(apb_env)
    `uvm_component_utils(apb_env)
  endclass
endpackage
