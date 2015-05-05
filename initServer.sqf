Rainbow6 = false;
waitUntil{Rainbow6};

[] spawn {
    START_TIME = serverTime;
	ELAPSED_TIME = serverTime - START_TIME;
	publicVariable "ELAPSED_TIME";
    while {ELAPSED_TIME < END_TIME} do {
        ELAPSED_TIME = serverTime - START_TIME;
		switch (ELAPSED_TIME) do {
			case 300: { publicVariable "ELAPSED_TIME"; };
			case 600: { publicVariable "ELAPSED_TIME"; };
			case 900: { publicVariable "ELAPSED_TIME"; };
			case 1080: { publicVariable "ELAPSED_TIME"; };
		};
		if (ELAPSED_TIME > 1080) then {
			publicVariable "ELAPSED_TIME";
		};
           sleep 1;
    };
	["indWin", true, true, independent] call XON_fnc_endMissionGlobal;
	["indWin", false, true, west] call XON_fnc_endMissionGlobal;
};