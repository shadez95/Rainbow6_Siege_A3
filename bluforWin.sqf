if (h1 in thisList OR h2 in thisList OR h3 in thisList OR h4 in thisList) then {
	hint "Blufor WIN! Hostage Extracted!.";
	for "_i" from 0 to 4 do {
		_i = _i + 1;
	};
	["End1"] call BIS_fnc_endMissionServer;
};