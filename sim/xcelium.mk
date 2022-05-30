CLEAN_TARGETS	+= xcelium.d
CLEAN_TARGETS	+= *.history

XRUN_COMMON_ARGS	+= -64bit
XRUN_COMMON_ARGS	+= -timedetail
XRUN_COMMON_ARGS	+= -status

XRUN_COMPILE_ARGS	+= -l compile.log
XRUN_COMPILE_ARGS	+= -elaborate
XRUN_COMPILE_ARGS	+= -timescale '1ns/1ps'
XRUN_COMPILE_ARGS	+= -uvmhome CDNS-1.2
XRUN_COMPILE_ARGS	+= +incdir+$(RGGEN_SAMPLE_TESTBENCH_ROOT)/env
XRUN_COMPILE_ARGS	+= +define+RGGEN_ENABLE_BACKDOOR
XRUN_COMPILE_ARGS	+= +define+RGGEN_ENABLE_SVA
XRUN_COMPILE_ARGS	+= +define+RGGEN_ENABLE_ENHANCED_RAL
XRUN_COMPILE_ARGS	+= +define+RGGEN_$(shell echo $(LANGURAGE) | tr a-z A-Z)
XRUN_COMPILE_ARGS	+= -plusperf
XRUN_COMPILE_ARGS	+= -newperf
XRUN_COMPILE_ARGS	+= -mccodegen
XRUN_COMPILE_ARGS	+= -warn_multiple_driver
XRUN_COMPILE_ARGS	+= -top worklib.top

XRUN_SIMULATION_ARGS	+= -l simulation.log
XRUN_SIMULATION_ARGS	+= -R
XRUN_SIMULATION_ARGS	+= -xmlibdirname ../xcelium.d
XRUN_SIMULATION_ARGS	+= -xceligen on
XRUN_SIMULATION_ARGS	+= -uvmhome CDNS-1.2
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

XRUN_COMPILE_ARGS	+= $(addprefix -f , $(DUT_FILE_LISTS))
XRUN_COMPILE_ARGS	+= $(addprefix -f , $(ENV_FILE_LISTS))
XRUN_COMPILE_ARGS	+= $(DUT_SOURCE_FILES)
XRUN_COMPILE_ARGS	+= $(ENV_SOURCE_FILES)

.PHONY: sim_xcelium compile_xcelium

sim_xcelium:
	xmls -64bit -nolog -snapshot | grep SSS || $(MAKE) compile_xcelium
	[ -d $(TEST) ] || mkdir $(TEST)
	cd $(TEST); xrun $(XRUN_COMMON_ARGS) $(XRUN_SIMULATION_ARGS)

compile_xcelium:
	xrun $(XRUN_COMMON_ARGS) $(XRUN_COMPILE_ARGS)
