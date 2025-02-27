
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
player addWeapon "JCA_arifle_M4A4_AFG_black_F";
player addPrimaryWeaponItem "JCA_optic_AICO_black";
player addPrimaryWeaponItem "JCA_muzzle_snds_556_advanced_black";
player addPrimaryWeaponItem "JCA_acc_DualMount_black_Pointer";
player addPrimaryWeaponItem "JCA_30Rnd_556x45_Yellow_PMAG";
player addWeapon "JCA_hgun_P226_black_F";
player addHandgunItem "JCA_15Rnd_9x21_P226_Mag";
player addHandgunItem "JCA_optic_MPO_black";

comment "Add containers";
player forceAddUniform "lot_U_CombatUniformNCU_01_t07_F";
player addVest "lot_v_marciras_medic_belt_t07";
player addBackpack "FGN_AAF_UMTBS_Type07_med2";

comment "Add binoculars";
player addWeapon "Rangefinder";

comment "Add items to containers";
// UNIFORM ITEMS //
for "_i" from 1 to 2 do {player addItemToUniform "ACE_painkillers";};
for "_i" from 1 to 4 do {player addItemToUniform "ACE_CableTie";};
player addItemToUniform "FISH_Cream_Kit_Europe";
player addItemToUniform "ACE_DefusalKit";
for "_i" from 1 to 2 do {player addItemToUniform "ACE_EarPlugs";};
player addItemToUniform "ACE_EntrenchingTool";
for "_i" from 1 to 2 do {player addItemToUniform "ACE_IR_Strobe_Item";};
player addItemToUniform "ACE_Flashlight_XL50";
player addItemToUniform "tsp_sling";

// VEST ITEMS //
player addItemToVest "lot_scrim_arid1_small";
for "_i" from 1 to 2 do {player addItemToVest "JCA_15Rnd_9x21_P226_Mag";};
for "_i" from 1 to 18 do {player addItemToVest "JCA_30Rnd_556x45_Yellow_PMAG";};
for "_i" from 1 to 2 do {player addItemToVest "rhs_mag_m67";};
for "_i" from 1 to 4 do {player addItemToVest "SmokeShell";};

// BACKPACK ITEMS //
for "_i" from 1 to 5 do {player addItemToBackpack "ACE_adenosine";};
for "_i" from 1 to 20 do {player addItemToBackpack "ACE_elasticBandage";};
for "_i" from 1 to 20 do {player addItemToBackpack "ACE_packingBandage";};
for "_i" from 1 to 20 do {player addItemToBackpack "ACE_quikclot";};
for "_i" from 1 to 20 do {player addItemToBackpack "ACE_salineIV_500";};
for "_i" from 1 to 10 do {player addItemToBackpack "ACE_bloodIV_250";};
for "_i" from 1 to 10 do {player addItemToBackpack "ACE_bloodIV_500";};
for "_i" from 1 to 2 do {player addItemToBackpack "ACE_bodyBag";};
player addItemToBackpack "adv_aceCPR_AED";
for "_i" from 1 to 15 do {player addItemToBackpack "ACE_epinephrine";};
for "_i" from 1 to 10 do {player addItemToBackpack "ACE_morphine";};
for "_i" from 1 to 10 do {player addItemToBackpack "ACE_splint";};
player addItemToBackpack "ACE_surgicalKit";
for "_i" from 1 to 8 do {player addItemToBackpack "ACE_tourniquet";};
player addHeadgear "lot_mich_helmet_t07_medic";
player addGoggles "lotg_medic_armband";

// LINKED ITEMS //
comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ACE_Altimeter";
player linkItem "TFAR_anprc152";
player linkItem "ItemAndroid";
player linkItem "LOT_NVG_PVS14";