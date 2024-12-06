
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
player addWeapon "JCA_arifle_M4A4_VFG_black_F";
player addPrimaryWeaponItem "JCA_optic_ACOG_black";
player addPrimaryWeaponItem "JCA_muzzle_snds_556_advanced_black";
player addPrimaryWeaponItem "JCA_acc_LaserModule_black_Pointer";
player addPrimaryWeaponItem "JCA_30Rnd_556x45_Yellow_PMAG";
player addWeapon "launch_MRAWS_green_rail_F";
player addSecondaryWeaponItem "MRAWS_HEAT_F";
player addWeapon "JCA_hgun_P226_black_F";
player addHandgunItem "JCA_optic_MPO_black";
player addHandgunItem "JCA_15Rnd_9x21_P226_Mag";

comment "Add containers";
player forceAddUniform "u_m21_uniform_rolled_t07";
player addVest "lot_v_extd_marciras_assaulter_belt_01_tan";
player addBackpack "lot_kitbag_tan";

comment "Add binoculars";
player addWeapon "Rangefinder";

comment "Add items to containers";
for "_i" from 1 to 2 do {player addItemToUniform "ACE_IR_Strobe_Item";};
player addItemToUniform "ACE_Flashlight_XL50";
player addItemToUniform "tsp_sling";
for "_i" from 1 to 4 do {player addItemToUniform "ACE_CableTie";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_EarPlugs";};
player addItemToUniform "ACE_EntrenchingTool";
player addItemToUniform "ACE_DefusalKit";
player addItemToUniform "FISH_Cream_Kit_Europe";
player addItemToVest "lot_scrim_arid1_small";
for "_i" from 1 to 3 do {player addItemToVest "rhs_mag_m67";};
for "_i" from 1 to 2 do {player addItemToUniform "SmokeShell";};
for "_i" from 1 to 2 do {player addItemToVest "JCA_15Rnd_9x21_P226_Mag";;};
for "_i" from 1 to 18 do {player addItemToVest "JCA_30Rnd_556x45_Yellow_PMAG";};
for "_i" from 1 to 5 do {player addItemToVest "ACE_quikclot";};
for "_i" from 1 to 10 do {player addItemToVest "ACE_packingBandage";};
for "_i" from 1 to 10 do {player addItemToVest "ACE_elasticBandage";};
for "_i" from 1 to 10 do {player addItemToVest "AFMED_apap";};
for "_i" from 1 to 4 do {player addItemToVest "ACE_tourniquet";};
for "_i" from 1 to 4 do {player addItemToVest "ACE_splint";};
for "_i" from 1 to 2 do {player addItemToBackpack "MRAWS_HE_F";};
for "_i" from 1 to 4 do {player addItemToBackpack "MRAWS_HEAT_F";};
player addHeadgear "lot_mich_helmet_t07_peltor";
player addGoggles "milgp_f_face_shield_tactical_khk";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ACE_Altimeter";
player linkItem "TFAR_anprc152";
player linkItem "ItemAndroid";
player linkItem "LOT_NVG_PVS14";
