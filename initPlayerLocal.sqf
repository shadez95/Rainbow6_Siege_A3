private["_unit"];
_unit = _this select 0;

switch (_unit) do {
	case UnitNATO_ASL_SL: {
		comment "Exported from Arsenal by G.Roy TL";
		comment "Remove existing items";
		removeAllWeapons _unit;
		removeAllItems _unit;
		removeAllAssignedItems _unit;
		removeUniform _unit;
		removeVest _unit;
		removeBackpack _unit;
		removeHeadgear _unit;
		removeGoggles _unit;
		comment "Add containers";
		_unit forceAddUniform "U_BG_Guerrilla_6_1";
		for "_i" from 1 to 2 do {_unit addItemToUniform "FirstAidKit";};
		_unit addItemToUniform "SmokeShell";
		_unit addVest "V_PlateCarrier1_blk";
		for "_i" from 1 to 3 do {_unit addItemToVest "30Rnd_65x39_caseless_mag";};
		_unit addItemToVest "1Rnd_HE_Grenade_shell";
		for "_i" from 1 to 2 do {_unit addItemToVest "16Rnd_9x21_Mag";};
		for "_i" from 1 to 5 do {_unit addItemToVest "1Rnd_Smoke_Grenade_shell";};
		_unit addItemToVest "SmokeShellRed";
		_unit addItemToVest "SmokeShell";
		_unit addItemToVest "Chemlight_green";
		_unit addItemToVest "Chemlight_red";
		_unit addItemToVest "Chemlight_blue";
		_unit addItemToVest "B_IR_Grenade";
		_unit addBackpack "B_AssaultPack_blk";
		_unit addHeadgear "H_Cap_headphones";
		_unit addGoggles "G_Tactical_Black";
		comment "Add weapons";
		_unit addWeapon "arifle_MX_GL_Black_F";
		_unit addPrimaryWeaponItem "acc_pointer_IR";
		_unit addPrimaryWeaponItem "optic_Arco";
		_unit addWeapon "hgun_Rook40_F";
		_unit addWeapon "Binocular";
		comment "Add items";
		_unit linkItem "ItemMap";
		_unit linkItem "ItemCompass";
		_unit linkItem "ItemWatch";
		_unit linkItem "ItemRadio";
		_unit linkItem "ItemGPS";
		_unit linkItem "NVGoggles_OPFOR";
	};
};

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