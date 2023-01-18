//////////////////////////
//   Side Information   //
//////////////////////////

["name", "Ukraine"] call _fnc_saveToTemplate;
["spawnMarkerName", "Ukrainian Support Corridor"] call _fnc_saveToTemplate;

["flag", "Flag_Ukraine_F"] call _fnc_saveToTemplate;
["flagTexture", "ua_factions_rhs\data\flags\flag_ukraine_01.paa"] call _fnc_saveToTemplate;
["flagMarkerType", "FlagUkraine"] call _fnc_saveToTemplate;

//////////////////////////////////////
//       Antistasi Plus Stuff       //
//////////////////////////////////////
["baseSoldiers", [ // Cases matter. Lower case here because allVariables on namespace returns lowercase
    
]] call _fnc_saveToTemplate;

//////////////////////////
//       Vehicles       //
//////////////////////////

["ammobox", "B_supplyCrate_F"] call _fnc_saveToTemplate; 	//Don't touch or you die a sad and lonely death!
["surrenderCrate", "Box_IND_Wps_F"] call _fnc_saveToTemplate;
["equipmentBox", "Box_NATO_Equip_F"] call _fnc_saveToTemplate;

["vehiclesBasic", ["B_Quadbike_01_F"]] call _fnc_saveToTemplate;
["vehiclesLightUnarmed", ["b_afougf_yt_UAZ_DShKM_Base", "b_afougf_yt_UAZ_AGS30_Base", "b_afougf_offroad_at","b_afougf_yt_offroad_01","b_afougf_yt_offroad_at","b_afougf_yt_offroad_01_dshkm"]] call _fnc_saveToTemplate;
["vehiclesLightArmed",["b_afougf_yt_BRDM2", "b_afougf_yt_btr70", "b_afougf_yt_btr80","b_afougf_yt_offroad_armored_01","b_afougf_yt_offroad_armored_01_dshkm","b_afougf_yt_offroad_armored_at",
"b_afougf_yt_m1152_base","b_afougf_yt_m1152_base_dshkm","b_afougf_yt_m1152_base_lcmr","b_afougf_yt_m998_2dr","b_afougf_yt_m998_2dr_dshkm","b_afougf_yt_m998_2dr_fulltop","b_afougf_yt_m998_4dr","b_afougf_yt_m998_w_s_4dr_fulltop","b_afougf_yt_m998_sicps_base"]] call _fnc_saveToTemplate;
["vehiclesTrucks", ["b_afougf_yt_zil131", "b_afougf_yt_Ural_Base"]] call _fnc_saveToTemplate;
["vehiclesCargoTrucks", ["b_afougf_yt_Ural_Open_Flat", "b_afougf_yt_Ural_Flat", "b_afougf_yt_zil131_cover", "b_afougf_yt_zil131_flatbed", "b_afougf_kraz255b1_flatbed", "b_afougf_desert_zil131_flatbed"]] call _fnc_saveToTemplate;
["vehiclesAmmoTrucks", ["b_afougf_yt_gaz66_ammo"]] call _fnc_saveToTemplate;
["vehiclesRepairTrucks", ["b_afougf_yt_gaz66_repair", "b_afougf_yt_Ural_repair"]] call _fnc_saveToTemplate;
["vehiclesFuelTrucks", ["b_afougf_yt_Ural_fuel", "b_afougf_kraz255b1_fuel"]] call _fnc_saveToTemplate;
["vehiclesMedical", ["b_afougf_yt_gaz66_ap2", "b_afougf_desert_gaz66_ap2", "b_afougf_gaz66_ap2", "b_afougf_m1151_med"]] call _fnc_saveToTemplate;
["vehiclesAPCs", ["b_afougf_yt_btr80", "b_afougf_yt_btr70", "b_afougf_yt_bmd1", "b_afougf_yt_bmd2", "b_afougf_yt_bmp1p", "b_afougf_yt_bmp1", "b_afougf_yt_bmp2d", "b_afougf_yt_bmp2", "b_afougf_yt_brm1k_Base", "b_afougf_yt_prp3_Base", "b_afougf_desert_btr80", "b_afougf_btr80_common"]] call _fnc_saveToTemplate;
["vehiclesTanks", ["b_afougf_yt_t72bb", "b_afougf_yt_t80bv", "b_afougf_t80u", "b_afougf_t72bb"]] call _fnc_saveToTemplate;
["vehiclesAA", ["b_afougf_yt_zsu234_aa", "b_afougf_zsu234_aa"]] call _fnc_saveToTemplate;
["vehiclesLightAPCs", ["b_afougf_yt_bmd1", "b_afougf_yt_bmd2", "b_afougf_yt_bmp1p", "b_afougf_yt_bmp1", "b_afougf_yt_bmp2d"]] call _fnc_saveToTemplate;			//this line determines light APCs
["vehiclesIFVs", ["b_afougf_yt_bmd1", "b_afougf_yt_bmd2", "b_afougf_yt_bmp1p", "b_afougf_yt_bmp1", "b_afougf_yt_bmp2d", "b_afougf_yt_bmp2"]] call _fnc_saveToTemplate;				//this line determines IFVs
["vehiclesSam", ["b_afougf_p37_turret_vpvo","b_afougf_SAM_System_04_green_F"]] call _fnc_saveToTemplate; 	//this line determines SAM systems, order: radar, SAM


["vehiclesTransportBoats", ["b_uapolice_boat_01"]] call _fnc_saveToTemplate;
["vehiclesGunBoats", ["rhsusf_mkvsoc"]] call _fnc_saveToTemplate;
["vehiclesAmphibious", ["b_afougf_yt_btr80", "b_afougf_yt_btr70"]] call _fnc_saveToTemplate;

["vehiclesPlanesCAS", ["b_afougf_Su25SM", "b_afougf_l39c", "b_afougf_a29"]] call _fnc_saveToTemplate;
["vehiclesPlanesAA", ["b_afougf_mig29sm", "b_afougf_l39za"]] call _fnc_saveToTemplate;
["vehiclesPlanesTransport", ["RHS_C130J"]] call _fnc_saveToTemplate;

["vehiclesHelisLight", ["b_afougf_Mi8MTV3_Evac200"]] call _fnc_saveToTemplate;
["vehiclesHelisTransport", ["b_afougf_Mi8MTV3_Cargo", "b_afougf_Mi8MTV3_UPK23", "b_afougf_Mi8MTV3_Evac", "b_afougf_Mi8MTV3_FAB"]] call _fnc_saveToTemplate;
["vehiclesHelisAttack", ["b_afougf_Mi24V_UPK23", "b_afougf_Mi24V_FAB", "b_afougf_Mi24V_AT"]] call _fnc_saveToTemplate;

["vehiclesArtillery", [
["b_afougf_yt_2s1tank", ["rhs_mag_3of56_10"]],
["b_afougf_yt_2s3",["rhs_mag_HE_2a33", "rhs_mag_WP_2a33"]],
["b_afougf_yt_RHS_BM21", ["rhs_mag_m21of_1"]]
]] call _fnc_saveToTemplate; 		//this line determines artillery vehicles -- Example: ["vehiclesArtillery", [["B_MBT_01_arty_F", ["32Rnd_155mm_Mo_shells"]]]] -- Array, can contain multiple assets

["uavsAttack", ["b_afousf_uav_bdzhmil"]] call _fnc_saveToTemplate;
["uavsPortable", ["b_afousf_uav_hrusch"]] call _fnc_saveToTemplate;

//Config special vehicles
["vehiclesMilitiaLightArmed", ["b_afougf_yt_UAZ_DShKM_Base", "b_afougf_yt_UAZ_AGS30_Base", "b_afougf_offroad_at", "b_afougf_yt_UAZ_SPG9_Base"]] call _fnc_saveToTemplate;
["vehiclesMilitiaTrucks", ["b_afougf_yt_zil131", "b_afougf_yt_Ural_Base"]] call _fnc_saveToTemplate;
["vehiclesMilitiaCars", ["b_afougf_ngu_UAZ_open_Base", "b_afougf_ngu_m1151_base"]] call _fnc_saveToTemplate;
["vehiclesMilitiaApcs", ["b_afougf_yt_bmd1"]] call _fnc_saveToTemplate;
["vehiclesMilitiaTanks", ["b_afougf_yt_t72bb", "b_afougf_yt_t80bv"]] call _fnc_saveToTemplate;

["vehiclesPolice", ["b_uapolice_van01_01", "b_uapolice_offroad_01", "b_uapolice_quadbike_01"]] call _fnc_saveToTemplate;

["staticMGs", ["b_afougf_yt_DSHKM", "RHS_M2StaticMG_D"]] call _fnc_saveToTemplate;
["staticAT", ["b_afougf_yt_SPG9", "b_afougf_yt_SPG9M", "RHS_TOW_TriPod_D"]] call _fnc_saveToTemplate;
["staticAA", ["b_afougf_yt_ZU23", "RHS_Stinger_AA_pod_D"]] call _fnc_saveToTemplate;
["staticMortars", ["b_afougf_yt_2b14_82mm"]] call _fnc_saveToTemplate;
["staticHowitzers", ["b_afougf_yt_D30"]] call _fnc_saveToTemplate;

["mortarMagazineHE", "rhs_mag_3vo18_10"] call _fnc_saveToTemplate; 			//this line determines available HE-shells for the static mortars - !needs to be comtible with the mortar! -- Example: ["mortarMagazineHE", "8Rnd_82mm_Mo_shells"] - ENTER ONLY ONE OPTION
["mortarMagazineSmoke", "rhs_mag_d832du_10"] call _fnc_saveToTemplate; 		//this line determines smoke-shells for the static mortar - !needs to be comtible with the mortar! -- Example: ["mortarMagazineSmoke", "8Rnd_82mm_Mo_Smoke_white"] - ENTER ONLY ONE OPTION

["howitzerMagazineHE", "rhs_mag_3of56_10"] call _fnc_saveToTemplate;

//Bagged weapon definitions
["baggedMGs", [["RHS_Kord_Gun_Bag", "RHS_Kord_Tripod_Bag", "RHS_M2_Gun_Bag", "RHS_M2_Tripod_Bag"]]] call _fnc_saveToTemplate; 				//this line determines bagged static MGs -- Example: ["baggedMGs", [["B_HMG_01_high_F", "B_HMG_01_support_high_F"]]] -- Array, can contain multiple assets
["baggedAT", [["RHS_Kornet_Gun_Bag", "RHS_Kornet_Tripod_Bag", "rhs_Tow_Gun_Bag", "rhs_TOW_Tripod_Bag"]]] call _fnc_saveToTemplate; 					//this line determines bagged static ATs -- Example: ["baggedAT", [["B_static_AT_F", "B_HMG_01_support_F"]]] -- Array, can contain multiple assets
["baggedAA", []] call _fnc_saveToTemplate; 					//this line determines bagged static ATs -- Example: ["baggedAT", [["B_static_AT_F", "B_HMG_01_support_F"]]] -- Array, can contain multiple assets
["baggedMortars", [["RHS_Podnos_Gun_Bag", "RHS_Podnos_Bipod_Bag"]]] call _fnc_saveToTemplate; 			//this line determines bagged static mortars -- Example: ["baggedMortars", [["B_Mortar_01_F", "B_Mortar_01_support_F"]]] -- Array, can contain multiple assets

//Minefield definition
["minefieldAT", ["rhs_mine_tm62m"]] call _fnc_saveToTemplate;
["minefieldAPERS", ["rhs_mine_pmn2"]] call _fnc_saveToTemplate;


["playerDefaultLoadout", []] call _fnc_saveToTemplate;
["pvpLoadouts", [
	//Team Leader
	["rhs_afrf_teamLeader"] call A3A_fnc_getLoadout,
	//Medic
	["rhs_afrf_medic"] call A3A_fnc_getLoadout,
	//Autorifleman
	["rhs_afrf_machineGunner"] call A3A_fnc_getLoadout,
	//Marksman
	["rhs_afrf_marksman"] call A3A_fnc_getLoadout,
	//Anti-tank Scout
	["rhs_afrf_AT"] call A3A_fnc_getLoadout,
	//AT2
	["rhs_afrf_AT2"] call A3A_fnc_getLoadout
]] call _fnc_saveToTemplate;
["pvpVehicles", ["rhs_tigr_vdv","rhs_uaz_vdv","rhsgref_ins_g_uaz_dshkm_chdkz"]] call _fnc_saveToTemplate;



//////////////////////////
//       Loadouts       //
//////////////////////////
private _hlc762Mags = [
"hlc_30Rnd_762x39_b_ak",
"hlc_45Rnd_762x39_AP_rpk",
"hlc_75Rnd_762x39_b_rpk",
"hlc_75Rnd_762x39_m_rpk",
"hlc_75Rnd_762x39_t_rpk",
"hlc_75Rnd_762x39_AP_rpk",
"hlc_30Rnd_762x39_b_ak",
"hlc_30Rnd_762x39_t_ak",
"hlc_30Rnd_762x39_m_ak",
"hlc_30rnd_762x39_s_ak",
"hlc_30Rnd_762x39_AP_ak",
"hlc_30Rnd_762x39_b_ak_6L10",
"hlc_30Rnd_762x39_m_ak_6L10",
"hlc_30Rnd_762x39_t_ak_6L10",
"hlc_30rnd_762x39_s_ak_6L10",
"hlc_30Rnd_762x39_AP_ak_6L10",
"hlc_30Rnd_762x39_b_ak_Valmet",
"hlc_30Rnd_762x39_t_ak_Valmet",
"hlc_30Rnd_762x39_m_ak_Valmet",
"hlc_30Rnd_762x39_AP_ak_Valmet",
"hlc_30rnd_762x39_s_ak_Valmet",
"hlc_30Rnd_762x39_b_ak_PMAG",
"hlc_30Rnd_762x39_t_ak_PMAG",
"hlc_30Rnd_762x39_m_ak_PMAG",
"hlc_30rnd_762x39_s_ak_PMAG",
"hlc_30Rnd_762x39_AP_ak_PMAG",
"hlc_30Rnd_762x39_b_ak_PMAGD",
"hlc_30Rnd_762x39_t_ak_PMAGD",
"hlc_30Rnd_762x39_m_ak_PMAGD",
"hlc_30Rnd_762x39_S_ak_PMAGD",
"hlc_30Rnd_762x39_AP_ak_PMAGD",
"hlc_40Rnd_762x39_b_rpk",
"hlc_45Rnd_762x39_m_rpk",
"hlc_45Rnd_762x39_t_rpk"
];
private _hlc545Mags = [
"hlc_30Rnd_545x39_B_AK",
"hlc_30Rnd_545x39_t_ak",
"hlc_30Rnd_545x39_EP_ak",
"hlc_30Rnd_545x39_S_AK",
"hlc_30Rnd_545x39_B_AK_Plum",
"hlc_30Rnd_545x39_t_ak_Plum",
"hlc_30Rnd_545x39_EP_ak_Plum",
"hlc_30Rnd_545x39_S_AK_Plum",
"hlc_30Rnd_545x39_B_AK_Black",
"hlc_30Rnd_545x39_t_ak_Black",
"hlc_30Rnd_545x39_EP_ak_Black",
"hlc_30Rnd_545x39_S_AK_Black",
"hlc_45Rnd_545x39_b_rpk",
"hlc_45Rnd_545x39_t_rpk",
"hlc_45Rnd_545x39_m_rpk",
"hlc_45Rnd_545x39_EP_rpk",
"hlc_45Rnd_545x39_b_rpkm",
"hlc_45Rnd_545x39_t_rpkm",
"hlc_45Rnd_545x39_m_rpkm",
"hlc_45Rnd_545x39_EP_rpkm",
"hlc_60Rnd_545x39_b_rpk",
"hlc_60Rnd_545x39_t_rpk",
"hlc_60Rnd_545x39_m_rpk",
"hlc_60Rnd_545x39_EP_rpk"
];

