
/*
	PMC
*/

// ***********************************
// Gear Kits 
// ***********************************
// ******** GEAR CLASSES **********
//
//	Maptools		"ACE_MapTools"	["ACE_MapTools",1]
//	Binocular		"Binocular"	["Binocular",1]		
//
// 	Map			"ItemMap"
//	Compass			"ItemCompass"
//	Watch			"ItemWatch"
//	Personal Radio		"ItemRadio"
//
// ******* KIT NAMES FORMAT ********
//  Kit names format:		kit_FACTION_ROLE
//	Platoon Leader / Командир Взвода	->	kit_ussf_pl
//	Squad Leader / Командир отделения	->	kit_ussf_sl
//	Section Leader				->	kit_ussf_sl
//	2IC					->	kit_ussf_2ic
//	Fireteam Leader				->	kit_ussf_ftl
//	Automatic Rifleman			->	kit_ussf_ar
//	Grenadier / Стрелок (ГП)		->	kit_ussf_gr
//	Rifleman / Стрелок			->	kit_ussf_r
//	Экипаж					->	kit_ussf_crew
//	Пулеметчик				->	kit_ussf_mg
//	Стрелок-Гранатометчик			->	kit_ussf_at
//	Стрелок, помощник гранатометчика	->	kit_ussf_aat
//	Старший стрелок				->	kit_ussf_ar / kit_ussf_ss
//	Снайпер					->	kit_ussf_mm
// ****************
//
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

