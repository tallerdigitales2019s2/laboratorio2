transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+/home/gsegura/Documents/taller/Tareas/Laboratorio2 {/home/gsegura/Documents/taller/Tareas/Laboratorio2/nBitsCounter.sv}

