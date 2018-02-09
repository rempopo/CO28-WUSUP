# CO28-WUSUP
Warm Up scenario with randomized roles

#### Version: 2I

#### Map Compatibility:
- 

#### Factions
- US Army (OCP)
- US Special Forces
- BAF (DPM)
- BAF (DDPM)
- Russian Special Forces
- Private Military Company
- European Rebels
- Jihadists


### Editing
##### Porting to maps
1. Save empty mission
2. Download and extract dzn_DynAI, dzn_commonFunctions, dzn_gear, dzn_tSFramework
3. Download Scripts and place to mission folder
4. Run `[] execVM "addCore.sqf"` in debug console
5. Run `[] execVM "addObj.sqf"` for each objective position
6. Move and configure added assets (be aware: deployment positions should be directed to place with enough space for allied vehicles to be spawned)

##### Faction kits
In format `kit_FACTION_ROLE` (e.g. `kit_usocp_ftl`).
<br />Roles:
- sl (Squad Lader)
- ftl (Fireteam Leader)
- ar (Automatic Rifleman)
- g (Grenadier)
- r (Rifleman)
- pl (Platoon Leader, may be same as SL)
- at (anti-tank kit for NPC)
- random (for NPC)
