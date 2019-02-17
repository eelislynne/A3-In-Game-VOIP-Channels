radioChannels = [];

fnc_CreateChannel = {
	params["_freq", "_unit"];
	_grp = createGroup[side _unit, false];
	_grp setGroupId [format["freq_%1", _freq]];

	radioChannels pushBack [_freq, _grp];

	[_unit] joinSilent _grp;
};

fnc_JoinChannel = {
	params[["_freq", "0"], ["_unit", objNull], ["_mute", false]];

	if (isNull _unit) exitWith {};
	if (_mute) exitWith {
		[_unit] joinSilent grpNull;
	};

	_freq = parseNumber _freq;
	if (_freq == 0) exitWith {
		hint "Invalid number given";
	};

	if (_freq < 30 || _freq > 120) exitWith {
		hint "Radio freq must be between 30 and 120 mhz";
	};

	_freq = parseNumber (_freq toFixed 1);

	_channels = radioChannels select {_x # 0 == _freq};
	if (count _channels == 0) then {
		[_freq, _unit] call fnc_CreateChannel;
	} else {
		_channel = _channels # 0;
		if ((_channel # 1) isEqualTo grpNull) then {
			[_freq, _unit] call fnc_CreateChannel;
		} else {
			[_unit] joinSilent (_channel # 1);
		}
	};

};

radio_muted = false;
radio_freq = "0";

fnc_OpenRadio = {
	createDialog "ArmaLife_Radio";
	_display = findDisplay 11122;
	_applyBtn = _display displayCtrl 1600;
	_freq = _display displayCtrl 1400;
	_mute = _display displayCtrl 2800;

	_freq ctrlSetText radio_freq;
	_mute cbSetChecked radio_muted;

	_applyBtn buttonSetAction "
		_display = findDisplay 11122;
		_freq = ctrlText (_display displayCtrl 1400);
		_mute = _display displayCtrl 2800;

		_muted = cbChecked _mute;
		radio_muted = _muted;
		radio_freq = _freq;

		[_freq, player, _muted] call fnc_JoinChannel;
		closeDialog 0;

	"; 
};