#define PMC_UNI	["TRYK_U_B_BLKOCP_CombatUniform","TRYK_U_B_BLOD_T","TRYK_U_B_BLTAN_T","TRYK_U_B_C01_Tsirt","TRYK_U_B_wh_OD_Rollup_CombatUniform","TRYK_shirts_DENIM_BK","TRYK_shirts_DENIM_od","TRYK_shirts_DENIM_WH","TRYK_shirts_DENIM_WHB","TRYK_shirts_DENIM_ylb","TRYK_shirts_BLK_PAD_YEL","TRYK_U_B_BLK_T_BG_WH","TRYK_B_TRYK_UCP_T"]
#define PMC_VEST ["TRYK_V_ArmorVest_green2","TRYK_V_ArmorVest_AOR2_2","TRYK_V_ArmorVest_AOR2","TRYK_V_ArmorVest_green","TRYK_V_PlateCarrier_ACU","TRYK_V_PlateCarrier_wood","TRYK_V_PlateCarrier_JSDF"]
#define PMC_GOG ["rhs_googles_orange","rhs_googles_black","G_Spectacles_Tinted","G_Squares","G_Sport_Greenblack","G_Sport_Blackred","G_Sport_Checkered","G_Sport_BlackWhite","G_Sport_Blackyellow","G_Sport_Red","G_Spectacles","G_Shades_Red","G_Shades_Green","G_Shades_Blue","G_Lowprofile","G_Aviator","rhs_googles_yellow"]
#define PMC_HED ["TRYK_H_PASGT_OD","TRYK_H_PASGT_BLK","H_Cap_blk_ION","H_Cap_tan_specops_US","H_Cap_usblack","H_MilCap_gry","rhsusf_ach_bare_wood","rhsusf_opscore_fg","TRYK_H_headsetcap_blk"]
#define PMC_BACK ["B_AssaultPack_blk","B_AssaultPack_cbr","B_AssaultPack_dgtl","B_AssaultPack_rgr","B_AssaultPack_khk","B_AssaultPack_mcamo","B_AssaultPack_sgg","rhsusf_falconii_coy","rhsusf_falconii_mc","rhsusf_falconii"]
#define PMC_GR ["rhs_weap_hk416d10_m320","rhs_weap_hk416d145_m320","rhs_weap_m4_m320","rhs_weap_m4a1_m320","rhs_weap_mk18_m320"],["rhs_mag_30Rnd_556x45_Mk318_Stanag","rhs_mag_30Rnd_556x45_Mk318_Stanag","rhs_mag_30Rnd_556x45_Mk318_Stanag","rhs_mag_30Rnd_556x45_Mk318_Stanag","rhs_mag_30Rnd_556x45_Mk318_Stanag"]
#define PMC_RIF ["rhs_weap_hk416d10","rhs_weap_hk416d10_LMT","rhs_weap_hk416d10_LMT_wd","rhs_weap_hk416d145","rhs_weap_m16a4","rhs_weap_m16a4_carryhandle_pmag","rhs_weap_m16a4_pmag","rhs_weap_m27iar","rhs_weap_m27iar_grip","rhs_weap_m4","rhs_weap_m4_pmag","rhs_weap_m4_mstock","rhs_weap_m4a1_carryhandle","rhs_weap_m4a1_carryhandle_mstock","rhs_weap_m4a1_blockII","rhs_weap_m4a1_blockII_bk","rhs_weap_m4a1_blockII_KAC_bk","rhs_weap_m4a1_blockII_wd","rhs_weap_m4a1_blockII_KAC_wd","rhs_weap_m4a1","rhs_weap_m4a1_pmag","rhs_weap_mk18","rhs_weap_mk18_bk","rhs_weap_mk18_wd","rhs_weap_mk18_KAC_wd"],["rhs_mag_30Rnd_556x45_Mk318_Stanag","rhs_mag_30Rnd_556x45_Mk318_Stanag","rhs_mag_30Rnd_556x45_Mk318_Stanag","rhs_mag_30Rnd_556x45_Mk318_Stanag","rhs_mag_30Rnd_556x45_Mk318_Stanag","rhs_mag_30Rnd_556x45_Mk318_Stanag","rhs_mag_30Rnd_556x45_Mk318_Stanag","rhs_mag_30Rnd_556x45_Mk318_Stanag","rhs_mag_30Rnd_556x45_Mk318_Stanag","rhs_mag_30Rnd_556x45_Mk318_Stanag","rhs_mag_30Rnd_556x45_Mk318_Stanag","rhs_mag_30Rnd_556x45_Mk318_Stanag","rhs_mag_30Rnd_556x45_Mk318_Stanag","rhs_mag_30Rnd_556x45_Mk318_Stanag","rhs_mag_30Rnd_556x45_Mk318_Stanag","rhs_mag_30Rnd_556x45_Mk318_Stanag","rhs_mag_30Rnd_556x45_Mk318_Stanag","rhs_mag_30Rnd_556x45_Mk318_Stanag","rhs_mag_30Rnd_556x45_Mk318_Stanag","rhs_mag_30Rnd_556x45_Mk318_Stanag","rhs_mag_30Rnd_556x45_Mk318_Stanag","rhs_mag_30Rnd_556x45_Mk318_Stanag","rhs_mag_30Rnd_556x45_Mk318_Stanag","rhs_mag_30Rnd_556x45_Mk318_Stanag","rhs_mag_30Rnd_556x45_Mk318_Stanag"]
// ****************

kit_pmc_random = [
	"kit_pmc_ar"
	, "kit_pmc_r"
	, "kit_pmc_r"
	, "kit_pmc_g"
	, "kit_pmc_g"
];

