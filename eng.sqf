
comment "Exported from Arsenal by CPT. Lotto";

comment "[!] UNIT MUST BE LOCAL [!]";
if (!local player) exitWith {};

comment "Remove existing items";
removeAllWeapons player;
removeAllItems player;
removeAllAssignedItems player;
removeUniform player;
removeVest player;
removeBackpack player;
removeHeadgear player;
removeGoggles player;

comment "Add weapons";
player addWeapon "ACWP_M4A5_105_troy_AFG_BLK";
player addPrimaryWeaponItem "acwp_rc1";
player addPrimaryWeaponItem "rhsusf_acc_ACOG_RMR";
player addPrimaryWeaponItem "rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red";
player addWeapon "rhs_weap_M136_hedp";
player addWeapon "rhsusf_weap_glock17g4";
player addHandgunItem "rhsusf_mag_17Rnd_9x19_FMJ";

comment "Add containers";
player forceAddUniform "u_m21_uniform_t07";
player addVest "Lot_AAF_CIRAS_RF3_Belt_Tan";
player addBackpack "FGN_AAF_UMTBS_Type07_Engineer";

comment "Add binoculars";
player addWeapon "Rangefinder";

comment "Add items to containers";
for "_i" from 1 to 2 do {player addItemToUniform "ACE_IR_Strobe_Item";};
player addItemToUniform "ACE_Flashlight_XL50";
for "_i" from 1 to 4 do {player addItemToUniform "ACE_CableTie";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_EarPlugs";};
player addItemToUniform "ACE_EntrenchingTool";
player addItemToUniform "ACE_DefusalKit";
player addItemToUniform "FISH_Cream_Kit_Europe";
player addItemToUniform "rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red";
player addItemToVest "lot_scrim_arid1_small";
for "_i" from 1 to 2 do {player addItemToVest "rhs_mag_m67";};
for "_i" from 1 to 2 do {player addItemToVest "SmokeShell";};
for "_i" from 1 to 2 do {player addItemToVest "rhsusf_mag_17Rnd_9x19_FMJ";};
for "_i" from 1 to 16 do {player addItemToVest "rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red";};
for "_i" from 1 to 5 do {player addItemToBackpack "ACE_quikclot";};
for "_i" from 1 to 10 do {player addItemToBackpack "ACE_packingBandage";};
for "_i" from 1 to 10 do {player addItemToBackpack "ACE_elasticBandage";};
for "_i" from 1 to 10 do {player addItemToBackpack "AFMED_apap";};
for "_i" from 1 to 4 do {player addItemToBackpack "ACE_tourniquet";};
for "_i" from 1 to 4 do {player addItemToBackpack "ACE_splint";};
player addItemToBackpack "ACE_wirecutter";
player addItemToBackpack "ACE_Fortify";
player addItemToBackpack "ACE_M26_Clacker";
for "_i" from 1 to 2 do {player addItemToBackpack "tsp_frameCharge_mag";};
for "_i" from 1 to 3 do {player addItemToBackpack "tsp_stickCharge_auto_mag";};
for "_i" from 1 to 5 do {player addItemToBackpack "rhs_mag_mk84";};
for "_i" from 1 to 5 do {player addItemToBackpack "rhs_ec400_sand_mag";};
for "_i" from 1 to 5 do {player addItemToBackpack "rhs_ec200_sand_mag";};
player addHeadgear "lot_aaf_rhsusf_opscore_t07_a2";
player addGoggles "milgp_f_tactical_khk";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ACE_Altimeter";
player linkItem "TFAR_anprc152";
player linkItem "ItemAndroid";
player linkItem "LOT_NVG_PVS14";


