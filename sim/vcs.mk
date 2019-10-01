CLEAN_TARGETS	+= simv*
CLEAN_TARGETS	+= csrc
CLEAN_TARGETS	+= vc_hdrs.h

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
	vcs $(VCS_ARGS)
