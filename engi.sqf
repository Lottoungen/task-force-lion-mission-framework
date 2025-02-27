
comment "Exported from Arsenal by 1SGT. Lotto";

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
player addWeapon "JCA_arifle_M4A4_AFG_black_F";
player addPrimaryWeaponItem "JCA_muzzle_snds_556_advanced_black";
player addPrimaryWeaponItem "JCA_acc_DualMount_black_Pointer";
player addPrimaryWeaponItem "JCA_optic_AICO_black";
player addPrimaryWeaponItem "JCA_30Rnd_556x45_Yellow_PMAG";
player addWeapon "rhs_weap_M136";
player addWeapon "JCA_hgun_P226_black_F";
player addHandgunItem "JCA_optic_MPO_black";
player addHandgunItem "JCA_15Rnd_9x21_P226_Mag";

comment "Add containers";
player forceAddUniform "lot_U_CombatUniformEURO_02_t07_F";
player addVest "Lot_AAF_CIRAS_RF3_Belt";
player addBackpack "FGN_AAF_UMTBS_Type07_Engineer";

comment "Add binoculars";
player addWeapon "Rangefinder";

comment "Add items to containers";
player addItemToVest "ACE_painkillers";
for "_i" from 1 to 4 do {player addItemToUniform "ACE_CableTie";};
player addItemToUniform "FISH_Cream_Kit_Europe";
player addItemToUniform "ACE_DefusalKit";
for "_i" from 1 to 2 do {player addItemToUniform "ACE_EarPlugs";};
player addItemToUniform "ACE_EntrenchingTool";
player addItemToUniform "ACE_Fortify";
for "_i" from 1 to 2 do {player addItemToUniform "ACE_IR_Strobe_Item";};
player addItemToUniform "ACE_M26_Clacker";
player addItemToUniform "ACE_Flashlight_XL50";
player addItemToUniform "tsp_sling";
player addItemToUniform "JCA_30Rnd_556x45_Yellow_PMAG";
player addItemToVest "lot_scrim_arid1_small";
player addItemToVest "ACE_wirecutter";
for "_i" from 1 to 4 do {player addItemToVest "ACE_tourniquet";};
for "_i" from 1 to 10 do {player addItemToVest "ACE_elasticBandage";};
for "_i" from 1 to 10 do {player addItemToVest "ACE_packingBandage";};
for "_i" from 1 to 5 do {player addItemToVest "ACE_quikclot";};
for "_i" from 1 to 4 do {player addItemToVest "ACE_splint";};
for "_i" from 1 to 16 do {player addItemToVest "JCA_30Rnd_556x45_Yellow_PMAG";};
for "_i" from 1 to 2 do {player addItemToVest "rhs_mag_m67";};
for "_i" from 1 to 2 do {player addItemToVest "SmokeShell";};
for "_i" from 1 to 3 do {player addItemToVest "JCA_15Rnd_9x21_P226_Mag";};
player addItemToBackpack "ToolKit";
for "_i" from 1 to 2 do {player addItemToBackpack "tsp_breach_package_mag";};
for "_i" from 1 to 7 do {player addItemToBackpack "tsp_breach_block_mag";};
for "_i" from 1 to 8 do {player addItemToBackpack "rhs_ec200_sand_mag";};
for "_i" from 1 to 10 do {player addItemToBackpack "tsp_flashbang_m84";};
player addHeadgear "lot_aaf_mich_bare_alt_tan";
player addGoggles "UK3CB_G_Tactical_Clear";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ACE_Altimeter";
player linkItem "TFAR_anprc152";
player linkItem "ItemAndroid";
player linkItem "LOT_NVG_PVS14";


