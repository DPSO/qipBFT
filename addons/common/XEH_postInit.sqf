#include "script_component.hpp"

if (isNil "qipTPL_enabled" || !(qipTPL_enabled) || !hasInterface) exitWith {};

if (isServer) exitWith {
    [] call FUNC(rptLog);
};

["unit", {
    qipTPL_unit = (_this select 0);
}, true] call CBA_fnc_addPlayerEventHandler;

mod_ACE3 = isClass (configFile >> "CfgPatches" >> "ace_common");

call compile preprocessFileLineNumbers ("qipTPL\config\briefing.sqf");
call compile preprocessFileLineNumbers QPATHTOF(tplCredits.sqf);

[] spawn FUNC(missionInitialization);