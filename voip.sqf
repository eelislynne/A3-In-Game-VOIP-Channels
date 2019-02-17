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
