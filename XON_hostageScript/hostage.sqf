/*--------------------------------EDIT HERE TO YOUR NEEDS-------------------------------------*/
#include "hostageFunctions.sqf";
if (isServer) then {
	sleep 1;
	//[object,target] call XON_fnc_setCaptive;
	//For each hostage call XON_fnc_setCaptive, i.e. [hostage,west] call XON_fnc_setCaptive;
	//-- where hostage is an object that is named in the editor and west is a parameter that the action will show for
	//---- leave side 'nil' if you wish to show the action for all sides.
	
	[h1,west] call XON_fnc_setCaptive;
	[h2,west] call XON_fnc_setCaptive;
	[h3,west] call XON_fnc_setCaptive;
};