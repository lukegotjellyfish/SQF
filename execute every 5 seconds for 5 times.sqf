_counter = 0;
if (isServer) then 
{
    _targetTime = time + 5;
    while {true} do 
    {
        if (time > _targetTime) then 
        {
            _counter = _counter + 1;
            call _script = [1,8] call BIS_fnc_randomInt;
            switch (_script) do
            {
                case 1 : { [] execVM "50mTargets.sqf"; }
                case 2 : { [] execVM "100mTargets.sqf"; }
                case 3 : { [] execVM "150mTargets.sqf"; }
                case 4 : { [] execVM "200mTargets.sqf"; }
                case 5 : { [] execVM "250mTargets.sqf"; }
                case 6 : { [] execVM "300mTargets.sqf"; }
                case 7 : { [] execVM "350mTargets.sqf"; }
                case 8 : { [] execVM "400mTargets.sqf"; }
            }
            _targetTime = time + 5;
        }
        if (_counter >= 5) exitWith {false}
    }
}