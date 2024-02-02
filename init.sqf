//This attaches a marker to the rally point at game start
"RPMARK_1" setmarkerpos RP_west;

//This sets the RP marker to face north (in case they get flipped around during mission making)
"RPMARK_1" setMarkerDir 000;


// DISABLES VOICE AND TEXT CHANNELS BUT ALLOWS SIDECHAT TEXT


0 enableChannel [false, false];
1 enableChannel [true, false];
2 enableChannel [false, false];
3 enableChannel [false, false];
4 enableChannel [false, false];
5 enableChannel [false, false];



sleep 10;




/* EQUIP ARMBAND FOR X FACTION ON INIT

_armbandListGreen = ["gsb_armband_nv_g", "gsb_armband_nv_g_r"];
_armbandListRed = ["gsb_armband_nv_r", "gsb_armband_nv_r_r"];
_armbandListYellow = ["gsb_armband_nv_y", "gsb_armband_nv_y_r"];
_helmetscrimListForest = ["", "", "", "", "lot_scrim_jungle1", "lot_scrim_jungle2", "lot_scrim_jungle3", "lot_scrim_jungle4", "lot_scrim_jungle5", "lot_scrim_jungle6", "lot_scrim_jungle7", "lot_scrim_woodland1", "lot_scrim_woodland2", "lot_scrim_woodland3", "lot_scrim_woodland4", "lot_scrim2_forest"];

{
if(faction _x == "ACM_B_CDF") then
{
    _x linkItem selectRandom _armbandListYellow; 
};

if(side _x == opfor) then
{
    _x linkItem selectRandom _armbandListRed; 
};

} foreach (allUnits);

// EQUIP ARMBAND FOR X FACTION SPAWNED IN ZEUS

if (hasInterface) then {
    private _zeus = (allMissionObjects "ModuleCurator_F") select 0;

	_zeus addEventHandler ["CuratorObjectPlaced", {
        params ["_curator", "_entity"];
        
        _armbandListYellow = ["gsb_armband_nv_y", "gsb_armband_nv_y_r"];
		_armbandListRed = ["gsb_armband_nv_r", "gsb_armband_nv_r_r"];
		
		if (_entity isKindOf "Man" && {(faction _entity) == "ACM_B_CDF"}) then {
            _x linkItem selectRandom _armbandListYellow;
		};
		if (_entity isKindOf "Man" && {(side _entity) == opfor}) then {
            _x linkItem selectRandom _armbandListRed;
		};
        
    }];
}; 


