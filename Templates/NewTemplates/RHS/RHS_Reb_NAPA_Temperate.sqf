///////////////////////////
//   Rebel Information   //
///////////////////////////

["name", localize "STR_NAPA_NAME"] call _fnc_saveToTemplate;

switch (flagMode) do {
        case 1: {
			["flag", "Flag_RNR_F"] call _fnc_saveToTemplate;
			flagX setFlagTexture "\RUS_markers_flags\flag_rnr_co.paa";
			["flagTexture", "\RUS_markers_flags\flag_rnr_co.paa"] call _fnc_saveToTemplate;

			MyInsignia = "shvr_rnr";
			publicVariable "MyInsignia";
			["flagMarkerType", "flag_RNR"] call _fnc_saveToTemplate;
		};
		case 2: {
			["flag", "rhs_Flag_DNR_F"] call _fnc_saveToTemplate;
			flagX setFlagTexture "\RUS_markers_flags\flag_dnr_co.paa";
			["flagTexture", "\RUS_markers_flags\flag_dnr_co.paa"] call _fnc_saveToTemplate;

			MyInsignia = "shvr_dnr";
			publicVariable "MyInsignia";
			["flagMarkerType", "flag_LNR"] call _fnc_saveToTemplate;
		};
		case 3: {
			["flag", "rhs_Flag_LNR_F"] call _fnc_saveToTemplate;
			flagX setFlagTexture "\RUS_markers_flags\flag_lnr_co.paa";
			["flagTexture", "\RUS_markers_flags\flag_lnr_co.paa"] call _fnc_saveToTemplate;

			MyInsignia = "shvr_lnr";
			publicVariable "MyInsignia";			
			["flagMarkerType", "flag_LNR"] call _fnc_saveToTemplate;
		};
		case 4: {
		    ["flag", "rhs_Flag_Russia_F"] call _fnc_saveToTemplate;
			flagX setFlagTexture "rhsafrf\addons\rhs_main\data\flag_rus_co.paa";
			["flagTexture", "rhsafrf\addons\rhs_main\data\flag_rus_co.paa"] call _fnc_saveToTemplate;

			MyInsignia = "shvr_rus";
			publicVariable "MyInsignia";			
			["flagMarkerType", "rhs_flag_Russia"] call _fnc_saveToTemplate;
		};
		case 5: {
		    ["flag", "Flag_USSR_F"] call _fnc_saveToTemplate;
			flagX setFlagTexture "\RUS_markers_flags\flag_ussr_co.paa";
			["flagTexture", "\RUS_markers_flags\flag_ussr_co.paa"] call _fnc_saveToTemplate;

			MyInsignia = "shvr_ussr";
			publicVariable "MyInsignia";			
			["flagMarkerType", "flag_USSR"] call _fnc_saveToTemplate;
		};
	};
	
TZnakTexture = "Z\Z3.paa";
publicVariable "TZnakTexture";

