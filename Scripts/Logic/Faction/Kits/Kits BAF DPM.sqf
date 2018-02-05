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
	UK
*/

kit_ukaf_random = [
	"kit_ukaf_ftl"
	, "kit_ukaf_ar"
	, "kit_ukaf_g", "kit_ukaf_g"
	, "kit_ukaf_r", "kit_ukaf_r"
];

#define	UKAF_UNI		["CUP_U_B_BAF_DPM_S1_RolledUp","CUP_U_B_BAF_DPM_Tshirt"]
#define	UKAF_HEAD		["CUP_H_BAF_Helmet_Net_2_DPM","CUP_H_BAF_Helmet_3_DPM","CUP_H_PMC_Cap_PRR_Grey","CUP_H_PMC_Cap_EP_Grey"]
#define	UKAF_FACE		["","","","","G_Bandanna_khk"]


kit_ukaf_sl =
	[
	["<EQUIPEMENT >>  ",UKAF_UNI,"CUP_V_BAF_Osprey_Mk2_DPM_Soldier2","tf_rt1523g_big_rhs",UKAF_HEAD,UKAF_FACE],
	["<PRIMARY WEAPON >>  ","CUP_arifle_L85A2_G","30Rnd_556x45_Stanag",["","rhsusf_acc_anpeq15_bk_top","rhsusf_acc_SpecterDR_A",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", COMMON_AITEMS, "ACE_Vector"],
	["<UNIFORM ITEMS >> ", [ COMMON_UITEMS, ["ACE_MapTools",1] ]],
	["<VEST ITEMS >> ",[["ACE_MapTools",1],["HandGrenade",2],["rhs_mag_an_m8hc",2],["PRIMARY MAG",9]]],
	["<BACKPACK ITEMS >> ",[]]
];

kit_ukaf_ftl =
	[
	["<EQUIPEMENT >>  ",UKAF_UNI,"CUP_V_BAF_Osprey_Mk4_MTP_Rifleman","",UKAF_HEAD,UKAF_FACE],
	["<PRIMARY WEAPON >>  ","CUP_arifle_L85A2_GL","30Rnd_556x45_Stanag",["","rhsusf_acc_anpeq15_bk_top","rhsusf_acc_SpecterDR_A",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", COMMON_AITEMS],
	["<UNIFORM ITEMS >> ", [ COMMON_UITEMS ]],
	["<VEST ITEMS >> ",[["ACE_MapTools",1],["HandGrenade",2],["rhs_mag_an_m8hc",2],["PRIMARY MAG",9],["1Rnd_HE_Grenade_shell",8]]],
	["<BACKPACK ITEMS >> ",[]]
];

kit_ukaf_ar =
	[
	["<EQUIPEMENT >>  ",UKAF_UNI,"CUP_V_BAF_Osprey_Mk4_MTP_MachineGunner","",UKAF_HEAD,UKAF_FACE],
	["<PRIMARY WEAPON >>  ","CUP_lmg_L110A1","CUP_200Rnd_TE4_Red_Tracer_556x45_M249",["","rhsusf_acc_anpeq15side_bk","rhsusf_acc_SpecterDR_A",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", COMMON_AITEMS],
	["<UNIFORM ITEMS >> ", [ COMMON_UITEMS ]],
	["<VEST ITEMS >> ",[["HandGrenade",2],["PRIMARY MAG",2],["rhs_mag_an_m8hc",2]]],
	["<BACKPACK ITEMS >> ",[]]
];

kit_ukaf_g =
	[
	["<EQUIPEMENT >>  ",UKAF_UNI,"CUP_V_BAF_Osprey_Mk2_DPM_Grenadier","",UKAF_HEAD,UKAF_FACE],
	["<PRIMARY WEAPON >>  ","CUP_arifle_L85A2_GL","30Rnd_556x45_Stanag",["","rhsusf_acc_anpeq15side_bk","rhsusf_acc_eotech_xps3",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", COMMON_AITEMS],
	["<UNIFORM ITEMS >> ", [ COMMON_UITEMS ]],
	["<VEST ITEMS >> ",[["rhs_mag_an_m8hc",1],["HandGrenade",2],["PRIMARY MAG",10],["1Rnd_HE_Grenade_shell",9]]],
	["<BACKPACK ITEMS >> ",[]]
];

kit_ukaf_r =
	[
	["<EQUIPEMENT >>  ",UKAF_UNI,["CUP_V_BAF_Osprey_Mk2_DPM_Soldier1","CUP_V_BAF_Osprey_Mk4_MTP_Rifleman"],"B_AssaultPack_mcamo",UKAF_HEAD,UKAF_FACE],
	["<PRIMARY WEAPON >>  ","CUP_arifle_L85A2_G","30Rnd_556x45_Stanag",["","rhsusf_acc_anpeq15side_bk","rhsusf_acc_eotech_xps3",""]],
	["<LAUNCHER WEAPON >>  ","rhs_weap_M136_hedp","rhs_m136_hedp_mag",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", COMMON_AITEMS],
	["<UNIFORM ITEMS >> ", [ COMMON_UITEMS ]],	
	["<VEST ITEMS >> ",[["30Rnd_556x45_Stanag",10],["rhs_mag_an_m8hc",2],["HandGrenade",2]]],
	["<BACKPACK ITEMS >> ",[["CUP_200Rnd_TE4_Red_Tracer_556x45_M249",3]]]
];

kit_ukaf_pl =
	[
	["<EQUIPEMENT >>  ",UKAF_UNI,"CUP_V_BAF_Osprey_Mk2_DPM_Soldier2","tf_rt1523g_big_rhs","CUP_H_BAF_Officer_Beret",""],
	["<PRIMARY WEAPON >>  ","CUP_arifle_L85A2_G","30Rnd_556x45_Stanag",["","rhsusf_acc_anpeq15_bk_top","rhsusf_acc_SpecterDR_A",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", COMMON_AITEMS, "ACE_Vector"],
	["<UNIFORM ITEMS >> ", [ COMMON_UITEMS, ["ACE_MapTools",1] ]],
	["<VEST ITEMS >> ",[["ACE_MapTools",1],["HandGrenade",2],["rhs_mag_an_m8hc",2],["PRIMARY MAG",9]]],
	["<BACKPACK ITEMS >> ",[]]
];


kit_ukaf_at = [
	["<EQUIPEMENT >>  ",UKAF_UNI,["CUP_V_BAF_Osprey_Mk2_DPM_Soldier1","CUP_V_BAF_Osprey_Mk4_MTP_Rifleman"],"B_AssaultPack_mcamo",UKAF_HEAD,UKAF_FACE],
	["<PRIMARY WEAPON >>  ","CUP_arifle_L85A2_G","30Rnd_556x45_Stanag",["","rhsusf_acc_anpeq15side_bk","rhsusf_acc_eotech_xps3",""]],
	["<LAUNCHER WEAPON >>  ","rhs_weap_maaws","rhs_mag_maaws_HEAT",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", COMMON_AITEMS],
	["<UNIFORM ITEMS >> ", [ COMMON_UITEMS ]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",10],["rhs_mag_an_m8hc",2],["HandGrenade",2]]],
	["<BACKPACK ITEMS >> ",[["SECONDARY MAG",2]]]
];

