#! /bin/bash -f
submodules=(
  env/tue
  env/tvip-common
  env/tvip-apb
  env/tvip-axi
  ral/rggen-sv-ral
  rtl/rggen-sv-rtl
  rtl/rggen-verilog-rtl
)

for submodule in ${submodules[@]} ; do
  git submodule update --init ${submodule}
done
