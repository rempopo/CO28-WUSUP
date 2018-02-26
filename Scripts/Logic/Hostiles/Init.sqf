
if ((hasInterface && !isServer) || (!isNil "HC" && isServer)) exitWith {};

call compile preprocessFileLineNumbers "Logic\Hostiles\Settings.sqf";
call compile preprocessFileLineNumbers "Logic\Hostiles\Functions.sqf";

waitUntil { !isNil "dzn_faction_factionList" };
dzn_hostiles_armor 		= "par_hostileArmor" call BIS_fnc_getParamValue;
dzn_hostiles_faction 	= dzn_faction_factionList select ("par_hostileFaction" call BIS_fnc_getParamValue);

waitUntil { time > dzn_hostiles_initDelay };
waitUntil { !isNil "Task_DynaiZone_Main" && !isNil "Task_DynaiZone_Reinforcement" };

// Set Tasks areas to DynAI zones
call dzn_fnc_hostiles_addLocationsMain;
call dzn_fnc_hostiles_addLocationsReinforcement;

dzn_hostiles_LocationsSet = true;
publicVariable "dzn_hostiles_LocationsSet";

waitUntil { !isNil "dzn_dynai_initialized" && { dzn_dynai_initialized } };

// Update groups and activate Main
call dzn_fnc_hostiles_updateGroups;
Main call dzn_fnc_dynai_activateZone;

// Reinforcements
[] spawn dzn_fnc_hostiles_runReinfocementCaller;

waitUntil { !isNil "dzn_hostiles_reinforcementsCalled" };
[Reinforcement, call dzn_fnc_hostiles_getReinforcementRandomPositions] call dzn_fnc_dynai_setZoneKeypoints;

Reinforcement call dzn_fnc_dynai_activateZone;
