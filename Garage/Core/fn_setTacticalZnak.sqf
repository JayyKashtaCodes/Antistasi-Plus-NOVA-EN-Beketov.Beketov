/*
    Author: NOVA
    [Description]
        Наносим тактические знаки на технику

    Arguments:
    0. <String> Class класс техники
	1. <String> объект _vehicle

    Return Value: none
    
    Scope: Any
    Environment: unscheduled
    Public: [Yes]
    Dependencies:

    Example: [_class , _veh] call fnc_setTacticalZnak;

    License: APL-ND
*/
//#include "defines.inc"
//FIX_LINE_NUMBERS()
params ["_class", "_veh"];
//if ( !isClass (configFile >> "CfgVehicles" >> _class) ) exitWith { Error_1("Invalid Input: %1", _class); -1 };

private _znakZ1pos = []; //перед
private _znakZ1rot = [];

private _znakZ2pos = []; //верх
private _znakZ2rot = [];

private _znakZ3pos = []; //зад
private _znakZ3rot = [];

private _znakZ4pos = []; //лево
private _znakZ4rot = [];

private _znakZ5pos = []; //право 
private _znakZ5rot = [];
 

switch (true) do {
    case ("rhs_btr80" in _class):	//Если техника БТР80, БТР80А
			{ 	
				//координаты позиции и вращения знака берем из атрибутов в редакторе VR, технику выставляем в ноль
				//все числа в массиве вращения для левой стороны меняем на числа для для правой стороны
				_znakZ1pos = [-0.15,2.77,1.15]; //перед
				_znakZ1rot = [49,0,180];
				
				_znakZ2pos = [-0.15,-1.2,2.14]; //верх
				_znakZ2rot = [90,0,0];
				
				_znakZ3pos = [-0.17,-4.3,0.99]; //зад
				_znakZ3rot = [349,0,0];
				
				_znakZ4pos = [-1.33,-1.5,1.7]; //левый
				_znakZ4rot = [0,36,270];
				
				_znakZ5pos = [1,-1.5,1.7]; //правый
				_znakZ5rot = [0,326,90];
			};
	case ("B_Quadbike_01_F" == _class):	
			{ 	_znakZ1pos = [0,0.73,1.05];  //перед
				_znakZ1rot = [278,0,180];

				_znakZ4pos = [-0.23,0,0.97]; //левый
				_znakZ4rot = [0,10,278];
				
				_znakZ5pos = [0.23,0,0.97]; //правый
				_znakZ5rot = [0,350,82];
			};		
			
    case (("rhs_tigr_vdv" == _class) || ("rhs_tigr_3camo_msv" == _class)):	
			{ 	_znakZ1pos = [-0.05,1.75,1.73];  //перед
				_znakZ1rot = [265,179,0];
				
				_znakZ2pos = [-0.32,-1.84,2.33];  //верх
				_znakZ2rot = [90,0,0]; 
				
				_znakZ3pos = [-0.5,-2.32,1.49]; //зад
				_znakZ3rot = [0,0,0];
				
				_znakZ4pos = [-1.2,-0.4,1.3]; //левый
				_znakZ4rot = [0,0,270];
				
				_znakZ5pos = [1.1,-0.4,1.3]; //правый
				_znakZ5rot = [0,0,90];
			};
	case ("rhs_tigr_m_3camo_msv" == _class):	
			{ 	_znakZ1pos = [0.05,1.65,1.8];  //перед
				_znakZ1rot = [268,179,0];
			
				_znakZ2pos = [0,-1.8,2.32];  //верх
				_znakZ2rot = [90,0,0]; 
				
				_znakZ3pos = [-0.4,-2.32,1.5]; //зад
				_znakZ3rot = [0,0,0];
				
				_znakZ4pos = [-1.12,-0.4,1.3];  //левый
				_znakZ4rot = [0,0,270];
				
				_znakZ5pos = [1.18,-0.4,1.3];  //правый
				_znakZ5rot = [0,0,90];
			};
	case ("rhs_tigr_sts_3camo_msv" == _class):	
			{ 	_znakZ1pos = [-0.05,1.75,1.74];  //перед
				_znakZ1rot = [265,179,0];
				
				_znakZ2pos = [0,-1.71,2.32];  //верх
				_znakZ2rot = [90,0,0]; 
				
				_znakZ3pos = [-0.45,-2.25,1.49]; //зад
				_znakZ3rot = [0,0,0];
				
				_znakZ4pos = [-1.16,-0.4,1.3];  //левый
				_znakZ4rot = [0,0,270];
				
				_znakZ5pos = [1.14,-0.4,1.3];  //правый
				_znakZ5rot = [0,0,90];
			};
	case ("rhsgref_BRDM2" in _class):	
			{ 	_znakZ1pos = [0,2.7,1.72];  //перед
				_znakZ1rot = [283,0,180]; 
				
				_znakZ2pos = [0,-1.6,2.19];  //верх
				_znakZ2rot = [82,0,0]; 
				
				_znakZ3pos = [0.57,-2.6,1.45];  //зад
				_znakZ3rot = [0,0,0]; 
				
				_znakZ4pos = [-1.17,-2.21,1.47];  //левый
				_znakZ4rot = [0,0,270];
				
				_znakZ5pos = [1.16,-0.42,1.45];  //правый
				_znakZ5rot = [0,0,90];
			};
	case ("RHS_Ural_Zu23_MSV_01" == _class):	
			{ 	_znakZ1pos = [-0.03,3.4,2.3];  //перед
				_znakZ1rot = [276,0,180]; 
				
				_znakZ2pos = [-0.03,1.74,2.95];  //верх
				_znakZ2rot = [90,0,0]; 
				
				_znakZ3pos = [0,-3.36,1.9];  //зад
				_znakZ3rot = [0,0,0]; 
				
				_znakZ4pos = [-1.24,-0.89,1.93];  //левый
				_znakZ4rot = [0,0,270];
				
				_znakZ5pos = [1.19,-0.89,1.9];  //правый
				_znakZ5rot = [0,0,90];
			};
	case (("RHS_Ural_Open_MSV_01" == _class) || ("RHS_Ural_Open_Flat_MSV_01" == _class) || ("RHS_Ural_Open_VV_01" == _class)):	
			{ 	_znakZ1pos = [-0.03,3.4,2.34];  //перед
				_znakZ1rot = [274,0,180]; 
				
				_znakZ2pos = [-0.03,2.15,2.96];  //верх
				_znakZ2rot = [90,0,0]; 
				
				_znakZ3pos = [0,-2.93,1.9];  //зад
				_znakZ3rot = [0,0,0]; 
				
				_znakZ4pos = [-1.23,-0.46,1.93];  //левый
				_znakZ4rot = [0,0,270];
				
				_znakZ5pos = [1.22,-0.48,1.9];  //правый
				_znakZ5rot = [0,0,90];
			};
	case ("RHS_Ural_Fuel_MSV_01" == _class):	
			{ 	_znakZ1pos = [-0.03,3.4,2.31];  //перед?
				_znakZ1rot = [274,0,180]; 
				
				_znakZ2pos = [-0.05,-0.17,2.94];  //верх
				_znakZ2rot = [90,0,0]; 
				
				_znakZ3pos = [-0.07,-3.55,2.08];  //зад
				_znakZ3rot = [357,0,0]; 
				
				_znakZ4pos = [-1.03,1.98,1.86];  //левый
				_znakZ4rot = [0,0,270];
				
				_znakZ5pos = [1.09,1.9,1.82];  //правый
				_znakZ5rot = [0,0,90];
			};
	case (("RHS_Ural_VV_01" == _class) || ("RHS_Ural_MSV_01" == _class)):	
			{ 	_znakZ1pos = [-0.03,3.4,2.30];  //перед
				_znakZ1rot = [276,0,180]; 
				
				_znakZ2pos = [0,-1.9,3.19];  //верх
				_znakZ2rot = [90,0,0]; 
				
				_znakZ3pos = [-0.04,-3.36,1.86];  //зад
				_znakZ3rot = [0,0,0]; 
				
				_znakZ4pos = [-1.29,-0.93,2.5];  //левый
				_znakZ4rot = [0,0,270];
				
				_znakZ5pos = [1.28,-0.86,2.49];  //правый
				_znakZ5rot = [0,0,90];
			};
	case (("rhs_kamaz5350_msv" == _class) || ("rhs_kamaz5350_flatbed_cover_msv" == _class)):	
			{ 	_znakZ1pos = [0.09,4.23,2.03];  //перед
				_znakZ1rot = [350,0,180]; 
				
				_znakZ2pos = [0.08,-1.3,3.33];  //верх
				_znakZ2rot = [90,0,0]; 
				
				_znakZ3pos = [0.09,-3.39,2.03];  //зад
				_znakZ3rot = [0,0,0]; 
				
				_znakZ4pos = [-1.2,-0.9,2.47];  //левый
				_znakZ4rot = [0,0,270];
				
				_znakZ5pos = [1.38,-0.81,2.49];  //правый
				_znakZ5rot = [0,0,90];
			};
	case (("rhs_kamaz5350_flatbed_msv" == _class) || ("rhs_kamaz5350_open_msv" == _class)):	
			{ 	_znakZ1pos = [0.09,4.23,2.02];  //перед
				_znakZ1rot = [351,0,180]; 
				
				_znakZ2pos = [0.08,3.2,3.1];  //верх
				_znakZ2rot = [95,0,0]; 
				
				_znakZ3pos = [0.09,-3.39,2.03];  //зад
				_znakZ3rot = [0,0,0]; 
				
				_znakZ4pos = [-1.15,-0.45,2.04];  //левый
				_znakZ4rot = [0,0,270];
				
				_znakZ5pos = [1.35,-0.43,1.98];  //правый
				_znakZ5rot = [0,0,90];
			};
	case ("rhs_gaz66_zu23_msv" == _class):	
			{ 	_znakZ1pos = [-0.63,2.90,1.61];  //перед
				_znakZ1rot = [0,0,180]; 
				
				_znakZ2pos = [-0.02,1.88,2.73];  //верх
				_znakZ2rot = [90,0,0]; 
				
				_znakZ3pos = [0,-2.45,1.40];  //зад
				_znakZ3rot = [0,0,0]; 
				
				_znakZ4pos = [-1.09,-0.38,1.43];  //левый
				_znakZ4rot = [0,0,270];
				
				_znakZ5pos = [1.04,-0.35,1.42];  //правый
				_znakZ5rot = [0,0,90];
			};
	case ("rhs_gaz66_ap2_msv" == _class):	
			{ 	_znakZ1pos = [0.5,2.86,1.54];  //перед
				_znakZ1rot = [0,0,180]; 
				
				_znakZ2pos = [-0.4,-1.17,3.4];  //верх
				_znakZ2rot = [90,0,0]; 
				
				_znakZ3pos = [0.45,-2.46,2.14];  //зад
				_znakZ3rot = [0,0,0]; 
				
				_znakZ4pos = [-1.31,-0.33,2.05];  //левый
				_znakZ4rot = [0,0,270];
				
				_znakZ5pos = [1.28,-0.3,2.06];  //правый
				_znakZ5rot = [0,0,90];
			};
	case ("rhs_gaz66_repair_msv" == _class):	
			{ 	_znakZ1pos = [0.51,3.07,1.54];  //перед
				_znakZ1rot = [0,0,180]; 
				
				_znakZ2pos = [0,-0.48,3.26];  //верх
				_znakZ2rot = [90,0,0]; 
				
				_znakZ3pos = [0.35,-2.26,1.98];  //зад
				_znakZ3rot = [0,0,0]; 
				
				_znakZ4pos = [-1.24,-0.59,2];  //левый
				_znakZ4rot = [0,0,270];
				
				_znakZ5pos = [1.18,0.77,2.06];  //правый
				_znakZ5rot = [0,0,90];
			};
	case ("rhs_gaz66_ammo_msv" == _class):	
			{ 	_znakZ1pos = [0.55,2.8,1.54];  //перед
				_znakZ1rot = [0,0,180]; 
				
				_znakZ2pos = [-0.05,1.9,2.7];  //верх
				_znakZ2rot = [90,0,0]; 
				
				_znakZ3pos = [0,-2.57,1.44];  //зад
				_znakZ3rot = [0,0,0]; 
				
				_znakZ4pos = [-1.15,2,1.68];  //левый
				_znakZ4rot = [0,0,270];
				
				_znakZ5pos = [1.1,1.92,1.64];  //правый
				_znakZ5rot = [0,0,90];
			};
	case ("rhs_gaz66" in _class):	
			{ 	_znakZ1pos = [0.54,3.15,1.49];  //перед
				_znakZ1rot = [0,0,180]; 
				
				_znakZ2pos = [-0.05,2.11,2.7];  //верх
				_znakZ2rot = [90,0,0]; 
				
				_znakZ3pos = [0,-2.23,1.44];  //зад
				_znakZ3rot = [0,0,0]; 
				
				_znakZ4pos = [-1.15,2.31,1.68];  //левый
				_znakZ4rot = [0,0,270];
				
				_znakZ5pos = [1.1,2.28,1.62];  //правый
				_znakZ5rot = [0,0,90];
			};
	case ("rhs_btr70_msv" == _class):	
			{ 	_znakZ1pos = [-0.41,2.66,1.14];  //перед
				_znakZ1rot = [46,0,180]; 
				
				_znakZ2pos = [-0.49,-1.64,2.02];  //верх
				_znakZ2rot = [90,0,0]; 
				
				_znakZ3pos = [-1.08,-4.41,1.3];  //зад
				_znakZ3rot = [0,0,0]; 
				
				_znakZ4pos = [-1.56,-0.34,1.71];  //левый
				_znakZ4rot = [0,30,270];
				
				_znakZ5pos = [0.68,-0.34,1.71];  //правый
				_znakZ5rot = [0,330,90];
			};
	case ("rhs_bmp3m_msv" == _class):	
			{ 	_znakZ1pos = [0,2.94,1.25];  //перед
				_znakZ1rot = [34,0,180]; 
				
				_znakZ2pos = [-0.37,-1.3,1.94];  //верх
				_znakZ2rot = [90,0,0]; 
				
				_znakZ3pos = [0.02,-3.61,1.5];  //зад
				_znakZ3rot = [0,0,0]; 
				
				_znakZ4pos = [-1.44,-2.62,1.68];  //левый
				_znakZ4rot = [0,0,270];
				
				_znakZ5pos = [1.46,-0.94,1.66];  //правый
				_znakZ5rot = [0,0,90];
			};
	case ("rhs_bmp3mera_msv" == _class):	
			{ 	_znakZ1pos = [0,2.94,1.25];  //перед
				_znakZ1rot = [34,0,180]; 
				
				_znakZ2pos = [-0.37,-1.3,1.94];  //верх
				_znakZ2rot = [90,0,0]; 
				
				_znakZ3pos = [0.02,-3.61,1.5];  //зад
				_znakZ3rot = [0,0,0]; 
				
				_znakZ4pos = [-1.62,0.21,1.49];  //левый
				_znakZ4rot = [0,0,270];
				
				_znakZ5pos = [1.63,0.07,1.46];  //правый
				_znakZ5rot = [0,0,90];
			};
	case ("rhs_bmp2d_msv" == _class):	
			{ 	_znakZ1pos = [-0.2,3.14,1.17];  //перед
				_znakZ1rot = [52,0,180]; 
				
				_znakZ2pos = [0.14,-2.7,1.92];  //верх
				_znakZ2rot = [90,0,0]; 
				
				_znakZ3pos = [-0.76,-3.24,1.2];  //зад
				_znakZ3rot = [345,0,0]; 
				
				_znakZ4pos = [-1.77,1.48,1.2];  //левый
				_znakZ4rot = [0,0,270];
				
				_znakZ5pos = [1.34,0.58,1.22];  //правый
				_znakZ5rot = [0,0,90];
			};
	case (("rhs_bmp2k_msv" == _class) || ("rhs_bmp2k_vmf" == _class)):	
			{ 	_znakZ1pos = [-0.2,3.14,1.17];  //перед
				_znakZ1rot = [52,0,180]; 
				
				_znakZ2pos = [0.14,-2.7,1.92];  //верх
				_znakZ2rot = [90,0,0]; 
				
				_znakZ3pos = [-0.76,-3.24,1.2];  //зад
				_znakZ3rot = [345,0,0]; 
				
				_znakZ4pos = [-1.86,0.24,1.33];  //левый
				_znakZ4rot = [0,0,270];
				
				_znakZ5pos = [1.44,-0.66,1.34];  //правый
				_znakZ5rot = [0,0,90];
			};
	case ("rhs_bmd4_vdv" == _class):	
			{ 	_znakZ1pos = [0,3.26,1.24];  //перед
				_znakZ1rot = [35,0,180]; 
				
				_znakZ2pos = [1.19,-1.43,1.92];  //верх
				_znakZ2rot = [90,0,0]; 
				
				_znakZ3pos = [-0.33,-2.7,1.04];  //зад
				_znakZ3rot = [0,0,0]; 
				
				_znakZ4pos = [-1.5,0.35,1.64];  //левый
				_znakZ4rot = [0,0,270];
				
				_znakZ5pos = [1.51,0.45,1.63];  //правый
				_znakZ5rot = [0,0,90];
			};
	case ("rhs_bmd4m_vdv" == _class):	
			{ 	_znakZ1pos = [0,3.14,1.48];  //перед
				_znakZ1rot = [35,0,180]; 
				
				_znakZ2pos = [-0.54,-1.64,1.98];  //верх
				_znakZ2rot = [90,0,0]; 
				
				_znakZ3pos = [-0.54,-2.95,1.73];  //зад
				_znakZ3rot = [0,0,0]; 
				
				_znakZ4pos = [-1.51,-1.06,1.77];  //левый
				_znakZ4rot = [0,0,270];
				
				_znakZ5pos = [1.54,0.83,1.73];  //правый
				_znakZ5rot = [0,0,90];
			};
	case ("rhs_bmd4ma_vdv" == _class):	
			{ 	_znakZ1pos = [0,3.26,1.48];  //перед
				_znakZ1rot = [35,0,180]; 
				
				_znakZ2pos = [-0.54,-1.64,1.98];  //верх
				_znakZ2rot = [90,0,0]; 
				
				_znakZ3pos = [-0.54,-2.95,1.73];  //зад
				_znakZ3rot = [0,0,0]; 
				
				_znakZ4pos = [-1.58,0.59,1.18];  //левый
				_znakZ4rot = [0,0,270];
				
				_znakZ5pos = [1.64,0.56,1.2];  //правый
				_znakZ5rot = [0,0,90];
			};
	case ("rhs_t72ba_tv" == _class):	
			{ 	_znakZ1pos = [0.04,2.56,1.08];  //перед
				_znakZ1rot = [290,0,180]; 
				
				_znakZ4pos = [-1.76,-0.16,1.13];  //левый
				_znakZ4rot = [0,0,270];
				
				_znakZ5pos = [1.75,0.51,1.11];  //правый
				_znakZ5rot = [0,0,90];
			};
	case ("rhs_t72bb_tv" == _class):	
			{ 	_znakZ1pos = [0.04,2.36,1.24];  //перед
				_znakZ1rot = [290,0,180]; 
				
				_znakZ4pos = [-1.83,0.62,1.13];  //левый
				_znakZ4rot = [0,0,270];
				
				_znakZ5pos = [1.82,0.62,1.11];  //правый
				_znakZ5rot = [0,0,90];
			};
	case ("rhs_t72be_tv" == _class):	
			{ 	_znakZ1pos = [0,2.6,1.08];  //перед
				_znakZ1rot = [290,0,180]; 
				
				_znakZ4pos = [-1.82,0.2,1.1];  //левый
				_znakZ4rot = [0,0,270];
				
				_znakZ5pos = [1.77,0.12,1.12];  //правый
				_znakZ5rot = [0,0,90];
			};
	case ("rhs_t80" == _class):	
			{ 	_znakZ1pos = [0,2.42,1.08];  //перед
				_znakZ1rot = [290,0,180]; 
				
				_znakZ4pos = [-1.78,0.35,1.17];  //левый
				_znakZ4rot = [0,0,270];
				
				_znakZ5pos = [1.71,0.4,1.13];  //правый
				_znakZ5rot = [0,0,90];
			};
	case ("rhs_t80b" == _class):	
			{ 	_znakZ1pos = [-0.52,1.93,0.73];  //перед
				_znakZ1rot = [0,0,180]; 
				
				_znakZ4pos = [-1.78,-1.14,1.17];  //левый
				_znakZ4rot = [0,0,270];
				
				_znakZ5pos = [1.71,-1.12,1.13];  //правый
				_znakZ5rot = [0,0,90];
			};
	case ("rhs_t80bv" == _class):	
			{ 	_znakZ1pos = [-0.03,1.39,1.26];  //перед
				_znakZ1rot = [290,0,180]; 
				
				_znakZ4pos = [-1.1,-0.86,0.92];  //левый
				_znakZ4rot = [0,0,270];
				
				_znakZ5pos = [1.01,-0.86,0.87];  //правый
				_znakZ5rot = [0,0,90];
			};
	case ("rhs_t80um" == _class):	
			{ 	_znakZ1pos = [-0.1,1.64,0.75];  //перед
				_znakZ1rot = [40,0,180]; 
				
				_znakZ4pos = [-1.87,-0.58,1.29];  //левый
				_znakZ4rot = [0,0,270];
				
				_znakZ5pos = [1.63,-0.56,1.31];  //правый
				_znakZ5rot = [0,0,90];
			};
	case ("rhs_t90a_tv" == _class):	
			{ 	_znakZ1pos = [0,2.64,1.08];  //перед
				_znakZ1rot = [290,0,180]; 
				
				_znakZ4pos = [-1.8,0.83,1.37];  //левый
				_znakZ4rot = [0,0,270];
				
				_znakZ5pos = [1.79,0.82,1.34];  //правый
				_znakZ5rot = [0,0,90];
			};
	case ("rhs_t90sab_tv" == _class):	
			{ 	_znakZ1pos = [0,2.64,1.08];  //перед
				_znakZ1rot = [290,0,180]; 
				
				_znakZ4pos = [-1.8,0.83,1.33];  //левый
				_znakZ4rot = [0,0,270];
				
				_znakZ5pos = [1.79,0.82,0.99];  //правый
				_znakZ5rot = [0,0,90];
			};
	case ("rhs_t90sm_tv" == _class):	
			{ 	_znakZ1pos = [0,2.64,1.14];  //перед
				_znakZ1rot = [295,0,180]; 
				
				_znakZ4pos = [-1.8,0.83,1.33];  //левый
				_znakZ4rot = [0,0,270];
				
				_znakZ5pos = [1.79,0.82,0.99];  //правый
				_znakZ5rot = [0,0,90];
			};
	case ("min_rf_sa_22" == _class):	
			{ 	_znakZ1pos = [-0.1,5.15,1.77];  //перед
				_znakZ1rot = [352,0,180]; 
				
				_znakZ3pos = [-0.05,-4.63,1.91];  //зад
				_znakZ3rot = [0,0,0];
				
				_znakZ4pos = [-1.44,1.86,2.44];  //левый
				_znakZ4rot = [0,0,270];
				
				_znakZ5pos = [1.19,1.89,2.43];  //правый
				_znakZ5rot = [0,0,90];
			};
	case ("rhs_bmd2" in _class):	
			{ 	_znakZ1pos = [0.01,2.5,1.22];  //перед
				_znakZ1rot = [52,0,180];

				_znakZ2pos = [-0.88,-1.3,1.7];  //верх
				_znakZ2rot = [90,0,0];
				
				_znakZ3pos = [0.37,-2.71,0.95];  //зад
				_znakZ3rot = [350,0,0];
				
				_znakZ4pos = [-1.32,-2.24,1.46];  //левый
				_znakZ4rot = [0,0,270];
				
				_znakZ5pos = [1.34,-2,1.45];  //правый
				_znakZ5rot = [0,0,90];
			};
	case ("rhs_zsu234_aa" == _class):	
			{ 	_znakZ1pos = [0.49,2.35,1.4];  //перед
				_znakZ1rot = [305,0,180];

				_znakZ3pos = [0.56,-3.26,1.58];  //зад
				_znakZ3rot = [45,0,0];
				
				_znakZ4pos = [-1.46,1.12,1.52];  //левый
				_znakZ4rot = [0,0,270];
				
				_znakZ5pos = [1.48,0.94,1.5];  //правый
				_znakZ5rot = [0,0,90];
			};
	case ("rhs_uaz" in _class):	
			{ 	_znakZ1pos = [-0.05,1.4,1.35];  //перед
				_znakZ1rot = [275,0,180];
				
				_znakZ4pos = [-0.93,0.35,0.95];  //левый
				_znakZ4rot = [0,0,270];
				
				_znakZ5pos = [0.83,0.35,0.97];  //правый
				_znakZ5rot = [0,0,90];
			};
	case ("rhsgref_ins_g_uaz_dshkm_chdkz" == _class):	
			{ 	_znakZ1pos = [0,1.4,1.35];  //перед
				_znakZ1rot = [275,0,180];
				
				_znakZ4pos = [-0.87,0.37,0.95];  //левый
				_znakZ4rot = [0,0,270];
				
				_znakZ5pos = [0.87,0.35,0.97];  //правый
				_znakZ5rot = [0,0,90];
			};
	case ("rhs_zil131_vv" in _class):	
			{ 	_znakZ1pos = [0.01,3.3,2.1];  //перед
				_znakZ1rot = [277,0,180];
				
				_znakZ4pos = [-1,2.16,1.56];  //левый
				_znakZ4rot = [0,0,270];
				
				_znakZ5pos = [1,2.17,1.53];  //правый
				_znakZ5rot = [0,0,90];
			};
	case ("rhs_kraz255b1_cargo_open_vv" == _class):	
			{ 	_znakZ1pos = [-0.04,4.2,2.32];  //перед
				_znakZ1rot = [275,0,180];

				_znakZ2pos = [-0.04,2.3,3.07];  //верх
				_znakZ2rot = [90,0,0];
				
				_znakZ3pos = [-0.02,-3.48,1.97];  //зад
				_znakZ3rot = [0,0,0];
				
				_znakZ4pos = [-1.01,-2.55,1.94];  //левый
				_znakZ4rot = [0,0,270];
				
				_znakZ5pos = [0.96,2.55,1.94];  //правый
				_znakZ5rot = [0,0,90];
			};
	case ("rhs_btr60_vv" == _class):	
			{ 	_znakZ1pos = [0.08,3.64,1.15];  //перед
				_znakZ1rot = [45,0,180];

				_znakZ2pos = [-0.4,-0.85,2.17];  //верх
				_znakZ2rot = [90,0,0];
				
				_znakZ3pos = [0.01,-3.35,1.17];  //зад
				_znakZ3rot = [0,0,0];
				
				_znakZ4pos = [-1.01,1.54,1.83];  //левый
				_znakZ4rot = [0,30,270];
				
				_znakZ5pos = [1.06,-0.41,1.79];  //правый
				_znakZ5rot = [0,330,90];
			};
	case ("RHS_BM21_MSV_01" == _class):	
			{ 	_znakZ1pos = [0,2.9,2.26];  //перед
				_znakZ1rot = [279,0,180];

				_znakZ2pos = [0,1.3,2.94];  //верх
				_znakZ2rot = [90,0,0];
				
				_znakZ3pos = [-0.88,-3.21,1.42];  //зад
				_znakZ3rot = [35,0,0];
				
				_znakZ4pos = [-1.24,0.09,1.24];  //левый
				_znakZ4rot = [0,0,270];
				
				_znakZ5pos = [1.27,-0.07,1.48];  //правый
				_znakZ5rot = [0,0,90];
			};
	case ("RHS_Su25SM_CAS_vvs" == _class):	
			{ 	
				_znakZ4pos = [-0.37,-4.25,2.2];  //левый
				_znakZ4rot = [0,0,270];
				
				_znakZ5pos = [0.37,-4.28,2.14];  //правый
				_znakZ5rot = [0,0,90];
			};
	case ("rhs_ka60_c" == _class):	
			{ 	
				_znakZ4pos = [-1.32,-5.03,1.97];  //левый
				_znakZ4rot = [0,0,270];
				
				_znakZ5pos = [1.34,-5,1.87];  //правый
				_znakZ5rot = [0,0,90];
			};
	case ("RHS_Mi8" in _class):	
			{ 	
				_znakZ4pos = [-1.24,5.3,1.55];  //левый
				_znakZ4rot = [0,0,270];
				
				_znakZ5pos = [1.26,4.56,1.87];  //правый
				_znakZ5rot = [0,0,90];
			};
	case ("rhsgref_mi24g_CAS" == _class):	
			{ 	
				_znakZ4pos = [-0.25,4.68,1.84];  //левый
				_znakZ4rot = [0,0,270];
				
				_znakZ5pos = [1.41,4.67,1.87];  //правый
				_znakZ5rot = [0,0,90];
			};
	case ("RHS_Mi24P_vvsc" == _class):	
			{ 	
				_znakZ4pos = [-0.25,4.87,1.84];  //левый
				_znakZ4rot = [0,0,270];
				
				_znakZ5pos = [1.41,4.92,1.87];  //правый
				_znakZ5rot = [0,0,90];
			};
	case ("RHS_Mi24V_vvsc" == _class):	
			{ 	
				_znakZ4pos = [-0.93,4.89,1.84];  //левый
				_znakZ4rot = [0,0,270];
				
				_znakZ5pos = [0.75,4.92,1.87];  //правый
				_znakZ5rot = [0,0,90];
			};
	case ("rhs_mi28n_vvs" == _class):	
			{ 	
				_znakZ4pos = [-0.96,-0.12,2.51];  //левый
				_znakZ4rot = [0,0,270];
				
				_znakZ5pos = [2.25,-0.18,2.53];  //правый
				_znakZ5rot = [0,0,90];
			};
	case ("RHS_Ka52_vvs" == _class):	
			{ 	
				_znakZ4pos = [-0.73,-2.7,1.39];  //левый
				_znakZ4rot = [0,0,270];
				
				_znakZ5pos = [0.74,-2.68,1.33];  //правый
				_znakZ5rot = [0,0,90];
			};
	
	default { [typeOf _veh,"Тактический Знак для транспорта не найден!"] call A3A_fnc_customHint;}; 
};
	
	//создаем объект Z1
	if (count _znakZ1pos > 0) then {
		private _znakZ1 = createVehicle ["UserTexture1m_F", [0,0,1000], [], 0, "NONE"];
		_znakZ1 setObjectTextureGlobal [0,TZnakTexture]; //TZnakTexture - глобальная строковая переменная (Ex: "Z\Z.paa")
		_znakZ1 setPosASL [(getPosASL _veh select 0)+(_znakZ1pos select 0), (getPosASL _veh select 1)+(_znakZ1pos select 1), (getPosASL _veh select 2)+(_znakZ1pos select 2)]; //установка позиции на технике (в редакторе Позиция x,y,z)
		_vDirUp = [[vectorDirVisual _znakZ1, vectorUpVisual _znakZ1], (_znakZ1rot select 2), -(_znakZ1rot select 0), (_znakZ1rot select 1)] call BIS_fnc_transformVectorDirAndUp;//установка наклона на технике (в редакторе Вращения z,-x,y)
		_znakZ1 setVectorDirAndUp _vDirUp;//присваиваем новый вектор наклона технике
		//[_znakZ1, [180, -49, 0]] call BIS_fnc_setObjectRotation; //работает не корректно
		[_znakZ1, _veh] call BIS_fnc_attachToRelative; //связываем знак с техникой
	};
				
	//создаем объект Z2
	if (count _znakZ2pos > 0) then {
		private _znakZ2 = createVehicle ["UserTexture1m_F", [0,0,1100], [], 0, "NONE"];
		_znakZ2 setObjectTextureGlobal [0,TZnakTexture];
		_znakZ2 setPosASL [(getPosASL _veh select 0)+(_znakZ2pos select 0), (getPosASL _veh select 1)+(_znakZ2pos select 1), (getPosASL _veh select 2)+(_znakZ2pos select 2)];
		_vDirUp = [[vectorDirVisual _znakZ2, vectorUpVisual _znakZ2], (_znakZ2rot select 2), -(_znakZ2rot select 0), (_znakZ2rot select 1)] call BIS_fnc_transformVectorDirAndUp;
		_znakZ2 setVectorDirAndUp _vDirUp;
		[_znakZ2, _veh] call BIS_fnc_attachToRelative;
	};
				
	//создаем объект Z3
	if (count _znakZ3pos > 0) then {
		private _znakZ3 = createVehicle ["UserTexture1m_F", [0,0,1200], [], 0, "NONE"];
		_znakZ3 setObjectTextureGlobal [0,TZnakTexture];
		_znakZ3 setPosASL [(getPosASL _veh select 0)+(_znakZ3pos select 0), (getPosASL _veh select 1)+(_znakZ3pos select 1), (getPosASL _veh select 2)+(_znakZ3pos select 2)];
		_vDirUp = [[vectorDirVisual _znakZ3, vectorUpVisual _znakZ3], (_znakZ3rot select 2), -(_znakZ3rot select 0), (_znakZ3rot select 1)] call BIS_fnc_transformVectorDirAndUp;
		_znakZ3 setVectorDirAndUp _vDirUp;
		[_znakZ3, _veh] call BIS_fnc_attachToRelative;
					
	};
	
	//создаем объект Z4
	if (count _znakZ4pos > 0) then {
		private _znakZ4 = createVehicle ["UserTexture1m_F", [0,0,1300], [], 0, "NONE"];
		_znakZ4 setObjectTextureGlobal [0,TZnakTexture];
		_znakZ4 setPosASL [(getPosASL _veh select 0)+(_znakZ4pos select 0), (getPosASL _veh select 1)+(_znakZ4pos select 1), (getPosASL _veh select 2)+(_znakZ4pos select 2)];
		_vDirUp = [[vectorDirVisual _znakZ4, vectorUpVisual _znakZ4], (_znakZ4rot select 2), -(_znakZ4rot select 0), (_znakZ4rot select 1)] call BIS_fnc_transformVectorDirAndUp;
		_znakZ4 setVectorDirAndUp _vDirUp;
		[_znakZ4, _veh] call BIS_fnc_attachToRelative;
					
	};
	
	//создаем объект Z5
	if (count _znakZ5pos > 0) then {
		private _znakZ5 = createVehicle ["UserTexture1m_F", [0,0,1400], [], 0, "NONE"];
		_znakZ5 setObjectTextureGlobal [0,TZnakTexture];
		_znakZ5 setPosASL [(getPosASL _veh select 0)+(_znakZ5pos select 0), (getPosASL _veh select 1)+(_znakZ5pos select 1), (getPosASL _veh select 2)+(_znakZ5pos select 2)];
		_vDirUp = [[vectorDirVisual _znakZ5, vectorUpVisual _znakZ5], (_znakZ5rot select 2), -(_znakZ5rot select 0), (_znakZ5rot select 1)] call BIS_fnc_transformVectorDirAndUp;
		_znakZ5 setVectorDirAndUp _vDirUp;
		[_znakZ5, _veh] call BIS_fnc_attachToRelative;
					
	};

	
	
	_veh addEventHandler ["Killed",
	{
		_this spawn {
			sleep 120;	
			{
				if ((typeOf _x) == "UserTexture1m_F") then { 
					detach _x,
					deleteVehicle _x;
				}
			}
			forEach attachedObjects (_this select 0);
		};
		
	}];

