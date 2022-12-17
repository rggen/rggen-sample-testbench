RGGEN_SAMPLE_TESTBENCH_ROOT	= $(shell git rev-parse --show-toplevel)
export RGGEN_SAMPLE_TESTBENCH_ROOT

LANGUAGE ?= systemverilog
SIMULATOR ?= vcs
PROTOCOL	?= apb
ENV_TYPE	?= $(PROTOCOL)_env
GUI	?= off
TR_DEBUG	?= off

include local.mk

export LANGUAGE
export PROTOCOL

DEFINES += RGGEN_$(shell echo $(LANGUAGE) | tr a-z A-Z)
DEFINES += RGGEN_ENABLE_SVA
DEFINES += RGGEN_ENABLE_BACKDOOR
DEFINES += RGGEN_ENABLE_ENHANCED_RAL

TEST_LIST	+= ral_hw_reset_test
TEST_LIST	+= ral_bit_bash_test
TEST_LIST	+= ral_access_test

CLEAN_TARGETS	+= *.f

.PHONY: all $(TEST_LIST) clean clean_all dut.f dut_vhdl.f env.f

all: $(TEST_LIST)

$(TEST_LIST):
	$(MAKE) sim_$(SIMULATOR) TEST=$@

clean:
	rm -rf $(CLEAN_TARGETS)

clean_all:
	$(MAKE) clean
	rm -rf $(TEST_LIST) *.log

dut.f:
	flgen --output=dut.f $(addprefix --define-macro=,$(DEFINES)) $(RGGEN_SAMPLE_TESTBENCH_ROOT)/rtl/compile.rb

dut_vhdl.f:
	flgen --output=dut.f --source-file-only $(addprefix --define-macro=,$(DEFINES)) $(RGGEN_SAMPLE_TESTBENCH_ROOT)/rtl/compile.rb

env.f:
	flgen --output=env.f $(addprefix --define-macro=,$(DEFINES)) $(RGGEN_SAMPLE_TESTBENCH_ROOT)/env/compile.rb

include $(RGGEN_SAMPLE_TESTBENCH_ROOT)/sim/vcs.mk
include $(RGGEN_SAMPLE_TESTBENCH_ROOT)/sim/xcelium.mk
include $(RGGEN_SAMPLE_TESTBENCH_ROOT)/sim/vivado.mk
