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
	US ARMY OCP (USOCP)
*/

kit_usocp_random = [
	"kit_usocp_ftl"
	, "kit_usocp_ar"
	, "kit_usocp_g", "kit_usocp_g"
	, "kit_usocp_r", "kit_usocp_r"	
];

kit_usocp_sl =
	[
	["<EQUIPEMENT >>  ","rhs_uniform_cu_ocp","rhsusf_iotv_ocp_Squadleader","tf_rt1523g_big_rhs","rhsusf_ach_helmet_headset_ocp",""],
	["<PRIMARY WEAPON >>  ","rhs_weap_m4a1_carryhandle_grip","rhs_mag_30Rnd_556x45_Mk318_Stanag",["","rhsusf_acc_anpeq15side","rhsusf_acc_ACOG2_USMC",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","CUP_hgun_M9","CUP_15Rnd_9x19_M9",["","","",""]],
	["<ASSIGNED ITEMS >>  ", COMMON_AITEMS, "ACE_Vector"],
	["<UNIFORM ITEMS >> ", [ COMMON_UITEMS, ["ACE_MapTools",1] ]],
	["<VEST ITEMS >> ",[["HANDGUN MAG",2],["30Rnd_556x45_Stanag",8],["rhs_mag_an_m8hc",2],["Chemlight_green",2],["SmokeShellGreen",1],["SmokeShellRed",1],["HandGrenade",2],["SmokeShellOrange",2]]],
	["<BACKPACK ITEMS >> ",[]]
];

kit_usocp_ftl =
	[
	["<EQUIPEMENT >>  ","rhs_uniform_cu_ocp","rhsusf_iotv_ocp_Teamleader","","rhsusf_ach_helmet_headset_ocp",""],
	["<PRIMARY WEAPON >>  ","rhs_weap_m4a1_carryhandle_m203","rhs_mag_30Rnd_556x45_Mk318_Stanag",["","rhsusf_acc_anpeq15side","rhsusf_acc_ACOG2",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", COMMON_AITEMS],
	["<UNIFORM ITEMS >> ", [ COMMON_UITEMS ]],
	["<VEST ITEMS >> ",[["rhs_mag_an_m8hc",2],["Chemlight_green",2],["HandGrenade",2],["30Rnd_556x45_Stanag",9],["rhs_mag_M433_HEDP",8]]],
	["<BACKPACK ITEMS >> ",[]]
];

kit_usocp_ar =
	[
	["<EQUIPEMENT >>  ","rhs_uniform_cu_ocp","rhsusf_iotv_ocp_SAW","B_AssaultPack_cbr","rhsusf_ach_helmet_headset_ocp",""],
	["<PRIMARY WEAPON >>  ","rhs_weap_m249_pip_L","rhs_200rnd_556x45_M_SAW",["","rhsusf_acc_anpeq15side","rhsusf_acc_eotech_552",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","CUP_hgun_M9","CUP_15Rnd_9x19_M9",["","","",""]],
	["<ASSIGNED ITEMS >>  ", COMMON_AITEMS],
	["<UNIFORM ITEMS >> ", [ COMMON_UITEMS ]],
	["<VEST ITEMS >> ",[["rhs_mag_an_m8hc",2],["Chemlight_green",2],["HandGrenade",2],["rhsusf_100Rnd_556x45_soft_pouch",2],["HANDGUN MAG",3]]],
	["<BACKPACK ITEMS >> ",[["rhsusf_100Rnd_556x45_soft_pouch",3]]]
];  

kit_usocp_g =
	[
	["<EQUIPEMENT >>  ","rhs_uniform_cu_ocp","rhsusf_iotv_ocp_Grenadier","","rhsusf_ach_helmet_headset_ocp",""],
	["<PRIMARY WEAPON >>  ","rhs_weap_m4a1_carryhandle_m203","rhs_mag_30Rnd_556x45_Mk318_Stanag",["","rhsusf_acc_anpeq15side","rhsusf_acc_eotech_552",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", COMMON_AITEMS],
	["<UNIFORM ITEMS >> ", [ COMMON_UITEMS ]],
	["<VEST ITEMS >> ",[["rhs_mag_an_m8hc",2],["Chemlight_green",2],["HandGrenade",2],["30Rnd_556x45_Stanag",8],["rhs_mag_M433_HEDP",10]]],
	["<BACKPACK ITEMS >> ",[]]
];

kit_usocp_r =
	[
	["<EQUIPEMENT >>  ","rhs_uniform_cu_ocp","rhsusf_iotv_ocp_Rifleman","B_AssaultPack_cbr","rhsusf_ach_helmet_headset_ocp",""],
	["<PRIMARY WEAPON >>  ","rhs_weap_m4a1_carryhandle_grip","rhs_mag_30Rnd_556x45_Mk318_Stanag",["","rhsusf_acc_anpeq15side","CUP_optic_CompM4",""]],
	["<LAUNCHER WEAPON >>  ","rhs_weap_M136_hedp","rhs_m136_hedp_mag",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", COMMON_AITEMS],
	["<UNIFORM ITEMS >> ", [ COMMON_UITEMS ]],
	["<VEST ITEMS >> ",[["rhs_mag_an_m8hc",2],["Chemlight_green",2],["HandGrenade",2],["30Rnd_556x45_Stanag",10]]],
	["<BACKPACK ITEMS >> ",[["rhsusf_100Rnd_556x45_soft_pouch",4]]]
];

kit_usocp_pl =
	[
	["<EQUIPEMENT >>  ","rhs_uniform_cu_ocp","rhsusf_iotv_ocp_Squadleader","tf_rt1523g_big_rhs","H_Beret_Colonel","TRYK_TAC_EARMUFF_Gs"],
	["<PRIMARY WEAPON >>  ","rhs_weap_m4a1_carryhandle_grip","rhs_mag_30Rnd_556x45_Mk318_Stanag",["","rhsusf_acc_anpeq15side","rhsusf_acc_ACOG3_USMC","rhsusf_acc_grip1"]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","CUP_hgun_M9","CUP_15Rnd_9x19_M9",["","","",""]],
	["<ASSIGNED ITEMS >>  ", COMMON_AITEMS, "ACE_Vector"],
	["<UNIFORM ITEMS >> ", [ COMMON_UITEMS, ["ACE_MapTools",1] ]],
	["<VEST ITEMS >> ",[["ACE_MapTools",1],["HANDGUN MAG",2],["30Rnd_556x45_Stanag",8],["rhs_mag_an_m8hc",2],["Chemlight_green",2],["SmokeShellGreen",1],["SmokeShellRed",1],["HandGrenade",2],["SmokeShellOrange",2]]],
	["<BACKPACK ITEMS >> ",[]]
];

kit_usocp_at = [
	["<EQUIPEMENT >>  ","rhs_uniform_cu_ocp","rhsusf_iotv_ocp_Rifleman","B_Kitbag_mcamo","rhsusf_ach_helmet_headset_ocp",""],
	["<PRIMARY WEAPON >>  ","rhs_weap_m4a1_carryhandle_grip","30Rnd_556x45_Stanag",["","rhsusf_acc_anpeq15side","CUP_optic_CompM4","rhsusf_acc_grip1"]],
	["<LAUNCHER WEAPON >>  ","rhs_weap_maaws","rhs_mag_maaws_HEAT",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", COMMON_AITEMS],
	["<UNIFORM ITEMS >> ", [ COMMON_UITEMS ]],
	["<VEST ITEMS >> ",[["rhs_mag_an_m8hc",2],["Chemlight_green",2],["HandGrenade",2],["30Rnd_556x45_Stanag",10]]],
	["<BACKPACK ITEMS >> ",[["SECONDARY MAG",2]]]
];