private _hlcRISOptic = [
"hlc_optic_LeupoldM3A",
"hlc_optic_PVS4base",
"hlc_optic_VOMZ",
"hlc_optic_VOMZ3d",
"hlc_optic_HensoldtZO_Hi", 
"hlc_optic_HensoldtZO_Hi_2D",
"hlc_optic_HensoldtZO_Hi_Docter",
"hlc_optic_HensoldtZO_Hi_Docter_2D",
"hlc_optic_HensoldtZO_Lo",
"hlc_optic_HensoldtZO_Lo_2D",
"hlc_optic_HensoldtZO_lo_Docter",
"hlc_optic_HensoldtZO_lo_Docter_2D",
"hlc_optic_KernBase",
"hlc_optic_ZF4xBase",
"HLC_optic_DocterR",
"hlc_optic_ZF95Base",
"hlc_optic_ATACR_Offset",
"hlc_optic_ATACR",
"HLC_optic_DocterV",
"HLC_optic_RomeoV"
];

private _hlc556Mags = [
"hlc_30rnd_556x45_EPR",
"hlc_30rnd_556x45_SOST",
"hlc_30rnd_556x45_SPR",
"hlc_30rnd_556x45_S",
"hlc_30rnd_556x45_M",
"hlc_30rnd_556x45_t",
"hlc_30rnd_556x45_MDim",
"hlc_50rnd_556x45_EPR",
"hlc_30rnd_556x45_TDim",
"hlc_50rnd_556x45_SOST",
"hlc_50rnd_556x45_SPR",
"hlc_50rnd_556x45_M",
"hlc_50rnd_556x45_MDim",
"hlc_30rnd_556x45_EPR_PMAG",
"hlc_30rnd_556x45_SOST_PMAG",
"hlc_30rnd_556x45_SPR_PMAG",
"hlc_30rnd_556x45_S_PMAG",
"hlc_30rnd_556x45_M_PMAG",
"hlc_30rnd_556x45_t_PMAG",
"hlc_30rnd_556x45_MDim_PMAG",
"hlc_30rnd_556x45_TDim_PMAG",
"hlc_30rnd_556x45_EPR_STANAGHD",
"hlc_30rnd_556x45_SOST_STANAGHD",
"hlc_30rnd_556x45_SPR_STANAGHD",
"hlc_30rnd_556x45_S_STANAGHD",
"hlc_30rnd_556x45_M_STANAGHD",
"hlc_30rnd_556x45_t_STANAGHD",
"hlc_30rnd_556x45_MDim_STANAGHD",
"hlc_30rnd_556x45_TDim_STANAGHD",
"hlc_30rnd_556x45_EPR_L5",
"hlc_30rnd_556x45_SOST_L5",
"hlc_30rnd_556x45_SPR_L5",
"hlc_30rnd_556x45_S_L5",
"hlc_30rnd_556x45_t_L5",
"hlc_30rnd_556x45_M_L5",
"hlc_30rnd_556x45_MDim_L5",
"hlc_30rnd_556x45_TDim_L5",
"hlc_30rnd_556x45_EPR_EMAG",
"hlc_30rnd_556x45_SOST_EMAG",
"hlc_30rnd_556x45_SPR_EMAG",
"hlc_30rnd_556x45_S_EMAG",
"hlc_30rnd_556x45_M_EMAG",
"hlc_30rnd_556x45_t_EMAG",
"hlc_30rnd_556x45_MDim_EMAG",
"hlc_30rnd_556x45_TDim_EMAG"
];

private _loadoutData = call _fnc_createLoadoutData;
_loadoutData setVariable ["rifles", []];
_loadoutData setVariable ["carbines", []];
_loadoutData setVariable ["grenadeLaunchers", []];
_loadoutData setVariable ["SMGs", []];
_loadoutData setVariable ["shotguns", []];
_loadoutData setVariable ["machineGuns", []];
_loadoutData setVariable ["marksmanRifles", []];
_loadoutData setVariable ["sniperRifles", []];
_loadoutData setVariable ["lightATLaunchers", []];
_loadoutData setVariable ["ATLaunchers", []];
_loadoutData setVariable ["heavyATLaunchers", []];
_loadoutData setVariable ["AALaunchers", ["rhs_weap_igla", "rhs_weap_fim92"]];
_loadoutData setVariable ["sidearms", ["rhs_weap_makarov_pm"]];

_loadoutData setVariable ["ATMines", ["rhs_mag_mine_ptm1", "rhs_mine_tm62m_mag"]]; 					//this line determines the AT mines which can be carried by units -- Example: ["ATMine_Range_Mag"] -- Array, can contain multiple assets
_loadoutData setVariable ["APMines", ["rhs_mine_ozm72_a_mag", "rhs_mine_ozm72_b_mag", "rhs_mine_ozm72_c_mag", "rhs_mag_mine_pfm1", "rhs_mine_pmn2_mag"]]; 					//this line determines the APERS mines which can be carried by units -- Example: ["APERSMine_Range_Mag"] -- Array, can contain multiple assets
_loadoutData setVariable ["lightExplosives", ["rhs_ec200_mag"]]; 			//this line determines light explosives -- Example: ["DemoCharge_Remote_Mag"] -- Array, can contain multiple assets
_loadoutData setVariable ["heavyExplosives", ["rhs_ec400_mag"]]; 			//this line determines heavy explosives -- Example: ["SatchelCharge_Remote_Mag"] -- Array, can contain multiple assets

_loadoutData setVariable ["antiInfantryGrenades", ["rhs_mag_rgn", "rhs_mag_rgo"]];
_loadoutData setVariable ["antiTankGrenades", []];
_loadoutData setVariable ["smokeGrenades", ["rhs_mag_rdg2_white", "rhs_mag_rdg2_black"]];

_loadoutData setVariable ["antiInfantryGrenades", ["rhs_mag_rgn", "rhs_mag_rgo"]]; 		//this line determines anti infantry grenades (frag and such) -- Example: ["HandGrenade", "MiniGrenade"] -- Array, can contain multiple assets
_loadoutData setVariable ["antiTankGrenades", []]; 			//this line determines anti tank grenades. Leave empty when not available. -- Array, can contain multiple assets
_loadoutData setVariable ["smokeGrenades", ["rhs_mag_rdg2_white"]];
_loadoutData setVariable ["signalsmokeGrenades", ["rhs_mag_nspd"]];


//Basic equipment. Shouldn't need touching most of the time.
//Mods might override this, or certain mods might want items removed (No GPSs in WW2, for example)
_loadoutData setVariable ["maps", ["ItemMap"]];				//this line determines map
_loadoutData setVariable ["watches", ["ItemWatch"]];		//this line determines watch
_loadoutData setVariable ["compasses", ["ItemCompass"]];	//this line determines compass
_loadoutData setVariable ["radios", ["ItemRadio"]];			//this line determines radio
_loadoutData setVariable ["gpses", ["ItemGPS"]];			//this line determines GPS
_loadoutData setVariable ["NVGs", []];						//this line determines NVGs -- Array, can contain multiple assets
_loadoutData setVariable ["binoculars", ["Binocular"]];		//this line determines the binoculars
_loadoutData setVariable ["Rangefinder", ["rhs_pdu4"]];

_loadoutData setVariable ["uniforms", []];
_loadoutData setVariable ["vests", []];
_loadoutData setVariable ["SLvests", []];
_loadoutData setVariable ["Medvests", []];
_loadoutData setVariable ["GLvests", []];
_loadoutData setVariable ["ATvests", []];
_loadoutData setVariable ["backpacks", []];
_loadoutData setVariable ["Medbackpacks", []];
_loadoutData setVariable ["Atbackpacks", []];
_loadoutData setVariable ["AAbackpacks", []];
_loadoutData setVariable ["Engbackpacks", []];
_loadoutData setVariable ["longRangeRadios", ["rhs_r148"]];
_loadoutData setVariable ["helmets", []];
_loadoutData setVariable ["goggles", []];

//Item *set* definitions. These are added in their entirety to unit loadouts. No randomisation is applied.
_loadoutData setVariable ["items_medical_basic", ["BASIC"] call A3A_fnc_itemset_medicalSupplies]; //this line defines the basic medical loadout for vanilla
_loadoutData setVariable ["items_medical_standard", ["STANDARD"] call A3A_fnc_itemset_medicalSupplies]; //this line defines the standard medical loadout for vanilla
_loadoutData setVariable ["items_medical_medic", ["MEDIC"] call A3A_fnc_itemset_medicalSupplies]; //this line defines the medic medical loadout for vanilla
_loadoutData setVariable ["items_miscEssentials", [] call A3A_fnc_itemset_miscEssentials];


_loadoutData setVariable ["items_squadleader_extras", ["ACE_microDAGR", "ACE_DAGR", "Laserbatteries", "Laserbatteries", "Laserbatteries"]];
_loadoutData setVariable ["items_rifleman_extras", []];
_loadoutData setVariable ["items_medic_extras", []];
_loadoutData setVariable ["items_grenadier_extras", []];
_loadoutData setVariable ["items_explosivesExpert_extras", ["Toolkit", "ACE_Clacker", "ACE_DefusalKit" , "MineDetector"]]; //
_loadoutData setVariable ["items_engineer_extras", ["Toolkit", "MineDetector"]]; //
_loadoutData setVariable ["items_lat_extras", []];
_loadoutData setVariable ["items_at_extras", []];
_loadoutData setVariable ["items_aa_extras", []];
_loadoutData setVariable ["items_machineGunner_extras", []];
_loadoutData setVariable ["items_marksman_extras", ["ACE_RangeCard", "ACE_ATragMX", "ACE_Kestrel4500"]];
_loadoutData setVariable ["items_sniper_extras", ["ACE_RangeCard", "ACE_ATragMX", "ACE_Kestrel4500"]];
_loadoutData setVariable ["items_police_extras", []];
_loadoutData setVariable ["items_crew_extras", []];
_loadoutData setVariable ["items_unarmed_extras", []];

//TODO - ACE overrides for misc essentials, medical and engineer gear

///////////////////////////////////////
//    Special Forces Loadout Data    //
///////////////////////////////////////

private _sfLoadoutData = _loadoutData call _fnc_copyLoadoutData;
_sfLoadoutData setVariable ["uniforms", ["rhs_uniform_FROG01_wd"]];
_sfLoadoutData setVariable ["vests", ["rhsusf_plateframe_light",
"rhsusf_plateframe_marksman",
"rhsusf_plateframe_rifleman",
"rhsusf_plateframe_machinegunner"]];
_sfLoadoutData setVariable ["SLvests", ["rhsusf_plateframe_teamleader"]];
_sfLoadoutData setVariable ["GLvests", ["rhsusf_plateframe_grenadier"]];
_sfLoadoutData setVariable ["Medvests", ["rhsusf_plateframe_medic"]];
_sfLoadoutData setVariable ["ATvests", ["rhsusf_plateframe_light"]];
_sfLoadoutData setVariable ["backpacks", ["rhsusf_assault_eagleaiii_coy","rhsusf_falconii_coy"]];
_sfLoadoutData setVariable ["Medbackpacks", ["rhsusf_assault_eagleaiii_coy"]];
_sfLoadoutData setVariable ["Atbackpacks", ["rhsusf_assault_eagleaiii_coy"]];
_sfLoadoutData setVariable ["AAbackpacks", ["rhsusf_assault_eagleaiii_coy"]];
_sfLoadoutData setVariable ["Engbackpacks", ["rhsusf_assault_eagleaiii_coy"]];
_sfLoadoutData setVariable ["helmets", ["rhsusf_opscore_paint_pelt",
"rhsusf_opscore_paint_pelt_nsw",
"rhsusf_opscore_paint_pelt_nsw_cam",
"rhsusf_opscore_paint",
"rhs_booniehat2_marpatwd",
"rhsusf_ach_helmet_camo_ocp"]]; 
_sfLoadoutData setVariable ["NVGs", ["rhsusf_ANPVS_15"]];
_sfLoadoutData setVariable ["goggles", ["rhsusf_shemagh2_tan",
"rhsusf_shemagh_tan",
"rhsusf_shemagh_gogg_tan",
"rhsusf_shemagh2_gogg_tan",
"rhsusf_oakley_goggles_blk",
"rhsusf_oakley_goggles_clr",
"rhsusf_oakley_goggles_ylw",objNull]];
_sfLoadoutData setVariable ["binoculars", ["rhsusf_bino_m24","rhsusf_bino_m24_ARD","rhsusf_bino_lerca_1200_black"]];
_sfLoadoutData setVariable ["antiInfantryGrenades", ["rhs_mag_m67", "rhs_mag_an_m14_th3", "rhs_grenade_m15_mag"]];
_sfLoadoutData setVariable ["AALaunchers", ["rhs_weap_fim92"]];

