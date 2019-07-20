#! /bin/bash -f
submodules=(
  env/tue
  env/tvip-apb
  ral/rggen-sv-ral
  rtl/rggen-sv-rtl
)

for submodule in ${submodules[@]} ; do
  git submodule update --init ${submodule}
done
