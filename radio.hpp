class Life_Radio
{
	 idd = 11122;
	 name = "Life_Radio";
	 movingEnabled = false;
	 enableSimulation = true;
	 class controlsBackground {
		class Life_RscText_1000: Life_RscText
		{
			idc = 1000;
			x = 0.416265 * safezoneW + safezoneX;
			y = 0.377813 * safezoneH + safezoneY;
			w = 0.163062 * safezoneW;
			h = 0.140985 * safezoneH;
			colorBackground[] = {-1,-1,-1,0.8};
		};
		 
		class Life_RscText_1002: Life_RscText
		{
			idc = 1002;
			text = "Radio";
			x = 0.416265 * safezoneW + safezoneX;
			y = 0.349616 * safezoneH + safezoneY;
			w = 0.163062 * safezoneW;
			h = 0.0281971 * safezoneH;
			colorBackground[] = {-1,-1,-1,1};
		};
	};
 
	class controls 
	{
		class Life_RscEdit_1400: Life_RscEdit
		{
			idc = 1400;
			text = "0";
			x = 0.46915 * safezoneW + safezoneX;
			y = 0.396611 * safezoneH + safezoneY;
			w = 0.101363 * safezoneW;
			h = 0.0281971 * safezoneH;
		};
		class Life_RscText_1001: Life_RscText
		{
			idc = 1001;
			text = "Frequency:";
			x = 0.420672 * safezoneW + safezoneX;
			y = 0.396611 * safezoneH + safezoneY;
			w = 0.0572922 * safezoneW;
			h = 0.0281971 * safezoneH;
		};
		class Life_RscCheckbox_2800: Life_Checkbox
		{
			idc = 2800;
			x = 0.466545 * safezoneW + safezoneX;
			y = 0.440366 * safezoneH + safezoneY;
			w = 0.0132213 * safezoneW;
			h = 0.018798 * safezoneH;
		};
		class Life_RscText_1003: Life_RscText
		{
			idc = 1003;
			text = "Mute:"; //--- ToDo: Localize;
			x = 0.420672 * safezoneW + safezoneX;
			y = 0.434207 * safezoneH + safezoneY;
			w = 0.0440709 * safezoneW;
			h = 0.0281971 * safezoneH;
		};
		class Life_RscButton_1600: RscButton
		{
			idc = 1600;
			text = "Apply"; //--- ToDo: Localize;
			x = 0.416265 * safezoneW + safezoneX;
			y = 0.490601 * safezoneH + safezoneY;
			w = 0.163062 * safezoneW;
			h = 0.0281971 * safezoneH;
			colorBackground[] = {-1,-1,-1,1};
		};
	};
};
