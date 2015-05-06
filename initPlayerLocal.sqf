Rainbow6 = false;
waitUntil{Rainbow6};

#define Q(var) #var
#define CALL_COMPILE(var) call compileFinal preprocessFileLineNumbers Q(var)

// will cause to fall if fatigued
[] execVM 'QS_Fatigue.sqf';

// 3rd person only for infantry
[] execVM '3rdView_Restrictions.sqf';

"ELAPSED_TIME" addPublicVariableEventHandler {
	[_this select 1] spawn {
		private[Q(_ELAPSED_TIME)];
		_ELAPSED_TIME = _this select 0;
		
		switch (_ELAPSED_TIME) do {
			case 300: { [END_TIME,_ELAPSED_TIME] call XON_fnc_timeFunctionHint; };
			case 600: { [END_TIME,_ELAPSED_TIME] call XON_fnc_timeFunctionHint; };
			case 900: { [END_TIME,_ELAPSED_TIME] call XON_fnc_timeFunctionHint; };
			case 1080: { [END_TIME,_ELAPSED_TIME] call XON_fnc_timeFunctionHint; };
		};
		if (_ELAPSED_TIME > 1080) then {
			while{_ELAPSED_TIME < END_TIME } do {
				[END_TIME,_ELAPSED_TIME] call XON_fnc_timeFunctionHint;
			};
		};
    };
};