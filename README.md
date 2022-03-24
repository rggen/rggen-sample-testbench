# RgGen Sample Testbench

This is an sample testbench to demonstrate integrating UVM RAL model generated by `RgGen` into UVM based testbench.

## DUT

In this testbech, CSR modules generated by `RgGen` are used as DUT and there are two types of DUT.
One is DUT with AMBA APB interface and another one is DUT with AMBA AXI4-Lite interface.

* DUT with AMBA APB iterface
    * https://github.com/rggen/rggen-sample-testbench/tree/master/rtl/apb
* DUT with AMBA AXI4-Lite interface
    * https://github.com/rggen/rggen-sample-testbench/tree/master/rtl/axi4lite

## Sample Testcases

This testbench inclues three sample testcases invoking pre-defined test sequences.

| Test Name         | Test Sequence                                                                                                                                                  |
|:------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------|
| ral_hw_reset_test | [uvm_reg_hw_reset_seq](https://verificationacademy.com/verification-methodology-reference/uvm/docs_1.2/html/files/reg/sequences/uvm_reg_hw_reset_seq-svh.html) |
| ral_bit_bash_test | [uvm_reg_bit_bash_seq](https://verificationacademy.com/verification-methodology-reference/uvm/docs_1.2/html/files/reg/sequences/uvm_reg_bit_bash_seq-svh.html) |
| ral_access_test   | [uvm_reg_access_seq](https://verificationacademy.com/verification-methodology-reference/uvm/docs_1.2/html/files/reg/sequences/uvm_reg_access_seq-svh.html)     |

## Usage

### Setup

This testbench depends on some submodules so you need to get them from GitHub repositries.
To do this, hit the command below on the root of this repositly.

```
$ cd rggen-sample-testbench
$ ./setup_submodules.sh
```

If execution of above commands failed you need to get them from GitHub repositlies directly and set some environment variables.

```
$ git clone https://github.com/taichi-ishitani/tue.git
$ export TUE_HOME=`pwd`/tue
$ git clone https://github.com/taichi-ishitani/tvip-common.git
$ export TVIP_COMMON_HOME=`pwd`/tvip-common
$ git clone https://github.com/taichi-ishitani/tvip-apb.git
$ export TVIP_APB_HOME=`pwd`/tvip-apb
$ git clone https://github.com/taichi-ishitani/tvip-axi.git
$ export TVIP_APB_HOME=`pwd`/tvip-axi
$ git clone https://github.com/rggen/rggen-sv-rtl.git
$ export RGGEN_SV_RTL_ROOT=`pwd`/rggen-sv-rtl
$ git clone https://github.com/rggen/rggen-sv-ral.git
$ export RGGEN_SV_RTL_ROOT=`pwd`/rggen-sv-ral
$ git clone https://github.com/rggen/rggen-verilog-rtl.git
$ export RGGEN_VERILOG_RTL_ROOT=`pwd`/rggen-verilog-rtl
```

### Run Simulation

Synopsys VCS simulator and Cadence Xcelium simulator are supported.

1. Move to the work directry
    * for DUT with AMBA APB interfac
        * `sim/systemverilog/apb`
        * `sim/verilog/apb`
    * for DUT with AMBA AXI4-Lite interface
        * `sim/systemverilog/axi4lite`
        * `sim/verilog/axi4lite`

2. Hit `make` command on the work directry

```
$ make
```

By default, all sample testcases will be execluted by VCS simulator. If you want to use Xcelium simulator, add `SIMULATOR=xcelium` option to `makefile` command.

```
$ make SIMULATOR=xcelium
```

If you want to execute an specific testcase then you need to give its name to `make` command like below.

```
$ make ral_bit_bash_test
```

The `GUI` option is to enable the inteructive debug environment.
To invoke the GUI frontend, give this option to `make` command like below.

* Frontend: DVE

```
$ make ral_bit_bash_test GUI=dve
```

* Frontend: Verdi

```
$ make ral_bit_bash_test GUI=verdi
```

* Frontend: Indago

```
$ make ral_bit_bash_test SIMULATOR=xcelium GUI=indago
```

## Contact

You can post your questions, feedbacks, bug reports, etc. by using following ways.

* [GitHub Issue Tracker](https://github.com/rggen/rggen-sample-testbench/issues)
* [Chat Room](https://gitter.im/rggen/rggen)
* [Mailing List](https://groups.google.com/d/forum/rggen)
* [Mail](mailto:rggen@googlegroups.com)

## Copyright & License

Copyright &copy; 2019-2022 Taichi Ishitani. This testbench is licensed under the [MIT License](https://opensource.org/licenses/MIT), see [LICENSE](LICENSE) for futher detils.
