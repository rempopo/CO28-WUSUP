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
	RU VV
*/

kit_ruvv_random = [
	"kit_ruvv_ftl"
	, "kit_ruvv_ar"
	, "kit_ruvv_g", "kit_ruvv_g"
	, "kit_ruvv_r", "kit_ruvv_r"
];

kit_ruvv_sl =
	[
	["<EQUIPEMENT >>  ","TRYK_U_pad_hood_Cl","TRYK_V_ArmorVest_green","tf_rt1523g_black","rhs_6b47_bala","TRYK_TAC_EARMUFF_Gs"],
	["<PRIMARY WEAPON >>  ","rhs_weap_ak74m_camo_npz","rhs_30Rnd_545x39_AK",["rhs_acc_dtk1","rhs_acc_perst1ik","rhsusf_acc_SpecterDR_OD",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", COMMON_AITEMS, "ACE_Vector"],
	["<UNIFORM ITEMS >> ", [ COMMON_UITEMS, ["ACE_MapTools",1] ]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",9],["rhs_mag_rgn",2],["rhs_mag_rdg2_white",1],["rhs_mag_rdg2_black",1],["SmokeShellBlue",1]]],
	["<BACKPACK ITEMS >> ",[]]
];

kit_ruvv_ftl =
	[
	["<EQUIPEMENT >>  ","TRYK_U_pad_hood_Cl","TRYK_V_ArmorVest_green","TRYK_B_Belt_CYT","rhs_6b47_bala","TRYK_TAC_EARMUFF_Gs"],
	["<PRIMARY WEAPON >>  ","rhs_weap_ak74m_fullplum_gp25_npz","rhs_30Rnd_545x39_AK",["rhs_acc_dtk1","","rhsusf_acc_SpecterDR",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", COMMON_AITEMS],
	["<UNIFORM ITEMS >> ", [ COMMON_UITEMS ]],
	["<VEST ITEMS >> ",[["rhs_mag_rgd5",2],["rhs_mag_rdg2_black",2],["PRIMARY MAG",9]]],
	["<BACKPACK ITEMS >> ",[["rhs_VOG25P",10]]]
];

kit_ruvv_ar =
	[
	["<EQUIPEMENT >>  ","TRYK_U_pad_hood_Cl","TRYK_V_ArmorVest_green","B_AssaultPack_rgr","rhs_6b47_bala","TRYK_TAC_EARMUFF_Gs"],
	["<PRIMARY WEAPON >>  ","CUP_arifle_RPK74","CUP_45Rnd_TE4_LRT4_Green_Tracer_545x39_RPK_M",["","","CUP_optic_Kobra",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", COMMON_AITEMS],
	["<UNIFORM ITEMS >> ", [ COMMON_UITEMS ]],
	["<VEST ITEMS >> ",[["rhs_mag_rdg2_black",2],["CUP_75Rnd_TE4_LRT4_Green_Tracer_545x39_RPK_M",2],["rhs_mag_rgd5",2]]],
	["<BACKPACK ITEMS >> ",[["CUP_75Rnd_TE4_LRT4_Green_Tracer_545x39_RPK_M",4]]]
];

kit_ruvv_g =
	[
	["<EQUIPEMENT >>  ","TRYK_U_pad_hood_Cl","TRYK_V_ArmorVest_green","TRYK_B_Belt_CYT","rhs_6b47_bala","TRYK_TAC_EARMUFF_Gs"],
	["<PRIMARY WEAPON >>  ","rhs_weap_ak74m_fullplum_gp25_npz","rhs_30Rnd_545x39_AK",["rhs_acc_dtk1","","CUP_optic_MRad",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", COMMON_AITEMS],
	["<UNIFORM ITEMS >> ", [ COMMON_UITEMS ]],
	["<VEST ITEMS >> ",[["rhs_mag_rgd5",2],["rhs_mag_rdg2_black",2],["PRIMARY MAG",9]]],
	["<BACKPACK ITEMS >> ",[["rhs_VOG25P",10]]]
];

kit_ruvv_r =
	[
	["<EQUIPEMENT >>  ","TRYK_U_pad_hood_Cl","TRYK_V_ArmorVest_green","B_AssaultPack_rgr","rhs_6b47_bala","TRYK_TAC_EARMUFF_Gs"],
	["<PRIMARY WEAPON >>  ","rhs_weap_ak105_npz","rhs_30Rnd_545x39_AK",["rhs_acc_dtk","rhs_acc_perst1ik","CUP_optic_MRad",""]],
	["<LAUNCHER WEAPON >>  ","rhs_weap_rpg26","rhs_rpg26_mag",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", COMMON_AITEMS],
	["<UNIFORM ITEMS >> ", [ COMMON_UITEMS ]],
	["<VEST ITEMS >> ",[["rhs_mag_rdg2_black",2],["rhs_mag_rgd5",2],["PRIMARY MAG",9]]],
	["<BACKPACK ITEMS >> ",[["CUP_75Rnd_TE4_LRT4_Green_Tracer_545x39_RPK_M",4],["SECONDARY MAG",1]]]
];

kit_ruvv_pl =
	[
	["<EQUIPEMENT >>  ","TRYK_U_pad_hood_Cl","TRYK_V_ArmorVest_green","tf_rt1523g_black","rhs_beret_milp","TRYK_TAC_EARMUFF_Gs"],
	["<PRIMARY WEAPON >>  ","rhs_weap_ak74m_camo_npz","rhs_30Rnd_545x39_AK",["rhs_acc_dtk1","rhs_acc_perst1ik","rhsusf_acc_SpecterDR_OD",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", COMMON_AITEMS, "ACE_Vector"],
	["<UNIFORM ITEMS >> ", [ COMMON_UITEMS, ["ACE_MapTools",1] ]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",9],["rhs_mag_rgn",2],["rhs_mag_rdg2_white",1],["rhs_mag_rdg2_black",1],["SmokeShellBlue",1]]],
	["<BACKPACK ITEMS >> ",[]]
];

kit_ruvv_at = [
	["<EQUIPEMENT >>  ","TRYK_U_pad_hood_Cl","TRYK_V_ArmorVest_green","rhs_rpg_empty","rhs_6b47_bala","TRYK_TAC_EARMUFF_Gs"],
	["<PRIMARY WEAPON >>  ","rhs_weap_ak105_npz","rhs_30Rnd_545x39_AK",["rhs_acc_dtk","rhs_acc_perst1ik","CUP_optic_MRad",""]],
	["<LAUNCHER WEAPON >>  ","rhs_weap_rpg7","rhs_rpg7_PG7V_mag",["","rhs_acc_rpg7v_zeroing_100","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", COMMON_AITEMS],
	["<UNIFORM ITEMS >> ", [ COMMON_UITEMS ]],
	["<VEST ITEMS >> ",[["rhs_mag_rdg2_black",2],["rhs_mag_rgd5",2],["PRIMARY MAG",9]]],
	["<BACKPACK ITEMS >> ",[["SECONDARY MAG",2]]]
];
