class env_configuration extends tue_configuration;
  uvm_event reset_event;

  virtual function tue_configuration get_agent_configuration();
    return null;
  endfunction

  `tue_object_default_constructor(env_configuration)
  `uvm_object_utils(env_configuration)
endclass
