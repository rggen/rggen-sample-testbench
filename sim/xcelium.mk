CLEAN_TARGETS	+= xcelium.d
CLEAN_TARGETS	+= *.history

XRUN_COMMON_ARGS	+= -64bit
XRUN_COMMON_ARGS	+= -timedetail
XRUN_COMMON_ARGS	+= -status

XRUN_COMPILE_ARGS	+= -l compile.log
XRUN_COMPILE_ARGS	+= -elaborate
XRUN_COMPILE_ARGS	+= -timescale '1ns/1ps'
XRUN_COMPILE_ARGS	+= -uvmhome CDNS-$(UVM_VERSION)
XRUN_COMPILE_ARGS	+= -plusperf
XRUN_COMPILE_ARGS	+= -newperf
XRUN_COMPILE_ARGS	+= -mccodegen
XRUN_COMPILE_ARGS	+= -warn_multiple_driver
XRUN_COMPILE_ARGS	+= -top worklib.top

XRUN_SIMULATION_ARGS	+= -l simulation.log
XRUN_SIMULATION_ARGS	+= -R
XRUN_SIMULATION_ARGS	+= -xmlibdirname ../xcelium.d
XRUN_SIMULATION_ARGS	+= -xceligen on
XRUN_SIMULATION_ARGS	+= -uvmhome CDNS-$(UVM_VERSION)
XRUN_SIMULATION_ARGS	+= +UVM_TESTNAME=$(TEST)

ifeq ($(strip $(GUI)), indago)
	XRUN_COMPILE_ARGS	+= -classlinedebug
	XRUN_COMPILE_ARGS	+= -xmdebug
	XRUN_COMPILE_ARGS	+= -lwdgen
	XRUN_SIMULATION_ARGS	+= -mcdump
	XRUN_SIMULATION_ARGS	+= -gui
	XRUN_SIMULATION_ARGS	+= -indago
	XRUN_SIMULATION_ARGS	+= -input @"ida_probe -log"
	XRUN_SIMULATION_ARGS	+= -input @"ida_probe -wave -wave_probe_args=\"-all -depth to_cells\""
else
	XRUN_SIMULATION_ARGS	+= -run
endif

XRUN_COMPILE_ARGS	+= -f dut.f
XRUN_COMPILE_ARGS	+= -f env.f

.PHONY: sim_xcelium compile_xcelium

sim_xcelium:
	xmls -64bit -nolog -snapshot | grep SSS || $(MAKE) compile_xcelium
	[ -d $(TEST) ] || mkdir $(TEST)
	cd $(TEST); xrun $(XRUN_COMMON_ARGS) $(XRUN_SIMULATION_ARGS)

compile_xcelium:
	$(MAKE) env.f
ifeq ($(strip $(LANGUAGE)), veryl)
	$(MAKE) gen_veryl
endif
ifeq ($(strip $(LANGUAGE)), vhdl)
	$(MAKE) dut_vhdl.f
else
	$(MAKE) dut.f
endif
	xrun $(XRUN_COMMON_ARGS) $(XRUN_COMPILE_ARGS)
