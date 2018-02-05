// ******** USEFUL MACROSES *******
// Maros for Empty weapon
#define EMPTYKIT	[["","","","",""],["","","","",""],["","","","",""],["","","","",""],[],[["",0],["",0],["",0],["",0],["",0],["",0],["",0],["",0],["",0]],[["",0],["",0],["",0],["",0],["",0],["",0]],[]]
// Macros for Empty weapon
#define EMPTYWEAPON	"","",["","","",""]
// Macros for the list of items to be chosen randomly
#define RANDOM_ITEM	["H_HelmetB_grass","H_HelmetB"]
// Macros to give the item only if daytime is in given inerval (e.g. to give NVGoggles only at night)
#define NIGHT_ITEM(X)	if (daytime < 9 || daytime > 18) then { X } else { "" }

// ******** ASSIGNED and UNIFORM ITEMS MACRO ********
#define NVG_NIGHT_ITEM		if (daytime < 9 || daytime > 18) then { "NVGoggles_OPFOR" } else { "" }
#define BINOCULAR_ITEM		"Binocular"

#define ASSIGNED_ITEMS		"ItemMap","ItemCompass","ItemWatch","ItemRadio", NVG_NIGHT_ITEM
#define ASSIGNED_ITEMS_L	"ItemMap","ItemCompass","ItemWatch","ItemRadio", NVG_NIGHT_ITEM, BINOCULAR_ITEM

#define UNIFORM_ITEMS		["ACE_fieldDressing",5],["ACE_packingBandage",5],["ACE_elasticBandage",5],["ACE_tourniquet",2],["ACE_morphine",2],["ACE_epinephrine",2],["ACE_quikclot",5],["ACE_CableTie",2],["ACE_Flashlight_XL50",1],["ACE_EarPlugs",1]
#define UNIFORM_ITEMS_L		["ACE_fieldDressing",5],["ACE_packingBandage",5],["ACE_elasticBandage",5],["ACE_tourniquet",2],["ACE_morphine",2],["ACE_epinephrine",2],["ACE_quikclot",5],["ACE_CableTie",2],["ACE_Flashlight_XL50",1],["ACE_EarPlugs",1],["ACE_MapTools",1]
// ****************

#define	COMMON_UITEMS	["ACE_fieldDressing",5],["ACE_packingBandage",5],["ACE_elasticBandage",5],["ACE_tourniquet",2],["ACE_morphine",2],["ACE_epinephrine",2],["ACE_quikclot",5],["ACE_CableTie",2],["ACE_Flashlight_XL50",1],["ACE_EarPlugs",1]
#define	COMMON_AITEMS	"ItemMap","ItemCompass","ItemWatch","ItemRadio", NIGHT_ITEM("NVGoggles_INDEP")

/*
 *	US Green
 */
kit_ussf_random = [
	"kit_ussf_ftl"
	,"kit_ussf_ar"
	,"kit_ussf_g","kit_ussf_g"
	,"kit_ussf_r","kit_ussf_r"	
];

