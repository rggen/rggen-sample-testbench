RGGEN_SAMPLE_TESTBENCH_ROOT	= $(shell git rev-parse --show-toplevel)
RGGEN_SV_RTL_ROOT	= $(RGGEN_SAMPLE_TESTBENCH_ROOT)/rtl/rggen-sv-rtl
RGGEN_SV_RAL_ROOT	=	$(RGGEN_SAMPLE_TESTBENCH_ROOT)/ral/rggen-sv-ral
TUE_HOME	= $(RGGEN_SAMPLE_TESTBENCH_ROOT)/env/tue

export RGGEN_SAMPLE_TESTBENCH_ROOT
export RGGEN_SV_RTL_ROOT
export RGGEN_SV_RAL_ROOT
export TUE_HOME

GUI	?= off
TR_DEBUG	?= off

FILE_LISTS	+= $(RGGEN_SV_RTL_ROOT)/compile.f
FILE_LISTS	+= $(RGGEN_SV_RAL_ROOT)/compile.f
FILE_LISTS	+= $(TUE_HOME)/compile.f

SOURCE_FILES	+= $(RGGEN_SAMPLE_TESTBENCH_ROOT)/ral/block_0_ral_pkg.sv
SOURCE_FILES	+= $(RGGEN_SAMPLE_TESTBENCH_ROOT)/env/env_pkg.sv

include local.mk

VCS_ARGS	+= -full64
VCS_ARGS	+= -sverilog
VCS_ARGS	+= -l vcs.log
VCS_ARGS	+= +incdir+$(RGGEN_SAMPLE_TESTBENCH_ROOT)/env
VCS_ARGS	+= +define+RGGEN_ENABLE_BACKDOOR
VCS_ARGS	+= -timescale=1ns/1ps
VCS_ARGS	+= -ntb_opts uvm-1.2
VCS_ARGS	+= -top top
VCS_ARGS	+= $(addprefix -f , $(FILE_LISTS))
VCS_ARGS	+= $(SOURCE_FILES)

SIMV_ARGS	+= -l simv.log
SIMV_ARGS	+= +uvm_set_type_override=env_base,$(PROTOCOL)_env
SIMV_ARGS	+= +UVM_TESTNAME=$(TEST)

ifeq ($(strip $(GUI)), verdi)
	VCS_ARGS	+= -debug_access+all
	VCS_ARGS	+= -kdb
	VCS_ARGS	+= +vcs+fsdbon
	SIMV_ARGS	+= -gui=verdi
	ifeq ($(strip $(TR_DEBUG)), on)
		SIMV_ARGS	+= +UVM_VERDI_TRACE
		SIMV_ARGS	+= +UVM_TR_RECORD
	endif
endif

ifeq ($(strip $(GUI)), dve)
	VCS_ARGS	+= -debug_access+all
	VCS_ARGS	+= +vcs+vcdpluson
	SIMV_ARGS	+= -gui=dve
endif

TEST_LIST	+= ral_hw_reset_test
TEST_LIST	+= ral_bit_bash_test
TEST_LIST	+= ral_access_test

.PHONY: all $(TEST_LIST) sim_vcs run_vcs clean clean_all

all: $(TEST_LIST)

$(TEST_LIST):
	make sim_vcs TEST=$@

sim_vcs:
	[ -f simv ] || make run_vcs
	[ -d $(TEST) ] || mkdir $(TEST)
	cd $(TEST); ../simv $(SIMV_ARGS)

run_vcs:
	vcs $(VCS_ARGS)

clean:
	rm -rf simv* csrc

clean_all:
	make clean
	rm -rf $(TEST_LIST) *.log vc_hdrs.h