_sfLoadoutData setVariable ["lightATLaunchers", [
"rhs_weap_M136",
"rhs_weap_M136_hedp",
"rhs_weap_M136_hp"
]];
_sfLoadoutData setVariable ["heavyATLaunchers", [
["rhs_weap_maaws", "", "", "rhs_optic_maaws", ["rhs_mag_maaws_HEAT", "rhs_mag_maaws_HE", "rhs_mag_maaws_HEDP"], [], ""],
["launch_NLAW_F", "", "", "",["NLAW_F"], [], ""],
["rhs_weap_fgm148", "", "", "",["rhs_fgm148_magazine_AT"], [], ""]
]];

_sfLoadoutData setVariable ["rifles", [
["rhs_weap_hk416d145", "rhsusf_acc_nt4_black", "rhsusf_acc_anpeq15_bk", "rhsusf_acc_eotech_552", ["rhs_mag_30Rnd_556x45_Mk318_PMAG"], [], "rhsusf_acc_kac_grip"],
["rhs_weap_hk416d145", "rhsusf_acc_nt4_black", "rhsusf_acc_anpeq15_bk", "rhsusf_acc_ACOG_RMR", ["rhs_mag_30Rnd_556x45_Mk318_PMAG"], [], "rhsusf_acc_kac_grip"],
["rhs_weap_hk416d145", "rhsusf_acc_nt4_black", "rhsusf_acc_anpeq15_bk", "rhsusf_acc_su230a", ["rhs_mag_30Rnd_556x45_Mk318_PMAG"], [], "rhsusf_acc_kac_grip"],
["rhs_weap_hk416d145", "rhsusf_acc_nt4_black", "rhsusf_acc_anpeq15_bk", "rhsusf_acc_su230a_mrds", ["rhs_mag_30Rnd_556x45_Mk318_PMAG"], [], "rhsusf_acc_kac_grip"],
["rhs_weap_mk17_STD", "rhsusf_acc_aac_762sdn6_silencer", "rhsusf_acc_anpeq16a", "rhsusf_acc_eotech_552_d", ["rhs_mag_20Rnd_SCAR_762x51_m61_ap"], [], "rhsusf_acc_grip2_tan"],
["rhs_weap_mk17_STD", "rhsusf_acc_aac_762sdn6_silencer", "rhsusf_acc_anpeq16a", "rhsusf_acc_EOTECH", ["rhs_mag_20Rnd_SCAR_762x51_m61_ap"], [], "rhsusf_acc_grip2_tan"],
["rhs_weap_mk17_STD", "rhsusf_acc_aac_762sdn6_silencer", "rhsusf_acc_anpeq16a", "rhsusf_acc_compm4", ["rhs_mag_20Rnd_SCAR_762x51_m61_ap"], [], "rhsusf_acc_grip2_tan"],
["rhs_weap_mk17_STD", "rhsusf_acc_aac_762sdn6_silencer", "rhsusf_acc_anpeq16a", "rhsusf_acc_su230_c", ["rhs_mag_20Rnd_SCAR_762x51_m61_ap"], [], "rhsusf_acc_grip2_tan"],
["rhs_weap_mk17_STD", "rhsusf_acc_aac_762sdn6_silencer", "rhsusf_acc_anpeq16a", "rhsusf_acc_su230_mrds_c", ["rhs_mag_20Rnd_SCAR_762x51_m61_ap"], [], "rhsusf_acc_grip2_tan"],
["rhs_weap_mk17_STD", "rhsusf_acc_aac_762sdn6_silencer", "rhsusf_acc_anpeq16a", "rhsusf_acc_ACOG_RMR", ["rhs_mag_20Rnd_SCAR_762x51_m61_ap"], [], "rhsusf_acc_grip2_tan"],
["rhs_weap_mk17_STD", "rhsusf_acc_aac_762sdn6_silencer", "rhsusf_acc_anpeq16a", "rhsusf_acc_ACOG_d", ["rhs_mag_20Rnd_SCAR_762x51_m61_ap"], [], "rhsusf_acc_grip2_tan"]
]];

_sfLoadoutData setVariable ["carbines", [
["rhs_weap_hk416d10", "rhsusf_acc_nt4_black", "rhsusf_acc_anpeq15_bk", "rhsusf_acc_eotech_552", ["rhs_mag_30Rnd_556x45_Mk318_PMAG"], [], "rhsusf_acc_kac_grip"],
["rhs_weap_hk416d10", "rhsusf_acc_nt4_black", "rhsusf_acc_anpeq15_bk", "rhsusf_acc_EOTECH_XPS3", ["rhs_mag_30Rnd_556x45_Mk318_PMAG"], [], "rhsusf_acc_kac_grip"],
["rhs_weap_hk416d10", "rhsusf_acc_nt4_black", "rhsusf_acc_anpeq15_bk", "rhsusf_acc_compm4", ["rhs_mag_30Rnd_556x45_Mk318_PMAG"], [], "rhsusf_acc_kac_grip"],
["rhs_weap_mk17_CQC", "rhsusf_acc_aac_762sdn6_silencer", "rhsusf_acc_anpeq16a", "rhsusf_acc_eotech_552_d", ["rhs_mag_20Rnd_SCAR_762x51_m61_ap"], [], "rhsusf_acc_grip2_tan"],
["rhs_weap_mk17_CQC", "rhsusf_acc_aac_762sdn6_silencer", "rhsusf_acc_anpeq16a", "rhsusf_acc_EOTECH", ["rhs_mag_20Rnd_SCAR_762x51_m61_ap"], [], "rhsusf_acc_grip2_tan"],
["rhs_weap_mk17_CQC", "rhsusf_acc_aac_762sdn6_silencer", "rhsusf_acc_anpeq16a", "rhsusf_acc_compm4", ["rhs_mag_20Rnd_SCAR_762x51_m61_ap"], [], "rhsusf_acc_grip2_tan"]
]];

_sfLoadoutData setVariable ["grenadelaunchers", [
["rhs_weap_hk416d145_m320", "rhsusf_acc_nt4_black", "rhsusf_acc_anpeq15_bk", "rhsusf_acc_eotech_552", ["rhs_mag_30Rnd_556x45_Mk318_PMAG"], ["rhs_mag_M441_HE", "rhs_mag_M397_HET", "rhs_mag_M433_HEDP", "rhs_mag_m714_White"], ""],
["rhs_weap_hk416d145_m320", "rhsusf_acc_nt4_black", "rhsusf_acc_anpeq15_bk", "rhsusf_acc_ACOG_RMR", ["rhs_mag_30Rnd_556x45_Mk318_PMAG"], ["rhs_mag_M441_HE", "rhs_mag_M397_HET", "rhs_mag_M433_HEDP", "rhs_mag_m714_White"], ""],
["rhs_weap_hk416d145_m320", "rhsusf_acc_nt4_black", "rhsusf_acc_anpeq15_bk", "rhsusf_acc_su230a", ["rhs_mag_30Rnd_556x45_Mk318_PMAG"], ["rhs_mag_M441_HE", "rhs_mag_M397_HET", "rhs_mag_M433_HEDP", "rhs_mag_m714_White"], ""],
["rhs_weap_hk416d145_m320", "rhsusf_acc_nt4_black", "rhsusf_acc_anpeq15_bk", "rhsusf_acc_su230a_mrds", ["rhs_mag_30Rnd_556x45_Mk318_PMAG"], ["rhs_mag_M441_HE", "rhs_mag_M397_HET", "rhs_mag_M433_HEDP", "rhs_mag_m714_White"], ""],
["rhs_weap_mk18_m320", "rhsusf_acc_nt4_black", "rhsusf_acc_anpeq15_bk", "rhsusf_acc_eotech_552", ["rhs_mag_30Rnd_556x45_Mk318_PMAG"], ["rhs_mag_M441_HE", "rhs_mag_M397_HET", "rhs_mag_M433_HEDP", "rhs_mag_m714_White"], ""],
["rhs_weap_mk18_m320", "rhsusf_acc_nt4_black", "rhsusf_acc_anpeq15_bk", "rhsusf_acc_ACOG_RMR", ["rhs_mag_30Rnd_556x45_Mk318_PMAG"], ["rhs_mag_M441_HE", "rhs_mag_M397_HET", "rhs_mag_M433_HEDP", "rhs_mag_m714_White"], ""],
["rhs_weap_mk18_m320", "rhsusf_acc_nt4_black", "rhsusf_acc_anpeq15_bk", "rhsusf_acc_su230a", ["rhs_mag_30Rnd_556x45_Mk318_PMAG"], ["rhs_mag_M441_HE", "rhs_mag_M397_HET", "rhs_mag_M433_HEDP", "rhs_mag_m714_White"], ""],
["rhs_weap_mk18_m320", "rhsusf_acc_nt4_black", "rhsusf_acc_anpeq15_bk", "rhsusf_acc_su230a_mrds", ["rhs_mag_30Rnd_556x45_Mk318_PMAG"], ["rhs_mag_M441_HE", "rhs_mag_M397_HET", "rhs_mag_M433_HEDP", "rhs_mag_m714_White"], ""],
["rhs_weap_m4a1_m320", "rhsusf_acc_nt4_black", "rhsusf_acc_anpeq15_bk", "rhsusf_acc_eotech_552", ["rhs_mag_30Rnd_556x45_Mk318_PMAG"], ["rhs_mag_M441_HE", "rhs_mag_M397_HET", "rhs_mag_M433_HEDP", "rhs_mag_m714_White"], ""],
["rhs_weap_m4a1_m320", "rhsusf_acc_nt4_black", "rhsusf_acc_anpeq15_bk", "rhsusf_acc_ACOG_RMR", ["rhs_mag_30Rnd_556x45_Mk318_PMAG"], ["rhs_mag_M441_HE", "rhs_mag_M397_HET", "rhs_mag_M433_HEDP", "rhs_mag_m714_White"], ""],
["rhs_weap_m4a1_m320", "rhsusf_acc_nt4_black", "rhsusf_acc_anpeq15_bk", "rhsusf_acc_su230a", ["rhs_mag_30Rnd_556x45_Mk318_PMAG"], ["rhs_mag_M441_HE", "rhs_mag_M397_HET", "rhs_mag_M433_HEDP", "rhs_mag_m714_White"], ""],
["rhs_weap_m4a1_m320", "rhsusf_acc_nt4_black", "rhsusf_acc_anpeq15_bk", "rhsusf_acc_su230a_mrds", ["rhs_mag_30Rnd_556x45_Mk318_PMAG"], ["rhs_mag_M441_HE", "rhs_mag_M397_HET", "rhs_mag_M433_HEDP", "rhs_mag_m714_White"], ""]
]];

_sfLoadoutData setVariable ["SMGs", [
["rhsusf_weap_MP7A2", "rhsusf_acc_rotex_mp7", "rhsusf_acc_anpeq15side_bk", "rhsusf_acc_compm4", ["rhsusf_mag_40Rnd_46x30_AP"], [], "rhs_acc_grip_ffg2"],
["rhsusf_weap_MP7A2", "rhsusf_acc_rotex_mp7", "rhsusf_acc_anpeq15side_bk", "rhsusf_acc_mrds", ["rhsusf_mag_40Rnd_46x30_AP"], [], "rhs_acc_grip_ffg2"],
["rhsusf_weap_MP7A2", "rhsusf_acc_rotex_mp7", "rhsusf_acc_anpeq15side_bk", "rhsusf_acc_T1_high", ["rhsusf_mag_40Rnd_46x30_AP"], [], "rhs_acc_grip_ffg2"],
["rhsusf_weap_MP7A2", "rhsusf_acc_rotex_mp7", "rhsusf_acc_anpeq15side_bk", "rhsusf_acc_eotech_xps3", ["rhsusf_mag_40Rnd_46x30_AP"], [], "rhs_acc_grip_ffg2"],
["rhsusf_weap_MP7A2", "rhsusf_acc_rotex_mp7", "rhsusf_acc_anpeq15side_bk", "rhsusf_acc_g33_xps3", ["rhsusf_mag_40Rnd_46x30_AP"], [], "rhs_acc_grip_ffg2"],
["rhsusf_weap_MP7A2", "rhsusf_acc_rotex_mp7", "rhsusf_acc_anpeq15side_bk", "rhsusf_acc_g33_T1", ["rhsusf_mag_40Rnd_46x30_AP"], [], "rhs_acc_grip_ffg2"]
]];

