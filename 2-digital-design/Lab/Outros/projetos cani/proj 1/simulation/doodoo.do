vsim work.topo
add wave -position end  sim:/topo/SW(0)
add wave -position end  sim:/topo/SW(1)
add wave -position end  sim:/topo/SW(2)
add wave -position end 	sim:/topo/LEDR(0)
add wave -position insertpoint  \
sim:/topo/F1 \
sim:/topo/F2 \
sim:/topo/F3

force -freeze sim:/topo/SW(2) 0 0
force -freeze sim:/topo/SW(1) 0 0
force -freeze sim:/topo/SW(0) 0 0
run

force -freeze sim:/topo/SW(2) 0 0
force -freeze sim:/topo/SW(1) 0 0
force -freeze sim:/topo/SW(0) 1 0
run

force -freeze sim:/topo/SW(2) 0 0
force -freeze sim:/topo/SW(1) 1 0
force -freeze sim:/topo/SW(0) 0 0
run

force -freeze sim:/topo/SW(2) 0 0
force -freeze sim:/topo/SW(1) 1 0
force -freeze sim:/topo/SW(0) 1 0
run

force -freeze sim:/topo/SW(2) 1 0
force -freeze sim:/topo/SW(1) 0 0
force -freeze sim:/topo/SW(0) 0 0
run

force -freeze sim:/topo/SW(2) 1 0
force -freeze sim:/topo/SW(1) 0 0
force -freeze sim:/topo/SW(0) 1 0
run

force -freeze sim:/topo/SW(2) 1 0
force -freeze sim:/topo/SW(1) 1 0
force -freeze sim:/topo/SW(0) 0 0
run

force -freeze sim:/topo/SW(2) 1 0
force -freeze sim:/topo/SW(1) 1 0
force -freeze sim:/topo/SW(0) 1 0
run