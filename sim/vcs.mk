CLEAN_TARGETS	+= simv*
CLEAN_TARGETS	+= AN.DB
CLEAN_TARGETS	+= csrc
CLEAN_TARGETS	+= 64
CLEAN_TARGETS	+= work.lib++
CLEAN_TARGETS	+= vc_hdrs.h

VLOGAN_UVM_ARGS	+= -full64
VLOGAN_UVM_ARGS	+= -sverilog
VLOGAN_UVM_ARGS	+= -timescale=1ns/1ps
VLOGAN_UVM_ARGS	+= -ntb_opts uvm-1.2
VLOGAN_UVM_ARGS	+= -l vlogan_uvm.log

VLOGAN_DUT_ARGS	+= -full64
VLOGAN_DUT_ARGS	+= $(if $(findstring systemverilog, $(LANGURAGE)), -sverilog, )
VLOGAN_DUT_ARGS	+= -timescale=1ns/1ps
VLOGAN_DUT_ARGS	+= +define+RGGEN_ENABLE_BACKDOOR
VLOGAN_DUT_ARGS	+= +define+RGGEN_ENABLE_SVA
VLOGAN_DUT_ARGS	+= -l vlogan_dut.log
VLOGAN_DUT_ARGS	+= $(addprefix -f , $(DUT_FILE_LISTS))
VLOGAN_DUT_ARGS	+= $(DUT_SOURCE_FILES)

VHDLAN_DUT_ARGS	+= -full64
VHDLAN_DUT_ARGS	+= -l vhdlan_dut.log
VHDLAN_DUT_ARGS	+= $(addprefix -f , $(DUT_FILE_LISTS))
VHDLAN_DUT_ARGS	+= $(DUT_SOURCE_FILES)

VLOGAN_ENV_ARGS	+= -full64
VLOGAN_ENV_ARGS	+= -sverilog
VLOGAN_ENV_ARGS	+= -timescale=1ns/1ps
VLOGAN_ENV_ARGS	+= -ntb_opts uvm-1.2
VLOGAN_ENV_ARGS	+= +incdir+$(RGGEN_SAMPLE_TESTBENCH_ROOT)/env
VLOGAN_ENV_ARGS	+= +define+RGGEN_ENABLE_BACKDOOR
VLOGAN_ENV_ARGS	+= +define+RGGEN_ENABLE_ENHANCED_RAL
VLOGAN_ENV_ARGS	+= +define+RGGEN_$(shell echo $(LANGURAGE) | tr a-z A-Z)
VLOGAN_ENV_ARGS	+= -l vlogan_env.log
VLOGAN_ENV_ARGS	+= $(addprefix -f , $(ENV_FILE_LISTS))
VLOGAN_ENV_ARGS	+= $(ENV_SOURCE_FILES)

VCS_ARGS	+= -full64
VCS_ARGS	+= -ntb_opts uvm-1.2
VCS_ARGS	+= -l vcs.log
VCS_ARGS	+= -top top

SIMV_ARGS	+= -l simv.log
SIMV_ARGS	+= +uvm_set_type_override=env_base,$(PROTOCOL)_env
SIMV_ARGS	+= +UVM_TESTNAME=$(TEST)

ifeq ($(strip $(GUI)), verdi)
	VLOGAN_UVM_ARGS	+= -kdb
	VLOGAN_DUT_ARGS	+= -kdb
	VHDLAN_DUT_ARGS	+= -kdb
	VLOGAN_ENV_ARGS	+= -kdb
	VCS_ARGS	+= -debug_access+all
	VCS_ARGS	+= -kdb
	VCS_ARGS	+= +vcs+fsdbon
	SIMV_ARGS	+= -gui=verdi
	SIMV_ARGS	+= +UVM_VERDI_TRACE=RAL
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

.PHONY: sim_vcs compile_vcs

sim_vcs:
	[ -f simv ] || $(MAKE) compile_vcs
	[ -d $(TEST) ] || mkdir $(TEST)
	cd $(TEST); ../simv $(SIMV_ARGS)

compile_vcs:
	vlogan $(VLOGAN_UVM_ARGS)
ifeq ($(strip $(LANGURAGE)), vhdl)
	vhdlan $(VHDLAN_DUT_ARGS)
else
	vlogan $(VLOGAN_DUT_ARGS)
endif
	vlogan $(VLOGAN_ENV_ARGS)
	vcs $(VCS_ARGS)