MENU_COMMS_1 =
[
	// First array: "User menu" This will be displayed under the menu, bool value: has Input Focus or not.
	// Note that as of version Arma 3 1.05, if the bool value is set to false, Custom Icons will not be displayed.
	[localize "STR_FLAGMODE_SELECT", false],
	// Syntax and semantics for following array elements:
	// ["Title_in_menu", [assigned_key], "Submenu_name", CMD, [["expression",script-string]], "isVisible", "isActive" (, optional icon path)]
	// Title_in_menu: string that will be displayed for the player
	// Assigned_key: 0 - no key, 1 - escape key, 2 - key-1, 3 - key-2, ... , 10 - key-9, 11 - key-0, 12 and up... the whole keyboard
	// Submenu_name: User menu name string (eg "#USER:MY_SUBMENU_NAME" ), "" for script to execute.
	// CMD: (for main menu:) CMD_SEPARATOR -1; CMD_NOTHING -2; CMD_HIDE_MENU -3; CMD_BACK -4; (for custom menu:) CMD_EXECUTE -5
	// script-string: command to be executed on activation.  (_target=cursorTarget,_pos=CursorPos)
	// isVisible - Boolean 1 or 0 for yes or no, - or optional argument string, eg: "CursorOnGround"
	// isActive - Boolean 1 or 0 for yes or no - if item is not active, it appears gray.
	// optional icon path: The path to the texture of the cursor, that should be used on this menuitem.
	[localize "STR_FlagMode_NOV", [2], "", -5, [["expression",
			"flagX forceFlagTexture '\RUS_markers_flags\flag_rnr_co.paa';
			A3A_faction_reb setVariable ['flag','Flag_RNR_F',true];
			A3A_faction_reb setVariable ['flagTexture','\RUS_markers_flags\flag_rnr_co.paa',true];
			A3A_faction_reb setVariable ['flagMarkerType','flag_RNR', true];
			SDKFlag = A3A_faction_reb getVariable 'flag';
			SDKFlagTexture = A3A_faction_reb getVariable 'flagTexture';
			SDKFlagMarkerType = A3A_faction_reb getVariable 'flagMarkerType';
			publicVariable 'SDKFlag';
			publicVariable 'SDKFlagTexture';
			publicVariable 'SDKFlagMarkerType';
			{if (sidesX getVariable [_x,sideUnknown] == teamPlayer) then {[_x] call A3A_fnc_mrkUpdate};} forEach airportsX;
			MyInsignia = 'shvr_rnr';
			publicVariable 'MyInsignia';
			{[_x,MyInsignia] call BIS_fnc_setUnitInsignia;} forEach (allUnits select {alive _x && side _x == teamPlayer});"
			]], "1", "1", "\A3\ui_f\data\IGUI\Cfg\Cursors\iconcursorsupport_ca.paa"],
	[localize "STR_FlagMode_DNR",        [3], "", -5, [["expression",
			"flagX forceFlagTexture '\RUS_markers_flags\flag_dnr_co.paa';
			A3A_faction_reb setVariable ['flag','Flag_DNR_F',true];
			A3A_faction_reb setVariable ['flagTexture','\RUS_markers_flags\flag_dnr_co.paa',true];
			A3A_faction_reb setVariable ['flagMarkerType','flag_DNR', true];
			SDKFlag = A3A_faction_reb getVariable 'flag';
			SDKFlagTexture = A3A_faction_reb getVariable 'flagTexture';
			SDKFlagMarkerType = A3A_faction_reb getVariable 'flagMarkerType';
			publicVariable 'SDKFlag';
			publicVariable 'SDKFlagTexture';
			publicVariable 'SDKFlagMarkerType';
			{if (sidesX getVariable [_x,sideUnknown] == teamPlayer) then {[_x] call A3A_fnc_mrkUpdate};} forEach airportsX;
			MyInsignia = 'shvr_dnr';
			publicVariable 'MyInsignia';
			{[_x,MyInsignia] call BIS_fnc_setUnitInsignia;} forEach (allUnits select {alive _x && side _x == teamPlayer});"
			]], "1", "1", "\A3\ui_f\data\IGUI\Cfg\Cursors\iconcursorsupport_ca.paa"],
	[localize "STR_FlagMode_LNR",        [4], "", -5, [["expression",
			"flagX forceFlagTexture '\RUS_markers_flags\flag_lnr_co.paa';
			A3A_faction_reb setVariable ['flag','Flag_LNR_F',true];
			A3A_faction_reb setVariable ['flagTexture','\RUS_markers_flags\flag_lnr_co.paa',true];
			A3A_faction_reb setVariable ['flagMarkerType','flag_LNR', true];
			SDKFlag = A3A_faction_reb getVariable 'flag';
			SDKFlagTexture = A3A_faction_reb getVariable 'flagTexture';
			SDKFlagMarkerType = A3A_faction_reb getVariable 'flagMarkerType';
			publicVariable 'SDKFlag';
			publicVariable 'SDKFlagTexture';
			publicVariable 'SDKFlagMarkerType';
			{if (sidesX getVariable [_x,sideUnknown] == teamPlayer) then {[_x] call A3A_fnc_mrkUpdate};} forEach airportsX;
			MyInsignia = 'shvr_lnr';
			publicVariable 'MyInsignia';
			{[_x,MyInsignia] call BIS_fnc_setUnitInsignia;} forEach (allUnits select {alive _x && side _x == teamPlayer});"
			]], "1", "1"],
	[localize "STR_FlagMode_RUS",     [5], "", -5, [["expression",
			"flagX forceFlagTexture '\RUS_markers_flags\flag_rus_co.paa';
			A3A_faction_reb setVariable ['flag','Flag_RUS_F',true];
			A3A_faction_reb setVariable ['flagTexture','\RUS_markers_flags\flag_rus_co.paa',true];
			A3A_faction_reb setVariable ['flagMarkerType','flag_RUS', true];
			SDKFlag = A3A_faction_reb getVariable 'flag';
			SDKFlagTexture = A3A_faction_reb getVariable 'flagTexture';
			SDKFlagMarkerType = A3A_faction_reb getVariable 'flagMarkerType';
			publicVariable 'SDKFlag';
			publicVariable 'SDKFlagTexture';
			publicVariable 'SDKFlagMarkerType';
			{if (sidesX getVariable [_x,sideUnknown] == teamPlayer) then {[_x] call A3A_fnc_mrkUpdate};} forEach airportsX;
			MyInsignia = 'shvr_rus';
			publicVariable 'MyInsignia';
			{[_x,MyInsignia] call BIS_fnc_setUnitInsignia;} forEach (allUnits select {alive _x && side _x == teamPlayer});"
			]], "1", "1"],
	[localize "STR_FlagMode_USSR",       [6], "", -5, [["expression",
			"flagX forceFlagTexture '\RUS_markers_flags\flag_ussr_co.paa';
			A3A_faction_reb setVariable ['flag','Flag_USSR_F',true];
			A3A_faction_reb setVariable ['flagTexture','\RUS_markers_flags\flag_ussr_co.paa',true];
			A3A_faction_reb setVariable ['flagMarkerType','flag_USSR', true];
			SDKFlag = A3A_faction_reb getVariable 'flag';
			SDKFlagTexture = A3A_faction_reb getVariable 'flagTexture';
			SDKFlagMarkerType = A3A_faction_reb getVariable 'flagMarkerType';
			publicVariable 'SDKFlag';
			publicVariable 'SDKFlagTexture';
			publicVariable 'SDKFlagMarkerType';
			{if (sidesX getVariable [_x,sideUnknown] == teamPlayer) then {[_x] call A3A_fnc_mrkUpdate};} forEach airportsX;
			MyInsignia = 'shvr_ussr';
			publicVariable 'MyInsignia';
			{[_x,MyInsignia] call BIS_fnc_setUnitInsignia;} forEach (allUnits select {alive _x && side _x == teamPlayer});"
			]], "1", "1"]
];

MENU_COMMS_2 =
[
	[localize "STR_SIGMODE_SELECT", false],
	["Z", [2], "", -5, [["expression", 
			"TZnakTexture = 'Z\Z3.paa'; publicVariable 'TZnakTexture'; {_x setObjectTextureGlobal [0,TZnakTexture]} forEach (allMissionObjects 'UserTexture1m_F');"
		]], "1", "1"],
	["V", [3], "", -5, [["expression",
			"TZnakTexture = 'Z\V3.paa'; publicVariable 'TZnakTexture'; {_x setObjectTextureGlobal [0,TZnakTexture]} forEach (allMissionObjects 'UserTexture1m_F');"
		]], "1", "1"],
	["O", [4], "", -5, [["expression",
			"TZnakTexture = 'Z\O3.paa'; publicVariable 'TZnakTexture'; {_x setObjectTextureGlobal [0,TZnakTexture]} forEach (allMissionObjects 'UserTexture1m_F');"
		]], "1", "1"],
	["X", [5], "", -5, [["expression",
			"TZnakTexture = 'Z\X3.paa'; publicVariable 'TZnakTexture'; {_x setObjectTextureGlobal [0,TZnakTexture]} forEach (allMissionObjects 'UserTexture1m_F');"
		]], "1", "1"],
	["A", [6], "", -5, [["expression",
			"TZnakTexture = 'Z\A3.paa'; publicVariable 'TZnakTexture';{_x setObjectTextureGlobal [0,TZnakTexture]} forEach (allMissionObjects 'UserTexture1m_F');"
		]], "1", "1"]
];

