params ["_isServerExec"];

call compile preprocessFileLineNumbers "Logic\Tasks\Settings.sqf";
call compile preprocessFileLineNumbers "Logic\Tasks\Functions.sqf";

waitUntil { !isNil "dzn_faction_vehicles" && !isNil "dzn_roles_faction" };
dzn_tasks_alliedVehicleClasses = ([dzn_faction_vehicles, dzn_roles_faction] call dzn_fnc_getValueByKey) select (("par_playerVehicles" call BIS_fnc_getParamValue) - 1);
dzn_tasks_seizeTime = "par_capturetimer" call BIS_fnc_getParamValue;
dzn_tasks_alliedVehicleCount = "par_playerVehiclesCount" call BIS_fnc_getParamValue;

if (hasInterface) then {
	[] spawn {
		waitUntil {!isNull player && {player getVariable ["dzn_roles_assigned", false]}};
		waitUntil {!isNil "Task_StartPos"};		
		
		[] spawn dzn_fnc_tasks_client_movePlayerToStartPos;
	};
};

if !( (isServer || isDedicated) && _isServerExec ) exitWith {};

waitUntil { time > dzn_tasks_taskInitDelay };
Task = call dzn_fnc_tasks_getRandomTask;
Task spawn dzn_fnc_tasks_activateTask;
