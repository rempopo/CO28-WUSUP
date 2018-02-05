collect3DENHistory {
	private _basicPos = screenToWorld [0.5, 0.5];
	private _taskCore = ((all3DENEntities select 3) select { ((_x get3DENAttribute "name") select 0) == "tasksCore" }) select 0;
	
	private _tskAsset = create3DENEntity ["Logic","LocationResupplyPoint_F", _basicPos getPos [15, 45]];
	add3DENConnection ["Sync", [_tskAsset], _taskCore];
	
	private _dynaiCoreAsset = create3DENEntity ["Logic","LocationCamp_F", _basicPos getPos [35, 45]];
	add3DENConnection ["Sync", [_dynaiCoreAsset], _tskAsset];
	
	// Main
	private _mainAsset = create3DENEntity ["Logic","LocationBase_F", _basicPos getPos [55, 45]];
	_mainAsset set3DENAttribute ["name", format["Main_%1%2%3%4%5%6", round(random 9), round(random 9), round(random 9), round(random 9), round(random 9), round(random 9)]];
	
	private _mainArea = create3DENEntity ["Trigger","EmptyDetectorAreaR250", _basicPos getPos [35, 90]];
	add3DENConnection ["Sync", [_mainAsset], _dynaiCoreAsset];
	add3DENConnection ["Sync", [_mainArea], _mainAsset];
	
	// Reinforcement
	private _reinfAsset = create3DENEntity ["Logic","LocationOutpost_F", _basicPos getPos [35, -45]];
	_reinfAsset set3DENAttribute ["name", format["Reinf_%1%2%3%4%5%6", round(random 9), round(random 9), round(random 9), round(random 9), round(random 9), round(random 9)]];
	private _reinfArea = create3DENEntity ["Trigger","EmptyDetectorAreaR250", _basicPos getPos [35, -90]];
	add3DENConnection ["Sync", [_reinfAsset], _dynaiCoreAsset];
	add3DENConnection ["Sync", [_reinfArea], _reinfAsset];
	
	// Deployment points
	private _deployCore = create3DENEntity ["Logic","LocationArea_F", _basicPos getPos [50, 135]];
	_deployCore set3DENAttribute ["name", format["Deployement_%1%2%3%4%5%6", round(random 9), round(random 9), round(random 9), round(random 9), round(random 9), round(random 9)]];
	add3DENConnection ["Sync", [_deployCore], _tskAsset];
	
	private _deployPoints = [];
	for "_i" from 1 to 3 do {
		_deployPoints pushBack (create3DENEntity ["Logic","LocationArea_F", _basicPos getPos [50, 135 + 5*_i]]);
	};
	add3DENConnection ["Sync", _deployPoints, _deployCore];
	
	private _trgArea = create3DENEntity ["Trigger","EmptyDetectorAreaR250", _basicPos getPos [35, 180]];
	_trgArea set3DENAttribute ["IsRectangle", true];
	_trgArea set3DENAttribute ["size3", [15,15,15]];
	add3DENConnection ["Sync", [_trgArea], _tskAsset];
};
