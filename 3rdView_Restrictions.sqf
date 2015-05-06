//Edits by dixon13 aka D.Begay 71st Special Operations Group
if (hasInterface) then { //preventing start on server - only start on clients
	waitUntil {!isNull (findDisplay 46)}; //making sure player is spawned
	if (difficultyEnabled "3rdPersonView") then {
		while {true} do {
			waitUntil {cameraView == "EXTERNAL" || cameraView == "GROUP"};
			if  (((vehicle player) == player) && (speed ( player)) >= 0) then {
				player switchCamera "INTERNAL";
			};
			sleep 0.05;
		};
	};
};