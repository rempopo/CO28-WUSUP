/*
	UK BAF DDPM
*/

#define NVG_NIGHT_ITEM	if (daytime < 9 || daytime > 18) then { "NVGoggles_OPFOR" } else { "" }
#define BINOCULAR_ITEM	"Binocular"

#define ASSIGNED_ITEMS		"ItemMap","ItemCompass","ItemWatch","ItemRadio", NVG_NIGHT_ITEM
#define ASSIGNED_ITEMS_L	"ItemMap","ItemCompass","ItemWatch","ItemRadio", NVG_NIGHT_ITEM, BINOCULAR_ITEM

#define UNIFORM_ITEMS	["ACE_fieldDressing",5],["ACE_packingBandage",5],["ACE_elasticBandage",5],["ACE_tourniquet",2],["ACE_morphine",2],["ACE_epinephrine",2],["ACE_quikclot",5],["ACE_CableTie",2],["ACE_Flashlight_XL50",1],["ACE_EarPlugs",1]
#define UNIFORM_ITEMS_L	["ACE_fieldDressing",5],["ACE_packingBandage",5],["ACE_elasticBandage",5],["ACE_tourniquet",2],["ACE_morphine",2],["ACE_epinephrine",2],["ACE_quikclot",5],["ACE_CableTie",2],["ACE_Flashlight_XL50",1],["ACE_EarPlugs",1],["ACE_MapTools",1]



kit_ukafd_random = [
	"kit_ukafd_ftl"
	, "kit_ukafd_ar"
	, "kit_ukafd_g", "kit_ukafd_g"
	, "kit_ukafd_r", "kit_ukafd_r"
];

#define	ukbaf_UNI		["CUP_U_B_BAF_DDPM_S1_RolledUp","CUP_U_B_BAF_DDPM_Tshirt"]
#define	ukbaf_HEAD		["CUP_H_BAF_Helmet_Net_2_DDPM","CUP_H_BAF_Helmet_3_DDPM","CUP_H_PMC_Cap_PRR_Grey","CUP_H_PMC_Cap_EP_Grey"]
#define	ukbaf_FACE		["","","","","G_Bandanna_khk"]

