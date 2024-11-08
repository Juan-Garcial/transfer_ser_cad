set_db init_lib_search_path /home/joc/jc_work/LODs/genus/
set_db script_search_path  /home/joc/jc_work/LODs/genus/
set_db init_hdl_search_path /home/joc/jc_work/LODs/rtl/ 
set_db hdl_language sv
#libreria de celdas
set_db library sky130_fd_sc_hd__ff_100C_1v65.lib

#necesario para sdf
set_db timing_disable_library_data_to_data_checks 0
set_db timing_disable_non_sequential_checks 0

# si se desea usar physical layout estimators durante sintesis como librerias LEF
#interconnect_mode ple

#leer archivos hdl
#read_hdl -f alfacen_list
read_hdl -f dv_list



# elaborar
elaborate

# agregar constraints
#example.g

#sintesis
syn_generic
syn_map

#generar reportes
#report_area
#report_gates
#report_timing
report_timing > timing.txt
#report_timing -cost_group

# write netlist
write_hdl > lods_netlist.v

# export to innovus
write_design -basename ./lods_innovus

# sdc constraints
write_sdc > lods_constraints.sdc

#sdf
#write_sdf -celltiming all -delimiter / -design top alfacen.sdf
#write_sdf -celltiming all -delimiter / -design  > alfacen.sdf
#write_sdf -celltiming all -delimiter / -design top > alfacen.sdf

quit
