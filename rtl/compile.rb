case ENV['LANGUAGE']
when 'systemverilog'
  file_list   'rggen-sv-rtl/compile.rb', from: :current
  source_file "#{ENV['PROTOCOL']}/block_0.sv"
  source_file "#{ENV['PROTOCOL']}/block_1.sv"
when 'verilog'
  file_list   'rggen-verilog-rtl/compile.rb', from: :current
  source_file "#{ENV['PROTOCOL']}/block_0.v"
  source_file "#{ENV['PROTOCOL']}/block_1.v"
when 'vhdl'
  file_list   'rggen-vhdl-rtl/compile.rb', from: :current
  source_file "#{ENV['PROTOCOL']}/block_0.vhd"
  source_file "#{ENV['PROTOCOL']}/block_1.vhd"
end
