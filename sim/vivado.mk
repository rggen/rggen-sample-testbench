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
XVLOG_ENV_ARGS += -f env.f

XVLOG_DUT_ARGS += $(if $(findstring systemverilog, $(LANGUAGE)), -sv, )
XVLOG_DUT_ARGS += -verbose 2
XVLOG_DUT_ARGS += -log xvlog_dut.log
XVLOG_DUT_ARGS += -f dut.f

XVHDL_DUT_ARGS += -verbose 2
XVHDL_DUT_ARGS += -log xvhdl_dut.log
XVHDL_DUT_ARGS += -f dut.f

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
ifeq ($(strip $(LANGUAGE)), vhdl)
	$(MAKE) dut_vhdl.f
	xvhdl $(XVHDL_DUT_ARGS)
else
	$(MAKE) dut.f
	sed -i -e 's/+define+/-d /g' -e 's/+incdir+/-i /g' dut.f
	xvlog $(XVLOG_DUT_ARGS)
endif
	$(MAKE) env.f
	sed -i -e 's/+define+/-d /g' -e 's/+incdir+/-i /g' env.f
	xvlog $(XVLOG_ENV_ARGS)
	xelab $(XELAB_ARGS)