_sfLoadoutData setVariable ["machineGuns", [
//["hlc_rifle_rpk", "", "", "",["hlc_45Rnd_762x39_t_rpk", "hlc_45Rnd_762x39_t_rpk", "hlc_45Rnd_762x39_m_rpk"], [], ""],
//["rhs_weap_pkm", "", "", "",["rhs_100Rnd_762x54mmR", "rhs_100Rnd_762x54mmR_green"], [], ""],
["rhs_weap_m249_light_S", "rhsusf_acc_nt4_black", "rhsusf_acc_anpeq15side_bk", "rhsusf_acc_eotech_552", ["rhsusf_100Rnd_556x45_M995_soft_pouch"], [], "rhsusf_acc_kac_grip_saw_bipod"],
["rhs_weap_m249_light_S", "rhsusf_acc_nt4_black", "rhsusf_acc_anpeq15side_bk", "rhsusf_acc_compm4", ["rhsusf_100Rnd_556x45_M995_soft_pouch"], [], "rhsusf_acc_kac_grip_saw_bipod"],
["rhs_weap_m249_light_S", "rhsusf_acc_nt4_black", "rhsusf_acc_anpeq15side_bk", "rhsusf_acc_su230", ["rhsusf_100Rnd_556x45_M995_soft_pouch"], [], "rhsusf_acc_kac_grip_saw_bipod"],
["rhs_weap_m249_light_S", "rhsusf_acc_nt4_black", "rhsusf_acc_anpeq15side_bk", "rhsusf_acc_su230_mrds", ["rhsusf_100Rnd_556x45_M995_soft_pouch"], [], "rhsusf_acc_kac_grip_saw_bipod"],
["rhs_weap_m249_light_S", "rhsusf_acc_nt4_black", "rhsusf_acc_anpeq15side_bk", "rhsusf_acc_ACOG_RMR", ["rhsusf_100Rnd_556x45_M995_soft_pouch"], [], "rhsusf_acc_kac_grip_saw_bipod"],
["rhs_weap_m249_light_L", "rhsusf_acc_nt4_black", "rhsusf_acc_anpeq15side_bk", "rhsusf_acc_eotech_552", ["rhsusf_100Rnd_556x45_M995_soft_pouch"], [], "rhsusf_acc_kac_grip_saw_bipod"],
["rhs_weap_m249_light_L", "rhsusf_acc_nt4_black", "rhsusf_acc_anpeq15side_bk", "rhsusf_acc_compm4", ["rhsusf_100Rnd_556x45_M995_soft_pouch"], [], "rhsusf_acc_kac_grip_saw_bipod"],
["rhs_weap_m249_light_L", "rhsusf_acc_nt4_black", "rhsusf_acc_anpeq15side_bk", "rhsusf_acc_su230", ["rhsusf_100Rnd_556x45_M995_soft_pouch"], [], "rhsusf_acc_kac_grip_saw_bipod"],
["rhs_weap_m249_light_L", "rhsusf_acc_nt4_black", "rhsusf_acc_anpeq15side_bk", "rhsusf_acc_su230_mrds", ["rhsusf_100Rnd_556x45_M995_soft_pouch"], [], "rhsusf_acc_kac_grip_saw_bipod"],
["rhs_weap_m249_light_L", "rhsusf_acc_nt4_black", "rhsusf_acc_anpeq15side_bk", "rhsusf_acc_ACOG_RMR", ["rhsusf_100Rnd_556x45_M995_soft_pouch"], [], "rhsusf_acc_kac_grip_saw_bipod"],
["rhs_weap_m240B", "rhsusf_acc_ARDEC_M240", "rhsusf_acc_anpeq15side_bk", "rhsusf_acc_ELCAN", ["rhsusf_100Rnd_762x51_m61_ap", "rhsusf_100Rnd_762x51_m62_tracer"], [], ""],
["rhs_weap_m240B", "rhsusf_acc_ARDEC_M240", "rhsusf_acc_anpeq15side_bk", "rhsusf_acc_ACOG_MDO", ["rhsusf_100Rnd_762x51_m61_ap", "rhsusf_100Rnd_762x51_m62_tracer"], [], ""],
["rhs_weap_m240B", "rhsusf_acc_ARDEC_M240", "rhsusf_acc_anpeq15side_bk", "rhsusf_acc_su230", ["rhsusf_100Rnd_762x51_m61_ap", "rhsusf_100Rnd_762x51_m62_tracer"], [], ""],
["rhs_weap_m240B", "rhsusf_acc_ARDEC_M240", "rhsusf_acc_anpeq15side_bk", "rhsusf_acc_su230_mrds", ["rhsusf_100Rnd_762x51_m61_ap", "rhsusf_100Rnd_762x51_m62_tracer"], [], ""],
["rhs_weap_m240B", "rhsusf_acc_ARDEC_M240", "rhsusf_acc_anpeq15side_bk", "rhsusf_acc_g33_xps3", ["rhsusf_100Rnd_762x51_m61_ap", "rhsusf_100Rnd_762x51_m62_tracer"], [], ""],
["rhs_weap_m240B", "rhsusf_acc_ARDEC_M240", "rhsusf_acc_anpeq15side_bk", "rhsusf_acc_ACOG_RMR", ["rhsusf_100Rnd_762x51_m61_ap", "rhsusf_100Rnd_762x51_m62_tracer"], [], ""]
]];

_sfLoadoutData setVariable ["marksmanRifles", [
["rhs_weap_svdp_wd", "rhs_acc_tgpv2", "", "rhs_acc_pso1m2", ["rhs_10Rnd_762x54mmR_7N14"], [], ""],
["rhs_weap_svdp_wd_npz", "rhs_acc_tgpv2", "", "rhs_acc_dh520x56", ["rhs_10Rnd_762x54mmR_7N14"], [], ""],
["rhs_weap_svdp", "rhs_acc_tgpv2", "", "rhs_acc_pso1m2", ["rhs_10Rnd_762x54mmR_7N14"], [], ""],
["rhs_weap_svdp_npz", "rhs_acc_tgpv2", "", "rhs_acc_dh520x56", ["rhs_10Rnd_762x54mmR_7N14"], [], ""],
["rhs_weap_svds", "rhs_acc_tgpv2", "", "rhs_acc_pso1m2", ["rhs_10Rnd_762x54mmR_7N14"], [], ""],
["rhs_weap_svds_npz", "rhs_acc_tgpv2", "", "rhs_acc_dh520x56", ["rhs_10Rnd_762x54mmR_7N14"], [], ""],
["rhs_weap_mk17_LB", "rhsusf_acc_aac_762sdn6_silencer", "rhsusf_acc_anpeq16a", "rhsusf_acc_M8541_d", ["rhs_mag_20Rnd_SCAR_762x51_mk316_special"], [], "rhsusf_acc_harris_bipod"],
["rhs_weap_mk17_LB", "rhsusf_acc_aac_762sdn6_silencer", "rhsusf_acc_anpeq16a", "rhsusf_acc_LEUPOLDMK4_2_d", ["rhs_mag_20Rnd_SCAR_762x51_mk316_special"], [], "rhsusf_acc_harris_bipod"],
["rhs_weap_mk17_LB", "rhsusf_acc_aac_762sdn6_silencer", "rhsusf_acc_anpeq16a", "rhsusf_acc_premier_mrds", ["rhs_mag_20Rnd_SCAR_762x51_mk316_special"], [], "rhsusf_acc_harris_bipod"],
["rhs_weap_m14ebrri", "rhsusf_acc_aac_762sdn6_silencer", "rhsusf_acc_anpeq15side_bk", "rhsusf_acc_M8541", ["rhsusf_20Rnd_762x51_m993_Mag"], [], "rhsusf_acc_harris_bipod"],
["rhs_weap_m14ebrri", "rhsusf_acc_aac_762sdn6_silencer", "rhsusf_acc_anpeq15side_bk", "rhsusf_acc_LEUPOLDMK4", ["rhsusf_20Rnd_762x51_m993_Mag"], [], "rhsusf_acc_harris_bipod"],
["rhs_weap_m14ebrri", "rhsusf_acc_aac_762sdn6_silencer", "rhsusf_acc_anpeq15side_bk", "rhsusf_acc_premier_mrds", ["rhsusf_20Rnd_762x51_m993_Mag"], [], "rhsusf_acc_harris_bipod"],
["rhs_weap_sr25_ec", "rhsusf_acc_aac_762sdn6_silencer", "rhsusf_acc_anpeq15side_bk", "rhsusf_acc_M8541", ["rhsusf_20Rnd_762x51_SR25_m993_Mag"], [], "rhsusf_acc_harris_bipod"],
["rhs_weap_sr25_ec", "rhsusf_acc_aac_762sdn6_silencer", "rhsusf_acc_anpeq15side_bk", "rhsusf_acc_LEUPOLDMK4_2", ["rhsusf_20Rnd_762x51_SR25_m993_Mag"], [], "rhsusf_acc_harris_bipod"],
["rhs_weap_sr25_ec", "rhsusf_acc_aac_762sdn6_silencer", "rhsusf_acc_anpeq15side_bk", "rhsusf_acc_premier_mrds", ["rhsusf_20Rnd_762x51_SR25_m993_Mag"], [], "rhsusf_acc_harris_bipod"],
["rhs_weap_m14_socom_rail", "rhsusf_acc_aac_762sdn6_silencer", "", "rhsusf_acc_M8541", ["rhsusf_20Rnd_762x51_m993_Mag"], [], "rhsusf_acc_harris_bipod"],
["rhs_weap_m14_socom_rail", "rhsusf_acc_aac_762sdn6_silencer", "", "rhsusf_acc_LEUPOLDMK4", ["rhsusf_20Rnd_762x51_m993_Mag"], [], "rhsusf_acc_harris_bipod"],
["rhs_weap_m14_socom_rail", "rhsusf_acc_aac_762sdn6_silencer", "", "rhsusf_acc_premier_mrds", ["rhsusf_20Rnd_762x51_m993_Mag"], [], "rhsusf_acc_harris_bipod"]
]];
_sfLoadoutData setVariable ["sniperRifles", [
["rhs_weap_XM2010_d", "rhsusf_acc_M2010S_d", "rhsusf_acc_anpeq15side_bk", "rhsusf_acc_M8541_d", [], [], "rhsusf_acc_harris_bipod"],
["rhs_weap_XM2010_d", "rhsusf_acc_M2010S_d", "rhsusf_acc_anpeq15side_bk", "rhsusf_acc_LEUPOLDMK4_2", [], [], "rhsusf_acc_harris_bipod"],
["rhs_weap_m24sws", "rhsusf_acc_m24_silencer_black", "", "rhsusf_acc_M8541", ["rhsusf_5Rnd_762x51_m993_Mag"], [], "rhsusf_acc_harris_swivel"],
["rhs_weap_m24sws", "rhsusf_acc_m24_silencer_black", "", "rhsusf_acc_premier", ["rhsusf_5Rnd_762x51_m993_Mag"], [], "rhsusf_acc_harris_swivel"],
["rhs_weap_m24sws", "rhsusf_acc_m24_silencer_black", "", "rhsusf_acc_LEUPOLDMK4", ["rhsusf_5Rnd_762x51_m993_Mag"], [], "rhsusf_acc_harris_swivel"],
["rhs_weap_m40a5", "", "rhsusf_acc_anpeq15side_bk", "rhsusf_acc_M8541", ["rhsusf_5Rnd_762x51_m993_Mag"], [], "rhsusf_acc_harris_swivel"],
["rhs_weap_m40a5", "", "rhsusf_acc_anpeq15side_bk", "rhsusf_acc_premier", ["rhsusf_5Rnd_762x51_m993_Mag"], [], "rhsusf_acc_harris_swivel"],
["rhs_weap_m40a5", "", "rhsusf_acc_anpeq15side_bk", "rhsusf_acc_LEUPOLDMK4", ["rhsusf_5Rnd_762x51_m993_Mag"], [], "rhsusf_acc_harris_swivel"],
["rhs_weap_M107", "", "", "rhsusf_acc_M8541", ["rhsusf_mag_10Rnd_STD_50BMG_M33"], [], ""],
["rhs_weap_M107", "", "", "rhsusf_acc_premier", ["rhsusf_mag_10Rnd_STD_50BMG_M33"], [], ""],
["rhs_weap_M107", "", "", "rhsusf_acc_LEUPOLDMK4_2", ["rhsusf_mag_10Rnd_STD_50BMG_M33"], [], ""],
["rhs_weap_M107", "", "", "rhsusf_acc_M8541", ["rhsusf_mag_10Rnd_STD_50BMG_mk211"], [], ""]
]];
_sfLoadoutData setVariable ["sidearms", [
["rhsusf_weap_glock17g4", "rhsusf_acc_omega9k", "acc_flashlight_pistol", "", ["rhsusf_mag_17Rnd_9x19_FMJ"], [], ""]
]];
_sfLoadoutData setVariable ["GLsidearms", [
["rhs_weap_M320", "", "", "", ["rhs_mag_M397_HET", "rhs_mag_M441_HE", "rhs_mag_M433_HEDP"], [], ""],
["rhs_weap_M320", "", "", "", ["rhs_mag_m4009", "rhs_mag_m714_White", "rhs_mag_m716_yellow"], [], ""] //Stun
]];

/////////////////////////////////
//    Military Loadout Data    //
/////////////////////////////////

private _militaryLoadoutData = _loadoutData call _fnc_copyLoadoutData;
_militaryLoadoutData setVariable ["uniforms", ["U_b_ngu_m88_green_base"]];
_militaryLoadoutData setVariable ["vests", ["vest_mbav_ngu_light", "vest_afou_otv_sand", "vest_afou_tacvest_camo1", "vest_afou_tacvest_green"]];
_militaryLoadoutData setVariable ["ATvests", ["vest_mbav_ngu_light"]];
_militaryLoadoutData setVariable ["SLvests", ["vest_mbav_ngu_light", "vest_afou_otv_sand", "vest_afou_tacvest_camo1", "vest_afou_tacvest_green"]];
_militaryLoadoutData setVariable ["GLvests", ["vest_mbav_ngu_light", "vest_afou_otv_sand", "vest_afou_tacvest_camo1", "vest_afou_tacvest_green"]];
_militaryLoadoutData setVariable ["backpacks", ["bp_afougf_assault_green","bp_ngu_eagle_green"]];
_militaryLoadoutData setVariable ["Medbackpacks", ["bp_ngu_eagle_green_medic"]];
_militaryLoadoutData setVariable ["Atbackpacks", ["bp_at_rpg7_01"]];
_militaryLoadoutData setVariable ["AAbackpacks", ["bp_afougf_assault_green","bp_ngu_eagle_green"]];
_militaryLoadoutData setVariable ["Engbackpacks", ["bp_ngu_eagle_green_eng"]];
_militaryLoadoutData setVariable ["helmets", ["h_afou_patrolcap_green_01", "H_Cap_headphones", "rhsusf_mich_bare_norotos_arc", "rhsusf_mich_bare_norotos_arc_alt", "rhsusf_mich_bare_norotos_arc_alt_headset",
"rhsusf_mich_bare_norotos_arc_headset", "H_Watchcap_camo"]];
_militaryLoadoutData setVariable ["goggles", []];
_militaryLoadoutData setVariable ["binoculars", ["Binocular"]];

_militaryLoadoutData setVariable ["lightATLaunchers", ["rhs_weap_rpg26", "rhs_weap_rshg2", "rhs_weap_rpg18"]];
_militaryLoadoutData setVariable ["heavyATLaunchers", [
["rhs_weap_rpg7", "", "", "",["rhs_rpg7_PG7VL_mag"], [], ""],
["rhs_weap_rpg7", "", "", "",["rhs_rpg7_PG7VM_mag", "rhs_rpg7_PG7VR_mag", "rhs_rpg7_PG7VL_mag"], [], ""],
["launch_NLAW_F", "", "", "",["NLAW_F"], [], ""],
["rhs_weap_fgm148", "", "", "",["rhs_fgm148_magazine_AT"], [], ""]
]];

