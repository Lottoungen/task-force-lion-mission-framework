[
    ["UpdateDetails",briefingName],
    ["UpdateState",getText(configFile >> "CfgWorlds" >> worldName >> "description")],
    ["UpdatePartySize",count playableUnits],
    ["UpdatePartyMax",getNumber(missionConfigFile >> "Header" >> "maxPlayers")]
] call (missionNameSpace getVariable ["DiscordRichPresence_fnc_update",{}]);


//AceGrassCutter to all players
_AceGrassCut = ["grass_cut","Cut Grass","",
	{[player] call ace_common_fnc_goKneeling; [player, "AinvPknlMstpSnonWnonDnon_medic_1",1] call ace_common_fnc_doAnimation;
	[10,[],{_cutter = "Land_ClutterCutter_large_F" createVehicle [0,0,0];
	 _cutter setPos (getPos player); hint "Grass Cut"},{hint "Cutting interupted"},"Cutting Grass"] call ace_common_fnc_progressBar
	},{true}] call ace_interact_menu_fnc_createAction;

[player, 1, ["ACE_SelfActions", "ACE_Equipment"], _AceGrassCut] call ace_interact_menu_fnc_addActionToObject;

// Adds Platoon Rally Point deployment ability to all players when they become team lead.
_WplatoonRP = ["Wplatoon_rp","Deploy Platoon RP","",
	{
	_num = player nearEntities ['Man',15];
	if(leader player == player) then
		{
			if(count _num >2) then
				{
					[player] call ace_common_fnc_goKneeling; [player, "AinvPknlMstpSnonWnonDnon_medic_1",1] call ace_common_fnc_doAnimation;
					[20,[],{RP_west setVehiclePosition [(player modelToWorld[0,2,0]), [],0.5, "CAN_COLLIDE"];  hint "Rally Point Deployed";"RPMARK_1" setmarkerpos player;},{hint "Deploying interrupted"},"Deploying Rallypoint"] call ace_common_fnc_progressBar
				}
			else
				{
					hint 'Need more friendlies nearby to deploy Rally Point'
				}
		}
	else
		{
			hint 'Become the Team leader via ACE interactions and try again'
		}
	},{true}] call ace_interact_menu_fnc_createAction;

[player, 1, ["ACE_SelfActions"], _WplatoonRP] call ace_interact_menu_fnc_addActionToObject;


////////////////////////////////////////NVG SCRIPT/////////////////////////////////////////////////////////////////////////////


_condition = {
hmd player == "rhsusf_ANPVS_14";
};
_statement = {
 player unlinkItem "rhsusf_ANPVS_14"; player linkItem "rhsusf_Rhino";
};
_action = ["Dismount NVG","Dismount NVG","",_statement,_condition] call ace_interact_menu_fnc_createAction;
[(player), 1, ["ACE_SelfActions", "ACE_Equipment"], _action] call ace_interact_menu_fnc_addActionToObject;


_condition2 = {
hmd player == "rhsusf_Rhino";
};
_statement2 = {
 player unlinkItem "rhsusf_Rhino"; player linkItem "rhsusf_ANPVS_14";
};
_action2 = ["Mount NVG","Mount NVG","",_statement2,_condition2] call ace_interact_menu_fnc_createAction;
[(player), 1, ["ACE_SelfActions", "ACE_Equipment"], _action2] call ace_interact_menu_fnc_addActionToObject;

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


cutText ["","BLACK IN"];



_text = format ["<t size='1.5'>" + "Task Force Lion" + "</t>" + "<br />" + "<img size='4' image='asog.paa'/>" + "<br />" +"</t>"];  

_myname = name player;


[_text,0.01,0.01,10,-1,0,90]spawn bis_fnc_dynamicText; 

sleep 15;

[           
 [           
  ["Operation Mouse Trap","align = 'left' size = '1' ","#CAF6C9"],
  ["","<br/>"],
  ["July 18th 2024","<br/> align = 'left' size = '1' ","#CAF6C9"],
  ["","<br/>"],
  ["330 Hours","align = 'left' size = '1' ","#CAF6C9"],
  ["","<br/>"],
  ["Operator " + _myname, "align = 'left' size = '1' ","#CAF6C9"],
  ["","<br/>"],
  ["Lybor", "align = 'left' size = '1' ","#CAF6C9"],  
  ["","<br/>"]
             
 ], safeZoneX /1.2, safeZoneH / 1.5
]        
 spawn BIS_fnc_typeText2;

  

