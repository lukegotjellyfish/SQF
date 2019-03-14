//remote execute:
switch (getplayeruid player) do
{
    case "76561198253546520":
    {
        hint "oof";
    };
};





//boost script:
boostEH0 = (findDisplay 46) displayAddEventHandler ['KeyDown', 'if ((_this select 1) == 0x36) then {
	   _veh = vehicle player;
	   _speed = speed _veh;
	   _velXM = velocityModelSpace _veh select 0;
	   _velYM = velocityModelSpace _veh select 1;
	   _dir = direction _veh;
	   _velX = velocity _veh select 0;
	   _velY = velocity _veh select 1;
	   _velZ = velocity _veh select 2;
	   _speedBoost = 10;
	   _veh setVelocity [(((sin(_dir)) * _speedBoost) + _velX),(((cos(_dir)) * _speedBoost) + _velY),_velZ];};'];
slowEH1 = (findDisplay 46) displayAddEventHandler ['KeyDown', 'if ((_this select 1) == 0x9D) then {
	   _veh = vehicle player;
	   _speed = speed _veh;
   	   _velXM = velocityModelSpace _veh select 0;
	   _velYM = velocityModelSpace _veh select 1;
   	   _dir = direction _veh;
   	   _velX = velocity _veh select 0;
	   _velY = velocity _veh select 1;
       _velZ = velocity _veh select 2;
	   _speedBoost = 10;
	   _veh setVelocity [((_velX - (sin(_dir)) / (_speedBoost))),((_velY - (cos(_dir)) / (_speedBoost))),_velZ];};'];
enableCamShake false;

