// Addds WUSUP core assets

collect3DENHistory {
	private _basicPos = screenToWorld [0.5, 0.5];
	
	// Units - Regulaes
	private _regulars = [];
	private _regularsLogic = create3DENEntity ["Logic","Logic", _basicPos getPos [15, 45]];
	_regularsLogic set3DENAttribute ["name", "RegularLogic"];
	for "_i" from 1 to 23 do {
		_regulars pushBack ( create3DENEntity ["Object", "B_Soldier_unarmed_F", _basicPos getPos [10 + 3*_i, 90]] );
	};
	add3DENConnection ["Sync", _regulars, _regularsLogic];
	
	// Units - Newbies
	private _pos = _basicPos getPos [20, -90];
	private _newbies = [];
	private _newbiesLogic = create3DENEntity ["Logic","Logic", _pos getPos [15, -45]];
	_newbiesLogic set3DENAttribute ["name", "NewbiesLogic"];
	for "_i" from 1 to 5 do {
		_newbies pushBack ( create3DENEntity ["Object", "B_Soldier_unarmed_F", _pos getPos [3*_i, -90]] );
	};
	add3DENConnection ["Sync", _newbies, _newbiesLogic];
	
	set3DENAttributes [
		[(_newbies), 			"description", 	"Newbie"]
		,[(_regulars),		"description", 	"Regular"]
		,[(_newbies + _regulars), 	"ControlMP",	 	true]
	];
	
	// Zeus
	private _zeus = create3DENEntity ["Logic","ModuleCurator_F",screenToWorld [0.3,0.3]];	
	_zeus set3DENAttribute ["Init", "this setVariable ['addons',3,true];this setVariable ['owner','#adminLogged',true];"	];

	// Headless
	private _headless = create3DENEntity ["Logic","HeadlessClient_F",screenToWorld [0.7,0.7]];
	_headless set3DENAttribute ["name", "HC"];
	_headless set3DENAttribute ["ControlMP", true];
	
	// Virtual Spectator
	private _spectators = [];
	_pos = screenToWorld [0.3,0.35];
	for "_i" from 1 to 4 do {
		_spectators pushBack (  create3DENEntity ["Logic","VirtualSpectator_F", _pos getPos [3*_i, 90]] );
	};
	set3DENAttributes [
		[_spectators, 	"description", 	"Spectator"]
		,[_spectators, 	"ControlMP",	 	true]
	];
	
	// Dynai
	private _dynaiLogics = [];
	{
		private _logic = create3DENEntity ["Logic","Logic",screenToWorld (_x select 0)];
		_logic set3DENAttribute ["name", (_x select 1)];
		_dynaiLogics pushBack _logic;
		
		if (_forEachIndex > 0) then {
			add3DENConnection ["Sync", [_logic], _dynaiLogics select 0];
		};
	} forEach [ 
		[[0.3,0.7], "dzn_dynai_core"]
		,[[0.3,0.73], "Main"]
		,[[0.27,0.73], "Reinforcement"]
	];
	
	// Tasks
	private _tasksCore = create3DENEntity ["Logic","Logic", screenToWorld [0.35,0.7]];
	_tasksCore set3DENAttribute ["name", "tasksCore"];
	
	{
		private _mrk = create3DENEntity ["Marker", _x select 0, screenToWorld [0.5,0.2+(_forEachIndex/10)]];
		_mrk set3DENAttribute ["name", _x select 1];
		_mrk set3DENAttribute ["text", _x select 2];
		_mrk set3DENAttribute ["baseColor", _x select 3];
		_mrk set3DENAttribute ["Alpha", _x select 4];
		
	} forEach [
		["mil_objective", "mrk_task", "Capture and Hold", "ColorOPFOR", 0]
		, ["mil_start", "mrk_start", "Initial Position", "ColorBLUFOR", 0]
	];
	
	// Scenario settings
	set3DENMissionAttributes [
		["Scenario","IntelBriefingName", "CO28 WUSUP (2I)"]
		, ["Scenario","OverviewText", "Warm Up and prepare Uranus"]	
		, ["Scenario","OnLoadMission", "Warm Up and prepare Uranus"]			
		, ["Scenario","OverviewPicture", "overview.jpg"]
		, ["Scenario","LoadScreen", "overview.jpg"]
		, ["Scenario","OverviewPictureLocked", "overview.jpg"]
		, ["Scenario","Author", "Tactical Shift"]			
		, ["Scenario","Saving", false]
		, ["Scenario","EnableDebugConsole", 1]
		, ["Scenario","SaveBinarized", false]			
		
		, ["Multiplayer","MinPlayers", 1]
		, ["Multiplayer","MaxPlayers", 28]
		, ["Multiplayer","GameType","Coop"]
		, ["Multiplayer","IntelOverviewText", "Warm Up and prepare Uranus"]	
		, ["Multiplayer","DisabledAI", true]
		, ["Multiplayer","respawn",3]
		, ["Multiplayer","RespawnDialog", false]
		, ["Multiplayer","RespawnButton", 0]
		, ["Multiplayer","RespawnTemplates", ["ace_spectator","EndMission"]]
	];
	
	private _respawnMrk = create3DENEntity ["Marker","mil_start", screenToWorld [0.5,0.5]];
	_respawnMrk set3DENAttribute ["name", "respawn_west"];
	_respawnMrk set3DENAttribute ["text", "Rename me to 'respawn_west'"];
	do3DENAction "ToggleMap";
	
	"- Scenario was configured -" call dzn_fnc_tSF_3DEN_ShowNotif;	
};