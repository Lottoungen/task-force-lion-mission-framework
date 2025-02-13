//ARCHER PLAYERUIDS
archerPlayers = ["76561198012295174", "76561198028915413"];
//                  Lotto                       Martin

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




 //EQUIP ARMBAND FOR X FACTION ON INIT

/*
_armbandListRed = ["G_Armband_NVG_red_F", "G_Headband_NVG_red_F"];


{
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
        
		_armbandListRed = ["G_Armband_NVG_red_F", "G_Headband_NVG_red_F"];
		
		if (_entity isKindOf "Man" && {(side _entity) == opfor}) then {
            _entity linkItem selectRandom _armbandListRed;
		};
        
    }];
}; 



/*

if (isNil "AceCaptiveEH") then {
    AceCaptiveEH = ["ace_captiveStatusChanged",
    {
        params ["_unit", "_state"];
        if (_state && {
            local _unit
        })
        then {
            _unit addGoggles "G_Blindfold_01_black_F";
        };
    }] call CBA_fnc_addEventHandler;
};