publicVariable "MENU_COMMS_1";
publicVariable "MENU_COMMS_2";

["vehicleBasic", "B_Quadbike_01_F"] call _fnc_saveToTemplate; 
["vehicleLightUnarmed", "rhsgref_cdf_reg_uaz_open"] call _fnc_saveToTemplate;
["vehicleLightArmed", "rhsgref_nat_uaz_dshkm"] call _fnc_saveToTemplate;
["vehicleTruck", "rhssaf_army_ural_open"] call _fnc_saveToTemplate;
["vehicleAT", "rhsgref_nat_uaz_spg9"] call _fnc_saveToTemplate;
["vehicleAA", "rhsgref_nat_ural_Zu23"] call _fnc_saveToTemplate; //"min_rf_sa_22" Панцирь C1

["vehicleBoat", "I_C_Boat_Transport_02_F"] call _fnc_saveToTemplate;
["vehicleRepair", "rhsgref_cdf_gaz66_repair"] call _fnc_saveToTemplate;
["vehicleFuel", "rhssaf_army_ural_fuel"] call _fnc_saveToTemplate;

["vehiclePlane", "RHS_AN2"] call _fnc_saveToTemplate;
["vehiclePayloadPlane", "I_C_Plane_Civil_01_F"] call _fnc_saveToTemplate;
["vehicleHeli", "not_supported"] call _fnc_saveToTemplate;

["vehicleCivCar", "C_Offroad_01_F"] call _fnc_saveToTemplate;
["vehicleCivTruck", "RHS_Ural_Open_Civ_03"] call _fnc_saveToTemplate;
["vehicleCivHeli", "RHS_Mi8t_civilian"] call _fnc_saveToTemplate;
["vehicleCivBoat", "C_Rubberboat"] call _fnc_saveToTemplate;
["vehicleCivSupply", "C_Van_01_box_F"] call _fnc_saveToTemplate;

["staticMG", "rhsgref_ins_DSHKM"] call _fnc_saveToTemplate;
["staticAT", "rhsgref_nat_SPG9"] call _fnc_saveToTemplate;
["staticAA", "rhsgref_nat_ZU23"] call _fnc_saveToTemplate;
["staticMortar", "rhsgref_nat_2b14"] call _fnc_saveToTemplate;
["staticMortarMagHE", "rhs_mag_3vo18_10"] call _fnc_saveToTemplate;
["staticMortarMagSmoke", "rhs_mag_d832du_10"] call _fnc_saveToTemplate;

//Static weapon definitions
["baggedMGs", [["RHS_DShkM_Gun_Bag","RHS_DShkM_TripodHigh_Bag"]]] call _fnc_saveToTemplate;
["baggedAT", [["RHS_SPG9_Gun_Bag","RHS_SPG9_Tripod_Bag"]]] call _fnc_saveToTemplate;
["baggedAA", [["not_supported"]]] call _fnc_saveToTemplate;
["baggedMortars", [["RHS_Podnos_Gun_Bag","RHS_Podnos_Bipod_Bag"]]] call _fnc_saveToTemplate;

["mineAT", [
	"ATMine_Range_Mag",
	"rhs_mine_tm62m_mag",
	"rhs_mine_M19_mag",
	"rhs_mag_mine_ptm1",
	"SLAMDirectionalMine_Wire_Mag",
	"rhssaf_mine_tma4_mag",
	"rhs_mine_TM43_mag"
]] call _fnc_saveToTemplate;
["mineAPERS", [
	"rhs_mine_M7A2_mag",
	"APERSMine_Range_Mag",
	"rhs_mine_pmn2_mag",
	"APERSBoundingMine_Range_Mag",
	"rhs_mag_mine_pfm1",
	"rhsusf_mine_m14_mag",
	"ClaymoreDirectionalMine_Remote_Mag",
	"APERSTripMine_Wire_Mag",
	"rhssaf_tm100_mag",
	"rhssaf_tm200_mag",
	"rhssaf_tm500_mag",
	"rhssaf_mine_pma3_mag",
	"rhssaf_mine_mrud_a_mag",
	"rhssaf_mine_mrud_b_mag",
	"rhssaf_mine_mrud_c_mag",
	"rhssaf_mine_mrud_d_mag",
	"rhs_mine_smine35_press_mag",
	"rhs_mine_smine44_press_mag",
	"rhs_mine_stockmine43_2m_mag",
	"rhs_mine_stockmine43_4m_mag",
	"rhs_mine_M3_tripwire_mag",
	"rhs_mine_Mk2_tripwire_mag",
	"rhs_mine_mk2_pressure_mag",
	"rhs_mine_m3_pressure_mag",
	"rhs_mine_glasmine43_hz_mag",
	"rhs_mine_glasmine43_bz_mag",
	"rhs_mine_m2a3b_press_mag",
	"rhs_mine_m2a3b_trip_mag",
	"rhs_mine_a200_bz_mag",
	"rhs_mine_a200_dz35_mag",
	"rhs_mine_m2a3b_press_mag",
	"rhs_mine_m2a3b_trip_mag",
	"rhs_mine_smine35_trip_mag",
	"rhs_mine_smine44_trip_mag"
]] call _fnc_saveToTemplate;

["breachingExplosivesAPC", [["rhs_ec75_mag", 2], ["rhs_ec75_sand_mag", 2], ["rhs_ec200_mag", 1], ["rhs_ec200_sand_mag", 1], ["rhsusf_m112_mag", 1], ["DemoCharge_Remote_Mag", 1]]] call _fnc_saveToTemplate;
["breachingExplosivesTank", [["rhs_ec75_mag", 4], ["rhs_ec75_sand_mag", 4], ["rhs_ec200_mag", 2], ["rhs_ec200_sand_mag", 2], ["rhs_ec400_mag", 1], ["rhs_ec400_sand_mag", 1],["DemoCharge_Remote_Mag", 2], ["rhsusf_m112_mag", 2], ["rhsusf_m112x4_mag", 1], ["rhs_charge_M2tet_x2_mag", 1], ["SatchelCharge_Remote_Mag", 1]]] call _fnc_saveToTemplate;