kit_pmc_sl = [
	["<EQUIPEMENT >>  ",PMC_UNI,PMC_VEST,"tf_rt1523g_big_bwmod",PMC_HED,PMC_GOG],
	["<PRIMARY WEAPON >>  ","rhs_weap_mk18_wd","30Rnd_556x45_Stanag",["rhsusf_acc_SF3P556","acc_flashlight","rhsusf_acc_ACOG_RMR_3d",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ",ASSIGNED_ITEMS_L],
	["<UNIFORM ITEMS >> ",[["ACE_fieldDressing",5],["ACE_elasticBandage",5],["ACE_quikclot",5],["ACE_CableTie",2],["ACE_EarPlugs",1],["ACE_epinephrine",2],["ACE_Flashlight_XL50",1],["ACE_morphine",2],["ACE_packingBandage",5],["ACE_tourniquet",2]]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",8],["HandGrenade",2]]],
	["<BACKPACK ITEMS >> ",[["HandGrenade",2],["SmokeShellGreen",2],["SmokeShellRed",2]]]
];

kit_pmc_ftl = [
	["<EQUIPEMENT >>  ",PMC_UNI,PMC_VEST,PMC_BACK,PMC_HED,PMC_GOG],
	["<PRIMARY WEAPON >>  ",PMC_GR,["rhsusf_acc_SF3P556","acc_flashlight","rhsusf_acc_ACOG_RMR_3d",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ","ItemMap","ItemCompass","ItemWatch","tf_anprc152"],
	["<UNIFORM ITEMS >> ",[["ACE_fieldDressing",5],["ACE_elasticBandage",5],["ACE_quikclot",5],["ACE_CableTie",2],["ACE_EarPlugs",1],["ACE_epinephrine",2],["ACE_Flashlight_XL50",1],["ACE_morphine",2],["ACE_packingBandage",5],["ACE_tourniquet",2]]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",8],["rhs_mag_M433_HEDP",8]]],
	["<BACKPACK ITEMS >> ",[["HandGrenade",2],["SmokeShellGreen",2],["SmokeShellRed",2]]]
];

kit_pmc_ar = [
	["<EQUIPEMENT >>  ",PMC_UNI,PMC_VEST,PMC_BACK,PMC_HED,PMC_GOG],
	["<PRIMARY WEAPON >>  ","rhs_weap_m249_pip_S_para","rhs_200rnd_556x45_M_SAW",["","rhs_acc_2dpZenit_ris","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["HandGrenade",2]]],
	["<BACKPACK ITEMS >> ",[["PRIMARY MAG",3]]]
];

kit_pmc_g = [
	["<EQUIPEMENT >>  ",PMC_UNI,PMC_VEST,PMC_BACK,PMC_HED,PMC_GOG],
	["<PRIMARY WEAPON >>  ",PMC_GR,["rhsusf_acc_SF3P556","acc_flashlight","rhsusf_acc_eotech_552",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ","ItemMap","ItemCompass","ItemWatch","tf_anprc152"],
	["<UNIFORM ITEMS >> ",[["ACE_fieldDressing",5],["ACE_elasticBandage",5],["ACE_quikclot",5],["ACE_CableTie",2],["ACE_EarPlugs",1],["ACE_epinephrine",2],["ACE_Flashlight_XL50",1],["ACE_morphine",2],["ACE_packingBandage",5],["ACE_tourniquet",2]]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",8],["rhs_mag_M433_HEDP",8]]],
	["<BACKPACK ITEMS >> ",[["HandGrenade",2],["SmokeShellGreen",2],["SmokeShellRed",2]]]
];

kit_pmc_r = [
	["<EQUIPEMENT >>  ",PMC_UNI,PMC_VEST,PMC_BACK,PMC_HED,PMC_GOG],
	["<PRIMARY WEAPON >>  ",PMC_RIF,["rhsusf_acc_SFMB556","rhs_acc_2dpZenit_ris","rhsusf_acc_eotech_552",""]],
	["<LAUNCHER WEAPON >>  ","rhs_weap_M136_hedp","rhs_m136_hedp_mag",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["HandGrenade",2],["PRIMARY MAG",8]]],
	["<BACKPACK ITEMS >> ",[["rhs_200rnd_556x45_M_SAW",2]]]
];

kit_pmc_pl = kit_pmc_sl;


kit_pmc_at = [
	["<EQUIPEMENT >>  ",PMC_UNI,PMC_VEST,"CUP_B_AlicePack_Khaki",PMC_HED,PMC_GOG],
	["<PRIMARY WEAPON >>  ",PMC_RIF,["rhsusf_acc_SFMB556","rhs_acc_2dpZenit_ris","rhsusf_acc_eotech_552",""]],
	["<LAUNCHER WEAPON >>  ","rhs_weap_rpg7","rhs_rpg7_PG7V_mag",["","rhs_acc_rpg7v_zeroing_100","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["HandGrenade",2],["PRIMARY MAG",8]]],
	["<BACKPACK ITEMS >> ",[["rhs_rpg7_OG7V_mag",1], ["rhs_rpg7_PG7V_mag",2]]]
];

