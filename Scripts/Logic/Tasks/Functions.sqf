#define	CSELECT(X,Y)	([X, Y] call BIS_fnc_conditionalSelect) select 0
dzn_fnc_tasks_getRandomTask = {
	selectRandom (synchronizedObjects tasksCore)
};

dzn_fnc_tasks_activateTask = {
	private _syncObjs = synchronizedObjects _this;

	/*
		Start position
	*/
	private _startPosCore = CSELECT(_syncObjs, { typeof _x == "LocationArea_F" });
	private _startPos = selectRandom ( 
		[
			synchronizedObjects _startPosCore
			, { typeof _x == "LocationArea_F" }
		] call BIS_fnc_conditionalSelect
	);
	Task_StartPos = getPosASL _startPos;

	/*
		Seize Area
	*/
	Task_SeizeArea = CSELECT(_syncObjs, { _x isKindOf "EmptyDetector" });

	/* 
		Dynai Zones
	*/
	private _dynaiZonesCore = CSELECT(_syncObjs, { typeof _x == "LocationCamp_F" });
	Task_DynaiZone_Main = CSELECT(synchronizedObjects _dynaiZonesCore, { typeof _x == "LocationBase_F" });
	Task_DynaiZone_Reinforcement = CSELECT(synchronizedObjects _dynaiZonesCore, { typeof _x == "LocationOutpost_F" });
	
	/*
		Vehicles for players
	*/	
	[getPos _startPos, getDir _startPos, dzn_tasks_alliedVehicleCount] spawn {
		waitUntil {!isNil "dzn_roles_faction"};
		_this call dzn_fnc_tasks_setVehiclesInArea;
	};
	
	/*
		Publish
	*/
	
	waitUntil { time > dzn_tasks_taskCreateDelay };
	call dzn_fnc_tasks_createSimpleTask;	
	call dzn_fnc_tasks_runSeizeAreaHandler;
	
	publicVariable "Task_StartPos";
	publicVariable "Task_SeizeArea";
	publicVariable "Task_DynaiZone_Main";
	publicVariable "Task_DynaiZone_Reinforcement";	
};

dzn_fnc_tasks_createSimpleTask = {	
	// Set marker
	"mrk_task" setMarkerPos (getPosASL Task_SeizeArea);
	"mrk_task" setMarkerAlpha 1;

	// Create BIS simple task
	[
		west
		, ["task_1"]
		, [dzn_tasks_TaskDesc, dzn_tasks_TaskTitle, "mrk_task"]
		, objNull
		, 1
		, 8
		,true
		, ""
		, true
	] call BIS_fnc_taskCreate;
};

dzn_fnc_tasks_runSeizeAreaHandler = {	
	while { true } do {
		sleep 1;
		
		// If no players in area or there are enemy troops in the area -- nil the counter
		if (
			!([Task_SeizeArea, "bool"] call dzn_fnc_isPlayerInArea)
			|| { { (side _x == east) && {_x inArea Task_SeizeArea} } count allUnits > 0 }
		) then { 
			Task_SeizeArea_Counter = nil; 
			publicVariable "Task_SeizeArea_Counter";
		} else {
	
		// If players persist -- add +1 sec to counter
		Task_SeizeArea_Counter = if (isNil "Task_SeizeArea_Counter") then { 0 } else { Task_SeizeArea_Counter + 1 };
		publicVariable "Task_SeizeArea_Counter";
		
			// If counter ends -- Done this stuff
			if (!isNil "Task_SeizeArea_Counter" && { Task_SeizeArea_Counter > dzn_tasks_seizeTime }) exitWith {
				Task_SeizeArea_Done = true;
				publicVariable "Task_SeizeArea_Done";
			};	
		};
	};
};

dzn_fnc_tasks_client_movePlayerToStartPos = {	
	"mrk_start" setMarkerPos Task_StartPos;
	"mrk_start" setMarkerAlpha 1;
	
	player allowDamage false;	
	player setPosATL [
		Task_StartPos select 0
		, Task_StartPos select 1
		, 0
	];
	sleep 2;
	player allowDamage true;
	if (!isNil "ace_medical_fnc_treatmentAdvanced_fullHealLocal") then {
		[player,player] call ace_medical_fnc_treatmentAdvanced_fullHealLocal;
	};
};

dzn_fnc_tasks_setVehiclesInArea = {
	if (("par_playerVehicles" call BIS_fnc_getParamValue) == 0) exitWith {};
	
	params["_pos", "_dir", "_count"];
	
	private _classes = dzn_tasks_alliedVehicleClasses call BIS_fnc_arrayShuffle;
	
	private _classPool = [];	
	while { count _classPool < _count } do {
		_classPool = _classPool + _classes;
	};
	
	for "_i" from 1 to _count do {
		_pos = _pos getPos [20, _dir];
		
		_veh = [ 
			[_pos, _dir]
			, _classPool select (_i - 1)
			, "kit_vehicle"
		] call dzn_fnc_createVehicle;
	};
};