TVIP_APB_HOME	?= $(RGGEN_SAMPLE_TESTBENCH_ROOT)/env/tvip-apb
export TVIP_APB_HOME

PROTOCOL	= apb
LANGURAGE	= verilog

ENV_FILE_LISTS	+= $(TVIP_APB_HOME)/compile.f
DUT_SOURCE_FILES	+= $(RGGEN_SAMPLE_TESTBENCH_ROOT)/rtl/apb/block_0.v
DUT_SOURCE_FILES	+= $(RGGEN_SAMPLE_TESTBENCH_ROOT)/rtl/apb/block_1.v
ENV_SOURCE_FILES	+= $(RGGEN_SAMPLE_TESTBENCH_ROOT)/env/apb_env_pkg.sv
ENV_SOURCE_FILES	+= $(RGGEN_SAMPLE_TESTBENCH_ROOT)/env/apb_top.sv
