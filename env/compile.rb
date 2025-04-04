file_list 'tue/compile.rb', from: :current
file_list 'tvip-common/compile.rb', from: :current

if ENV['PROTOCOL'] == 'axi4lite'
  file_list 'tvip-axi/compile.rb', from: :current
else
  file_list 'tvip-apb/compile.rb', from: :current
end

if ['verilog', 'vhdl', 'veryl'].include? ENV['LANGUAGE']
  file_list 'rtl/rggen-sv-rtl/compile_backdoor.rb', from: :root
end

if ['verilog', 'vhdl'].include?(ENV['LANGUAGE']) && ENV['PROTOCOL'] != 'native'
  source_file 'rtl/rggen-sv-rtl/rggen_rtl_pkg.sv', from: :root
  source_file "rtl/rggen-sv-rtl/rggen_#{ENV['PROTOCOL']}_if.sv", from: :root
end

file_list 'ral/rggen-sv-ral/compile.rb'
source_file 'ral/block_0_ral_pkg.sv', from: :root
source_file 'ral/block_1_ral_pkg.sv', from: :root

include_directory '.'
source_file 'env_pkg.sv'

if ENV['PROTOCOL'] == 'avalon'
  source_file 'apb_env_pkg.sv'
  if ['verilog', 'vhdl'].include? ENV['LANGUAGE']
    source_file "rtl/rggen-sv-rtl/rggen_avalon_if.sv", from: :root
  end
elsif ENV['PROTOCOL'] == 'wishbone'
  source_file 'apb_env_pkg.sv'
  source_file 'apb2wishbone_bridge.sv'
  if ENV['LANGUAGE'] != 'systemverilog'
    source_file "rtl/rggen-sv-rtl/rggen_apb_if.sv", from: :root
  end
elsif ENV['PROTOCOL'] == 'native'
  source_file 'apb_env_pkg.sv'
else
  source_file "#{ENV['PROTOCOL']}_env_pkg.sv"
end

source_file "#{ENV['PROTOCOL']}_top.sv"
