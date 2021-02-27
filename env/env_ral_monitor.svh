class env_ral_monitor #(
  type  ITEM      = uvm_sequence_item,
  type  ADAPTER   = uvm_reg_adapter,
  type  PREDICTOR = uvm_reg_predictor
) extends tue_component #(
  .CONFIGURATION  (env_configuration  )
);
  uvm_analysis_export #(ITEM) bus_in;

            env_ral_model model;
  protected ADAPTER       adapter;
  protected PREDICTOR     predictor;

  function void build_phase(uvm_phase phase);
    super.build_phase(phase);

    bus_in    = new("bus_in", this);
    adapter   = ADAPTER::type_id::create("adapter");
    predictor = PREDICTOR::type_id::create("predictor", this);

    model = env_ral_model::type_id::create("model");
    model.configure(null);
    model.default_map.set_base_addr('h1000);
    model.build();

    foreach (model.register_9[i]) begin
      model.register_9[i].bit_field_1[0].set_reset(4'hC);
      model.register_9[i].bit_field_1[1].set_reset(4'hD);
      model.register_9[i].bit_field_1[2].set_reset(4'hE);
      model.register_9[i].bit_field_1[3].set_reset(4'hF);
    end

    model.set_hdl_path_root("top.u_block_0");
    model.register_14.set_hdl_path_root("top.u_block_1");
    model.enable_backdoor();

    model.lock_model();
  endfunction

  function void connect_phase(uvm_phase phase);
    super.connect_phase(phase);
    bus_in.connect(predictor.bus_in);
    predictor.map     = model.default_map;
    predictor.adapter = adapter;
  endfunction

  task run_phase(uvm_phase phase);
    forever begin
      configuration.reset_event.wait_trigger();
      model.reset();
    end
  endtask

  function void connect_sequencer(uvm_sequencer_base sequencer);
    model.default_map.set_sequencer(sequencer, adapter);
  endfunction

  `tue_component_default_constructor(env_ral_monitor)
  `uvm_component_param_utils(env_ral_monitor #(ITEM, ADAPTER, PREDICTOR))
endclass
