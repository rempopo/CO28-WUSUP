dzn_tasks_taskInitDelay		= 8; //8;
dzn_tasks_taskCreateDelay		= 18; //18;

dzn_tasks_seizeTime			= "par_capturetimer" call BIS_fnc_getParamValue;
dzn_tasks_alliedVehicleCount	= "par_playerVehiclesCount" call BIS_fnc_getParamValue;

dzn_tasks_TaskTitle			= "Capture and Hold";
dzn_tasks_TaskDesc			= format ["Capture marked and area and hold it for %1 seconds.", dzn_tasks_seizeTime];
