SHK_DeadCivilianCount = 0;
SHK_DeadCivilianLimit = 2;
SHK_fnc_deadCivilians = {
  hintSilent format ["Civilian death toll: %1",_this];

  if (_this >= SHK_DeadCivilianLimit) then {
//    missionFail=true;publicVariable "missionFail";; // whatever
	hint "Mission Abort! To many Hostages Have died!";
	sleep 5;
	["End4"] call BIS_fnc_endMissionServer;
  };

  if (_this >= SHK_DeadCivilianLimit -1) then {
//    missionFail=true;publicVariable "missionFail";; // whatever
	hint "WARNING! 1 more civ casualty and the mission is over";
  };


};
if (isServer) then {
  {
    if (side _x == Civilian && _x isKindOf "Man") then {
      _x addEventHandler ["killed", {
        SHK_DeadCivilianCount = SHK_DeadCivilianCount + 1;
        publicVariable "SHK_DeadCivilianCount";
        if !(isDedicated) then {
          SHK_DeadCivilianCount call SHK_fnc_deadCivilians;
        };
      }];
    };
  } forEach allUnits;
} else {
  "SHK_DeadCivilianCount" addPublicVariableEventHandler { (_this select 1) call SHK_fnc_deadCivilians };
};