MCC_Module_addUnitsToZeusCurator
call BIS_fnc_moduleCurator;
class addToZeus
if (player != getAssignedCuratorUnit MCC_curator) then {[compile format ["objectFromNetId '%1' assignCurator MCC_curator;", netid player],"BIS_fnc_spawn",false,false] spawn BIS_fnc_MP};