_militaryLoadoutData setVariable ["rifles", [
["hlc_rifle_ak74", "", "", "", _hlc545Mags, [], ""],
["hlc_rifle_ak74_dirty", "", "", "", _hlc545Mags, [], ""],
["hlc_rifle_ak74_dirty2", "", "", "", _hlc545Mags, [], ""],
["hlc_rifle_akm", "", "", "", _hlc762Mags, [], ""]
]];
_militaryLoadoutData setVariable ["carbines", [
["hlc_rifle_aks74", "", "", "", _hlc545Mags, [], ""],
["hlc_rifle_aks74u", "", "", "", _hlc545Mags, [], ""]
]];
_militaryLoadoutData setVariable ["grenadeLaunchers", [
["rhs_weap_ak74n_gp25", "rhs_acc_dtk", "", "", ["rhs_30Rnd_545x39_7N6_AK", "rhs_30Rnd_545x39_7N6_AK", "rhs_30Rnd_545x39_AK_green"], ["rhs_VOG25", "rhs_VOG25", "rhs_VOG25", "rhs_VG40OP_white", "rhs_GRD40_White"], ""],
["rhs_weap_akm_gp25", "rhs_acc_dtkakm", "", "", ["rhs_30Rnd_762x39mm", "rhs_30Rnd_762x39mm", "rhs_30Rnd_762x39mm_tracer"], ["rhs_VOG25", "rhs_VOG25", "rhs_VOG25", "rhs_VG40OP_white", "rhs_GRD40_White"], ""]
]];
_militaryLoadoutData setVariable ["SMGs", []];
_militaryLoadoutData setVariable ["machineGuns", [
["hlc_rifle_rpk", "", "", "",["hlc_45Rnd_762x39_t_rpk", "hlc_45Rnd_762x39_t_rpk", "hlc_45Rnd_762x39_m_rpk"], [], ""],
["afou_weap_fort401_556x45_01", "", "acc_flashlight", (selectRandom _hlcRISOptic), ["afou_150Rnd_556x45_TR_01"], [], ""],
["rhs_weap_pkm", "", "", "",["rhs_100Rnd_762x54mmR", "rhs_100Rnd_762x54mmR_green"], [], ""]
]];
_militaryLoadoutData setVariable ["marksmanRifles", [
["rhs_weap_m14ebrri", "", "rhsusf_acc_anpeq15side_bk", "rhsusf_acc_M8541", ["rhsusf_20Rnd_762x51_m118_special_Mag", "rhsusf_20Rnd_762x51_m118_special_Mag", "rhsusf_20Rnd_762x51_m62_Mag"], [], "rhsusf_acc_harris_bipod"],
["rhs_weap_m14ebrri", "", "rhsusf_acc_anpeq15side_bk", "rhsusf_acc_LEUPOLDMK4_2", ["rhsusf_20Rnd_762x51_m118_special_Mag", "rhsusf_20Rnd_762x51_m118_special_Mag", "rhsusf_20Rnd_762x51_m62_Mag"], [], "rhsusf_acc_harris_bipod"],
["rhs_weap_m14ebrri", "", "rhsusf_acc_anpeq15side_bk", "rhsusf_acc_premier_mrds", ["rhsusf_20Rnd_762x51_m118_special_Mag", "rhsusf_20Rnd_762x51_m118_special_Mag", "rhsusf_20Rnd_762x51_m62_Mag"], [], "rhsusf_acc_harris_bipod"],
["rhs_weap_sr25_ec", "", "rhsusf_acc_anpeq15side_bk", "rhsusf_acc_M8541", ["rhsusf_20Rnd_762x51_SR25_m118_special_Mag", "rhsusf_20Rnd_762x51_SR25_m118_special_Mag", "rhsusf_20Rnd_762x51_SR25_m62_Mag"], [], "rhsusf_acc_harris_bipod"],
["rhs_weap_sr25_ec", "", "rhsusf_acc_anpeq15side_bk", "rhsusf_acc_LEUPOLDMK4_2", ["rhsusf_20Rnd_762x51_SR25_m118_special_Mag", "rhsusf_20Rnd_762x51_SR25_m118_special_Mag", "rhsusf_20Rnd_762x51_SR25_m62_Mag"], [], "rhsusf_acc_harris_bipod"],
["rhs_weap_sr25_ec", "", "rhsusf_acc_anpeq15side_bk", "rhsusf_acc_premier_mrds", ["rhsusf_20Rnd_762x51_SR25_m118_special_Mag", "rhsusf_20Rnd_762x51_SR25_m118_special_Mag", "rhsusf_20Rnd_762x51_SR25_m62_Mag"], [], "rhsusf_acc_harris_bipod"],
["rhs_weap_svdp_wd", "rhs_acc_tgpv2", "", "rhs_acc_pso1m2", ["rhs_10Rnd_762x54mmR_7N14"], [], ""],
["rhs_weap_svdp_wd_npz", "rhs_acc_tgpv2", "", "rhs_acc_dh520x56", ["rhs_10Rnd_762x54mmR_7N14"], [], ""],
["rhs_weap_svdp", "rhs_acc_tgpv2", "", "rhs_acc_pso1m2", ["rhs_10Rnd_762x54mmR_7N14"], [], ""],
["rhs_weap_svdp_npz", "rhs_acc_tgpv2", "", "rhs_acc_dh520x56", ["rhs_10Rnd_762x54mmR_7N14"], [], ""],
["rhs_weap_svds", "rhs_acc_tgpv2", "", "rhs_acc_pso1m2", ["rhs_10Rnd_762x54mmR_7N14"], [], ""],
["rhs_weap_svds_npz", "rhs_acc_tgpv2", "", "rhs_acc_dh520x56", ["rhs_10Rnd_762x54mmR_7N14"], [], ""]
]];
_militaryLoadoutData setVariable ["sniperRifles", [
["rhs_weap_m24sws", "rhsusf_acc_m24_muzzlehider_black", "", "rhsusf_acc_M8541", ["rhsusf_5Rnd_762x51_m118_special_Mag", "rhsusf_5Rnd_762x51_m118_special_Mag", "rhsusf_5Rnd_762x51_m62_Mag"], [], "rhsusf_acc_harris_swivel"],
["rhs_weap_m24sws", "rhsusf_acc_m24_muzzlehider_black", "", "rhsusf_acc_premier", ["rhsusf_5Rnd_762x51_m118_special_Mag", "rhsusf_5Rnd_762x51_m118_special_Mag", "rhsusf_5Rnd_762x51_m62_Mag"], [], "rhsusf_acc_harris_swivel"],
["rhs_weap_m24sws", "rhsusf_acc_m24_muzzlehider_black", "", "rhsusf_acc_LEUPOLDMK4", ["rhsusf_5Rnd_762x51_m118_special_Mag", "rhsusf_5Rnd_762x51_m118_special_Mag", "rhsusf_5Rnd_762x51_m62_Mag"], [], "rhsusf_acc_harris_swivel"],
["rhs_weap_m40a5", "", "rhsusf_acc_anpeq15side_bk", "rhsusf_acc_M8541", ["rhsusf_5Rnd_762x51_m118_special_Mag", "rhsusf_5Rnd_762x51_m118_special_Mag", "rhsusf_5Rnd_762x51_m62_Mag"], [], "rhsusf_acc_harris_swivel"],
["rhs_weap_m40a5", "", "rhsusf_acc_anpeq15side_bk", "rhsusf_acc_premier", ["rhsusf_5Rnd_762x51_m118_special_Mag", "rhsusf_5Rnd_762x51_m118_special_Mag", "rhsusf_5Rnd_762x51_m62_Mag"], [], "rhsusf_acc_harris_swivel"],
["rhs_weap_m40a5", "", "rhsusf_acc_anpeq15side_bk", "rhsusf_acc_LEUPOLDMK4", ["rhsusf_5Rnd_762x51_m118_special_Mag", "rhsusf_5Rnd_762x51_m118_special_Mag", "rhsusf_5Rnd_762x51_m62_Mag"], [], "rhsusf_acc_harris_swivel"]
]];

///////////////////////////////
//    Police Loadout Data    //
///////////////////////////////

private _policeLoadoutData = _loadoutData call _fnc_copyLoadoutData;
_policeLoadoutData setVariable ["uniforms", ["U_B_uapolice_m88_blue_01"]];
_policeLoadoutData setVariable ["vests", ["rhs_belt_holster"]];
_policeLoadoutData setVariable ["helmets", ["h_cap_uapolice_01"]];
_policeLoadoutData setVariable ["goggles", ["G_Aviator", "G_Squares_Tinted" ,objNull]];
_policeLoadoutData setVariable ["rifles", [
["hlc_rifle_aks74u", "", "", "", _hlc545Mags, [], ""]
]];


////////////////////////////////
//    Militia Loadout Data    //
////////////////////////////////

private _militiaLoadoutData = _loadoutData call _fnc_copyLoadoutData;
/*_militiaLoadoutData setVariable ["uniforms", ["U_B_afougf_yt_m88str_dubok01","U_B_afougf_yt_m88str_dubok02","U_B_afougf_yt_m88str_multicam_01","U_B_afougf_yt_m88str_multi_dpm01","U_B_afougf_yt_m88str_dub_dpm02","U_B_afougf_yt_m88str_dub_dpm03","U_B_afougf_yt_m88str_dub_dpm04","U_B_afougf_yt_m88str_dub_dpm05","U_B_afougf_yt_m88str_dub_dpm05","U_B_afougf_yt_m88str_dub_dpm06","U_B_afougf_yt_m88str_dpm_flec07","U_B_afougf_yt_m88str_dpm_flec08","U_B_afougf_yt_m88str_dub_flec09","U_B_afougf_yt_m88str_dub_flec10","U_B_afougf_yt_m88str_flec_11","U_B_afou_Telnik01","U_B_afou_guershirt_02","U_B_afou_guershirt_09","U_B_afou_guershirt_08"]];
_militiaLoadoutData setVariable ["vests", ["vest_afougf_6b5_klmk1","vest_afougf_6b5_klmk3","vest_afougf_6b5_green_01","vest_afougf_6b5_green_02","vest_afougf_6b5_dubok02","vest_afougf_6b5_dubok01","vest_afougf_6b5_dubok03","vest_afougf_6b5_dubok04","vest_afougf_6b5_desert02", "vest_afougf_6b5_desert01", "vest_afou_spcs_multi01", "vest_afou_spcs_multi02", "vest_afou_tacvest_green", "vest_afou_tacvest_camo1", "vest_afou_chestrig_olive", "vest_afou_otv_sand", "vest_afou_spcs_multi01", "vest_afou_spcs_multi02", "rhsusf_mbav", "rhsusf_mbav_light", "rhsusf_spcs_ucp"]];
_militiaLoadoutData setVariable ["backpacks", ["bp_yt_rifleman_01","bp_yt_rifleman_02","bp_yt_rifleman_03","bp_yt_rifleman_04","bp_yt_rifleman_05","bp_yt_rifleman_06"]];
_militiaLoadoutData setVariable ["Medbackpacks", ["bp_eagle_mm14_medic_01"]];
_militiaLoadoutData setVariable ["Atbackpacks", ["bp_at_rpg7_01"]];
_militiaLoadoutData setVariable ["AAbackpacks", ["bp_afougf_eagle_mm14"]];
_militiaLoadoutData setVariable ["Engbackpacks", ["bp_afougf_eagle_mm14_eng"]];
_militiaLoadoutData setVariable ["helmets", ["H_Booniehat_tan", 
"rhsusf_ach_bare",
"rhsusf_ach_bare_ess", 
"rhsusf_ach_bare_semi", 
"rhsusf_ach_bare_semi_ess",
"rhsusf_ach_bare_wood",
"rhsusf_ach_bare_wood_ess", 
"rhsusf_ach_helmet_DCU", 
"rhsusf_ach_helmet_DCU_early", 
"rhsusf_ach_helmet_DCU_early_rhino", 
"rhsusf_ach_helmet_M81", 
"rhsusf_ach_helmet_ocp", 
"rhsgref_helmet_pasgt_olive", 
"rhs_ssh60", 
"boonie_ua_dubok_01", 
"h_afou_ach_mm14_01", 
"h_afou_pasgt_desert_01", 
"h_afou_pasgt_mm14_worn01", "h_afougf_pasgt_zhaba_02", "h_afou_achcamo_001", "rhsusf_mich_helmet_marpatd_alt", "rhsusf_lwh_helmet_M1942", "rhsgref_helmet_pasgt_woodland", "rhsgref_helmet_pasgt_flecktarn", "rhsgref_helmet_pasgt_3color_desert"]];
_militiaLoadoutData setVariable ["goggles", []];*/
_militiaLoadoutData setVariable ["uniforms", ["commando_UAF_kit01",
"commando_UAF_kit02",
"commando_UAF_kit03",
"commando_UAF_kit04",
"commando_UAF_kit05",
"commando_UAF_kit06",
"commando_UAF_kit07",
"commando_UAF_kit08",
"commando_UAF_kit09",
"commando_UAF_kit11",
"commando_UAF_kit12",
"commando_UAF_kit13",
"commando_UAF_kit14",
"commando_UAF_kit15",
"commando_UAF_kit16",
"gear_UAF_kit01",
"gear_UAF_kit02",
"gear_UAF_kit03",
"gear_UAF_kit04",
"gear_UAF_kit05",
"gear_UAF_kit06",
"gear_UAF_kit07",
"gear_UAF_kit08",
"gear_UAF_kit09",
"gear_UAF_kit10",
"gear_UAF_kit11",
"gear_UAF_kit12",
"gear_UAF_kit13",
"gear_UAF_kit14",
"gear_UAF_kit15",
"gear_UAF_kit16",
"guerrilla_UAF_01",
"guerrilla_UAF_02",
"ghillieshirt_UAF_01",
"ghilliemando_UAF_01"]];
_militiaLoadoutData setVariable ["vests", ["gear_platecarrier_UAF_01","gear_platecarrier_UAF_02",
"gear_platecarrier_UAF_03",
"gear_platecarrier_UAF_04",
"gear_tacvest_UAF_01"]];
_militiaLoadoutData setVariable ["SLvests", ["gear_platecarrier_UAF_01",
"gear_platecarrier_UAF_02",
"gear_platecarrier_UAF_03",
"gear_platecarrier_UAF_04"]];
_militiaLoadoutData setVariable ["GLvests", ["gear_tacvest_UAF_02"]];
_militiaLoadoutData setVariable ["backpacks", ["gear_Tacticalpack_UAF_01","gear_Tacticalpack_UAF_02"]];
_militiaLoadoutData setVariable ["Medbackpacks", ["gear_Tacticalpack_UAF_01"]];
_militiaLoadoutData setVariable ["Atbackpacks", ["gear_Tacticalpack_UAF_02"]];
_militiaLoadoutData setVariable ["AAbackpacks", ["gear_Tacticalpack_UAF_02"]];
_militiaLoadoutData setVariable ["Engbackpacks", ["gear_Tacticalpack_UAF_02"]];
_militiaLoadoutData setVariable ["helmets", ["gear_patrolcap_UAF_01",
"gear_psg_UAF_01",
"gear_ECH_UAF_01",
"gear_ECH_UAF_02",
"gear_ECH_UAF_03",
"gear_ECH_UAF_04",
"gear_ach_UAF_00",
"gear_ach_UAF_01",
"gear_ballcap_UAF_01",
"gear_Boonie_UAF_01",
"gear_beanie_UAF_01",
"gear_Bandana_UAF_01"]]; 
_militiaLoadoutData setVariable ["NVGs", ["rhsusf_ANPVS_15"]];
_militiaLoadoutData setVariable ["goggles", ["gear_balaclava_UAF_01",
"gear_balaclava_UAF_02",
"gear_balaclava_UAF_03",
"gear_balaclava_UAF_04",
"gear_balaclava_UAF_05",objNull]];
_militiaLoadoutData setVariable ["binoculars", ["Binocular"]];


