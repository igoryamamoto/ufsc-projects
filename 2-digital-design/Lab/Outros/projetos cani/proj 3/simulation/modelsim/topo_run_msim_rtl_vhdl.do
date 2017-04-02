transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/altera/13.0sp1/projetos/proj 3/topo.vhd}
vcom -93 -work work {C:/altera/13.0sp1/projetos/proj 3/decog7seg.vhd}
vcom -93 -work work {C:/altera/13.0sp1/projetos/proj 3/contador_ascii.vhd}

