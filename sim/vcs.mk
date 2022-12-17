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
VLOGAN_DUT_ARGS	+= $(if $(findstring systemverilog, $(LANGUAGE)), -sverilog, )
VLOGAN_DUT_ARGS	+= -timescale=1ns/1ps
VLOGAN_DUT_ARGS	+= -l vlogan_dut.log
VLOGAN_DUT_ARGS += -f dut.f

VHDLAN_DUT_ARGS	+= -full64
VHDLAN_DUT_ARGS	+= -l vhdlan_dut.log
VHDLAN_DUT_ARGS += -f dut.f

VLOGAN_ENV_ARGS	+= -full64
VLOGAN_ENV_ARGS	+= -sverilog
VLOGAN_ENV_ARGS	+= -timescale=1ns/1ps
VLOGAN_ENV_ARGS	+= -ntb_opts uvm-1.2
VLOGAN_ENV_ARGS	+= -l vlogan_env.log
VLOGAN_ENV_ARGS += -f env.f

VCS_ARGS	+= -full64
VCS_ARGS	+= -ntb_opts uvm-1.2
VCS_ARGS	+= -l vcs.log
VCS_ARGS	+= -top top

SIMV_ARGS	+= -l simv.log
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
ifeq ($(strip $(LANGUAGE)), vhdl)
	$(MAKE) dut_vhdl.f
	vhdlan $(VHDLAN_DUT_ARGS)
else
	$(MAKE) dut.f
	vlogan $(VLOGAN_DUT_ARGS)
endif
	$(MAKE) env.f
	vlogan $(VLOGAN_ENV_ARGS)
	vcs $(VCS_ARGS)
