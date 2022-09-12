missionNamespace setVariable['M9SD_ppEffectMenuFadeTime', 0.4];
uiNamespace setVariable['M9SD_ppEffectMenuFadeTime', M9SD_ppEffectMenuFadeTime];
uiNamespace setVariable['M9SD_baseTxtSize', safezoneH * 0.5];
uiNamespace setVariable['M9SD_fnc_getColorSetting', {
    [(profilenamespace getvariable['GUI_BCG_RGB_R', 0.13]), 
	(profilenamespace getvariable['GUI_BCG_RGB_G', 0.54]), 
	(profilenamespace getvariable['GUI_BCG_RGB_B', 0.21]), 
	(profilenamespace getvariable['GUI_BCG_RGB_A', 0.8])]
}];
uiNamespace setVariable['M9SD_ppEffectArray', [
	[
		'Vanilla',
		'Disable any post-processing color corrections that have been activated through this menu/composition.',
		"[{
			comment 'preview';
			'ColorCorrections' ppEffectEnable false;
		},{
			comment 'apply';
			remoteExec ['', 'M9SD_JIP_screenFXComp_enable'];
			remoteExec ['', 'M9SD_JIP_screenFXComp_adjust'];
			remoteExec ['', 'M9SD_JIP_screenFXComp_commit'];
			['ColorCorrections', false] remoteExec ['ppEffectEnable'];
		}]"
	],
	[
		'Realistic',
		'Realistic Color Correction Theme',
		"[{
			comment 'preview';
			'ColorCorrections' ppEffectEnable true;
			'ColorCorrections' ppEffectAdjust [0.88, 0.88, 0, [0.2, 0.29, 0.4, -0.22], [1, 1, 1, 1.3], [0.15, 0.09, 0.09, 0.0]];
			'ColorCorrections' ppEffectCommit 0;
		},{
			comment 'apply';
			['ColorCorrections', true] remoteExec ['ppEffectEnable', 0, 'M9SD_JIP_screenFXComp_enable'];
			['ColorCorrections', [0.88, 0.88, 0, [0.2, 0.29, 0.4, -0.22], [1, 1, 1, 1.3], [0.15, 0.09, 0.09, 0.0]]] remoteExec ['ppEffectAdjust', 0, 'M9SD_JIP_screenFXComp_adjust'];
			['ColorCorrections', 0] remoteExec ['ppEffectCommit', 0, 'M9SD_JIP_screenFXComp_commit'];
		}]"
	],
	[
		'Post Apocalyptic',
		'Post Apocalyptic Color Correction Theme',
		"[{
			comment 'preview';
			'ColorCorrections' ppEffectEnable true;
			'ColorCorrections' ppEffectAdjust [1, 0.9, -0.002, [0.0, 0.0, 0.0, 0.0], [1.0, 0.6, 0.4, 0.6],  [0.199, 0.587, 0.114, 0.0]];
			'ColorCorrections' ppEffectCommit 0;
		},{
			comment 'apply';
			['ColorCorrections', true] remoteExec ['ppEffectEnable', 0, 'M9SD_JIP_screenFXComp_enable'];
			['ColorCorrections', 
			[1, 0.9, -0.002, [0.0, 0.0, 0.0, 0.0], [1.0, 0.6, 0.4, 0.6],  [0.199, 0.587, 0.114, 0.0]]
			] remoteExec ['ppEffectAdjust', 0, 'M9SD_JIP_screenFXComp_adjust'];
			['ColorCorrections', 0] remoteExec ['ppEffectCommit', 0, 'M9SD_JIP_screenFXComp_commit'];
		}]"
	],
	[
		'Nightstalkers',
		'Nightstalkers Color Correction Theme',
		"[{
			comment 'preview';
			'ColorCorrections' ppEffectEnable true;
			'ColorCorrections' ppEffectAdjust 
			[1, 1.1, 0.0, [0.0, 0.0, 0.0, 0.0], [1.0,0.7, 0.6, 0.60], [0.200, 0.600, 0.100, 0.0]];
			'ColorCorrections' ppEffectCommit 0;
		},{
			comment 'apply';
			['ColorCorrections', true] remoteExec ['ppEffectEnable', 0, 'M9SD_JIP_screenFXComp_enable'];
			['ColorCorrections', 
			[1, 1.1, 0.0, [0.0, 0.0, 0.0, 0.0], [1.0,0.7, 0.6, 0.60], [0.200, 0.600, 0.100, 0.0]]
			] remoteExec ['ppEffectAdjust', 0, 'M9SD_JIP_screenFXComp_adjust'];
			['ColorCorrections', 0] remoteExec ['ppEffectCommit', 0, 'M9SD_JIP_screenFXComp_commit'];
		}]"
	],
	[
		'OFP Gamma',
		'OFP Gamma Color Correction Theme',
		"[{
			comment 'preview';
			'ColorCorrections' ppEffectEnable true;
			'ColorCorrections' ppEffectAdjust 
			[1, 1, 0, [0.0, 0.0, 0.0, 0.0], [0.6, 1.4, 0.6, 0.7],  [0.199, 0.587, 0.114, 0.0]];
			'ColorCorrections' ppEffectCommit 0;
		},{
			comment 'apply';
			['ColorCorrections', true] remoteExec ['ppEffectEnable', 0, 'M9SD_JIP_screenFXComp_enable'];
			['ColorCorrections', 
			[1, 1, 0, [0.0, 0.0, 0.0, 0.0], [0.6, 1.4, 0.6, 0.7],  [0.199, 0.587, 0.114, 0.0]]
			] remoteExec ['ppEffectAdjust', 0, 'M9SD_JIP_screenFXComp_adjust'];
			['ColorCorrections', 0] remoteExec ['ppEffectCommit', 0, 'M9SD_JIP_screenFXComp_commit'];
		}]"
	],
	[
		'Golden Autumn',
		'Golden Autumn Color Correction Theme',
		"[{
			comment 'preview';
			'ColorCorrections' ppEffectEnable true;
			'ColorCorrections' ppEffectAdjust 
			[1, 1, 0, [0.0, 0.0, 0.0, 0.0], [1.8, 1.8, 0.3, 0.7],  [0.199, 0.587, 0.114, 0.0]];
			'ColorCorrections' ppEffectCommit 0;
		},{
			comment 'apply';
			['ColorCorrections', true] remoteExec ['ppEffectEnable', 0, 'M9SD_JIP_screenFXComp_enable'];
			['ColorCorrections', 
			[1, 1, 0, [0.0, 0.0, 0.0, 0.0], [1.8, 1.8, 0.3, 0.7],  [0.199, 0.587, 0.114, 0.0]]
			] remoteExec ['ppEffectAdjust', 0, 'M9SD_JIP_screenFXComp_adjust'];
			['ColorCorrections', 0] remoteExec ['ppEffectCommit', 0, 'M9SD_JIP_screenFXComp_commit'];
		}]"
	],
	[
		'Africa',
		'Africa Color Correction Theme',
		"[{
			comment 'preview';
			'ColorCorrections' ppEffectEnable true;
			'ColorCorrections' ppEffectAdjust 
			[ 1, 1.3, 0.001, [-0.11, -0.65, -0.76, 0.015],[-5, -1.74, 0.09, 0.86],[-1.14, -0.73, 1.14, -0.09]];
			'ColorCorrections' ppEffectCommit 0;
		},{
			comment 'apply';
			['ColorCorrections', true] remoteExec ['ppEffectEnable', 0, 'M9SD_JIP_screenFXComp_enable'];
			['ColorCorrections', 
			[ 1, 1.3, 0.001, [-0.11, -0.65, -0.76, 0.015],[-5, -1.74, 0.09, 0.86],[-1.14, -0.73, 1.14, -0.09]]
			] remoteExec ['ppEffectAdjust', 0, 'M9SD_JIP_screenFXComp_adjust'];
			['ColorCorrections', 0] remoteExec ['ppEffectCommit', 0, 'M9SD_JIP_screenFXComp_commit'];
		}]"
	],
	[
		'Afghan',
		'Afghan Color Correction Theme',
		"[{
			comment 'preview';
			'ColorCorrections' ppEffectEnable true;
			'ColorCorrections' ppEffectAdjust 
			[0.9, 0.9, 0, [0, 0.1, 0.25, -0.14], [1, 1, 1, 1.26], [0.15, 0.09, 0.09, 0.0]];
			'ColorCorrections' ppEffectCommit 0;
		},{
			comment 'apply';
			['ColorCorrections', true] remoteExec ['ppEffectEnable', 0, 'M9SD_JIP_screenFXComp_enable'];
			['ColorCorrections', 
			[0.9, 0.9, 0, [0, 0.1, 0.25, -0.14], [1, 1, 1, 1.26], [0.15, 0.09, 0.09, 0.0]]
			] remoteExec ['ppEffectAdjust', 0, 'M9SD_JIP_screenFXComp_adjust'];
			['ColorCorrections', 0] remoteExec ['ppEffectCommit', 0, 'M9SD_JIP_screenFXComp_commit'];
		}]"
	],
	[
		'Middle East',
		'Middle East Color Correction Theme',
		"[{
			comment 'preview';
			'ColorCorrections' ppEffectEnable true;
			'ColorCorrections' ppEffectAdjust 
			[0.9, 1, 0, [0.1, 0.1, 0.1, -0.1], [1, 1, 0.8, 0.528],  [1, 0.2, 0, 0]];
			'ColorCorrections' ppEffectCommit 0;
		},{
			comment 'apply';
			['ColorCorrections', true] remoteExec ['ppEffectEnable', 0, 'M9SD_JIP_screenFXComp_enable'];
			['ColorCorrections', 
			[0.9, 1, 0, [0.1, 0.1, 0.1, -0.1], [1, 1, 0.8, 0.528],  [1, 0.2, 0, 0]]
			] remoteExec ['ppEffectAdjust', 0, 'M9SD_JIP_screenFXComp_adjust'];
			['ColorCorrections', 0] remoteExec ['ppEffectCommit', 0, 'M9SD_JIP_screenFXComp_commit'];
		}]"
	],
	[
		'Real Is Brown',
		'Real Is Brown Color Correction Theme',
		"[{
			comment 'preview';
			'ColorCorrections' ppEffectEnable true;
			'ColorCorrections' ppEffectAdjust 
			[1,1,0,[0.1,0.2,0.3,-0.3],[1,1,1,0.5],[0.5,0.2,0,1]];
			'ColorCorrections' ppEffectCommit 0;
		},{
			comment 'apply';
			['ColorCorrections', true] remoteExec ['ppEffectEnable', 0, 'M9SD_JIP_screenFXComp_enable'];
			['ColorCorrections', 
			[1,1,0,[0.1,0.2,0.3,-0.3],[1,1,1,0.5],[0.5,0.2,0,1]]
			] remoteExec ['ppEffectAdjust', 0, 'M9SD_JIP_screenFXComp_adjust'];
			['ColorCorrections', 0] remoteExec ['ppEffectCommit', 0, 'M9SD_JIP_screenFXComp_commit'];
		}]"
	],
	[
		'Gray Tone',
		'Gray Tone Color Correction Theme',
		"[{
			comment 'preview';
			'ColorCorrections' ppEffectEnable true;
			'ColorCorrections' ppEffectAdjust 
			[1.0, 1.0, 0.0,[1.0, 1.0, 1.0, 0.0],[1.0, 1.0, 0.9, 0.35],[0.3,0.3,0.3,-0.1]];
			'ColorCorrections' ppEffectCommit 0;
		},{
			comment 'apply';
			['ColorCorrections', true] remoteExec ['ppEffectEnable', 0, 'M9SD_JIP_screenFXComp_enable'];
			['ColorCorrections', 
			[1.0, 1.0, 0.0,[1.0, 1.0, 1.0, 0.0],[1.0, 1.0, 0.9, 0.35],[0.3,0.3,0.3,-0.1]]
			] remoteExec ['ppEffectAdjust', 0, 'M9SD_JIP_screenFXComp_adjust'];
			['ColorCorrections', 0] remoteExec ['ppEffectCommit', 0, 'M9SD_JIP_screenFXComp_commit'];
		}]"
	],
	[
		'Cold Tone',
		'Cold Tone Color Correction Theme',
		"[{
			comment 'preview';
			'ColorCorrections' ppEffectEnable true;
			'ColorCorrections' ppEffectAdjust 
			[1.0, 1.0, 0.0,[0.2, 0.2, 1.0, 0.0],[0.4, 0.75, 1.0, 0.60],[0.5,0.3,1.0,-0.1]];
			'ColorCorrections' ppEffectCommit 0;
		},{
			comment 'apply';
			['ColorCorrections', true] remoteExec ['ppEffectEnable', 0, 'M9SD_JIP_screenFXComp_enable'];
			['ColorCorrections', 
			[1.0, 1.0, 0.0,[0.2, 0.2, 1.0, 0.0],[0.4, 0.75, 1.0, 0.60],[0.5,0.3,1.0,-0.1]]
			] remoteExec ['ppEffectAdjust', 0, 'M9SD_JIP_screenFXComp_adjust'];
			['ColorCorrections', 0] remoteExec ['ppEffectCommit', 0, 'M9SD_JIP_screenFXComp_commit'];
		}]"
	],
	[
		'Winter Blue',
		'Winter Blue Color Correction Theme',
		"[{
			comment 'preview';
			'ColorCorrections' ppEffectEnable true;
			'ColorCorrections' ppEffectAdjust 
			 [1.1, 1.3, 0.0, [0.5, 0.5, 0.1, -0.1], [0.4, 0.75, 1.0, 0.60], [0.5,0.3,1.0,-0.1]];
			'ColorCorrections' ppEffectCommit 0;
		},{
			comment 'apply';
			['ColorCorrections', true] remoteExec ['ppEffectEnable', 0, 'M9SD_JIP_screenFXComp_enable'];
			['ColorCorrections', 
			 [1.1, 1.3, 0.0, [0.5, 0.5, 0.1, -0.1], [0.4, 0.75, 1.0, 0.60], [0.5,0.3,1.0,-0.1]]
			] remoteExec ['ppEffectAdjust', 0, 'M9SD_JIP_screenFXComp_adjust'];
			['ColorCorrections', 0] remoteExec ['ppEffectCommit', 0, 'M9SD_JIP_screenFXComp_commit'];
		}]"
	],
	[
		'Winter White',
		'Winter White Color Correction Theme',
		"[{
			comment 'preview';
			'ColorCorrections' ppEffectEnable true;
			'ColorCorrections' ppEffectAdjust 
			 [1, 1, 0, [0.31, 0.31, 1.0, 0.1], [0.85, 0.85, 0.92, 0.48], [1 , 1, 1, 0.03]];
			'ColorCorrections' ppEffectCommit 0;
		},{
			comment 'apply';
			['ColorCorrections', true] remoteExec ['ppEffectEnable', 0, 'M9SD_JIP_screenFXComp_enable'];
			['ColorCorrections', 
			[1, 1, 0, [0.31, 0.31, 1.0, 0.1], [0.85, 0.85, 0.92, 0.48], [1 , 1, 1, 0.03]]
			] remoteExec ['ppEffectAdjust', 0, 'M9SD_JIP_screenFXComp_adjust'];
			['ColorCorrections', 0] remoteExec ['ppEffectCommit', 0, 'M9SD_JIP_screenFXComp_commit'];
		}]"
	],
	[
		'Mediterranean',
		'Mediterranean Color Correction Theme',
		"[{
			comment 'preview';
			'ColorCorrections' ppEffectEnable true;
			'ColorCorrections' ppEffectAdjust 
			[1.01, 1.18, -0.04, [1.0, 1.4, 0.8, -0.04], [0.55, 0.55, 0.72, 1.35],  [0.699, 1.787, 0.314, 20.03]];
			'ColorCorrections' ppEffectCommit 0;
		},{
			comment 'apply';
			['ColorCorrections', true] remoteExec ['ppEffectEnable', 0, 'M9SD_JIP_screenFXComp_enable'];
			['ColorCorrections', 
			[1.01, 1.18, -0.04, [1.0, 1.4, 0.8, -0.04], [0.55, 0.55, 0.72, 1.35],  [0.699, 1.787, 0.314, 20.03]]
			] remoteExec ['ppEffectAdjust', 0, 'M9SD_JIP_screenFXComp_adjust'];
			['ColorCorrections', 0] remoteExec ['ppEffectCommit', 0, 'M9SD_JIP_screenFXComp_commit'];
		}]"
	],
	[
		'Post-Soviet',
		'Post-Soviet Color Correction Theme',
		"[{
			comment 'preview';
			'ColorCorrections' ppEffectEnable true;
			'ColorCorrections' ppEffectAdjust 
			[0.88, 0.88, 0, [0.2, 0.29, 0.4, -0.22], [1, 1, 1, 1.3], [0.15, 0.09, 0.09, 0.0]];
			'ColorCorrections' ppEffectCommit 0;
		},{
			comment 'apply';
			['ColorCorrections', true] remoteExec ['ppEffectEnable', 0, 'M9SD_JIP_screenFXComp_enable'];
			['ColorCorrections', 
			[0.88, 0.88, 0, [0.2, 0.29, 0.4, -0.22], [1, 1, 1, 1.3], [0.15, 0.09, 0.09, 0.0]]
			] remoteExec ['ppEffectAdjust', 0, 'M9SD_JIP_screenFXComp_adjust'];
			['ColorCorrections', 0] remoteExec ['ppEffectCommit', 0, 'M9SD_JIP_screenFXComp_commit'];
		}]"
	]
]];
comment "Toggle off previewed effect or return to applied effect.";
M9SD_fnc_handlePPEffectMenuUnload = {
    params["_display", "_exitCode"];
	if !(_display getVariable['applied', false]) then {
		private _isEnabled = _display getVariable['isEnabled', false];
		if (!_isEnabled) then {
			'ColorCorrections'
			ppEffectEnable false;
		} else {
			private _activePPEffectData = uiNamespace getVariable['M9SD_activePPEffectData', [0, [{}, {}]]];
			call((_activePPEffectData# 1)# 0);
		};
	};
    if !(_display getVariable['canceled', false]) then {
        playSound['zoomout', false];
    };
};
M9SD_guifnc_openPPEffectMenu = {
    private _txtSize = M9SD_baseTxtSize * 1.05;
    private _txtSizeTitle = M9SD_baseTxtSize * 1.5;
    private _isEnabled = ppEffectEnabled 'ColorCorrections';
    disableSerialization;
    createDialog 'RscDisplayEmpty';
    private _display = findDisplay - 1;
    _display setVariable['isEnabled', _isEnabled];
    _display displayAddEventHandler['unload', {
        _this call M9SD_fnc_handlePPEffectMenuUnload
    }];
    private _titleBar = _display ctrlCreate['RscStructuredText', -1];
    _titleBar ctrlSetStructuredText parseText format["<t valign='middle' align='left' font='PuristaSemiBold' shadow='1' size='%1'><img image='\A3\modules_f_curator\data\portraitPostprocess_ca.paa'></img> EDIT EXTRA POST-PROCESSING EFFECTS</t>",
        _txtSizeTitle];
    _titleBar ctrlSetPosition[0.381406 * safezoneW + safezoneX, 0.307 * safezoneH + safezoneY, 0.237187 * safezoneW, 0.033 * safezoneH];
    _titleBar ctrlSetBackgroundColor(call M9SD_fnc_getColorSetting);
    _titleBar ctrlSetFade 1;
    _titleBar ctrlCommit 0;
    _titleBar ctrlSetFade 0;
    _titleBar ctrlCommit M9SD_ppEffectMenuFadeTime;
    _titleBar ctrlEnable false;
	_titleBar ctrlSetTooltip 'Made by M9-SD';
	
    private _background_back = _display ctrlCreate['IGUIBack', -1];
    _background_back ctrlSetPosition[0.381406 * safezoneW + safezoneX, 0.346 * safezoneH + safezoneY, 0.237187 * safezoneW, 0.308 * safezoneH];
    _background_back ctrlSetBackgroundColor[0, 0, 0, 0.6];
    _background_back ctrlSetFade 1;
    _background_back ctrlCommit 0;
    _background_back ctrlSetFade 0;
    _background_back ctrlCommit M9SD_ppEffectMenuFadeTime;
    _background_back ctrlEnable false;
    private _titleBar2 = _display ctrlCreate['RscStructuredText', -1];
    _titleBar2 ctrlSetStructuredText parseText format["<t valign='middle' align='left' shadow='1' size='%1'>Effect</t>",
        _txtSize];
    _titleBar2 ctrlSetPosition[0.386562 * safezoneW + safezoneX, 0.357 * safezoneH + safezoneY, 0.226875 * safezoneW, 0.022 * safezoneH];
    _titleBar2 ctrlSetBackgroundColor[0, 0, 0, 0.7];
    _titleBar2 ctrlSetFade 1;
    _titleBar2 ctrlCommit 0;
    _titleBar2 ctrlSetFade 0;
    _titleBar2 ctrlCommit M9SD_ppEffectMenuFadeTime;
    _titleBar2 ctrlEnable false;
    private _background = _display ctrlCreate['IGUIBack', -1];
    _background ctrlSetPosition[0.386562 * safezoneW + safezoneX, 0.379 * safezoneH + safezoneY, 0.226875 * safezoneW, 0.264 * safezoneH];
    _background ctrlSetBackgroundColor[0, 0, 0, 0.2];
    _background ctrlSetFade 1;
    _background ctrlCommit 0;
    _background ctrlSetFade 0;
    _background ctrlCommit M9SD_ppEffectMenuFadeTime;
    _background ctrlEnable false;
    private _listbox = _display ctrlCreate['RscListbox', -1];
    _listbox ctrlSetPosition[0.386562 * safezoneW + safezoneX, 0.379 * safezoneH + safezoneY, 0.226875 * safezoneW, 0.264 * safezoneH];
    comment "
    name,
    tooltip,
    scriptData ";
    _listbox ctrlSetFont "PuristaMedium";
    _listbox ctrlSetFontHeight(_txtSize * 0.04); {
        private _fxName = _x# 0;
        private _fxTip = _x# 1;
        private _fxScript = _x# 2;
        private _idx = _listbox lbAdd _fxName;
        _listbox lbSetTooltip[_idx, _fxTip];
        _listbox lbSetPicture[_idx, '\A3\modules_f_curator\data\iconPostprocess_ca.paa'];
        private _pColor = call M9SD_fnc_getColorSetting;
        _pColor set[3, 1];
        _listbox lbSetPictureColor[_idx, _pColor];
        private _addedBrightness = 0.5;
        _pColor set[0, (_pColor# 0) + _addedBrightness];
        _pColor set[1, (_pColor# 1) + _addedBrightness];
        _pColor set[2, (_pColor# 2) + _addedBrightness];
        _listbox lbSetColor[_idx, _pColor];
        _listbox lbSetData[_idx, _fxScript];
    }
    forEach M9SD_ppEffectArray;
    comment "Add placeholders to bottom so nothing gets cut off."; {
        private _index = _listbox lbAdd _x;
        _listbox lbSetData[_index, "[{},{}]"];
    }
    forEach['', ''];
    comment "Preview the effect when clicked on.";
    _listbox ctrlAddEventHandler['LBSelChanged', {
        params['_control', '_selectedIndex'];
        private _data = call compile(_control lbData _selectedIndex);
        if (_data isEqualTo[{}, {}]) exitWith {};
        call(_data# 0);
    }];
    _listbox ctrlSetFade 1;
    _listbox ctrlCommit 0;
    _listbox ctrlSetFade 0;
    _listbox ctrlCommit M9SD_ppEffectMenuFadeTime;
    _display setVariable['listbox', _listbox];
    _listbox lbSetCurSel - 1;
    private _cancelButton = _display ctrlCreate['RscButtonMenu', -1];
    _cancelButton ctrlSetPosition[0.381406 * safezoneW + safezoneX, 0.658 * safezoneH + safezoneY, 0.0670312 * safezoneW, 0.022 * safezoneH];
    _cancelButton ctrlSetStructuredText parseText format["<t valign='middle' align='center' font='PuristaSemiBold' shadow='0' size='%1'>CANCEL</t>",
        _txtSize];
    comment "Cancel button will close menu.";
    _cancelButton ctrlAddEventHandler["ButtonDown", {
        params["_control"];
        playSound['AddItemFailed', false];
        playSound['zoomout', false];
        private _display = ctrlParent _control;
        _display setVariable['canceled', true];
		{
            _x ctrlEnable false;
            _x ctrlSetFade 0;
            _x ctrlCommit 0;
            _x ctrlSetFade 1;
            _x ctrlCommit M9SD_ppEffectMenuFadeTime;
        }
        forEach allControls _display;
        _display spawn {
            uiSleep M9SD_ppEffectMenuFadeTime;
            _this closeDisplay 0;
        };
    }];
    _cancelButton ctrlSetFade 1;
    _cancelButton ctrlCommit 0;
    _cancelButton ctrlSetFade 0;
    _cancelButton ctrlCommit M9SD_ppEffectMenuFadeTime;
    private _applyButton = _display ctrlCreate['RscButtonMenu', -1];
    _applyButton ctrlSetPosition[0.551562 * safezoneW + safezoneX, 0.658 * safezoneH + safezoneY, 0.0670312 * safezoneW, 0.022 * safezoneH];
    _applyButton ctrlSetStructuredText parseText format["<t valign='middle' align='center' font='PuristaSemiBold' shadow='0' size='%1'>APPLY</t>",
        _txtSize];
    _applyButton ctrlAddEventHandler["ButtonDown", {
        params["_control"];
        private _display = ctrlParent _control;
		_display setVariable['applied', true];
        private _lb = _display getVariable 'listbox';
        private _index = lbCurSel _lb;
        if (_index == -1) exitWith {
            playSound['AddItemFailed', false];
            systemChat 'ERROR: No effect selected.';
        };
        private _fxScriptData = call compile(_lb lbData _index);
        if (_fxScriptData isEqualTo[{}, {}]) exitWith {
            playSound['AddItemFailed', false];
            systemChat 'ERROR: No effect selected.';
        };
        uiNamespace setVariable['M9SD_activePPEffectData', [_index, _fxScriptData]];
        call(_fxScriptData# 1);
        showChat true;
        systemChat format['Applied PP Color Corection: %1', (_lb lbText _index)];
        _display closeDisplay 0;
        playSound['AddItemOK', false];
    }];
	_applyButton ctrlSetTooltip 'Sync the theme with all clients.';
    _applyButton ctrlSetFade 1;
    _applyButton ctrlCommit 0;
    _applyButton ctrlSetFade 0;
    _applyButton ctrlCommit M9SD_ppEffectMenuFadeTime;
};
M9SD_fnc_openPPEffectMenu = {
    findDisplay 49 closeDisplay 0;
    playSound['zoomin', false];
    with uiNamespace do M9SD_guifnc_openPPEffectMenu;
};
private _spawnEffectMenu = [] spawn M9SD_fnc_openPPEffectMenu;