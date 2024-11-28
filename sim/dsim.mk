CLEAN_TARGETS += dvlcom.env
CLEAN_TARGETS += dvhcom.env
CLEAN_TARGETS += dsim.env
CLEAN_TARGETS += dsim_work
CLEAN_TARGETS += */dsim.env
CLEAN_TARGETS += */metrics.db

DVLCOM_DUT_ARGS += -l dvlcom_dut.log
DVLCOM_DUT_ARGS += -f dut.f

DVHCOM_DUT_ARGS += -l dvhcom_dut.log
DVHCOM_DUT_ARGS += -f dut.f

DVLCOM_ENV_ARGS += -uvm $(UVM_VERSION)
DVLCOM_ENV_ARGS += -l dvlcom_env.log
DVLCOM_ENV_ARGS += -f env.f

DSIM_ELAB_ARGS += -genimage image
DSIM_ELAB_ARGS += -uvm $(UVM_VERSION)
DSIM_ELAB_ARGS += -timescale 1ns/1ps
DSIM_ELAB_ARGS += -l dsim_elab.log
DSIM_ELAB_ARGS += -top work.top

DSIM_SIM_ARGS += -work ../dsim_work
DSIM_SIM_ARGS += -image image
DSIM_SIM_ARGS += -uvm $(UVM_VERSION)
DSIM_SIM_ARGS += -timescale 1ns/1ps
DSIM_SIM_ARGS += -l dsim_sim.log
DSIM_SIM_ARGS += +UVM_TESTNAME=$(TEST)

ifeq ($(strip $(DUMP)), vcd)
	DSIM_ELAB_ARGS += +acc
	DSIM_SIM_ARGS += -waves dump.vcd
endif

.PHONY: sim_dsim compile_dsim

sim_dsim:
	[ -f dsim_work/image.so ] || $(MAKE) compile_dsim
	[ -d $(TEST) ] || mkdir $(TEST)
	cd $(TEST); dsim $(DSIM_SIM_ARGS)

compile_dsim:
ifeq ($(strip $(LANGUAGE)), veryl)
	$(MAKE) gen_veryl
endif
ifeq ($(strip $(LANGUAGE)), vhdl)
	$(MAKE) dut_vhdl.f
	-dlib map -lib ieee ${STD_LIBS}/ieee93
	dvhcom $(DVHCOM_DUT_ARGS)
else
	$(MAKE) dut.f
	dvlcom $(DVLCOM_DUT_ARGS)
endif
	$(MAKE) env.f
	dvlcom $(DVLCOM_ENV_ARGS)
	dsim $(DSIM_ELAB_ARGS)