_militiaLoadoutData setVariable ["lightATLaunchers", ["rhs_weap_rpg26", "rhs_weap_rshg2", "rhs_weap_rpg18"]];
_militiaLoadoutData setVariable ["heavyATLaunchers", [
["rhs_weap_rpg7", "", "", "",["rhs_rpg7_PG7VL_mag"], [], ""],
["rhs_weap_rpg7", "", "", "",["rhs_rpg7_PG7VM_mag", "rhs_rpg7_PG7VR_mag", "rhs_rpg7_PG7VL_mag"], [], ""]//,
//["launch_NLAW_F", "", "", "",["NLAW_F"], [], ""],
//["rhs_weap_fgm148", "", "", "",["rhs_fgm148_magazine_AT"], [], ""]
]];

_militiaLoadoutData setVariable ["rifles", [
["hlc_rifle_ak74", "", "", "", _hlc545Mags, [], ""],
["hlc_rifle_ak74_dirty", "", "", "", _hlc545Mags, [], ""],
["hlc_rifle_ak74_dirty2", "", "", "", _hlc545Mags, [], ""],
["hlc_rifle_akm", "", "", "", _hlc762Mags, [], ""]
]];

_militiaLoadoutData setVariable ["carbines", [
["hlc_rifle_aks74u", "", "", "", _hlc545Mags, [], ""],
["hlc_rifle_aks74", "", "", "", _hlc545Mags, [], ""]
]];

_militiaLoadoutData setVariable ["grenadeLaunchers", [
["rhs_weap_ak74n_gp25", "rhs_acc_dtk", "", "", ["rhs_30Rnd_545x39_7N6_AK", "rhs_30Rnd_545x39_7N6_AK", "rhs_30Rnd_545x39_AK_green"], ["rhs_VOG25", "rhs_VOG25", "rhs_VOG25", "rhs_VG40OP_white", "rhs_GRD40_White"], ""],
["rhs_weap_akm_gp25", "rhs_acc_dtkakm", "", "", ["rhs_30Rnd_762x39mm", "rhs_30Rnd_762x39mm", "rhs_30Rnd_762x39mm_tracer"], ["rhs_VOG25", "rhs_VOG25", "rhs_VOG25", "rhs_VG40OP_white", "rhs_GRD40_White"], ""]
]];

_militiaLoadoutData setVariable ["SMGs", [
	["hlc_rifle_aks74u", "", "", "", _hlc545Mags, [], ""]
]];

_militiaLoadoutData setVariable ["machineGuns", [
["hlc_rifle_rpk", "", "", "",["hlc_45Rnd_762x39_t_rpk", "hlc_45Rnd_762x39_t_rpk", "hlc_45Rnd_762x39_m_rpk"], [], ""],
["afou_weap_fort401_556x45_01", "", "acc_flashlight", (selectRandom _hlcRISOptic), ["afou_150Rnd_556x45_TR_01"], [], ""],
["rhs_weap_pkm", "", "", "",["rhs_100Rnd_762x54mmR", "rhs_100Rnd_762x54mmR_green"], [], ""]
]];
_militiaLoadoutData setVariable ["marksmanRifles", [
["rhs_weap_svdp", "", "", "rhs_acc_pso1m2", ["rhs_10Rnd_762x54mmR_7N1"], [], ""]
]];
_militiaLoadoutData setVariable ["sniperRifles", ["rhs_weap_m38"]];

/////////////////////////////////
//    Elite Loadout Data    //
/////////////////////////////////

private _eliteLoadoutData = _loadoutData call _fnc_copyLoadoutData;
_eliteLoadoutData setVariable ["uniforms", ["U_B_afou_ubacs_mm14"]];
_eliteLoadoutData setVariable ["vests", ["rhsusf_mbav_light"]];
_eliteLoadoutData setVariable ["SLvests", ["rhsusf_mbav_light"]];
_eliteLoadoutData setVariable ["GLvests", ["rhsusf_mbav_light"]];
_eliteLoadoutData setVariable ["backpacks", ["bp_afougf_eagle_mm14"]];
_eliteLoadoutData setVariable ["Medbackpacks", ["bp_afougf_eagle_medic"]];
_eliteLoadoutData setVariable ["Engbackpacks", ["bp_afougf_eagle_mm14_eng"]];
_eliteLoadoutData setVariable ["helmets", ["h_afou_ach_mm14_01"]];
_eliteLoadoutData setVariable ["goggles", ["G_Bandanna_khk","G_Bandanna_beast","rhsusf_oakley_goggles_ylw","rhsusf_shemagh_tan","rhsusf_shemagh2_tan","rhsusf_shemagh_gogg_tan","rhsusf_shemagh2_gogg_tan"]];
_eliteLoadoutData setVariable ["binoculars", ["Laserdesignator"]];
_eliteLoadoutData setVariable ["lightATLaunchers", [
["launch_NLAW_F", "", "", "",["NLAW_F"], [], ""],
["rhs_weap_fgm148", "", "", "",["rhs_fgm148_magazine_AT"], [], ""]
]];
_eliteLoadoutData setVariable ["heavyATLaunchers", [
["launch_NLAW_F", "", "", "",["NLAW_F"], [], ""],
["rhs_weap_fgm148", "", "", "",["rhs_fgm148_magazine_AT"], [], ""]
]];

_eliteLoadoutData setVariable ["rifles", [
["hlc_rifle_416D10", "hlc_muzzle_556NATO_M42000", "acc_pointer_IR", (selectRandom _hlcRISOptic), _hlc556Mags, [], ""],
["hlc_rifle_416D10_st6", "hlc_muzzle_556NATO_M42000", "acc_pointer_IR", (selectRandom _hlcRISOptic), _hlc556Mags, [], ""],
["hlc_rifle_416D145", "hlc_muzzle_556NATO_M42000", "acc_pointer_IR", (selectRandom _hlcRISOptic), _hlc556Mags, [], ""],
["rhs_weap_hk416d145", "", "rhsusf_acc_anpeq15_bk", "rhsusf_acc_eotech_552", ["rhs_mag_30Rnd_556x45_Mk318_PMAG"], [], ""],
["rhs_weap_hk416d145", "", "rhsusf_acc_anpeq15_bk", "rhsusf_acc_ACOG_RMR", ["rhs_mag_30Rnd_556x45_Mk318_PMAG"], [], ""],
["rhs_weap_hk416d145", "", "rhsusf_acc_anpeq15_bk", "rhsusf_acc_su230a", ["rhs_mag_30Rnd_556x45_Mk318_PMAG"], [], ""],
["rhs_weap_hk416d145", "", "rhsusf_acc_anpeq15_bk", "rhsusf_acc_su230a_mrds", ["rhs_mag_30Rnd_556x45_Mk318_PMAG"], [], ""],
["rhs_weap_mk17_STD", "", "rhsusf_acc_anpeq16a", "rhsusf_acc_eotech_552_d", ["rhs_mag_20Rnd_SCAR_762x51_m61_ap"], [], ""],
["rhs_weap_mk17_STD", "", "rhsusf_acc_anpeq16a", "rhsusf_acc_EOTECH", ["rhs_mag_20Rnd_SCAR_762x51_m61_ap"], [], ""],
["rhs_weap_mk17_STD", "", "rhsusf_acc_anpeq16a", "rhsusf_acc_compm4", ["rhs_mag_20Rnd_SCAR_762x51_m61_ap"], [], ""],
["rhs_weap_mk17_STD", "", "rhsusf_acc_anpeq16a", "rhsusf_acc_su230_c", ["rhs_mag_20Rnd_SCAR_762x51_m61_ap"], [], ""],
["rhs_weap_mk17_STD", "", "rhsusf_acc_anpeq16a", "rhsusf_acc_su230_mrds_c", ["rhs_mag_20Rnd_SCAR_762x51_m61_ap"], [], ""],
["rhs_weap_mk17_STD", "", "rhsusf_acc_anpeq16a", "rhsusf_acc_ACOG_RMR", ["rhs_mag_20Rnd_SCAR_762x51_m61_ap"], [], ""],
["rhs_weap_mk17_STD", "", "rhsusf_acc_anpeq16a", "rhsusf_acc_ACOG_d", ["rhs_mag_20Rnd_SCAR_762x51_m61_ap"], [], ""],
["hlc_rifle_falosw", "", "acc_pointer_IR", (selectRandom _hlcRISOptic), ["hlc_20Rnd_762x51_B_fal", "hlc_20Rnd_762x51_mk316_fal", "hlc_20Rnd_762x51_barrier_fal", "hlc_20Rnd_762x51_T_fal", "hlc_20Rnd_762x51_TDim_fal", "hlc_20Rnd_762x51_S_fal", "hlc_50Rnd_762x51_B_fal", "hlc_50Rnd_762x51_T_fal", "hlc_50Rnd_762x51_TDim_fal", "hlc_50rnd_762x51_M_FAL", "hlc_50rnd_762x51_MDIM_FAL", "hlc_10Rnd_762x51_B_fal", "hlc_10Rnd_762x51_mk316_fal", "hlc_10Rnd_762x51_barrier_fal", "hlc_10Rnd_762x51_T_fal", "hlc_10Rnd_762x51_TDim_fal", "hlc_10Rnd_762x51_S_fal"], [], ""]
]];
_eliteLoadoutData setVariable ["carbines", [
["hlc_rifle_416D10C", "hlc_muzzle_556NATO_M42000", "acc_pointer_IR", (selectRandom _hlcRISOptic), _hlc556Mags, [], ""],
["rhs_weap_hk416d10", "", "rhsusf_acc_anpeq15_bk", "rhsusf_acc_eotech_552", ["rhs_mag_30Rnd_556x45_Mk318_PMAG"], [], ""],
["rhs_weap_hk416d10", "", "rhsusf_acc_anpeq15_bk", "rhsusf_acc_EOTECH_XPS3", ["rhs_mag_30Rnd_556x45_Mk318_PMAG"], [], ""],
["rhs_weap_hk416d10", "", "rhsusf_acc_anpeq15_bk", "rhsusf_acc_compm4", ["rhs_mag_30Rnd_556x45_Mk318_PMAG"], [], ""],
["rhs_weap_mk17_CQC", "", "rhsusf_acc_anpeq16a", "rhsusf_acc_eotech_552_d", ["rhs_mag_20Rnd_SCAR_762x51_m61_ap"], [], ""],
["rhs_weap_mk17_CQC", "", "rhsusf_acc_anpeq16a", "rhsusf_acc_EOTECH", ["rhs_mag_20Rnd_SCAR_762x51_m61_ap"], [], ""],
["rhs_weap_mk17_CQC", "", "rhsusf_acc_anpeq16a", "rhsusf_acc_compm4", ["rhs_mag_20Rnd_SCAR_762x51_m61_ap"], [], ""]
]];
_eliteLoadoutData setVariable ["grenadeLaunchers", [
["hlc_rifle_416D10_gl", "hlc_muzzle_556NATO_M42000", "acc_pointer_IR", (selectRandom _hlcRISOptic), _hlc556Mags, ["1Rnd_HE_Grenade_shell"], ""],
["hlc_rifle_416D145_gl", "hlc_muzzle_556NATO_M42000", "acc_pointer_IR", (selectRandom _hlcRISOptic), _hlc556Mags, ["1Rnd_HE_Grenade_shell"], ""],
["rhs_weap_hk416d145_m320", "", "rhsusf_acc_anpeq15_bk", "rhsusf_acc_eotech_552", ["rhs_mag_30Rnd_556x45_Mk318_PMAG"], ["rhs_mag_M441_HE", "rhs_mag_M397_HET", "rhs_mag_M433_HEDP", "rhs_mag_m714_White"], ""],
["rhs_weap_hk416d145_m320", "", "rhsusf_acc_anpeq15_bk", "rhsusf_acc_ACOG_RMR", ["rhs_mag_30Rnd_556x45_Mk318_PMAG"], ["rhs_mag_M441_HE", "rhs_mag_M397_HET", "rhs_mag_M433_HEDP", "rhs_mag_m714_White"], ""],
["rhs_weap_hk416d145_m320", "", "rhsusf_acc_anpeq15_bk", "rhsusf_acc_su230a", ["rhs_mag_30Rnd_556x45_Mk318_PMAG"], ["rhs_mag_M441_HE", "rhs_mag_M397_HET", "rhs_mag_M433_HEDP", "rhs_mag_m714_White"], ""],
["rhs_weap_hk416d145_m320", "", "rhsusf_acc_anpeq15_bk", "rhsusf_acc_su230a_mrds", ["rhs_mag_30Rnd_556x45_Mk318_PMAG"], ["rhs_mag_M441_HE", "rhs_mag_M397_HET", "rhs_mag_M433_HEDP", "rhs_mag_m714_White"], ""],
["rhs_weap_mk18_m320", "", "rhsusf_acc_anpeq15_bk", "rhsusf_acc_eotech_552", ["rhs_mag_30Rnd_556x45_Mk318_PMAG"], ["rhs_mag_M441_HE", "rhs_mag_M397_HET", "rhs_mag_M433_HEDP", "rhs_mag_m714_White"], ""],
["rhs_weap_mk18_m320", "", "rhsusf_acc_anpeq15_bk", "rhsusf_acc_ACOG_RMR", ["rhs_mag_30Rnd_556x45_Mk318_PMAG"], ["rhs_mag_M441_HE", "rhs_mag_M397_HET", "rhs_mag_M433_HEDP", "rhs_mag_m714_White"], ""],
["rhs_weap_mk18_m320", "", "rhsusf_acc_anpeq15_bk", "rhsusf_acc_su230a", ["rhs_mag_30Rnd_556x45_Mk318_PMAG"], ["rhs_mag_M441_HE", "rhs_mag_M397_HET", "rhs_mag_M433_HEDP", "rhs_mag_m714_White"], ""],
["rhs_weap_mk18_m320", "", "rhsusf_acc_anpeq15_bk", "rhsusf_acc_su230a_mrds", ["rhs_mag_30Rnd_556x45_Mk318_PMAG"], ["rhs_mag_M441_HE", "rhs_mag_M397_HET", "rhs_mag_M433_HEDP", "rhs_mag_m714_White"], ""],
["rhs_weap_m4a1_m320", "", "rhsusf_acc_anpeq15_bk", "rhsusf_acc_eotech_552", ["rhs_mag_30Rnd_556x45_Mk318_PMAG"], ["rhs_mag_M441_HE", "rhs_mag_M397_HET", "rhs_mag_M433_HEDP", "rhs_mag_m714_White"], ""],
["rhs_weap_m4a1_m320", "", "rhsusf_acc_anpeq15_bk", "rhsusf_acc_ACOG_RMR", ["rhs_mag_30Rnd_556x45_Mk318_PMAG"], ["rhs_mag_M441_HE", "rhs_mag_M397_HET", "rhs_mag_M433_HEDP", "rhs_mag_m714_White"], ""],
["rhs_weap_m4a1_m320", "", "rhsusf_acc_anpeq15_bk", "rhsusf_acc_su230a", ["rhs_mag_30Rnd_556x45_Mk318_PMAG"], ["rhs_mag_M441_HE", "rhs_mag_M397_HET", "rhs_mag_M433_HEDP", "rhs_mag_m714_White"], ""],
["rhs_weap_m4a1_m320", "", "rhsusf_acc_anpeq15_bk", "rhsusf_acc_su230a_mrds", ["rhs_mag_30Rnd_556x45_Mk318_PMAG"], ["rhs_mag_M441_HE", "rhs_mag_M397_HET", "rhs_mag_M433_HEDP", "rhs_mag_m714_White"], ""]
]];
_eliteLoadoutData setVariable ["SMGs", [""]];
_eliteLoadoutData setVariable ["machineGuns", [
["hlc_lmg_m249para", "hlc_muzzle_556NATO_KAC", "", "", ["hlc_200rnd_556x45_M_SAW", "hlc_200rnd_556x45_B_SAW", "hlc_200rnd_556x45_T_SAW", "hlc_200rnd_556x45_Mdim_SAW"], [], ""],
["hlc_m249_pip3", "hlc_muzzle_556NATO_KAC", "", (selectRandom _hlcRISOptic), ["hlc_200rnd_556x45_M_SAW", "hlc_200rnd_556x45_B_SAW", "hlc_200rnd_556x45_T_SAW", "hlc_200rnd_556x45_Mdim_SAW"], [], ""]
]];
_eliteLoadoutData setVariable ["marksmanRifles", [
["rhs_weap_m14ebrri", "", "rhsusf_acc_anpeq15side_bk", "rhsusf_acc_M8541", ["rhsusf_20Rnd_762x51_m118_special_Mag", "rhsusf_20Rnd_762x51_m118_special_Mag", "rhsusf_20Rnd_762x51_m62_Mag"], [], "rhsusf_acc_harris_bipod"],
["rhs_weap_m14ebrri", "", "rhsusf_acc_anpeq15side_bk", "rhsusf_acc_LEUPOLDMK4_2", ["rhsusf_20Rnd_762x51_m118_special_Mag", "rhsusf_20Rnd_762x51_m118_special_Mag", "rhsusf_20Rnd_762x51_m62_Mag"], [], "rhsusf_acc_harris_bipod"],
["rhs_weap_m14ebrri", "", "rhsusf_acc_anpeq15side_bk", "rhsusf_acc_premier_mrds", ["rhsusf_20Rnd_762x51_m118_special_Mag", "rhsusf_20Rnd_762x51_m118_special_Mag", "rhsusf_20Rnd_762x51_m62_Mag"], [], "rhsusf_acc_harris_bipod"],
["rhs_weap_sr25_ec", "", "rhsusf_acc_anpeq15side_bk", "rhsusf_acc_M8541", ["rhsusf_20Rnd_762x51_SR25_m118_special_Mag", "rhsusf_20Rnd_762x51_SR25_m118_special_Mag", "rhsusf_20Rnd_762x51_SR25_m62_Mag"], [], "rhsusf_acc_harris_bipod"],
["rhs_weap_sr25_ec", "", "rhsusf_acc_anpeq15side_bk", "rhsusf_acc_LEUPOLDMK4_2", ["rhsusf_20Rnd_762x51_SR25_m118_special_Mag", "rhsusf_20Rnd_762x51_SR25_m118_special_Mag", "rhsusf_20Rnd_762x51_SR25_m62_Mag"], [], "rhsusf_acc_harris_bipod"],
["rhs_weap_sr25_ec", "", "rhsusf_acc_anpeq15side_bk", "rhsusf_acc_premier_mrds", ["rhsusf_20Rnd_762x51_SR25_m118_special_Mag", "rhsusf_20Rnd_762x51_SR25_m118_special_Mag", "rhsusf_20Rnd_762x51_SR25_m62_Mag"], [], "rhsusf_acc_harris_bipod"],
["rhs_weap_svdp_wd", "rhs_acc_tgpv2", "", "rhs_acc_pso1m2", ["rhs_10Rnd_762x54mmR_7N14"], [], ""],
["rhs_weap_svdp_wd_npz", "rhs_acc_tgpv2", "", "rhs_acc_dh520x56", ["rhs_10Rnd_762x54mmR_7N14"], [], ""],
["rhs_weap_svdp", "rhs_acc_tgpv2", "", "rhs_acc_pso1m2", ["rhs_10Rnd_762x54mmR_7N14"], [], ""],
["rhs_weap_svdp_npz", "rhs_acc_tgpv2", "", "rhs_acc_dh520x56", ["rhs_10Rnd_762x54mmR_7N14"], [], ""],
["rhs_weap_svds", "rhs_acc_tgpv2", "", "rhs_acc_pso1m2", ["rhs_10Rnd_762x54mmR_7N14"], [], ""],
["rhs_weap_svds_npz", "rhs_acc_tgpv2", "", "rhs_acc_dh520x56", ["rhs_10Rnd_762x54mmR_7N14"], [], ""]
]];
_eliteLoadoutData setVariable ["sniperRifles", [
["rhs_weap_XM2010_d", "rhsusf_acc_M2010S_d", "rhsusf_acc_anpeq15side_bk", "rhsusf_acc_M8541_d", [], [], "rhsusf_acc_harris_bipod"],
["rhs_weap_XM2010_d", "rhsusf_acc_M2010S_d", "rhsusf_acc_anpeq15side_bk", "rhsusf_acc_LEUPOLDMK4_2", [], [], "rhsusf_acc_harris_bipod"],
["rhs_weap_M107", "", "", "rhsusf_acc_M8541", ["rhsusf_mag_10Rnd_STD_50BMG_M33"], [], ""],
["rhs_weap_M107", "", "", "rhsusf_acc_premier", ["rhsusf_mag_10Rnd_STD_50BMG_M33"], [], ""],
["rhs_weap_M107", "", "", "rhsusf_acc_LEUPOLDMK4_2", ["rhsusf_mag_10Rnd_STD_50BMG_M33"], [], ""],
["rhs_weap_M107", "", "", "rhsusf_acc_M8541", ["rhsusf_mag_10Rnd_STD_50BMG_mk211"], [], ""]
]];


