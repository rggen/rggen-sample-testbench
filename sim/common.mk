RGGEN_SAMPLE_TESTBENCH_ROOT	= $(shell git rev-parse --show-toplevel)
RGGEN_SV_RTL_ROOT	?= $(RGGEN_SAMPLE_TESTBENCH_ROOT)/rtl/rggen-sv-rtl
RGGEN_SV_RAL_ROOT	?= $(RGGEN_SAMPLE_TESTBENCH_ROOT)/ral/rggen-sv-ral
TUE_HOME	?= $(RGGEN_SAMPLE_TESTBENCH_ROOT)/env/tue

export RGGEN_SAMPLE_TESTBENCH_ROOT
export RGGEN_SV_RTL_ROOT
export RGGEN_SV_RAL_ROOT
export TUE_HOME

SIMULATOR ?= vcs
GUI	?= off
TR_DEBUG	?= off

FILE_LISTS	+= $(TUE_HOME)/compile.f
FILE_LISTS	+= $(RGGEN_SV_RTL_ROOT)/compile.f
FILE_LISTS	+= $(RGGEN_SV_RAL_ROOT)/compile.f

SOURCE_FILES	+= $(RGGEN_SAMPLE_TESTBENCH_ROOT)/ral/block_0_ral_pkg.sv
SOURCE_FILES	+= $(RGGEN_SAMPLE_TESTBENCH_ROOT)/ral/block_1_ral_pkg.sv
SOURCE_FILES	+= $(RGGEN_SAMPLE_TESTBENCH_ROOT)/env/env_pkg.sv

include local.mk

TEST_LIST	+= ral_hw_reset_test
TEST_LIST	+= ral_bit_bash_test
TEST_LIST	+= ral_access_test

.PHONY: all $(TEST_LIST) clean clean_all

all: $(TEST_LIST)

$(TEST_LIST):
	$(MAKE) sim_$(SIMULATOR) TEST=$@

CLEAN_TARGETS	=
clean:
	rm -rf $(CLEAN_TARGETS)

clean_all:
	$(MAKE) clean
	rm -rf $(TEST_LIST) *.log

include $(RGGEN_SAMPLE_TESTBENCH_ROOT)/sim/vcs.mk
include $(RGGEN_SAMPLE_TESTBENCH_ROOT)/sim/xcelium.mk
