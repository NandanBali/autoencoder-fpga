set ModuleHierarchy {[{
"Name" : "vae_feature_sender","ID" : "0","Type" : "dataflow",
"SubInsts" : [
	{"Name" : "entry_proc_U0","ID" : "1","Type" : "sequential"},
	{"Name" : "p_anonymous_namespace_load_U0","ID" : "2","Type" : "sequential",
		"SubInsts" : [
		{"Name" : "grp_p_anonymous_namespace_load_Pipeline_read_ddr_fu_90","ID" : "3","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "read_ddr","ID" : "4","Type" : "pipeline"},]},]},
	{"Name" : "p_anonymous_namespace_collect_U0","ID" : "5","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "write_results","ID" : "6","Type" : "pipeline"},]},
	{"Name" : "p_anonymous_namespace_pace_send_U0","ID" : "7","Type" : "sequential",
		"SubInsts" : [
		{"Name" : "grp_p_anonymous_namespace_pace_send_Pipeline_send_fu_88","ID" : "8","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "send","ID" : "9","Type" : "pipeline"},]},]},
	{"Name" : "p_anonymous_namespace_store_stamps_U0","ID" : "10","Type" : "sequential",
		"SubInsts" : [
		{"Name" : "grp_p_anonymous_namespace_store_stamps_Pipeline_write_stamps_fu_77","ID" : "11","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "write_stamps","ID" : "12","Type" : "pipeline"},]},]},]
}]}