//////////////////////////
//    Misc Loadouts     //
//////////////////////////
//The following lines are determining the loadout of the vehicle crew
private _crewLoadoutData = _militaryLoadoutData call _fnc_copyLoadoutData; // touch and shit breaks
_crewLoadoutData setVariable ["uniforms", ["U_B_afougf_yt_m88str_dubok01","U_B_afougf_yt_m88str_dubok02","U_B_afougf_yt_m88str_multicam_01","U_B_afougf_yt_m88str_multi_dpm01","U_B_afougf_yt_m88str_dub_dpm02","U_B_afougf_yt_m88str_dub_dpm03","U_B_afougf_yt_m88str_dub_dpm04","U_B_afougf_yt_m88str_dub_dpm05","U_B_afougf_yt_m88str_dub_dpm05","U_B_afougf_yt_m88str_dub_dpm06","U_B_afougf_yt_m88str_dpm_flec07","U_B_afougf_yt_m88str_dpm_flec08","U_B_afougf_yt_m88str_dub_flec09","U_B_afougf_yt_m88str_dub_flec10","U_B_afougf_yt_m88str_flec_11","U_B_afou_Telnik01","U_B_afou_guershirt_02","U_B_afou_guershirt_09","U_B_afou_guershirt_08"]];
_crewLoadoutData setVariable ["vests", ["vest_afougf_6b5_des_eod"]];
_crewLoadoutData setVariable ["helmets", ["rhs_tsh4"]];


private _pilotLoadoutData = _militaryLoadoutData call _fnc_copyLoadoutData;
_pilotLoadoutData setVariable ["uniforms", ["U_B_afou_df15_mm14"]];
_pilotLoadoutData setVariable ["vests", []];
_pilotLoadoutData setVariable ["helmets", ["rhs_zsh7a_mike_alt", "rhs_zsh7a_mike", "rhs_zsh7a_mike_green", "rhs_zsh7a_mike_green_alt"]];

private _sniperLoadoutData = _eliteLoadoutData call _fnc_copyLoadoutData; 
_sniperLoadoutData setVariable ["uniforms", ["U_B_afou_FullGhillie_sard","U_B_afou_FullGhillie_lsh"]];
_sniperLoadoutData setVariable ["vests", ["rhsusf_mbav_light"]];
_sniperLoadoutData setVariable ["helmets", ["h_afou_ach_mm14_01"]];
_sniperLoadoutData setVariable ["backpacks", ["bp_afougf_eagle_mm14"]];

private _sniper2LoadoutData = _militaryLoadoutData call _fnc_copyLoadoutData; 
_sniper2LoadoutData setVariable ["uniforms", ["U_B_afou_FullGhillie_sard","U_B_afou_FullGhillie_lsh"]];
_sniper2LoadoutData setVariable ["vests", ["rhsusf_mbav_light"]];
_sniper2LoadoutData setVariable ["helmets", ["h_afou_ach_mm14_01"]];
_sniper2LoadoutData setVariable ["backpacks", ["bp_afougf_eagle_mm14"]];



// ##################### DO NOT TOUCH ANYTHING BELOW THIS LINE #####################


/////////////////////////////////
//    Unit Type Definitions    //
/////////////////////////////////
//These define the loadouts for different unit types.
//For example, rifleman, grenadier, squad leader, etc.
//In 95% of situations, you *should not need to edit these*.
//Almost all factions can be set up just by modifying the loadout data above.
//However, these exist in case you really do want to do a lot of custom alterations.

private _squadLeaderTemplate = {
	["helmets"] call _fnc_setHelmet;
	[["SLvests", "vests"] call _fnc_fallback] call _fnc_setVest;
	["uniforms"] call _fnc_setUniform;

	["backpacks"] call _fnc_setBackpack;
	["goggles"] call _fnc_setGoogles;
	

	[selectRandom ["grenadeLaunchers", "rifles"]] call _fnc_setPrimary;
	["primary", 6] call _fnc_addMagazines;
	["primary", 4] call _fnc_addAdditionalMuzzleMagazines;

	["sidearms"] call _fnc_setHandgun;
	["handgun", 2] call _fnc_addMagazines;

	["items_medical_standard"] call _fnc_addItemSet;
	["items_squadLeader_extras"] call _fnc_addItemSet;
	["items_miscEssentials"] call _fnc_addItemSet;
	["antiInfantryGrenades", 2] call _fnc_addItem;
	//["antiTankGrenades", 1] call _fnc_addItem;
	["smokeGrenades", 2] call _fnc_addItem;
	["signalsmokeGrenades", 2] call _fnc_addItem;

	["maps"] call _fnc_addMap;
	["watches"] call _fnc_addWatch;
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
	["goggles"] call _fnc_setGoogles;


	["rifles"] call _fnc_setPrimary;
	["primary", 6] call _fnc_addMagazines;

	["sidearms"] call _fnc_setHandgun;
	["handgun", 2] call _fnc_addMagazines;

	["items_medical_standard"] call _fnc_addItemSet;
	["items_rifleman_extras"] call _fnc_addItemSet;
	["items_miscEssentials"] call _fnc_addItemSet;
	["antiInfantryGrenades", 2] call _fnc_addItem;
	//["antiTankGrenades", 1] call _fnc_addItem;
	["smokeGrenades", 2] call _fnc_addItem;

	["maps"] call _fnc_addMap;
	["watches"] call _fnc_addWatch;
	["compasses"] call _fnc_addCompass;
	["radios"] call _fnc_addRadio;
	["NVGs"] call _fnc_addNVGs;
};

private _radiomanTemplate = {
	["helmets"] call _fnc_setHelmet;
	["vests"] call _fnc_setVest;
	["uniforms"] call _fnc_setUniform;
	["longRangeRadios"] call _fnc_setBackpack;
	["goggles"] call _fnc_setGoogles;

	[selectRandom ["rifles", "carbines"]] call _fnc_setPrimary;
	["primary", 6] call _fnc_addMagazines;

	["sidearms"] call _fnc_setHandgun;
	["handgun", 2] call _fnc_addMagazines;

	["items_medical_standard"] call _fnc_addItemSet;
	["items_rifleman_extras"] call _fnc_addItemSet;
	["items_miscEssentials"] call _fnc_addItemSet;
	["antiInfantryGrenades", 2] call _fnc_addItem;
	["smokeGrenades", 2] call _fnc_addItem;

	["maps"] call _fnc_addMap;
	["watches"] call _fnc_addWatch;
	["compasses"] call _fnc_addCompass;
	["radios"] call _fnc_addRadio;
	["NVGs"] call _fnc_addNVGs;
};

