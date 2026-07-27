LPM_ADD_SUB_AY_inst : LPM_ADD_SUB_AY PORT MAP (
		add_sub	 => add_sub_sig,
		cin	 => cin_sig,
		dataa	 => dataa_sig,
		datab	 => datab_sig,
		cout	 => cout_sig,
		overflow	 => overflow_sig,
		result	 => result_sig
	);