///////////////////////////
//  Rebel Starting Gear  //
///////////////////////////

["uniforms", [
	"rhs_uniform_emr_patchless",
	"rhs_uniform_vdv_emr",
	"rhs_uniform_mvd_izlom",
	"rhs_uniform_flora_patchless",
	"rhs_uniform_flora_patchless_alt",
	"min_rf_green_hex_officer",
	"min_rf_gorka_hood",
	"min_rf_gorka_officer",
	"min_rf_klmk_officer",
	"min_rf_klmk_hood",
	"min_rf_emr_officer",
	"min_rf_emr_hood",
	//"min_rf_emr_ghillie",
	"min_rf_gorka_surpat_hood",
	"min_rf_gorka_surpat_officer",
	"min_rf_gorka_partizan_officer",
	//"U_IG_Guerrilla_6_1",
	"U_I_GhillieSuit"/*,
	"eou_gorka_17",
	"eou_gorka_9",
	"eou_gorka_25",
	"eou_gorka_31",
	"eou_gorka_32",
	"eou_gorka_30",
	"eou_gorka_16",
	"eou_gorka_21",
	"eou_gorka_23",
	"eou_gorka_29",
	"eou_gorka_20"*/

]] call _fnc_saveToTemplate;

["headgear", [
    "H_Booniehat_khk_hs",
    "H_Booniehat_oli",
    "H_Cap_oli_hs",
    "H_Cap_blk",
    "H_Cap_headphones",
    "H_Shemag_olive_hs",
    "H_Bandanna_gry",
    "H_Bandanna_khk_hs",
    "H_Bandanna_sgg",
    "H_Bandanna_camo"
]] call _fnc_saveToTemplate;

private _initialRebelEquipment = [
//"hlc_rifle_akm","hlc_30Rnd_762x39_t_ak",
//"hlc_45Rnd_762x39_t_rpk",
"rhs_ec200_mag",
"rhs_ec400_mag",
"rhs_ec200_sand_mag",
"rhs_ec400_sand_mag",
"rhs_mine_msk40p_red_mag",
"rhs_mine_msk40p_white_mag",
"rhs_mine_msk40p_green_mag",
"rhs_mine_pmn2_mag",
"rhs_mine_ptm1_mag",
"APERSTripMine_Wire_Mag",
"rhs_mine_tm62m_mag",
"rhs_weap_m3a1", "rhs_weap_m38",
"rhs_weap_type94_new","rhs_weap_tt33","rhs_weap_Izh18","rhs_weap_kar98k",
"rhs_weap_panzerfaust60",
"rhs_mag_6x8mm_mhp","rhs_mag_762x25_8","rhsgref_1Rnd_00Buck","rhsgref_1Rnd_Slug","rhsgref_5Rnd_792x57_kar98k",
"rhsgref_mag_rkg3em",
"rhsgref_30rnd_1143x23_M1911B_SMG", "rhsgref_30rnd_1143x23_M1T_SMG",
"rhsgref_5Rnd_762x54_m38",
"rhs_grenade_khattabka_vog17_mag", "rhs_grenade_khattabka_vog25_mag",
"rhs_sidor",
"rhs_grenade_nbhgr39_mag", "rhs_grenade_sthgr24_mag", "rhs_grenade_sthgr43_mag",
"V_BandollierB_blk", "V_BandollierB_rgr", "V_BandollierB_oli", "V_Rangemaster_belt", "rhs_vest_pistol_holster","rhs_vest_commander","rhs_6sh46",
"rhs_acc_2dpZenit","Binocular","Laserbatteries"];

if (A3A_hasTFAR) then {_initialRebelEquipment append ["tf_microdagr","tf_anprc154","tf_anprc148jem"]};
if (A3A_hasTFAR && startWithLongRangeRadio) then {_initialRebelEquipment pushBack "tf_anprc155"};
if (A3A_hasTFARBeta) then {_initialRebelEquipment append ["TFAR_microdagr","TFAR_anprc154"]};
if (A3A_hasTFARBeta && startWithLongRangeRadio) then {_initialRebelEquipment pushBack "TFAR_anprc155"};
["initialRebelEquipment", _initialRebelEquipment] call _fnc_saveToTemplate;

//////////////////////////////////////
//       Antistasi Plus Stuff       //
//////////////////////////////////////
["baseSoldiers", [ // Cases matter. Lower case here because allVariables on namespace returns lowercase
	["militia_unarmed", "I_G_Survivor_F"],
	["militia_rifleman", "rhsgref_nat_pmil_rifleman_akm"],
	["militia_staticcrew", "rhsgref_nat_pmil_rifleman_akm"],
	["militia_medic", "rhsgref_nat_medic"],
	["militia_sniper", "rhsgref_nat_pmil_rifleman_akm"],
	["militia_marksman", "rhsgref_nat_pmil_hunter"],
	["militia_lat", "rhsgref_nat_pmil_grenadier_rpg"],
	["militia_machinegunner", "rhsgref_nat_pmil_machinegunner"],
	["militia_explosivesexpert", "rhsgref_cdf_ngd_engineer"],
	["militia_grenadier", "rhsgref_cdf_para_grenadier"],
	["militia_squadleader", "rhsgref_nat_commander"],
	["militia_engineer", "rhsgref_cdf_ngd_engineer"],
	["militia_at", "rhsgref_nat_pmil_grenadier_rpg"],
	["militia_aa", "rhsgref_nat_pmil_grenadier_rpg"],
	["militia_petros", "rhsgref_nat_warlord"]
]] call _fnc_saveToTemplate;
lootCrate = "Box_Syndicate_Ammo_F";
rallyPoint = "B_RadioBag_01_wdl_F";

