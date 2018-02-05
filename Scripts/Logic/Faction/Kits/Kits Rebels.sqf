/*
	Rebels
*/
#define NVG_NIGHT_ITEM	if (daytime < 9 || daytime > 18) then { "NVGoggles_OPFOR" } else { "" }
#define BINOCULAR_ITEM	"Binocular"

#define ASSIGNED_ITEMS		"ItemMap","ItemCompass","ItemWatch","ItemRadio", NVG_NIGHT_ITEM
#define ASSIGNED_ITEMS_L	"ItemMap","ItemCompass","ItemWatch","ItemRadio", NVG_NIGHT_ITEM, BINOCULAR_ITEM

#define UNIFORM_ITEMS	["ACE_fieldDressing",5],["ACE_packingBandage",5],["ACE_elasticBandage",5],["ACE_tourniquet",2],["ACE_morphine",2],["ACE_epinephrine",2],["ACE_quikclot",5],["ACE_CableTie",2],["ACE_Flashlight_XL50",1],["ACE_EarPlugs",1]
#define UNIFORM_ITEMS_L	["ACE_fieldDressing",5],["ACE_packingBandage",5],["ACE_elasticBandage",5],["ACE_tourniquet",2],["ACE_morphine",2],["ACE_epinephrine",2],["ACE_quikclot",5],["ACE_CableTie",2],["ACE_Flashlight_XL50",1],["ACE_EarPlugs",1],["ACE_MapTools",1]


#define INS_UNI	["CUP_U_O_Partisan_VSR_Mixed2","CUP_U_O_Partisan_VSR_Mixed1","CUP_U_O_Partisan_TTsKO_Mixed","CUP_U_O_Partisan_TTsKO","CUP_U_I_GUE_Woodland1","CUP_U_I_GUE_Flecktarn","CUP_U_I_GUE_Flecktarn2"]
#define INS_HEAD	["H_Bandanna_cbr","H_Bandanna_camo", "H_MilCap_dgtl"]
#define INS_AKGP	["rhs_weap_ak74_gp25","rhs_weap_ak74m_gp25","rhs_weap_aks74_gp25"],["rhs_30Rnd_545x39_AK","rhs_30Rnd_545x39_AK","rhs_30Rnd_545x39_AK"],["rhs_acc_dtk","","",""]
kit_rebels_sl = [
	["<EQUIPEMENT >>  ",INS_UNI,"CUP_V_RUS_6B3_3","tf_rt1523g_black","CUP_H_NAPA_Fedora","G_Bandanna_khk"],
	["<PRIMARY WEAPON >>  ","rhs_weap_akmn","rhs_30Rnd_762x39mm",["rhs_acc_dtkakm","","rhs_acc_1p78",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["HandGrenade",2],["rhs_mag_rdg2_black",2],["PRIMARY MAG",8]]],
	["<BACKPACK ITEMS >> ",[["rhs_mag_an_m8hc",2],["Chemlight_green",2],["CUP_HandGrenade_RGD5",2],["SmokeShellRed",1],["SmokeShellGreen",1],["rhs_30Rnd_762x39mm_tracer",2]]]
];

kit_rebels_ftl = [
	["<EQUIPEMENT >>  ",INS_UNI,"CUP_V_RUS_6B3_3","CUP_B_RUS_Backpack",INS_HEAD,"G_Bandanna_oli"],
	["<PRIMARY WEAPON >>  ",INS_AKGP],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["HandGrenade",2],["rhs_mag_rdg2_black",2],["PRIMARY MAG",6]]],
	["<BACKPACK ITEMS >> ",[["rhs_VOG25",10],["SmokeShellRed",1],["SmokeShellGreen",1]]]
];

kit_rebels_ar = [
	["<EQUIPEMENT >>  ",INS_UNI,"CUP_V_RUS_6B3_3","CUP_B_RUS_Backpack",INS_HEAD,"G_Bandanna_khk"],
	["<PRIMARY WEAPON >>  ","hlc_rifle_g3a3v_XMAG","hlc_50rnd_762x51_M_G3",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["HandGrenade",2],["rhs_mag_rdg2_black",2],["PRIMARY MAG",2]]],
	["<BACKPACK ITEMS >> ",[["PRIMARY MAG",4]]]
];

kit_rebels_g = kit_rebels_ftl;

kit_rebels_r = [
	["<EQUIPEMENT >>  ",INS_UNI,"CUP_V_RUS_6B3_3","CUP_B_RUS_Backpack",INS_HEAD,"G_Bandanna_khk"],
	["<PRIMARY WEAPON >>  ",["hlc_rifle_g3a3v","rhs_weap_akmn"],["hlc_20rnd_762x51_b_G3","rhs_30Rnd_762x39mm"],["","","",""]],
	["<LAUNCHER WEAPON >>  ","rhs_weap_m72a7","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["HandGrenade",2],["rhs_mag_rdg2_black",2],["PRIMARY MAG",8]]],
	["<BACKPACK ITEMS >> ",[["hlc_50rnd_762x51_M_G3",3], ["PRIMARY MAG",4]]]
];

kit_rebels_pl = kit_rebels_sl;

kit_rebels_at = [
	["<EQUIPEMENT >>  ",INS_UNI,"TRYK_V_harnes_od_L","rhs_rpg_empty",INS_HEAD,"G_Bandanna_oli"],
	["<PRIMARY WEAPON >>  ","rhs_weap_ak74m","rhs_30Rnd_545x39_AK",["rhs_acc_dtk","","",""]],
	["<LAUNCHER WEAPON >>  ","rhs_weap_rpg7","rhs_rpg7_PG7V_mag",["","rhs_acc_rpg7v_zeroing_100","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ","ItemCompass","ItemWatch","ItemRadio"],
	["<UNIFORM ITEMS >> ",[["ACE_fieldDressing",8],["ACE_packingBandage",4]]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",8],["HandGrenade",3],["rhs_mag_rdg2_black",2]]],
	["<BACKPACK ITEMS >> ",[["SECONDARY MAG",2]]]
];

