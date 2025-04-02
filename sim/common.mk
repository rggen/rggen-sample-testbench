RGGEN_SAMPLE_TESTBENCH_ROOT	= $(shell git rev-parse --show-toplevel)
export RGGEN_SAMPLE_TESTBENCH_ROOT

LANGUAGE ?= systemverilog
UVM_VERSION ?= 1.2
SIMULATOR ?= vcs
PROTOCOL	?= apb
ENV_TYPE	?= $(PROTOCOL)_env
GUI	?= off
DUMP ?= off
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
CLEAN_TARGETS += Veryl.lock
CLEAN_TARGETS += dependencies
CLEAN_TARGETS += .build
CLEAN_TARGETS += target
CLEAN_TARGETS += *.rb

.PHONY: all $(TEST_LIST) clean clean_all gen_veryl check_log dut.f dut_vhdl.f env.f

all: $(TEST_LIST) check_log

$(TEST_LIST):
	$(MAKE) sim_$(SIMULATOR) TEST=$@

clean:
	rm -rf $(CLEAN_TARGETS)

clean_all:
	$(MAKE) clean
	rm -rf $(TEST_LIST) *.log

check_log:
	grep UVM_ERROR */*.log
	grep UVM_FATAL */*.log

gen_veryl:
ifeq ($(PROTOCOL), native)
	veryl build \
		$(RGGEN_SAMPLE_TESTBENCH_ROOT)/rtl/$(PROTOCOL)/*.veryl
else
	veryl build \
		$(RGGEN_SAMPLE_TESTBENCH_ROOT)/rtl/$(PROTOCOL)/*.veryl \
		$(RGGEN_SAMPLE_TESTBENCH_ROOT)/env/$(PROTOCOL)_bridge.veryl
endif

dut.f:
	flgen --output=dut.f $(addprefix --define-macro=,$(DEFINES)) $(RGGEN_SAMPLE_TESTBENCH_ROOT)/rtl/compile.rb

dut_vhdl.f:
	flgen --output=dut.f --source-file-only $(addprefix --define-macro=,$(DEFINES)) $(RGGEN_SAMPLE_TESTBENCH_ROOT)/rtl/compile.rb

env.f:
	flgen --output=env.f $(addprefix --define-macro=,$(DEFINES)) $(RGGEN_SAMPLE_TESTBENCH_ROOT)/env/compile.rb

include $(RGGEN_SAMPLE_TESTBENCH_ROOT)/sim/vcs.mk
include $(RGGEN_SAMPLE_TESTBENCH_ROOT)/sim/xcelium.mk
include $(RGGEN_SAMPLE_TESTBENCH_ROOT)/sim/dsim.mk
include $(RGGEN_SAMPLE_TESTBENCH_ROOT)/sim/vivado.mk