//black market stuff
shop_UAV = ["rhs_pchela1t_vvs"];
shop_AA = ["rhsgref_cdf_zsu234", "rhsgref_cdf_zsu234", "I_LT_01_AA_F", "min_rf_sa_22"]; //"min_rf_sa_22" - Панцирь
shop_MRAP = ["rhsgref_BRDM2UM_ins_g", "rhsgref_BRDM2_ins_g", "rhsusf_M1117_O"];
shop_wheel_apc = ["rhsgref_ins_g_btr60", "rhsgref_nat_btr70", "rhsgref_cdf_btr80", "rhs_btr80a_vmf"]; //"rhs_btr80a_vmf"
shop_track_apc = ["rhsgref_hidf_m113a3_m2", "rhsgref_cdf_bmd1k", "rhsgref_cdf_bmp2e","rhs_bmp3mera_msv"];
shop_heli = ["rhs_uh1h_hidf_gunship", "rhsgref_cdf_reg_Mi17Sh"];
shop_tank = ["rhsgref_ins_g_t72ba", "rhsgref_ins_g_t72bb", "rhsgref_ins_g_t72bc", "rhs_t90sm_tv"];  //"min_rf_t_14"
shop_plane = ["RHSGREF_A29B_HIDF", "rhs_l39_cdf", "rhs_l159_CDF"];

additionalShopLight = ["rhssaf_m1151_olive_pkm", "rhssaf_m1025_olive_m2", "rhs_tigr_sts_vmf"];
additionalShopAtgmVehicles = ["rhsusf_m1045_w", "rhsusf_m1045_w", "rhsgref_BRDM2_ATGM"];
additionalShopManpadsVehicles = [];
additionalShopArtillery = ["RHS_BM21_MSV_01"];

//military building models (common for all sides)
smallBunker = "Land_BagBunker_Small_F";
sandbag = "Land_BagFence_Long_F";

//!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

//     DO NOT GO PAST THIS LINE

//!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

//////////////////////////
//       Loadouts       //
//////////////////////////
private _loadoutData = call _fnc_createLoadoutData;
_loadoutData setVariable ["rifles", []];
_loadoutData setVariable ["carbines", []];
_loadoutData setVariable ["grenadeLaunchers", []];
_loadoutData setVariable ["SMGs", []];
_loadoutData setVariable ["machineGuns", []]; 			//this line determines machine guns -- Example: ["arifle_MX_SW_F","arifle_MX_SW_Hamr_pointer_F"] -- Array, can contain multiple assets
_loadoutData setVariable ["marksmanRifles", []];
_loadoutData setVariable ["sniperRifles", []];
_loadoutData setVariable ["lightATLaunchers", []];
_loadoutData setVariable ["ATLaunchers", []];
_loadoutData setVariable ["missileATLaunchers", []];
_loadoutData setVariable ["AALaunchers", []];
_loadoutData setVariable ["sidearms", []];

_loadoutData setVariable ["ATMines", []];
_loadoutData setVariable ["APMines", []];
_loadoutData setVariable ["lightExplosives", []];
_loadoutData setVariable ["heavyExplosives", []];

_loadoutData setVariable ["antiInfantryGrenades", []];
_loadoutData setVariable ["antiTankGrenades", []];
_loadoutData setVariable ["smokeGrenades", []];




_loadoutData setVariable ["maps", ["ItemMap"]];
_loadoutData setVariable ["watches", ["ItemWatch"]];
_loadoutData setVariable ["voice", ["Male01RUS", "Male02RUS", "Male03RUS"]];//, "Male02RUS", "Male03RUS"
_loadoutData setVariable ["compasses", ["ItemCompass"]];
_loadoutData setVariable ["radios", ["tf_anprc148jem"]];
_loadoutData setVariable ["gpses", []];
_loadoutData setVariable ["NVGs", []];
_loadoutData setVariable ["binoculars", ["Binocular"]];

_loadoutData setVariable ["uniforms", [
    /*"rhs_insurgent_uniform_1",
    "rhs_insurgent_uniform_2",
    "rhs_insurgent_uniform_3",
    "rhs_insurgent_uniform_4",
    "rhs_insurgent_uniform_5",
    "rhsgref_uniform_dpm",
    "rhsgref_uniform_dpm_olive",
    "rhsgref_uniform_altis_lizard_olive",
    "rhsgref_uniform_flecktarn_full"*/
	"rhs_uniform_emr_patchless",
	"rhs_uniform_vdv_emr",
	"rhs_uniform_mvd_izlom",
	"rhs_uniform_flora_patchless",
	"rhs_uniform_flora_patchless_alt",
	"min_rf_green_hex_officer",
	"min_rf_gorka_hood",
	"min_rf_gorka_officer",
	"min_rf_klmk_officer",
	"min_rf_klmk_hood",
	"min_rf_emr_officer",
	"min_rf_emr_hood",
	//"min_rf_emr_ghillie",
	"min_rf_gorka_surpat_hood",
	"min_rf_gorka_surpat_officer",
	"min_rf_gorka_partizan_officer"
	//"U_IG_Guerrilla_6_1",
	/*"U_I_GhillieSuit",
	"eou_gorka_17",
	"eou_gorka_9",
	"eou_gorka_25",
	"eou_gorka_31",
	"eou_gorka_32",
	"eou_gorka_30",
	"eou_gorka_16",
	"eou_gorka_21",
	"eou_gorka_23",
	"eou_gorka_29",
	"eou_gorka_20"*/
]];
_loadoutData setVariable ["vests", []];
_loadoutData setVariable ["backpacks", []];
_loadoutData setVariable ["longRangeRadios", []];
_loadoutData setVariable ["helmets", []];

//Item *set* definitions. These are added in their entirety to unit loadouts. No randomisation is applied.
_loadoutData setVariable ["items_medical_basic", ["BASIC"] call A3A_fnc_itemset_medicalSupplies];
_loadoutData setVariable ["items_medical_standard", ["STANDARD"] call A3A_fnc_itemset_medicalSupplies];
_loadoutData setVariable ["items_medical_medic", ["MEDIC"] call A3A_fnc_itemset_medicalSupplies];
_loadoutData setVariable ["items_miscEssentials", [] call A3A_fnc_itemset_miscEssentials];