kit_ussf_sl =
	[
	["<EQUIPEMENT >>  ","rhs_uniform_g3_m81","rhsusf_spc_patchless_radio","tf_rt1523g_big_rhs","TRYK_H_headsetcap_od","G_Bandanna_oli"],
	["<PRIMARY WEAPON >>  ","rhs_weap_mk18_grip_KAC_wd","30Rnd_556x45_Stanag",["rhsusf_acc_rotex5_grey","rhsusf_acc_anpeq15A","rhsusf_acc_SpecterDR_OD","rhsusf_acc_grip3"]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", COMMON_AITEMS, "ACE_Vector"],
	["<UNIFORM ITEMS >> ", [ COMMON_UITEMS, ["ACE_MapTools",1] ]],
	["<VEST ITEMS >> ",[["HandGrenade",2],["PRIMARY MAG",8],["30Rnd_556x45_Stanag_Tracer_Red",2],["rhs_mag_an_m8hc",1],["SmokeShellRed",1],["SmokeShellPurple",1]]],
	["<BACKPACK ITEMS >> ",[]]
];

kit_ussf_ftl =
	[
	["<EQUIPEMENT >>  ","rhs_uniform_g3_m81","rhsusf_spc_patchless_radio","","rhsusf_opscore_rg_cover_pelt","rhs_balaclava"],
	["<PRIMARY WEAPON >>  ","rhs_weap_mk18_grip_KAC_wd","30Rnd_556x45_Stanag",["rhsusf_acc_rotex5_grey","rhsusf_acc_anpeq15A","rhsusf_acc_SpecterDR_OD","rhsusf_acc_grip3"]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", COMMON_AITEMS, "ACE_Vector"],
	["<UNIFORM ITEMS >> ", [ COMMON_UITEMS, ["ACE_MapTools",1] ]],
	["<VEST ITEMS >> ",[["HandGrenade",2],["PRIMARY MAG",8],["30Rnd_556x45_Stanag_Tracer_Red",2],["rhs_mag_an_m8hc",1],["SmokeShellRed",1],["SmokeShellPurple",1]]],
	["<BACKPACK ITEMS >> ",[]]
];
 
kit_ussf_ar =
	[
	["<EQUIPEMENT >>  ","rhs_uniform_g3_m81","rhsusf_spc_mg","B_AssaultPack_khk","rhsusf_opscore_rg_cover_pelt","rhs_balaclava"],
	["<PRIMARY WEAPON >>  ","rhs_weap_m249_pip_S_vfg2","rhs_200rnd_556x45_M_SAW",["","rhsusf_acc_anpeq15A","rhsusf_acc_SpecterDR_A","rhsusf_acc_grip4"]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", COMMON_AITEMS],
	["<UNIFORM ITEMS >> ", [ COMMON_UITEMS ]],
	["<VEST ITEMS >> ",[["rhs_mag_an_m8hc",1],["HandGrenade",2],["PRIMARY MAG",2]]],
	["<BACKPACK ITEMS >> ",[["PRIMARY MAG",1]]]
];

kit_ussf_g =
	[
	["<EQUIPEMENT >>  ","rhs_uniform_g3_m81","rhsusf_spc_patchless_radio","","rhsusf_opscore_rg_cover_pelt","rhs_balaclava"],
	["<PRIMARY WEAPON >>  ","rhs_weap_m4a1_blockII_M203_wd","30Rnd_556x45_Stanag",["","rhsusf_acc_anpeq15A",["CUP_optic_CompM4","rhsusf_acc_eotech_xps3"],""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", COMMON_AITEMS],
	["<UNIFORM ITEMS >> ", [ COMMON_UITEMS ]],
	["<VEST ITEMS >> ",[["HandGrenade",2],["PRIMARY MAG",8],["rhs_mag_M433_HEDP",10]]],
	["<BACKPACK ITEMS >> ",[]]
];

kit_ussf_r =
	[
	["<EQUIPEMENT >>  ","rhs_uniform_g3_m81","rhsusf_spc_patchless_radio","B_AssaultPack_khk","rhsusf_opscore_rg_cover_pelt","rhs_balaclava"],
	["<PRIMARY WEAPON >>  ","rhs_weap_mk18_grip_KAC_wd","30Rnd_556x45_Stanag",["","rhsusf_acc_anpeq15A",["CUP_optic_CompM4","rhsusf_acc_eotech_xps3"],"rhsusf_acc_grip3"]],
	["<LAUNCHER WEAPON >>  ","rhs_weap_m72a7","rhs_m72a7_mag",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", COMMON_AITEMS],
	["<UNIFORM ITEMS >> ", [ COMMON_UITEMS ]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",10],["rhs_mag_an_m8hc",1],["HandGrenade",2]]],
	["<BACKPACK ITEMS >> ",[["rhs_200rnd_556x45_M_SAW",3]]]
];

kit_ussf_pl =
	[
	["<EQUIPEMENT >>  ","rhs_uniform_g3_m81","rhsusf_spc_patchless_radio","tf_rt1523g_big_rhs","H_Beret_Colonel","TRYK_TAC_EARMUFF_Gs"],
	["<PRIMARY WEAPON >>  ","rhsusf_weap_MP7A2_desert_grip3","rhsusf_mag_40Rnd_46x30_FMJ",["","rhsusf_acc_anpeq15A","CUP_optic_MRad","rhsusf_acc_grip3"]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", COMMON_AITEMS, "ACE_Vector"],
	["<UNIFORM ITEMS >> ", [ COMMON_UITEMS, ["ACE_MapTools",1] ]],
	["<VEST ITEMS >> ",[["HandGrenade",2],["rhs_mag_an_m8hc",1],["SmokeShellRed",1],["SmokeShellPurple",1],["PRIMARY MAG",10]]],
	["<BACKPACK ITEMS >> ",[]]
];

kit_ussf_at = [
	["<EQUIPEMENT >>  ","rhs_uniform_g3_m81","rhsusf_spc_patchless_radio","B_Kitbag_mcamo","rhsusf_opscore_rg_cover_pelt","rhs_balaclava"],
	["<PRIMARY WEAPON >>  ","rhs_weap_mk18_grip_KAC_wd","30Rnd_556x45_Stanag",["","rhsusf_acc_anpeq15A","rhsusf_acc_eotech_xps3","rhsusf_acc_grip3"]],
	["<LAUNCHER WEAPON >>  ","rhs_weap_maaws","rhs_mag_maaws_HEAT",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",10],["rhs_mag_an_m8hc",1],["HandGrenade",2]]],
	["<BACKPACK ITEMS >> ",[["SECONDARY MAG",2]]]
];
