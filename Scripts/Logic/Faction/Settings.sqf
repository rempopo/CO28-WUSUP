/*
	Settings of:
		Allied Vehicles
		Hostile Vehicles
		Roles
*/

// Should be equal to lists in Description.ext
dzn_faction_factionList = 	[
	"usocp" 	/* US OCP */
	,"ussf"	/* US SF */
	,"ukaf"	/* UK AF */
	,"ukafd"	/* UK AF DDPM */
	,"ruvv" 	/* RU VV */
	,"pmc" 	/* PMC */
	,"rebels" 	/* European Rebels */
	,"jihadists" 	/* Jihadists */
];

/*
	List of [ @FactionName, [ @List Of Transport, @List Of Armed Cars, @List of ICV, @List of IFV, @List of Tanks ] ]
*/
dzn_faction_vehicles = [
	["usocp", [
		["rhsusf_m998_d_2dr_fulltop","rhsusf_m998_d_2dr_fulltop"]
		, ["rhsusf_m1025_w_m2","rhsusf_m1025_w_mk19"]
		, ["rhsusf_m113_usarmy","rhsusf_m113_usarmy_M240","rhsusf_m113_usarmy_MK19","CUP_B_M1130_CV_M2_Woodland"]
		, ["RHS_M2A3_wd","RHS_M2A2_wd"]
		, ["rhsusf_m1a1aimwd_usarmy"]
	]]
	,["ussf", [
		["rhsusf_m998_d_4dr","rhsusf_m998_d_2dr"]
		, ["rhsusf_m1025_w_m2","rhsusf_m1025_w_mk19"]
		, ["rhsusf_m113_usarmy","rhsusf_m113_usarmy_M240","rhsusf_m113_usarmy_MK19","CUP_B_M1130_CV_M2_Woodland"]
		, ["RHS_M2A3_wd","RHS_M2A2_wd"]
		, ["rhsusf_m1a1aimwd_usarmy"]
	]]
	,["ukaf", [
		["CUP_B_LR_Transport_GB_W"]
		, ["CUP_B_BAF_Coyote_GMG_W","CUP_B_BAF_Coyote_L2A1_W","CUP_B_Jackal2_GMG_GB_W","CUP_B_Jackal2_L2A1_GB_W","CUP_B_LR_MG_GB_W","CUP_B_LR_Special_GMG_GB_W"]
		, ["CUP_B_Ridgback_LMG_GB_W","CUP_B_Ridgback_GMG_GB_W","CUP_B_FV432_Bulldog_GB_W","CUP_B_FV432_Bulldog_GB_W_RWS"]
		, ["CUP_B_FV432_Bulldog_GB_W_RWS","CUP_B_FV510_GB_W","CUP_B_MCV80_GB_W"]
		, ["CUP_B_Challenger2_2CW_BAF","CUP_B_Challenger2_Woodland_BAF"]
	]]
	,["ukafd", [
		["CUP_B_LR_Transport_GB_D"]
		,["CUP_B_BAF_Coyote_GMG_D","CUP_B_BAF_Coyote_L2A1_D","CUP_B_Jackal2_GMG_GB_D","CUP_B_Jackal2_L2A1_GB_D","CUP_B_LR_MG_GB_D","CUP_B_LR_Special_GMG_GB_D"]
		,["CUP_B_Mastiff_GMG_GB_D","CUP_B_Mastiff_HMG_GB_D","CUP_B_Ridgback_GMG_GB_D","CUP_B_Ridgback_HMG_GB_D","CUP_B_Wolfhound_GMG_GB_D","CUP_B_Wolfhound_HMG_GB_D","CUP_B_FV432_Bulldog_GB_D_RWS"]
		,["CUP_B_MCV80_GB_D_SLAT","CUP_B_FV510_GB_D","CUP_B_FV510_GB_D_SLAT","CUP_B_MCV80_GB_D"]
		,["CUP_B_Challenger2_Desert_BAF","CUP_B_Challenger2_2CD_BAF"]
	]]
	,["ruvv", [
		["rhs_tigr_msv","rhs_kamaz5350_msv","rhs_tigr_3camo_msv"]
		, ["rhs_tigr_sts_3camo_vv","rhs_tigr_sts_vv","CUP_O_UAZ_AGS30_RU","CUP_O_UAZ_MG_RU"]
		, ["rhs_btr70_vv","rhs_btr80_vv","rhs_btr60_vv","rhs_btr80a_vv","rhs_gaz66_zu23_vv","RHS_Ural_Zu23_VV_01"]
		, ["rhs_bmp2d_vv","rhs_bmp2k_vv","CUP_O_BMP2_RU","CUP_O_BMP3_RU","rhs_bmp3m_msv"]
		, ["CUP_O_T72_RU"]
	]]
	,["pmc", [
		["CUP_C_LR_Transport_CTK","CUP_C_SUV_TK","CUP_C_SUV_CIV","C_Offroad_01_F","CUP_B_LR_Transport_CZ_D"]
		, ["CUP_I_SUV_Armored_ION","CUP_O_LR_MG_TKM","CUP_O_UAZ_AGS30_TKA","I_G_Offroad_01_armed_F","CUP_B_UAZ_MG_ACR","CUP_B_HMMWV_DSHKM_GPK_ACR","CUP_B_HMMWV_AGS_GPK_ACR"]
		, ["rhsusf_M1117_W","rhsusf_m113_usarmy_M2_90","CUP_O_BRDM2_SLA","CUP_B_Dingo_GL_CZ_Wdl","B_MRAP_01_hmg_F","B_MRAP_01_gmg_F"]
		, ["I_APC_Wheeled_03_cannon_F","CUP_B_BMP2_CZ","CUP_B_BMP2_CDF","B_APC_Wheeled_01_cannon_F","CUP_B_LAV25_USMC"]
		, ["CUP_B_T72_CDF","CUP_B_M60A3_USMC"]
	]]
	,["rebels", [ 
		["CUP_O_UAZ_Unarmed_CHDKZ","CUP_O_Ural_Open_CHDKZ","CUP_O_Ural_CHDKZ","CUP_O_UAZ_Open_CHDKZ"]
		, ["O_G_Offroad_01_armed_F","CUP_O_UAZ_MG_CHDKZ","CUP_O_LR_MG_TKA","CUP_O_UAZ_AGS30_TKA","CUP_O_UAZ_MG_TKA"]
		, ["CUP_I_BRDM2_NAPA","CUP_O_Ural_ZU23_CHDKZ","CUP_O_BRDM2_CHDKZ","CUP_O_BTR60_TK","CUP_O_BRDM2_TKA"]
		, ["CUP_I_BMP2_NAPA","CUP_I_BMP1_TK_GUE","CUP_O_ZSU23_ChDKZ","CUP_O_BMP2_TKA","CUP_O_BMP2_ZU_TKA","CUP_O_BMP1_TKA"]
		, ["CUP_I_T72_NAPA","CUP_I_T55_TK_GUE","CUP_O_T55_TK"]
	]]
	,["jihadists", [ 
		["CUP_C_LR_Transport_CTK","CUP_B_LR_Transport_CZ_D","CUP_I_Datsun_4seat_TK","CUP_I_BTR40_TKG","CUP_O_UAZ_Unarmed_TKA","CUP_C_Volha_Limo_TKCIV","CUP_C_Volha_Gray_TKCIV","CUP_C_UAZ_Unarmed_TK_CIV","CUP_C_UAZ_Open_TK_CIV","CUP_C_Lada_TK2_CIV","CUP_C_S1203_CIV"]
		, ["CUP_O_LR_MG_TKM","CUP_O_UAZ_AGS30_TKA","CUP_I_Datsun_PK_TK","CUP_I_Datsun_PK_TK_Random","CUP_I_Ural_ZU23_TK_Gue","CUP_O_UAZ_AGS30_TKA","CUP_O_UAZ_MG_TKA"]
		, ["CUP_O_BRDM2_SLA","CUP_I_BTR40_MG_TKG","CUP_O_BTR60_TK","CUP_O_M113_TKA","CUP_O_BRDM2_TKA"]
		, ["CUP_I_BMP2_NAPA","CUP_O_BMP1_TKA","CUP_O_BMP2_ZU_TKA","CUP_O_ZSU23_Afghan_TK"]
		, ["CUP_I_T55_TK_GUE","CUP_O_T55_SLA","CUP_O_T72_TKA"]
		
	]]
];

/*
	Kits
*/
kit_vehicle = [[],[],[],[]];

/*
	Black	"tf_rt1523g_black"		RU / Rebels / Jihadists
	MTP2	"tf_rt1523g_big_rhs"		UK / UK DDPM / PMC/ USSF / USOCP

*/
call compile preProcessFileLineNumbers "Logic\Faction\Kits\Kits USArmy OCP.sqf";
call compile preProcessFileLineNumbers "Logic\Faction\Kits\Kits US SF.sqf";
call compile preProcessFileLineNumbers "Logic\Faction\Kits\Kits BAF DPM.sqf";
call compile preProcessFileLineNumbers "Logic\Faction\Kits\Kits BAF DDPM.sqf";
call compile preProcessFileLineNumbers "Logic\Faction\Kits\Kits RUAF VV.sqf";
call compile preProcessFileLineNumbers "Logic\Faction\Kits\Kits Rebels.sqf";
call compile preProcessFileLineNumbers "Logic\Faction\Kits\Kits Rebels NPC.sqf";
call compile preProcessFileLineNumbers "Logic\Faction\Kits\Kits PMC.sqf";
call compile preProcessFileLineNumbers "Logic\Faction\Kits\Kits Jihadists.sqf";