_loadoutData setVariable ["items_squadleader_extras", []];
_loadoutData setVariable ["items_rifleman_extras", []];
_loadoutData setVariable ["items_medic_extras", []];
_loadoutData setVariable ["items_grenadier_extras", []];
_loadoutData setVariable ["items_explosivesExpert_extras", []];
_loadoutData setVariable ["items_engineer_extras", ["Toolkit", "MineDetector"]];// 
_loadoutData setVariable ["items_lat_extras", []];
_loadoutData setVariable ["items_at_extras", []];
_loadoutData setVariable ["items_aa_extras", []];
_loadoutData setVariable ["items_machineGunner_extras", []];
_loadoutData setVariable ["items_marksman_extras", []];
_loadoutData setVariable ["items_sniper_extras", []];
_loadoutData setVariable ["items_police_extras", []];
_loadoutData setVariable ["items_crew_extras", []];
_loadoutData setVariable ["items_unarmed_extras", []];

////////////////////////
//  Rebel Unit Types  //
///////////////////////.

private _squadLeaderTemplate = {
	["helmets"] call _fnc_setHelmet;
	["vests"] call _fnc_setVest;
	["uniforms"] call _fnc_setUniform;

	["backpacks"] call _fnc_setBackpack;

	[["grenadeLaunchers", "rifles"] call _fnc_fallback] call _fnc_setPrimary;
	["primary", 5] call _fnc_addMagazines;


	["sidearms"] call _fnc_setHandgun;
	["handgun", 2] call _fnc_addMagazines;

	["items_medical_standard"] call _fnc_addItemSet;
	["items_squadLeader_extras"] call _fnc_addItemSet;
	["items_miscEssentials"] call _fnc_addItemSet;
	["antiInfantryGrenades", 2] call _fnc_addItem;
	["antiTankGrenades", 1] call _fnc_addItem;
	["smokeGrenades", 2] call _fnc_addItem;
	["smokeGrenades", 2] call _fnc_addItem;

	["maps"] call _fnc_addMap;
	["watches"] call _fnc_addWatch;
	["voice"] call _fnc_addVoice;
	["compasses"] call _fnc_addCompass;
	["radios"] call _fnc_addRadio;
	["gpses"] call _fnc_addGPS;
	["binoculars"] call _fnc_addBinoculars;
	["NVGs"] call _fnc_addNVGs;
};

private _riflemanTemplate = {
	["helmets"] call _fnc_setHelmet;
	["vests"] call _fnc_setVest;
	["uniforms"] call _fnc_setUniform;
	["backpacks"] call _fnc_setBackpack;

	["rifles"] call _fnc_setPrimary;
	["primary", 8] call _fnc_addMagazines;

	["sidearms"] call _fnc_setHandgun;
	["handgun", 2] call _fnc_addMagazines;

	["items_medical_standard"] call _fnc_addItemSet;
	["items_rifleman_extras"] call _fnc_addItemSet;
	["items_miscEssentials"] call _fnc_addItemSet;
	["antiInfantryGrenades", 2] call _fnc_addItem;
	["antiTankGrenades", 1] call _fnc_addItem;
	["smokeGrenades", 2] call _fnc_addItem;

	["maps"] call _fnc_addMap;
	["watches"] call _fnc_addWatch;
	["voice"] call _fnc_addVoice;
	["compasses"] call _fnc_addCompass;
	["radios"] call _fnc_addRadio;
	["NVGs"] call _fnc_addNVGs;
};

private _medicTemplate = {
	["helmets"] call _fnc_setHelmet;
	["vests"] call _fnc_setVest;
	["uniforms"] call _fnc_setUniform;
	["backpacks"] call _fnc_setBackpack;

	["carbines"] call _fnc_setPrimary;
	["primary", 5] call _fnc_addMagazines;

	["sidearms"] call _fnc_setHandgun;
	["handgun", 2] call _fnc_addMagazines;

	["items_medical_medic"] call _fnc_addItemSet;
	["items_medic_extras"] call _fnc_addItemSet;
	["items_miscEssentials"] call _fnc_addItemSet;
	["antiInfantryGrenades", 1] call _fnc_addItem;
	["smokeGrenades", 2] call _fnc_addItem;

	["maps"] call _fnc_addMap;
	["watches"] call _fnc_addWatch;
	["voice"] call _fnc_addVoice;
	["compasses"] call _fnc_addCompass;
	["radios"] call _fnc_addRadio;
	["NVGs"] call _fnc_addNVGs;
};

private _grenadierTemplate = {
	["helmets"] call _fnc_setHelmet;
	["vests"] call _fnc_setVest;
	["uniforms"] call _fnc_setUniform;
	["backpacks"] call _fnc_setBackpack;

	["grenadeLaunchers"] call _fnc_setPrimary;
	["primary", 5] call _fnc_addMagazines;


	["sidearms"] call _fnc_setHandgun;
	["handgun", 2] call _fnc_addMagazines;

	["items_medical_standard"] call _fnc_addItemSet;
	["items_grenadier_extras"] call _fnc_addItemSet;
	["items_miscEssentials"] call _fnc_addItemSet;
	["antiInfantryGrenades", 4] call _fnc_addItem;
	["antiTankGrenades", 3] call _fnc_addItem;
	["smokeGrenades", 2] call _fnc_addItem;

	["maps"] call _fnc_addMap;
	["watches"] call _fnc_addWatch;
	["voice"] call _fnc_addVoice;
	["compasses"] call _fnc_addCompass;
	["radios"] call _fnc_addRadio;
	["NVGs"] call _fnc_addNVGs;
};

