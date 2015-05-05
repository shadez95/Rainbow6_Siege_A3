if (!isDedicated) then { //preventing start on server

	waitUntil {!isNull (findDisplay 46)}; //making sure player is spawned

	if (difficultyEnabled "3rdPersonView") then
	{
		while {true} do {

			waitUntil {cameraView == "EXTERNAL" || cameraView == "GROUP"};

			if  (((vehicle player) == player) && (speed ( player)) >= 0) then {
				player switchCamera "INTERNAL";
			};
			sleep 0.1;
		};
	};

};