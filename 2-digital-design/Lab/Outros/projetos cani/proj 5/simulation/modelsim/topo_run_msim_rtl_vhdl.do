transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/Ígor/Google Drive/Automação/14.2/Sistemas Digitais/Lab/projetos cani/proj 5/fsm_calculadora.vhd}
vcom -93 -work work {C:/Users/Ígor/Google Drive/Automação/14.2/Sistemas Digitais/Lab/projetos cani/proj 5/topo.vhd}
vcom -93 -work work {C:/Users/Ígor/Google Drive/Automação/14.2/Sistemas Digitais/Lab/projetos cani/proj 5/c3.vhd}
vcom -93 -work work {C:/Users/Ígor/Google Drive/Automação/14.2/Sistemas Digitais/Lab/projetos cani/proj 5/c2.vhd}
vcom -93 -work work {C:/Users/Ígor/Google Drive/Automação/14.2/Sistemas Digitais/Lab/projetos cani/proj 5/c1.vhd}
vcom -93 -work work {C:/Users/Ígor/Google Drive/Automação/14.2/Sistemas Digitais/Lab/projetos cani/proj 5/mux.vhd}
vcom -93 -work work {C:/Users/Ígor/Google Drive/Automação/14.2/Sistemas Digitais/Lab/projetos cani/proj 5/decog7seg.vhd}
vcom -93 -work work {C:/Users/Ígor/Google Drive/Automação/14.2/Sistemas Digitais/Lab/projetos cani/proj 5/c4.vhd}
vcom -93 -work work {C:/Users/Ígor/Google Drive/Automação/14.2/Sistemas Digitais/Lab/projetos cani/proj 5/reg_4bits.vhd}
vcom -93 -work work {C:/Users/Ígor/Google Drive/Automação/14.2/Sistemas Digitais/Lab/projetos cani/proj 5/reg_8bits.vhd}

