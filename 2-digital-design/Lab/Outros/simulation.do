vsim work.aula3
add wave -position end  sim:/aula3/SW(2)
add wave -position end  sim:/aula3/SW(1)
add wave -position end  sim:/aula3/SW(0)
add wave -position end  sim:/aula3/LEDR(0)
add wave -position end  sim:/aula3/F1
add wave -position end  sim:/aula3/F2
add wave -position end  sim:/aula3/F3
add wave -position end  sim:/aula3/F4

force -freeze sim:/aula3/SW(2) 0 0
force -freeze sim:/aula3/SW(1) 0 0
force -freeze sim:/aula3/SW(0) 0 0
run
force -freeze sim:/aula3/SW(2) 0 0
force -freeze sim:/aula3/SW(1) 0 0
force -freeze sim:/aula3/SW(0) 1 0
run
force -freeze sim:/aula3/SW(2) 0 0
force -freeze sim:/aula3/SW(1) 1 0
force -freeze sim:/aula3/SW(0) 0 0
run
force -freeze sim:/aula3/SW(2) 0 0
force -freeze sim:/aula3/SW(1) 1 0
force -freeze sim:/aula3/SW(0) 1 0
run
force -freeze sim:/aula3/SW(2) 1 0
force -freeze sim:/aula3/SW(1) 0 0
force -freeze sim:/aula3/SW(0) 0 0
run
force -freeze sim:/aula3/SW(2) 1 0
force -freeze sim:/aula3/SW(1) 0 0
force -freeze sim:/aula3/SW(0) 1 0
run
force -freeze sim:/aula3/SW(2) 1 0
force -freeze sim:/aula3/SW(1) 1 0
force -freeze sim:/aula3/SW(0) 0 0
run
force -freeze sim:/aula3/SW(2) 1 0
force -freeze sim:/aula3/SW(1) 1 0
force -freeze sim:/aula3/SW(0) 1 0
run
