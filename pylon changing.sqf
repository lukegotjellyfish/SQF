//Pilot rearm missiles RHS Apache:
hint str getPylonMagazines (vehicle player);
(vehicle player) setAmmoOnPylon [5, 200];

//re-arm hellfires RHS apache:
(vehicle player) setAmmoOnPylon [3, 200];
(vehicle player) setAmmoOnPylon [4, 200];


//drone fuel to 0;
_oof = getConnectedUAV player;
_oof setFuel 0;


(vehicle player) setVariable ["speedLimit", 400];

//get all players:
oof = "\n";
{ 
    oof = oof +name player+" | "+str player+" | "+getPlayerUID player+"\n";
} forEach playableUnits;

switch(getPlayerUID player) do
{
    case "76561198253546520":
    {
        hint Format["Username | player | playerUID\n%1", str oof];
    };
};


//teleport on click for 10 secs:
if (player == player) then {
hint "Click on map to teleport";
onMapSingleClick "player setpos _pos";
sleep 10;
hint "Teleport deactivated";
onMapSingleClick "";
};
if (true) exitWith{};