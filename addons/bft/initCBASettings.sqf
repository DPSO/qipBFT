//================= GENERAL
[
    QGVAR(bftEnabled),
    "CHECKBOX",
    "Enable Icons",
    ["qipBFT - BFT","General"],
    true,
    1
] call CBA_fnc_addSetting;

[
    QGVAR(updateInterval),
    "SLIDER",
    "Update Interval",
    ["qipBFT - BFT","General"],
    [0, 30, 0, 1],
    1,
    nil,
    true
] call CBA_fnc_addSetting;

[
    QGVAR(requireItemGPS),
    "CHECKBOX",
    "A GPS or similar device ist needed",
    ["qipBFT - BFT","General"],
    true,
    1
] call CBA_fnc_addSetting;

[
    QGVAR(showOwnFactionOnly),
    "CHECKBOX",
    "Show only own faction this will overwrite the diplomacy settings",
    ["qipBFT - BFT","General"],
    false,
    1
] call CBA_fnc_addSetting;

[
    QGVAR(showCivilians),
    "CHECKBOX",
    "Show Civilians",
    ["qipBFT - BFT","General"],
    false,
    1
] call CBA_fnc_addSetting;

//================= Units

[
    QGVAR(showOwnGroupUnits),
    "CHECKBOX",
    "Show every unit of the group you are in",
    ["qipBFT - BFT","Units"],
    true
] call CBA_fnc_addSetting;

[
    QGVAR(showUnitNames),
    "CHECKBOX",
    "Show unit names in general",
    ["qipBFT - BFT","Units"],
    true
] call CBA_fnc_addSetting;

[
    QGVAR(showPlayerNames),
    "CHECKBOX",
    "Show player names",
    ["qipBFT - BFT","Units"],
    true
] call CBA_fnc_addSetting;

[
    QGVAR(showAINames),
    "CHECKBOX",
    "Show player names",
    ["qipBFT - BFT","Units"],
    true
] call CBA_fnc_addSetting;

[
    QGVAR(showAINames),
    "CHECKBOX",
    "Show AI names or just '[AI]'",
    ["qipBFT - BFT","Units"],
    true
] call CBA_fnc_addSetting;

[
    QGVAR(teamColors),
    "LIST",
    "Color style for team colors",
    ["qipBFT - BFT","Units"],
    [["Default","ACE","STHUD"],["Default","ACE","STHUD"],0],
    0
] call CBA_fnc_addSetting;

//================= GROUPS

[
    QGVAR(showGroupIcons),
    "CHECKBOX",
    "Show group markers in general",
    ["qipBFT - BFT","Groups"],
    true,
    1
] call CBA_fnc_addSetting;

[
    QGVAR(showAIGroups),
    "CHECKBOX",
    "Show group markers of AI groups",
    ["qipBFT - BFT","Groups"],
    true,
    1
] call CBA_fnc_addSetting;

[
    QGVAR(showGroupText),
    "CHECKBOX",
    "Show group ID next to the group marker",
    ["qipBFT - BFT","Groups"],
    true
] call CBA_fnc_addSetting;

[
    QGVAR(showOwnGroup),
    "CHECKBOX",
    "Show group marker of your own group",
    ["qipBFT - BFT","Groups"],
    true
] call CBA_fnc_addSetting;

[
    QGVAR(groupIconsInteraction),
    "LIST",
    "Interaction with group icons to show details",
    ["qipBFT - BFT","Groups"],
    [["disabled","hover","click"],["Disabled","Hover","Click"],1],
    0
] call CBA_fnc_addSetting;

//================= MEDICAL
[
    QGVAR(showLifeState),
    "CHECKBOX",
    "Show wounded on the map and GPS",
    ["qipBFT - BFT","Medical"],
    true,
    1
] call CBA_fnc_addSetting;

[
    QGVAR(medicalSystem),
    "LIST",
    "Medical System that is used",
    ["qipBFT - BFT","Medical"],
    [["BIS","ACE"],["BIS","ACE"],0],
    1,
    nil,
    true
] call CBA_fnc_addSetting;

//================= DIPLOMACY
[
    QGVAR(friendlySidesDynamic),
    "CHECKBOX",
    "Allow faction alliances to change dynamically",
    ["qipBFT - BFT","Diplomacy"],
    true,
    1
] call CBA_fnc_addSetting;

[
    QGVAR(friendlySides_EAST),
    "LIST",
    "East is Friendly to:",
    ["qipBFT - BFT","Diplomacy"],
    [[[1],[2],[3],[1,2],[1,3],[2,3],[1,2,3]],["West","Independent","Civilians","West & Independent","West & Civilians","Independent & Civilians","All three"],2],
    1,
    nil,
    true
] call CBA_fnc_addSetting;

[
    QGVAR(friendlySides_WEST),
    "LIST",
    "West is Friendly to:",
    ["qipBFT - BFT","Diplomacy"],
    [[[0],[2],[3],[0,2],[0,3],[2,3],[0,2,3]],["East","Independent","Civilians","East & Independent","East & Civilians","Independent & Civilians","All three"],1],
    1,
    nil,
    true
] call CBA_fnc_addSetting;

[
    QGVAR(friendlySides_RESISTANCE),
    "LIST",
    "Independent is Friendly to:",
    ["qipBFT - BFT","Diplomacy"],
    [[[0],[1],[3],[0,1],[0,3],[1,3],[0,1,3]],["East","West","Civilians","East & West","East & Civilians","West & Civilians","All three"],5],
    1,
    nil,
    true
] call CBA_fnc_addSetting;

[
    QGVAR(friendlySides_CIVILIAN),
    "LIST",
    "Civilians is Friendly to:",
    ["qipBFT - BFT","Diplomacy"],
    [[[0],[1],[2],[0,1],[0,2],[1,2],[0,1,2]],["East","West","Independent","East & West","East & Independent","West & Independent","All three"],4],
    1,
    nil,
    true
] call CBA_fnc_addSetting;

// TODO:
GVAR(showEmptyVehicles) = FALSE;                           // BOOL. TRUE to mark certain unoccupied vehicles on the map. The vehicle must be assigned this variable:    <vehicle> setVariable [QGVAR(drawEmptyVehicle),TRUE,TRUE];    Default FALSE.   Only works if  GVAR(enableUnitIconsMap) = TRUE;
