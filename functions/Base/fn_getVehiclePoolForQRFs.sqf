/*  Returns a weighted and balanced vehicle pool for the given side and filter

    Execution on: All

    Scope: External

    Params:
        _side: SIDE : The side for which the vehicle pool should be used
        _filter: ARRAY of STRINGS : The bases classes of units that should be filtered out (for example ["LandVehicle"] or ["Air"])

    Returns:
        _vehiclePool: ARRAY : [vehicleName, weight, vehicleName2, weight2]
*/

params ["_side", ["_filter", []]];

private _fileName = "getVehiclePoolForQRFs";
private _vehicleSelection = [];

[3, format ["Now searching for QRF vehicle pool for %1 with filter %2", _side, _filter], _fileName] call A3A_fnc_log;
//In general is Invaders always a bit less chill than the occupants, they will use heavier vehicles more often and earlier
switch (tierWar) do
{
    //General idea: Send only ground units as players should be able to loot and grab the crate before the enemy arrives with a QRF
    // JJ: As of 2.3-prerelease, this function is always called with either an air or ground filter, so air/ground balancing is not valid
    case (1):
    {
        if(_side == Occupants) then
        {
            _vehicleSelection =
            [
                [vehFIACars, 50],
                [vehFIACars, 50]
            ];
        };
        if(_side == Invaders) then
        {
            _vehicleSelection =
            [
                [vehWAMTrucks, 5],
                [vehWAMArmedCars, 15],
                [vehCSATPatrolHeli, 25],
                [vehWAMAPC, 30],
                [vehCSATTransportHelis, 25]
            ];
        };
    };
    case (2):
    {
        if(_side == Occupants) then
        {
            _vehicleSelection =
            [
                [vehFIACars, 60],
				[vehFIAArmedCars, 40],
                [vehFIATrucks, 40]
            ];
        };
        if(_side == Invaders) then
        {
            _vehicleSelection =
            [
                [vehCSATPatrolHeli, 15],
                [vehWAMAPC, 40],
                [vehWAMTanks, 5],
                [vehCSATTransportHelis, 35]
            ];
        };
    };
    case (3):
    {
        if(_side == Occupants) then
        {
            _vehicleSelection =
            [
				[vehFIAArmedCars, 25],
                [vehFIATrucks, 25],
				
				[vehNATOLightArmed, 25],
				[vehFIATanks, 10],
				
                [vehNATOPatrolHeli, 15]
            ];
        };
        if(_side == Invaders) then
        {
            _vehicleSelection =
            [
                [vehCSATPatrolHeli, 5],
                [vehWAMAPC, 35],
                [vehWAMTanks, 10],
                [vehCSATTransportHelis, 30],
                [vehCSATAttackHelis, 15]
            ];
        };
    };
    //Больше никакой полиции
	case (4):
    {
        if(_side == Occupants) then
        {
            _vehicleSelection =
            [
                [vehNATOLightArmed, 20],
                [vehNATOTrucks, 50],
				
                [vehNATOTransportHelis, 20],
				
				[vehNATOTransportPlanes, 10]
            ];
        };
        if(_side == Invaders) then
        {
            _vehicleSelection =
            [
                [vehWAMAPC, 30],
                [vehWAMTanks, 15],
                [vehCSATTransportHelis, 15],
                [vehCSATAA, 15],
                [vehCSATAttackHelis, 20],
                [vehCSATTransportPlanes, 20]
            ];
        };
    };
    case (5):
    {
        if(_side == Occupants) then
        {
            _vehicleSelection =
            [
                [vehNATOTrucks, 30],
				
				[vehNATOLightArmed, 15],
				[vehNATOLightAPC, 15],
				
				[vehNATOTransportHelis, 30],
				
				[vehNATOTransportPlanes, 10]
            ];
        };
        if(_side == Invaders) then
        {
            _vehicleSelection =
            [
                [vehCSATAPC, 15],
                [vehCSATTransportHelis, 10],
                [vehCSATAA, 15],
                [vehCSATAttackHelis, 15],
                [vehCSATTanks, 20],
                [vehCSATTransportPlanes, 15]
            ];
        };
    };
    case (6):
    {
        if(_side == Occupants) then
        {
            _vehicleSelection =
            [
                [vehNATOTrucks, 15],
               
				[vehNATOLightArmed, 10],
				[vehNATOLightAPC, 10],
				[vehNATOAPC, 10],
				[vehNATOTanks, 10],
				
				[vehNATOTransportHelis, 15],

				[vehNATOAttackHelis, 5],
				
                [vehNATOPlanes, 10],
				[vehNATOPlanesAA, 5],
				
				[vehNATOTransportPlanes, 10]
            ];
        };
        if(_side == Invaders) then
        {
            _vehicleSelection =
            [
                [vehCSATAPC, 10],
                [vehCSATTransportHelis, 5],
                [vehCSATAA, 10],
                [vehCSATAttackHelis, 20],
                [vehCSATTanks, 20],
                [vehCSATTransportPlanes, 15]
            ];
        };
    };
    case (7):
    {
        if(_side == Occupants) then
        {
            _vehicleSelection =
            [
                [vehNATOTrucks, 20],
                
				[vehNATOLightAPC, 10],
				[vehNATOAPC, 10],

				[vehNATOTanks, 10],
				[vehNATOAA, 5],
				
				[vehNATOTransportHelis, 10],

				[vehNATOAttackHelis, 10],
				
                [vehNATOPlanes, 10],

				[vehNATOPlanesAA, 5],
				
				[vehNATOTransportPlanes, 10]
            ];
        };
        if(_side == Invaders) then
        {
            _vehicleSelection =
            [
                [vehCSATAPC, 10],
                [vehCSATAA, 10],
                [vehCSATAttackHelis, 25],
                [vehCSATTanks, 25],
                [vehCSATTransportPlanes, 15]
            ];
        };
    };
    case (8):
    {
        if(_side == Occupants) then
        {
            _vehicleSelection =
            [
                [vehNATOTrucks, 15],

				[vehNATOAPC, 10],

				[vehNATOTanks, 15],

				[vehNATOAA, 10],
				
				[vehNATOTransportHelis, 15],

				[vehNATOAttackHelis, 10],
				
                [vehNATOPlanes, 10],

				[vehNATOPlanesAA, 5],
				
				[vehNATOTransportPlanes, 10]
            ];
        };
        if(_side == Invaders) then
        {
            _vehicleSelection =
            [
                [vehCSATAPC, 10],
                [vehCSATAA, 10],
                [vehCSATAttackHelis, 25],
                [vehCSATTanks, 25],
                [vehCSATTransportPlanes, 15]
            ];
        };
    };
    case (9):
    {
        if(_side == Occupants) then
        {
            _vehicleSelection =
            [
                [vehNATOTrucks, 5],

				[vehNATOAPC, 15],

				[vehNATOTanks, 15],

				[vehNATOAA, 10],
				
				[vehNATOTransportHelis, 20],

				[vehNATOAttackHelis, 10],
				
                [vehNATOPlanes, 10],

				[vehNATOPlanesAA, 5],
				
				[vehNATOTransportPlanes, 10]
            ];
        };
        if(_side == Invaders) then
        {
            _vehicleSelection =
            [
                [vehCSATAPC, 10],
                [vehCSATAA, 10],
                [vehCSATAttackHelis, 25],
                [vehCSATTanks, 25],
                [vehCSATTransportPlanes, 15]
            ];
        };
    };
    case (10):
    {
        if(_side == Occupants) then
        {
            _vehicleSelection =
            [
				[vehNATOAPC, 10],

				[vehNATOTanks, 15],

				[vehNATOAA, 10],
				
				[vehNATOTransportHelis, 20],

				[vehNATOAttackHelis, 15],
				
                [vehNATOPlanes, 10],
				[vehNATOPlanesAA, 5],
				
				[vehNATOTransportPlanes, 15]
            ];
        };
        if(_side == Invaders) then
        {
            _vehicleSelection =
            [
                [vehCSATAPC, 10],
                [vehCSATAA, 10],
                [vehCSATAttackHelis, 25],
                [vehCSATTanks, 25],
                [vehCSATTransportPlanes, 15]
            ];
        };
    };
};