private _explosivesExpertTemplate = {
	["helmets"] call _fnc_setHelmet;
	["vests"] call _fnc_setVest;
	["uniforms"] call _fnc_setUniform;
	["backpacks"] call _fnc_setBackpack;

	["rifles"] call _fnc_setPrimary;
	["primary", 5] call _fnc_addMagazines;


	["sidearms"] call _fnc_setHandgun;
	["handgun", 2] call _fnc_addMagazines;

	["items_medical_standard"] call _fnc_addItemSet;
	["items_explosivesExpert_extras"] call _fnc_addItemSet;
	["items_miscEssentials"] call _fnc_addItemSet;

	["lightExplosives", 2] call _fnc_addItem;
	if (random 1 > 0.5) then {["heavyExplosives", 1] call _fnc_addItem;};
	if (random 1 > 0.5) then {["atMines", 1] call _fnc_addItem;};
	if (random 1 > 0.5) then {["apMines", 1] call _fnc_addItem;};

	["antiInfantryGrenades", 1] call _fnc_addItem;
	["smokeGrenades", 1] call _fnc_addItem;

	["maps"] call _fnc_addMap;
	["watches"] call _fnc_addWatch;
	["voice"] call _fnc_addVoice;
	["compasses"] call _fnc_addCompass;
	["radios"] call _fnc_addRadio;
	["NVGs"] call _fnc_addNVGs;
};

private _engineerTemplate = {
	["helmets"] call _fnc_setHelmet;
	["vests"] call _fnc_setVest;
	["uniforms"] call _fnc_setUniform;
	["backpacks"] call _fnc_setBackpack;

	["carbines"] call _fnc_setPrimary;
	["primary", 5] call _fnc_addMagazines;

	["sidearms"] call _fnc_setHandgun;
	["handgun", 2] call _fnc_addMagazines;

	["items_medical_standard"] call _fnc_addItemSet;
	["items_engineer_extras"] call _fnc_addItemSet;
	["items_miscEssentials"] call _fnc_addItemSet;

	if (random 1 > 0.5) then {["lightExplosives", 1] call _fnc_addItem;};

	["antiInfantryGrenades", 1] call _fnc_addItem;
	["smokeGrenades", 2] call _fnc_addItem;

	["maps"] call _fnc_addMap;
	["watches"] call _fnc_addWatch;
	["voice"] call _fnc_addVoice;
	["compasses"] call _fnc_addCompass;
	["radios"] call _fnc_addRadio;
	["NVGs"] call _fnc_addNVGs;
};

private _latTemplate = {
	["helmets"] call _fnc_setHelmet;
	["vests"] call _fnc_setVest;
	["uniforms"] call _fnc_setUniform;
	["backpacks"] call _fnc_setBackpack;

	["rifles"] call _fnc_setPrimary;
	["primary", 8] call _fnc_addMagazines;

	[["lightATLaunchers", "ATLaunchers"] call _fnc_fallback] call _fnc_setLauncher;
	//TODO - Add a check if it's disposable.
	["launcher", 1] call _fnc_addMagazines;

	["sidearms"] call _fnc_setHandgun;
	["handgun", 2] call _fnc_addMagazines;

	["items_medical_standard"] call _fnc_addItemSet;
	["items_lat_extras"] call _fnc_addItemSet;
	["items_miscEssentials"] call _fnc_addItemSet;
	["antiInfantryGrenades", 1] call _fnc_addItem;
	["antiTankGrenades", 2] call _fnc_addItem;
	["smokeGrenades", 1] call _fnc_addItem;

	["maps"] call _fnc_addMap;
	["watches"] call _fnc_addWatch;
	["voice"] call _fnc_addVoice;
	["compasses"] call _fnc_addCompass;
	["radios"] call _fnc_addRadio;
	["NVGs"] call _fnc_addNVGs;
};

private _atTemplate = {
	["helmets"] call _fnc_setHelmet;
	["vests"] call _fnc_setVest;
	["uniforms"] call _fnc_setUniform;
	["backpacks"] call _fnc_setBackpack;

	["rifles"] call _fnc_setPrimary;
	["primary", 5] call _fnc_addMagazines;

	[selectRandom ["ATLaunchers", "missileATLaunchers"]] call _fnc_setLauncher;
	//TODO - Add a check if it's disposable.
	["launcher", 2] call _fnc_addMagazines;

	["sidearms"] call _fnc_setHandgun;
	["handgun", 2] call _fnc_addMagazines;

	["items_medical_standard"] call _fnc_addItemSet;
	["items_at_extras"] call _fnc_addItemSet;
	["items_miscEssentials"] call _fnc_addItemSet;
	["antiInfantryGrenades", 1] call _fnc_addItem;
	["antiTankGrenades", 2] call _fnc_addItem;
	["smokeGrenades", 1] call _fnc_addItem;

	["maps"] call _fnc_addMap;
	["watches"] call _fnc_addWatch;
	["voice"] call _fnc_addVoice;
	["compasses"] call _fnc_addCompass;
	["radios"] call _fnc_addRadio;
	["NVGs"] call _fnc_addNVGs;
};

private _aaTemplate = {
	["helmets"] call _fnc_setHelmet;
	["vests"] call _fnc_setVest;
	["uniforms"] call _fnc_setUniform;
	["backpacks"] call _fnc_setBackpack;

	["rifles"] call _fnc_setPrimary;
	["primary", 5] call _fnc_addMagazines;

	["AALaunchers"] call _fnc_setLauncher;
	//TODO - Add a check if it's disposable.
	["launcher", 2] call _fnc_addMagazines;

	["sidearms"] call _fnc_setHandgun;
	["handgun", 2] call _fnc_addMagazines;

	["items_medical_standard"] call _fnc_addItemSet;
	["items_aa_extras"] call _fnc_addItemSet;
	["items_miscEssentials"] call _fnc_addItemSet;
	["antiInfantryGrenades", 2] call _fnc_addItem;
	["smokeGrenades", 2] call _fnc_addItem;

	["maps"] call _fnc_addMap;
	["watches"] call _fnc_addWatch;
	["voice"] call _fnc_addVoice;
	["compasses"] call _fnc_addCompass;
	["radios"] call _fnc_addRadio;
	["NVGs"] call _fnc_addNVGs;
};

