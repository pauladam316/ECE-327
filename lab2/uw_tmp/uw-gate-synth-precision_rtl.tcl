set_results_dir uw_tmp
setup_design \
  -hdl vhdl_2008
setup_design \
  -manufacturer Altera \
  -family {Cyclone II}
setup_design -design heatingsys
# setup_design -architecture DESIGN_ARCH
setup_design -overrides {  }

foreach file [concat {  } { heatingsys.vhd }] {
  add_input_file $file
}

compile

auto_write uw_tmp/heatingsys_gate.vhd

puts "*** synthesis to generic gates succeeded ***"

if { "True" != "True" } {
  exit
}
