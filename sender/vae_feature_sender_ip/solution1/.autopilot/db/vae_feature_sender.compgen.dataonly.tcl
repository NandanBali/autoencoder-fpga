# This script segment is generated automatically by AutoPilot

set axilite_register_dict [dict create]
set port_control {
features { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 16
	offset_end 27
}
t_send { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 28
	offset_end 39
}
results { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 40
	offset_end 51
}
n_flows { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 52
	offset_end 59
}
period { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 60
	offset_end 67
}
ap_start { }
ap_done { }
ap_ready { }
ap_idle { }
interrupt {
}
}
dict set axilite_register_dict control $port_control