private _medicTemplate = {
	["helmets"] call _fnc_setHelmet;
	[["Medvests", "vests"] call _fnc_fallback] call _fnc_setVest;
	["uniforms"] call _fnc_setUniform;
	[["Medbackpacks", "backpacks"] call _fnc_fallback] call _fnc_setBackpack;
	["goggles"] call _fnc_setGoogles;

	["carbines"] call _fnc_setPrimary;
	["primary", 6] call _fnc_addMagazines;

	["sidearms"] call _fnc_setHandgun;
	["handgun", 2] call _fnc_addMagazines;

	["items_medical_medic"] call _fnc_addItemSet;
	["items_medic_extras"] call _fnc_addItemSet;
	["items_miscEssentials"] call _fnc_addItemSet;
	["antiInfantryGrenades", 1] call _fnc_addItem;
	["smokeGrenades", 2] call _fnc_addItem;

	["maps"] call _fnc_addMap;
	["watches"] call _fnc_addWatch;
	["compasses"] call _fnc_addCompass;
	["radios"] call _fnc_addRadio;
	["NVGs"] call _fnc_addNVGs;
};

private _grenadierTemplate = {
	["helmets"] call _fnc_setHelmet;
	[["GLvests", "vests"] call _fnc_fallback] call _fnc_setVest;
	["uniforms"] call _fnc_setUniform;
	["backpacks"] call _fnc_setBackpack;
	["goggles"] call _fnc_setGoogles;

	["grenadeLaunchers"] call _fnc_setPrimary;
	["primary", 6] call _fnc_addMagazines;
	["primary", 10] call _fnc_addAdditionalMuzzleMagazines;

	["sidearms"] call _fnc_setHandgun;
	["handgun", 2] call _fnc_addMagazines;

	["items_medical_standard"] call _fnc_addItemSet;
	["items_grenadier_extras"] call _fnc_addItemSet;
	["items_miscEssentials"] call _fnc_addItemSet;
	["antiInfantryGrenades", 4] call _fnc_addItem;
	//["antiTankGrenades", 3] call _fnc_addItem;
	["smokeGrenades", 2] call _fnc_addItem;

	["maps"] call _fnc_addMap;
	["watches"] call _fnc_addWatch;
	["compasses"] call _fnc_addCompass;
	["radios"] call _fnc_addRadio;
	["NVGs"] call _fnc_addNVGs;
};

private _explosivesExpertTemplate = {
	["helmets"] call _fnc_setHelmet;
	["vests"] call _fnc_setVest;
	["uniforms"] call _fnc_setUniform;
	[["Engbackpacks", "backpacks"] call _fnc_fallback] call _fnc_setBackpack;
	["goggles"] call _fnc_setGoogles;

	["rifles"] call _fnc_setPrimary;
	["primary", 6] call _fnc_addMagazines;


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
	["compasses"] call _fnc_addCompass;
	["radios"] call _fnc_addRadio;
	["NVGs"] call _fnc_addNVGs;
};

private _engineerTemplate = {
	["helmets"] call _fnc_setHelmet;
	["vests"] call _fnc_setVest;
	["uniforms"] call _fnc_setUniform;
	[["Engbackpacks", "backpacks"] call _fnc_fallback] call _fnc_setBackpack;
	["goggles"] call _fnc_setGoogles;

	["carbines"] call _fnc_setPrimary;
	["primary", 6] call _fnc_addMagazines;

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
	["compasses"] call _fnc_addCompass;
	["radios"] call _fnc_addRadio;
	["NVGs"] call _fnc_addNVGs;
};

private _latTemplate = {
	["helmets"] call _fnc_setHelmet;
	[["ATvests", "vests"] call _fnc_fallback] call _fnc_setVest;
	["uniforms"] call _fnc_setUniform;
	[["Atbackpacks", "backpacks"] call _fnc_fallback] call _fnc_setBackpack;
	["goggles"] call _fnc_setGoogles;

	["rifles"] call _fnc_setPrimary;
	["primary", 6] call _fnc_addMagazines;

	[selectRandom ["heavyATLaunchers", "lightATLaunchers"]] call _fnc_setLauncher;
	//TODO - Add a check if it's disposable.
	["launcher", 3] call _fnc_addMagazines;

	["sidearms"] call _fnc_setHandgun;
	["handgun", 2] call _fnc_addMagazines;

	["items_medical_standard"] call _fnc_addItemSet;
	["items_lat_extras"] call _fnc_addItemSet;
	["items_miscEssentials"] call _fnc_addItemSet;
	["antiInfantryGrenades", 1] call _fnc_addItem;
	//["antiTankGrenades", 2] call _fnc_addItem;
	["smokeGrenades", 1] call _fnc_addItem;

	["maps"] call _fnc_addMap;
	["watches"] call _fnc_addWatch;
	["compasses"] call _fnc_addCompass;
	["radios"] call _fnc_addRadio;
	["NVGs"] call _fnc_addNVGs;
};

private _atTemplate = {
	["helmets"] call _fnc_setHelmet;
	[["ATvests", "vests"] call _fnc_fallback] call _fnc_setVest;
	["uniforms"] call _fnc_setUniform;
	[["Atbackpacks", "backpacks"] call _fnc_fallback] call _fnc_setBackpack;
	["goggles"] call _fnc_setGoogles;

	["rifles"] call _fnc_setPrimary;
	["primary", 6] call _fnc_addMagazines;

	["heavyATLaunchers"] call _fnc_setLauncher;
	//TODO - Add a check if it's disposable.
	["launcher", 3] call _fnc_addMagazines;

	["sidearms"] call _fnc_setHandgun;
	["handgun", 2] call _fnc_addMagazines;

	["items_medical_standard"] call _fnc_addItemSet;
	["items_at_extras"] call _fnc_addItemSet;
	["items_miscEssentials"] call _fnc_addItemSet;
	["antiInfantryGrenades", 1] call _fnc_addItem;
	//["antiTankGrenades", 2] call _fnc_addItem;
	["smokeGrenades", 1] call _fnc_addItem;

	["maps"] call _fnc_addMap;
	["watches"] call _fnc_addWatch;
	["compasses"] call _fnc_addCompass;
	["radios"] call _fnc_addRadio;
	["NVGs"] call _fnc_addNVGs;
};

private _aaTemplate = {
	["helmets"] call _fnc_setHelmet;
	["vests"] call _fnc_setVest;
	["uniforms"] call _fnc_setUniform;
	[["AAbackpacks", "backpacks"] call _fnc_fallback] call _fnc_setBackpack;
	["goggles"] call _fnc_setGoogles;

	["rifles"] call _fnc_setPrimary;
	["primary", 6] call _fnc_addMagazines;

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
	["compasses"] call _fnc_addCompass;
	["radios"] call _fnc_addRadio;
	["NVGs"] call _fnc_addNVGs;
};

private _machineGunnerTemplate = {
	["helmets"] call _fnc_setHelmet;
	["vests"] call _fnc_setVest;
	["uniforms"] call _fnc_setUniform;
	["backpacks"] call _fnc_setBackpack;
	["goggles"] call _fnc_setGoogles;

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
	["compasses"] call _fnc_addCompass;
	["radios"] call _fnc_addRadio;
	["NVGs"] call _fnc_addNVGs;
};

private _marksmanTemplate = {
	["helmets"] call _fnc_setHelmet;
	["vests"] call _fnc_setVest;
	["uniforms"] call _fnc_setUniform;


	["marksmanrifles"] call _fnc_setPrimary;
	["primary", 5] call _fnc_addMagazines;

	["sidearms"] call _fnc_setHandgun;
	["handgun", 2] call _fnc_addMagazines;

	["items_medical_standard"] call _fnc_addItemSet;
	["items_marksman_extras"] call _fnc_addItemSet;
	["items_miscEssentials"] call _fnc_addItemSet;
	["antiInfantryGrenades", 2] call _fnc_addItem;
	["smokeGrenades", 2] call _fnc_addItem;

	["maps"] call _fnc_addMap;
	["watches"] call _fnc_addWatch;
	["compasses"] call _fnc_addCompass;
	["radios"] call _fnc_addRadio;
	["Rangefinder"] call _fnc_addBinoculars;
	["NVGs"] call _fnc_addNVGs;
};

private _sniperTemplate = {
	["helmets"] call _fnc_setHelmet;
	["vests"] call _fnc_setVest;
	["uniforms"] call _fnc_setUniform;


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
	["compasses"] call _fnc_addCompass;
	["radios"] call _fnc_addRadio;
	["Rangefinder"] call _fnc_addBinoculars;
	["NVGs"] call _fnc_addNVGs;
};

private _policeTemplate = {
	["helmets"] call _fnc_setHelmet;
	["vests"] call _fnc_setVest;
	["uniforms"] call _fnc_setUniform;
	["goggles"] call _fnc_setGoogles;


	["rifles"] call _fnc_setPrimary;
	["primary", 3] call _fnc_addMagazines;

	["sidearms"] call _fnc_setHandgun;
	["handgun", 2] call _fnc_addMagazines;

	["items_medical_standard"] call _fnc_addItemSet;
	["items_police_extras"] call _fnc_addItemSet;
	["items_miscEssentials"] call _fnc_addItemSet;
	["smokeGrenades", 1] call _fnc_addItem;

	["maps"] call _fnc_addMap;
	["watches"] call _fnc_addWatch;
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
	["compasses"] call _fnc_addCompass;
	["radios"] call _fnc_addRadio;
};

private _traitorTemplate = {
	call _unarmedTemplate;
	["sidearms"] call _fnc_setHandgun;
	["handgun", 2] call _fnc_addMagazines;
};

////////////////////////////////////////////////////////////////////////////////////////
//  You shouldn't touch below this line unless you really really know what you're doing.
//  Things below here can and will break the gamemode if improperly changed.
////////////////////////////////////////////////////////////////////////////////////////

/////////////////////////////
//  Special Forces Units   //
/////////////////////////////
private _prefix = "SF";
private _unitTypes = [
	["SquadLeader", _squadLeaderTemplate],
	["Rifleman", _riflemanTemplate],
	["Radioman", _radiomanTemplate],
	["Medic", _medicTemplate, [["medic", true]]],
	["Engineer", _engineerTemplate, [["engineer", true]]],
	["ExplosivesExpert", _explosivesExpertTemplate, [["explosiveSpecialist", true]]],
	["Grenadier", _grenadierTemplate],
	["LAT", _latTemplate],
	["AT", _atTemplate],
	["AA", _aaTemplate],
	["MachineGunner", _machineGunnerTemplate],
	["Marksman", _marksmanTemplate]
	//["Sniper", _sniperTemplate]
];

[_prefix, _unitTypes, _sfLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;
["SF", [["Sniper", _sniperTemplate]], _sniperLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;

/*{
	params ["_name", "_loadoutTemplate"];
	private _loadouts = [_sfLoadoutData, _loadoutTemplate] call _fnc_buildLoadouts;
	private _finalName = _prefix + _name;
	[_finalName, _loadouts] call _fnc_saveToTemplate;
} forEach _unitTypes;
*/

///////////////////////
//  Military Units   //
///////////////////////
private _prefix = "military";
private _unitTypes = [
	["SquadLeader", _squadLeaderTemplate],
	["Rifleman", _riflemanTemplate],
	["Radioman", _radiomanTemplate],
	["Medic", _medicTemplate, [["medic", true]]],
	["Engineer", _engineerTemplate, [["engineer", true]]],
	["ExplosivesExpert", _explosivesExpertTemplate, [["explosiveSpecialist", true]]],
	["Grenadier", _grenadierTemplate],
	["LAT", _latTemplate],
	["AT", _atTemplate],
	["AA", _aaTemplate],
	["MachineGunner", _machineGunnerTemplate],
	["Marksman", _marksmanTemplate]
	//["Sniper", _sniperTemplate]
];

[_prefix, _unitTypes, _militaryLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;
["military", [["Sniper", _sniperTemplate]], _sniper2LoadoutData] call _fnc_generateAndSaveUnitsToTemplate;


////////////////////////
//    Police Units    //
////////////////////////
private _prefix = "police";
private _unitTypes = [
	["SquadLeader", _policeTemplate],
	["Standard", _policeTemplate]
];

[_prefix, _unitTypes, _policeLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;

////////////////////////
//    Militia Units porridge    //
////////////////////////
private _prefix = "militia";
private _unitTypes = [
	["SquadLeader", _squadLeaderTemplate],
	["Rifleman", _riflemanTemplate],
	["Radioman", _radiomanTemplate],
	["Medic", _medicTemplate, [["medic", true]]],
	["Engineer", _engineerTemplate, [["engineer", true]]],
	["ExplosivesExpert", _explosivesExpertTemplate, [["explosiveSpecialist", true]]],
	["Grenadier", _grenadierTemplate],
	["LAT", _latTemplate],
	["AT", _atTemplate],
	["AA", _aaTemplate],
	["MachineGunner", _machineGunnerTemplate],
	["Marksman", _marksmanTemplate],
	["Sniper", _sniperTemplate]
];

[_prefix, _unitTypes, _militiaLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;

///////////////////////
//  Elite Units   //
///////////////////////
private _prefix = "elite";
private _unitTypes = [
	["SquadLeader", _squadLeaderTemplate],
	["Rifleman", _riflemanTemplate],
	["Radioman", _radiomanTemplate],
	["Medic", _medicTemplate, [["medic", true]]],
	["Engineer", _engineerTemplate, [["engineer", true]]],
	["ExplosivesExpert", _explosivesExpertTemplate, [["explosiveSpecialist", true]]],
	["Grenadier", _grenadierTemplate],
	["LAT", _latTemplate],
	["AT", _atTemplate],
	["AA", _aaTemplate],
	["MachineGunner", _machineGunnerTemplate],
	["Marksman", _marksmanTemplate]
	//["Sniper", _sniperTemplate]
];

[_prefix, _unitTypes, _eliteLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;
["elite", [["Sniper", _sniperTemplate]], _sniperLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;

//////////////////////
//    Misc Units    //
//////////////////////


["other", [["Crew", _crewTemplate]], _crewLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;

["other", [["Pilot", _crewTemplate]], _pilotLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;

["other", [["Sniper", _sniperTemplate]], _sniperLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;

["other", [["Official", _policeTemplate]], _militaryLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;

["other", [["Traitor", _traitorTemplate]], _militaryLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;

["other", [["Unarmed", _unarmedTemplate]], _militaryLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;