private _machineGunnerTemplate = {
	["helmets"] call _fnc_setHelmet;
	["vests"] call _fnc_setVest;
	["uniforms"] call _fnc_setUniform;
	["backpacks"] call _fnc_setBackpack;

	["machineGuns"] call _fnc_setPrimary;
	["primary", 4] call _fnc_addMagazines;

	["sidearms"] call _fnc_setHandgun;
	["handgun", 2] call _fnc_addMagazines;

	["items_medical_standard"] call _fnc_addItemSet;
	["items_machineGunner_extras"] call _fnc_addItemSet;
	["items_miscEssentials"] call _fnc_addItemSet;
	["antiInfantryGrenades", 2] call _fnc_addItem;
	["smokeGrenades", 2] call _fnc_addItem;

	["maps"] call _fnc_addMap;
	["watches"] call _fnc_addWatch;
	["voice"] call _fnc_addVoice;
	["compasses"] call _fnc_addCompass;
	["radios"] call _fnc_addRadio;
	["NVGs"] call _fnc_addNVGs;
};

private _marksmanTemplate = {
	["helmets"] call _fnc_setHelmet;
	["vests"] call _fnc_setVest;
	["uniforms"] call _fnc_setUniform;
	["backpacks"] call _fnc_setBackpack;

	["marksmanRifles"] call _fnc_setPrimary;
	["primary", 8] call _fnc_addMagazines;

	["sidearms"] call _fnc_setHandgun;
	["handgun", 2] call _fnc_addMagazines;

	["items_medical_standard"] call _fnc_addItemSet;
	["items_marksman_extras"] call _fnc_addItemSet;
	["items_miscEssentials"] call _fnc_addItemSet;
	["antiInfantryGrenades", 2] call _fnc_addItem;
	["smokeGrenades", 2] call _fnc_addItem;

	["maps"] call _fnc_addMap;
	["watches"] call _fnc_addWatch;
	["voice"] call _fnc_addVoice;
	["compasses"] call _fnc_addCompass;
	["radios"] call _fnc_addRadio;
	["NVGs"] call _fnc_addNVGs;
};

private _sniperTemplate = {
	["helmets"] call _fnc_setHelmet;
	["vests"] call _fnc_setVest;
	["uniforms"] call _fnc_setUniform;
	["backpacks"] call _fnc_setBackpack;

	["sniperRifles"] call _fnc_setPrimary;
	["primary", 5] call _fnc_addMagazines;

	["sidearms"] call _fnc_setHandgun;
	["handgun", 2] call _fnc_addMagazines;

	["items_medical_standard"] call _fnc_addItemSet;
	["items_sniper_extras"] call _fnc_addItemSet;
	["items_miscEssentials"] call _fnc_addItemSet;
	["antiInfantryGrenades", 2] call _fnc_addItem;
	["smokeGrenades", 2] call _fnc_addItem;

	["maps"] call _fnc_addMap;
	["watches"] call _fnc_addWatch;
	["voice"] call _fnc_addVoice;
	["compasses"] call _fnc_addCompass;
	["radios"] call _fnc_addRadio;
	["NVGs"] call _fnc_addNVGs;
};

private _policeTemplate = {
	["vests"] call _fnc_setVest;
	["uniforms"] call _fnc_setUniform;
	["backpacks"] call _fnc_setBackpack;

	[selectRandom ["smgs", "carbines"]] call _fnc_setPrimary;
	["primary", 5] call _fnc_addMagazines;

	["sidearms"] call _fnc_setHandgun;
	["handgun", 2] call _fnc_addMagazines;

	["items_medical_standard"] call _fnc_addItemSet;
	["items_police_extras"] call _fnc_addItemSet;
	["items_miscEssentials"] call _fnc_addItemSet;
	["smokeGrenades", 1] call _fnc_addItem;

	["maps"] call _fnc_addMap;
	["watches"] call _fnc_addWatch;
	["voice"] call _fnc_addVoice;
	["compasses"] call _fnc_addCompass;
	["radios"] call _fnc_addRadio;
};

private _crewTemplate = {
	["helmets"] call _fnc_setHelmet;
	["vests"] call _fnc_setVest;
	["uniforms"] call _fnc_setUniform;

	["smgs"] call _fnc_setPrimary;
	["primary", 3] call _fnc_addMagazines;

	["sidearms"] call _fnc_setHandgun;
	["handgun", 2] call _fnc_addMagazines;

	["items_medical_basic"] call _fnc_addItemSet;
	["items_crew_extras"] call _fnc_addItemSet;
	["items_miscEssentials"] call _fnc_addItemSet;
	["smokeGrenades", 2] call _fnc_addItem;

	["maps"] call _fnc_addMap;
	["watches"] call _fnc_addWatch;
	["voice"] call _fnc_addVoice;
	["compasses"] call _fnc_addCompass;
	["radios"] call _fnc_addRadio;
	["gpses"] call _fnc_addGPS;
	["NVGs"] call _fnc_addNVGs;
};

private _unarmedTemplate = {
	["vests"] call _fnc_setVest;
	["uniforms"] call _fnc_setUniform;

	["items_medical_basic"] call _fnc_addItemSet;
	["items_unarmed_extras"] call _fnc_addItemSet;
	["items_miscEssentials"] call _fnc_addItemSet;

	["maps"] call _fnc_addMap;
	["watches"] call _fnc_addWatch;
	["voice"] call _fnc_addVoice;
	["compasses"] call _fnc_addCompass;
	["radios"] call _fnc_addRadio;
};

private _prefix = "militia";
private _unitTypes = [
	["Petros", _squadLeaderTemplate],
	["SquadLeader", _squadLeaderTemplate],
	["Rifleman", _riflemanTemplate],
	["staticCrew", _riflemanTemplate],
	["Medic", _medicTemplate, [["medic", true]]],
	["Engineer", _engineerTemplate, [["engineer", true]]],
	["ExplosivesExpert", _explosivesExpertTemplate, [["explosiveSpecialist", true]]],
	["Grenadier", _grenadierTemplate],
	["LAT", _latTemplate],
	["AT", _atTemplate],
	["AA", _aaTemplate],
	["MachineGunner", _machineGunnerTemplate],
	["Marksman", _marksmanTemplate],
	["Sniper", _sniperTemplate],
	["Unarmed", _unarmedTemplate]
];

[_prefix, _unitTypes, _loadoutData] call _fnc_generateAndSaveUnitsToTemplate;
