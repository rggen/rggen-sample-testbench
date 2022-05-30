CLEAN_TARGETS += *.pb
CLEAN_TARGETS += *.jou
CLEAN_TARGETS += *.wdb
CLEAN_TARGETS += vivado_*.str
CLEAN_TARGETS += xsim.dir
CLEAN_TARGETS += .Xil

XVLOG_ENV_ARGS += -sv
XVLOG_ENV_ARGS += -log xvlog_env.log
XVLOG_ENV_ARGS += -L uvm
XVLOG_ENV_ARGS += -verbose 2
XVLOG_ENV_ARGS += -i $(RGGEN_SAMPLE_TESTBENCH_ROOT)/env
XVLOG_ENV_ARGS += -d RGGEN_ENABLE_BACKDOOR
XVLOG_ENV_ARGS += -d RGGEN_ENABLE_ENHANCED_RAL
XVLOG_ENV_ARGS += -d RGGEN_$(shell echo $(LANGURAGE) | tr a-z A-Z)
XVLOG_ENV_ARGS += $(subst +incdir+, -i , $(shell cat $(ENV_FILE_LISTS) | grep +incdir+))
XVLOG_ENV_ARGS += $(if $(findstring systemverilog, $(LANGURAGE)), $(shell cat $(RGGEN_SV_RTL_ROOT)/compile_backdoor.f), )
XVLOG_ENV_ARGS += $(shell cat $(ENV_FILE_LISTS) | grep -v +incdir+)
XVLOG_ENV_ARGS += $(ENV_SOURCE_FILES)

XVLOG_DUT_ARGS += $(if $(findstring systemverilog, $(LANGURAGE)), -sv, )
XVLOG_DUT_ARGS += -verbose 2
XVLOG_DUT_ARGS += -log xvlog_dut.log
XVLOG_DUT_ARGS += -d RGGEN_ENABLE_BACKDOOR
XVLOG_DUT_ARGS += $(subst +incdir+, -i , $(shell cat $(DUT_FILE_LISTS) | grep +incdir+))
XVLOG_DUT_ARGS += $(shell cat $(DUT_FILE_LISTS) | grep -v +incdir+ | grep -v compile_backdoor)
XVLOG_DUT_ARGS += $(DUT_SOURCE_FILES)

XVHDL_DUT_ARGS += -verbose 2
XVHDL_DUT_ARGS += -log xvhdl_dut.log
XVHDL_DUT_ARGS += $(shell cat $(DUT_FILE_LISTS))
XVHDL_DUT_ARGS += $(DUT_SOURCE_FILES)

XELAB_ARGS += -log xelab.log
XELAB_ARGS += -verbose 2
XELAB_ARGS += -timescale 1ns/1ps
XELAB_ARGS += -L uvm
XELAB_ARGS += top

XSIM_ARGS += work.top
XSIM_ARGS += -log $(TEST)/xsim.log
XSIM_ARGS += -testplusarg "UVM_TESTNAME=$(TEST)"

ifeq ($(strip $(GUI)), on)
  XELAB_ARGS += -debug all
  XSIM_ARGS  += -gui
else
  XSIM_ARGS += -R
endif

.PHONY: sim_vivado compile_vivado

sim_vivado:
	[ -d xsim.dir ] || $(MAKE) compile_vivado
	[ -d $(TEST) ] || mkdir $(TEST)
	xsim $(XSIM_ARGS)

compile_vivado:
	xvlog $(XVLOG_ENV_ARGS)
ifeq ($(strip $(LANGURAGE)), vhdl)
	xvhdl $(XVHDL_DUT_ARGS)
else
	xvlog $(XVLOG_DUT_ARGS)
endif
	xelab $(XELAB_ARGS)
