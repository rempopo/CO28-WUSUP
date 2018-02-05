
/*
	Rebels NPC
*/
#define INS_UNI	["CUP_U_O_Partisan_VSR_Mixed2","CUP_U_O_Partisan_VSR_Mixed1","CUP_U_O_Partisan_TTsKO_Mixed","CUP_U_O_Partisan_TTsKO","CUP_U_I_GUE_Woodland1","CUP_U_I_GUE_Flecktarn","CUP_U_I_GUE_Flecktarn2"]
#define INS_HEAD	["H_Bandanna_cbr","H_Bandanna_camo", "H_MilCap_dgtl"]
#define INS_AKGP	["rhs_weap_ak74_gp25","rhs_weap_ak74m_gp25","rhs_weap_aks74_gp25"],["rhs_30Rnd_545x39_AK","rhs_30Rnd_545x39_AK","rhs_30Rnd_545x39_AK"],["rhs_acc_dtk","","",""]

kit_rebels_random = [
	"kit_rebels_ai_r"
	,"kit_rebels_ai_gr"
	,"kit_rebels_ai_rheavy"
	,"kit_rebels_ai_r"
	,"kit_rebels_ai_gr"
	,"kit_rebels_ai_rheavy"
	,"kit_rebels_ai_mg"
];

kit_rebels_ai_r =
	[
	["<EQUIPEMENT >>  ",INS_UNI,"TRYK_V_harnes_od_L","",INS_HEAD,"G_Bandanna_oli"],
	["<PRIMARY WEAPON >>  ","rhs_weap_ak74m","rhs_30Rnd_545x39_AK",["rhs_acc_dtk","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ","ItemCompass","ItemWatch","ItemRadio"],
	["<UNIFORM ITEMS >> ",[["ACE_fieldDressing",8],["ACE_packingBandage",4],["PRIMARY MAG",1]]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",8],["HandGrenade",3],["rhs_mag_rdg2_black",2]]],
	["<BACKPACK ITEMS >> ",[]]
];
kit_rebels_ai_gr =
	[
	["<EQUIPEMENT >>  ",INS_UNI,"TRYK_V_harnes_od_L","",INS_HEAD,"G_Bandanna_oli"],
	["<PRIMARY WEAPON >>  ","rhs_weap_ak74m_gp25","rhs_30Rnd_545x39_AK",["rhs_acc_dtk","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ","ItemCompass","ItemWatch","ItemRadio"],
	["<UNIFORM ITEMS >> ",[["ACE_fieldDressing",8],["ACE_packingBandage",4],["PRIMARY MAG",1]]],
	["<VEST ITEMS >> ",[["HandGrenade",1],["rhs_mag_rdg2_black",2],["PRIMARY MAG",6],["rhs_VOG25",8]]],
	["<BACKPACK ITEMS >> ",[]]
];
kit_rebels_ai_rheavy =
	[
	["<EQUIPEMENT >>  ",INS_UNI,"TRYK_V_harnes_od_L","",INS_HEAD,"G_Bandanna_oli"],
	["<PRIMARY WEAPON >>  ","rhs_weap_akms","rhs_30Rnd_762x39mm",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ","ItemCompass","ItemWatch","ItemRadio"],
	["<UNIFORM ITEMS >> ",[["ACE_fieldDressing",8],["ACE_packingBandage",4],["PRIMARY MAG",3]]],
	["<VEST ITEMS >> ",[["HandGrenade",2],["rhs_mag_rdg2_black",2],["PRIMARY MAG",8]]],
	["<BACKPACK ITEMS >> ",[]]
];
kit_rebels_ai_mg =
	[
	["<EQUIPEMENT >>  ",INS_UNI,"TRYK_V_harnes_od_L","CUP_B_AlicePack_Khaki",INS_HEAD,"G_Bandanna_oli"],
	["<PRIMARY WEAPON >>  ","CUP_lmg_PKM","CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Green_M",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ","ItemCompass","ItemWatch","ItemRadio"],
	["<UNIFORM ITEMS >> ",[["ACE_fieldDressing",8],["ACE_packingBandage",4]]],
	["<VEST ITEMS >> ",[["HandGrenade",2],["rhs_mag_rdg2_black",2],["PRIMARY MAG",1]]],
	["<BACKPACK ITEMS >> ",[["PRIMARY MAG",2]]]
];

kit_rebels_ai_at = [
	["<EQUIPEMENT >>  ",INS_UNI,"TRYK_V_harnes_od_L","rhs_rpg_empty",INS_HEAD,"G_Bandanna_oli"],
	["<PRIMARY WEAPON >>  ","rhs_weap_ak74m","rhs_30Rnd_545x39_AK",["rhs_acc_dtk","","",""]],
	["<LAUNCHER WEAPON >>  ","rhs_weap_rpg7","rhs_rpg7_PG7V_mag",["","rhs_acc_rpg7v_zeroing_100","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ","ItemCompass","ItemWatch","ItemRadio"],
	["<UNIFORM ITEMS >> ",[["ACE_fieldDressing",8],["ACE_packingBandage",4]]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",8],["HandGrenade",3],["rhs_mag_rdg2_black",2]]],
	["<BACKPACK ITEMS >> ",[["SECONDARY MAG",2]]]
];