//Use this function to filter out any unwanted elements
_fn_checkElementAgainstFilter =
{
    params ["_element", "_filter"];

    private _passed = true;
    {
        if(_element isKindOf _x) exitWith
        {
            _passed = false;
            [
                3,
                format ["%1 didnt passed filter %2", _element, _x],
                _fileName
            ] call A3A_fnc_log;
        };
    } forEach _filter;

    _passed;
};

//Break unit arrays down to single vehicles
private _vehiclePool = [];
{
    if((_x select 0) isEqualType []) then
    {
        private _points = 0;
        private _vehicleCount = count (_x select 0);
        if(_vehicleCount != 0) then
        {
            _points = (_x select 1)/_vehicleCount;
        }
        else
        {
            [1, "Found vehicle array with no defined vehicles!", _fileName] call A3A_fnc_log;
        };
        {
            if(([_x, _filter] call _fn_checkElementAgainstFilter) && {[_x] call A3A_fnc_vehAvailable}) then
            {
                _vehiclePool pushBack _x;
                _vehiclePool pushBack _points;
            };
        } forEach (_x select 0);
    }
    else
    {
        if(([_x select 0, _filter] call _fn_checkElementAgainstFilter) && {[_x select 0] call A3A_fnc_vehAvailable}) then
        {
            _vehiclePool pushBack (_x select 0);
            _vehiclePool pushBack (_x select 1);
        };
    };
} forEach _vehicleSelection;

[
    3,
    format ["For %1 and war level %2 selected units are %3, filter was %4", _side, tierWar, _vehiclePool, _filter],
    _fileName
] call A3A_fnc_log;

_vehiclePool;
