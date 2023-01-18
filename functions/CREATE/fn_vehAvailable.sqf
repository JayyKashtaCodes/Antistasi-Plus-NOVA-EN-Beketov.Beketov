params ["_typeX"];

if (_typeX == "") exitWith {false};
if (_typeX in [vehCSATBike, vehCSATPatrolHeli, vehCSATUAV,	vehCSATUAVSmall, vehCSATMRLS, vehCSATMRLSMags, vehNATOBike, vehNATOPatrolHeli, vehNATOUAV, vehNATOUAVSmall, vehNATOMRLS, vehNATOMRLSMags] + vehCSATCargoTrucks + vehCSATLightAPC + vehCSATAA + vehCSATAttack +	vehCSATBoats  +	vehCSATNormal +	vehCSATUtilityTrucks +	vehCSATAir +	vehWAMArmedCars +	vehWAMTrucks +	vehWAMCars +	vehWAMAPC +	vehWAMTanks + vehNATOCargoTrucks +	vehNATOLightAPC +	vehNATOAA +	vehNATOAttack +	vehNATOBoats  +	vehNATONormal +	vehNATOAir +	vehFIAArmedCars +	vehFIATrucks +	vehFIACars +	vehFIAAPC +	vehFIATanks) exitWith {true};

private _cant = timer getVariable _typeX;

if (isNil "_cant") exitWith {true};
if (_cant <= 1) exitWith {false};

if ({typeOf _x == _typeX} count vehicles >= (floor _cant)) exitWith {false};

true