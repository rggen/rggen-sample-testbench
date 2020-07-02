package axi4lite_env_pkg;
  import  uvm_pkg::*;
  import  tue_pkg::*;
  import  env_pkg::*;
  import  tvip_axi_types_pkg::*;
  import  tvip_axi_pkg::*;

  `include  "uvm_macros.svh"
  `include  "tue_macros.svh"

  typedef env_ral_monitor #(
    .ITEM       (tvip_axi_item          ),
    .ADAPTER    (tvip_axi_ral_adapter   ),
    .PREDICTOR  (tvip_axi_ral_predictor )
  ) axi4lite_env_ral_monitor;

  class axi4lite_env_configuration extends env_configuration;
    tvip_axi_configuration  axi4lite_configuration;

    function tue_configuration get_agent_configuration();
      return axi4lite_configuration;
    endfunction

    `tue_object_default_constructor(axi4lite_env_configuration)
    `uvm_object_utils_begin(axi4lite_env_configuration)
      `uvm_field_object(axi4lite_configuration, UVM_DEFAULT)
    `uvm_object_utils_end
  endclass

  class axi4lite_env extends env_param_base #(
    .AGENT        (tvip_axi_master_agent    ),
    .RAL_MONITOR  (axi4lite_env_ral_monitor )
  );
    protected function void create_agent();
      agent = tvip_axi_master_agent::type_id::create("agent", this);
      agent.set_configuration(configuration.get_agent_configuration());
    endfunction

    `tue_component_default_constructor(axi4lite_env)
    `uvm_component_utils(axi4lite_env)
  endclass
endpackage
