LANG_LIST += systemverilog
LANG_LIST += verilog
LANG_LIST += veryl
LANG_LIST += vhdl

SIM_LIST   := $(addprefix sim_, $(LANG_LIST))
CLEAN_LIST := $(addprefix clean_, $(LANG_LIST))

.PHONY: run_sim run_clean $(SIM_LIST) $(CLEAN_LIST)

run_sim: $(SIM_LIST)

run_clean: $(CLEAN_LIST)

$(SIM_LIST):
	$(MAKE) -C $(subst sim_,,$@) all

$(CLEAN_LIST):
	$(MAKE) -C $(subst clean_,,$@) clean_all
