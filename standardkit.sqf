execVM "insignia.sqf";





comment "Exported from Arsenal by Lotto";

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
player addWeapon "LOT_SCARL";
player addPrimaryWeaponItem "Tier1_AAC_M42000_Desert";
player addPrimaryWeaponItem "rhsusf_acc_anpeq15side";
player addPrimaryWeaponItem "rhsusf_acc_su230_mrds_c";
player addPrimaryWeaponItem "rhs_mag_30Rnd_556x45_M855A1_Stanag_Pull_Tracer_Red";
player addWeapon "rhs_weap_M136";
player addWeapon "rhsusf_weap_glock17g4";
player addHandgunItem "Tier1_X300U";
player addHandgunItem "rhsusf_mag_17Rnd_9x19_JHP";

comment "Add containers";
player forceAddUniform "u_m21_uniform_t07";
player addVest "lot_v_extd_marciras_assaulter_belt_01_t07";
player addBackpack "lot_aaf_Backpack_Pocket";

comment "Add binoculars";
player addWeapon "rhssaf_zrak_rd7j";

comment "Add items to containers";
for "_i" from 1 to 2 do {player addItemToUniform "ACE_EarPlugs";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_CableTie";};
player addItemToUniform "ACE_EntrenchingTool";
player addItemToUniform "ACE_Flashlight_XL50";
for "_i" from 1 to 2 do {player addItemToUniform "ACE_IR_Strobe_Item";};
for "_i" from 1 to 4 do {player addItemToUniform "ACE_tourniquet";};
for "_i" from 1 to 10 do {player addItemToUniform "AFMED_apap";};
for "_i" from 1 to 2 do {player addItemToUniform "rhsusf_mag_17Rnd_9x19_FMJ";};
for "_i" from 1 to 10 do {player addItemToVest "ACE_fieldDressing";};
for "_i" from 1 to 10 do {player addItemToVest "ACE_elasticBandage";};
for "_i" from 1 to 10 do {player addItemToVest "ACE_packingBandage";};
for "_i" from 1 to 10 do {player addItemToVest "ACE_quikclot";};
for "_i" from 1 to 4 do {player addItemToVest "ACE_splint";};
for "_i" from 1 to 3 do {player addItemToVest "rhs_mag_mk84";};
for "_i" from 1 to 5 do {player addItemToVest "rhs_mag_m67";};
player addItemToVest "SmokeShell";
for "_i" from 1 to 8 do {player addItemToVest "rhs_mag_30Rnd_556x45_M855A1_PMAG_Tan_Tracer_Red";};
player addItemToBackpack "lot_scrim_arid2";
for "_i" from 1 to 7 do {player addItemToBackpack "rhs_mag_30Rnd_556x45_M855A1_PMAG_Tan_Tracer_Red";};
player addHeadgear "lot_aaf_rhsusf_opscore_t07_s1m";
player addGoggles "UK3CB_G_Balaclava2_DES";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ACE_Altimeter";
player linkItem "TFAR_anprc152";
player linkItem "ItemGPS";
player linkItem "rhsusf_ANPVS_14";
