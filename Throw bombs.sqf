player removeeventhandler["fired", FEH_missile];  
FEH_missile = player addeventhandler ["fired", {  
  _bullet = nearestObject [_this select 0,_this select 4];  
  _bulletpos = getPosASL _bullet;  
  _o = "9M79B" createVehicle _bulletpos;  
  _weapdir = player weaponDirection currentWeapon player;  
  _dist = 10;  
  _o setPosASL [  
    (_bulletpos select 0) + (_weapdir select 0)*_dist,  
    (_bulletpos select 1) + (_weapdir select 1)*_dist,  
    (_bulletpos select 2) + (_weapdir select 2)*_dist  
  ];
  _up = vectorUp _bullet;  
  _o setVectorDirAndUp[_weapdir,_up];  
  _o setVelocity velocity _bullet;}]; 
player removeeventhandler["fired", FEH_playerAmmo];  
FEH_playerAmmo = player addeventhandler ["fired", {(_this select 0) setvehicleammo 1}]; 
player setUnitRecoilCoefficient 0; 
enableCamShake false;
player allowDamage false;