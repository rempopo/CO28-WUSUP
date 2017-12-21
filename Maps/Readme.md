In this directory WorldName/mission.sqm are stored

### Map placed entities
#### Core assets
1. 23x Groups of Objects - NATO - Rifleman (Unarmed) (Role Description: Regular, Playable)
2. 5x Groups of Objects - NATO - Rifleman (Unarmed) (Role Description: Newbie, Playable)
3. Modules - Zeus - Game Master (Owner: #adminLogged, Default addons: All addons)

4. Logic Entities - Game Logic (VarName: RegularLogic) synced with all units from (1
5. Logic Entities - Game Logic (VarName: NewbiesLogic) synced with all units from (2)

6. Logic Entities - Virtual Entities - Headless Client (VarName: HC, Playable)
7. Logic Entities - Virtual Entities - Virtual Spectator (Role Description: Spectator, Playable)

8. Logic Entities - Game Logic (VarName: dzn_dynai_core)
9. Logic Entities - Game Logic (VarName: Main) synced with (8)
10. Logic Entities - Game Logic (VarName: Reinforcement) synced with (8)

11. Logic Entities - Game Logic (VarName: tasksCore)
12. Markers - Standard Military - Objective (VarName: mrk_task, Text: Capture and Hold, Color: OPFOR, Alpha: 0%)
13. Markers - Standard Military - Start (VarName: mrk_start, Text: Initial Position, Color: BLUFOR, Alpha: 0%)
000. 2 triggers 

#### Task Assets

1. Logic Entities - Locations - Resupply Point, synced with (Core assets.11)
2. Logic Entities - Locations - Camp, synced with (1) // Core of DynAI spawners
3. Logic Entities - Locations - Base, synced with (2)
4. Trigger, synced with (3) // Main forces spawn location
5. Logic Entities - Locations - Outpost, synced with (2)
6. Trigger, synced with (5) // Reinforcement spawn location
7. Logic Entities - Locations - Area, synced with (1) // Player init position core
8. 3x Logic Entities - Locations - Area, synced with (7) // Players spawn points for random start point selection
9. Trigger (Square, 15x15), synced with (1) // Capture zone trigger
10. Any decorative objects and usable assets
