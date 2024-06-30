//this addAction ["TeleportText","teleport.sqf",[objectName]];

// Get the destination.
_dest = (_this select 3) select 0;

// Get a random direction
_dir = random 359;

// Move the person about 2 meters away from the destination (in the direction of _dir)
disableUserInput true;

"moveRP" cutText ["Moving to Rallypoint...", "BLACK", 1, true];
sleep 2;
player SetPos (getPos _dest);
_rettime = 20;
while {_rettime>0} do {
	_rettime = _rettime - 1;
	titleText [str(_rettime), "PLAIN DOWN", 1];
	sleep 1;
};
titleFadeOut 1;
"moveRP" cutFadeout 4;

disableUserInput false;