kit_ukafd_pl =
	[
	["<EQUIPEMENT >>  ",ukbaf_UNI,"CUP_V_BAF_Osprey_Mk2_DDPM_Soldier2","tf_rt1523g_big_rhs","CUP_H_BAF_Officer_Beret",""],
	["<PRIMARY WEAPON >>  ","CUP_arifle_L85A2_G","30Rnd_556x45_Stanag",["","rhsusf_acc_anpeq15_bk_top","rhsusf_acc_SpecterDR_A",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_L],
	["<UNIFORM ITEMS >> ", [ UNIFORM_ITEMS_L ]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",9],["HandGrenade",2],["rhs_mag_an_m8hc",2]]],
	["<BACKPACK ITEMS >> ",[]]
];

kit_ukafd_sl =
	[
	["<EQUIPEMENT >>  ",ukbaf_UNI,"CUP_V_BAF_Osprey_Mk2_DDPM_Soldier2","tf_rt1523g_big_rhs",ukbaf_HEAD,ukbaf_FACE],
	["<PRIMARY WEAPON >>  ","CUP_arifle_L85A2_G","30Rnd_556x45_Stanag",["","rhsusf_acc_anpeq15_bk_top","rhsusf_acc_SpecterDR_A",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_L ],
	["<UNIFORM ITEMS >> ", [ UNIFORM_ITEMS_L ]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",9],["HandGrenade",2],["rhs_mag_an_m8hc",2]]],
	["<BACKPACK ITEMS >> ",[]]
];

kit_ukafd_ftl =
	[
	["<EQUIPEMENT >>  ",ukbaf_UNI,"CUP_V_BAF_Osprey_Mk4_MTP_Rifleman","",ukbaf_HEAD,ukbaf_FACE],
	["<PRIMARY WEAPON >>  ","CUP_arifle_L85A2_GL","30Rnd_556x45_Stanag",["","rhsusf_acc_anpeq15_bk_top","rhsusf_acc_SpecterDR_A",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_L ],
	["<UNIFORM ITEMS >> ", [ UNIFORM_ITEMS ]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",9],["HandGrenade",2],["rhs_mag_an_m8hc",2],["1Rnd_HE_Grenade_shell",8]]],
	["<BACKPACK ITEMS >> ",[]]
];

kit_ukafd_ar =
	[
	["<EQUIPEMENT >>  ",ukbaf_UNI,"CUP_V_BAF_Osprey_Mk4_MTP_MachineGunner","",ukbaf_HEAD,ukbaf_FACE],
	["<PRIMARY WEAPON >>  ","CUP_lmg_L110A1","CUP_200Rnd_TE4_Red_Tracer_556x45_M249",["","rhsusf_acc_anpeq15side_bk","rhsusf_acc_SpecterDR_A",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ", [ UNIFORM_ITEMS ]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",2],["HandGrenade",2],["rhs_mag_an_m8hc",2]]],
	["<BACKPACK ITEMS >> ",[]]
];

kit_ukafd_g =
	[
	["<EQUIPEMENT >>  ",ukbaf_UNI,"CUP_V_BAF_Osprey_Mk2_DDPM_Grenadier","",ukbaf_HEAD,ukbaf_FACE],
	["<PRIMARY WEAPON >>  ","CUP_arifle_L85A2_GL","30Rnd_556x45_Stanag",["","rhsusf_acc_anpeq15side_bk","rhsusf_acc_eotech_xps3",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ", [ UNIFORM_ITEMS ]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",10],["rhs_mag_an_m8hc",1],["HandGrenade",2],["1Rnd_HE_Grenade_shell",9]]],
	["<BACKPACK ITEMS >> ",[]]
];

kit_ukafd_r =
	[
	["<EQUIPEMENT >>  ",ukbaf_UNI,["CUP_V_BAF_Osprey_Mk2_DDPM_Soldier1","CUP_V_BAF_Osprey_Mk4_MTP_Rifleman"],"B_AssaultPack_mcamo",ukbaf_HEAD,ukbaf_FACE],
	["<PRIMARY WEAPON >>  ","CUP_arifle_L85A2_G","30Rnd_556x45_Stanag",["","rhsusf_acc_anpeq15side_bk","rhsusf_acc_eotech_xps3",""]],
	["<LAUNCHER WEAPON >>  ","rhs_weap_M136_hedp","rhs_m136_hedp_mag",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ", [ UNIFORM_ITEMS ]],	
	["<VEST ITEMS >> ",[["PRIMARY MAG",10],["rhs_mag_an_m8hc",2],["HandGrenade",2]]],
	["<BACKPACK ITEMS >> ",[["CUP_200Rnd_TE4_Red_Tracer_556x45_M249",3]]]
];


kit_ukafd_at = [
	["<EQUIPEMENT >>  ",ukbaf_UNI,["CUP_V_BAF_Osprey_Mk2_DDPM_Soldier1","CUP_V_BAF_Osprey_Mk4_MTP_Rifleman"],"B_AssaultPack_mcamo",ukbaf_HEAD,ukbaf_FACE],
	["<PRIMARY WEAPON >>  ","CUP_arifle_L85A2_G","30Rnd_556x45_Stanag",["","rhsusf_acc_anpeq15side_bk","rhsusf_acc_eotech_xps3",""]],
	["<LAUNCHER WEAPON >>  ","rhs_weap_maaws","rhs_mag_maaws_HEAT",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ", [ UNIFORM_ITEMS ]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",10],["rhs_mag_an_m8hc",2],["HandGrenade",2]]],
	["<BACKPACK ITEMS >> ",[["SECONDARY MAG",2]]]
];

