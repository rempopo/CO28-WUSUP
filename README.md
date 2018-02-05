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
2. Download Scripts and place to mission folder
3. Run `[] execVM "addCore.sqf"` in debug console
4. Run `[] execVM "addObj.sqf"` for each objective position
5. Move and configure added assets

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
