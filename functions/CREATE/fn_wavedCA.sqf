if (!isServer and hasInterface) exitWith {};

private ["_posOrigin","_typeGroup","_nameOrigin","_markTsk","_wp1","_soldiers","_landpos","_pad","_vehiclesX","_wp0","_wp3","_wp4","_wp2","_groupX","_groups","_typeVehX","_vehicle","_heli","_heliCrew","_groupHeli","_pilots","_rnd","_resourcesAAF","_nVeh","_radiusX","_roads","_Vwp1","_road","_veh","_vehCrew","_groupVeh","_Vwp0","_size","_Hwp0","_groupX1","_uwp0","_tsk","_vehicle","_soldierX","_pilot","_posDestination","_prestigeCSAT","_airportX","_nameDest","_timeX","_solMax","_nul","_costs","_typeX","_threatEvalAir","_threatEvalLand","_pos","_timeOut","_sideX","_countX","_tsk1","_spawnPoint","_vehPool", "_airportIndex"];

private _fileName = "wavedCA";

bigAttackInProgress = true;
publicVariable "bigAttackInProgress";

//_mrkOrigin can be an Airport or Carrier
//_originalSide is optional, side that should have their attack counter incremented
params ["_mrkDestination", "_mrkOrigin", "_waves", "_originalSide"];

_firstWave = true;
if (_waves <= 0) then {_waves = -1};
_size = [_mrkDestination] call A3A_fnc_sizeMarker;
_tsk = "";
_tsk1 = "";
_posDestination = getMarkerPos _mrkDestination;
_posOrigin = getMarkerPos _mrkOrigin;

diag_log format ["[Antistasi] Spawning Waved Attack Against %1 from %2 with %3 waves (wavedCA.sqf)", _mrkDestination, _mrkOrigin,	_waves];

_groups = [];
_soldiersTotal = [];
_pilots = [];
_vehiclesX = [];
_forced = [];

_nameDest = [_mrkDestination] call A3A_fnc_localizar;
_nameOrigin = [_mrkOrigin] call A3A_fnc_localizar;

_sideX = sidesX getVariable [_mrkOrigin,sideUnknown];
if (isNil "_originalSide") then { _originalSide = _sideX };
_nameENY = nameOccupants;
_sideTsk = [teamPlayer,civilian,Invaders];
_sideTsk1 = [Occupants];

//_config = cfgNATOInf;
if (_sideX == Invaders) then
	{
	_nameENY = nameInvaders;
	_sideTsk1 = [Invaders];
	//_config = cfgCSATInf;
	if (gamemode == 5) then {
		_sideTsk = [Occupants];
		_sideTsk1 = [teamPlayer,Invaders];
	} else {
		_sideTsk = [teamPlayer,civilian,Occupants];
	};
	};
_isSDK = if (sidesX getVariable [_mrkDestination,sideUnknown] == teamPlayer) then {true} else {false};
_SDKShown = false;
if (_isSDK) then
	{
	_sideTsk = [teamPlayer,civilian,Occupants,Invaders] - [_sideX];
	}
else
	{
	if (not(_mrkDestination in _forced)) then {_forced pushBack _mrkDestination};
	};

//forcedSpawn = forcedSpawn + _forced; publicVariable "forcedSpawn";
forcedSpawn pushBack _mrkDestination; publicVariable "forcedSpawn";
diag_log format ["%1: [Antistasi] | INFO | Side Attacker:%2, Side Defender: %3",servertime,_sideX,_isSDK];
_nameDest = [_mrkDestination] call A3A_fnc_localizar;

private _taskId = "rebelAttack" + str A3A_taskCount;
[_sideTsk,_taskId,[format ["%2 ?????????????? ???? %1. ?????????????????????? ???? ?????? ???? ?????????? ???????????????? ????????????",_nameOrigin,_nameENY],format ["%1 Attack",_nameENY],_mrkOrigin],getMarkerPos _mrkOrigin,false,0,true,"Defend",true] call BIS_fnc_taskCreate;
[_sideTsk1,_taskId+"B",[format ["?????????????? ?????????????? %2 ???? %1. ???????????????? ????????????????, ???????? ????????????",_nameOrigin,_nameDest],format ["%1 Attack",_nameENY],_mrkDestination],getMarkerPos _mrkDestination,false,0,true,"Attack",true] call BIS_fnc_taskCreate;
[_taskId, "rebelAttack", "CREATED"] remoteExecCall ["A3A_fnc_taskUpdate", 2];


private _vehPoolLand = [];
private _vehPoolAirSupport = [];
private _vehPoolAirTransport = [];

// unlimited vehicle types, for later use
private _typePatrolHeli = if (_sideX == Occupants) then {vehNATOPatrolHeli} else {vehCSATPatrolHeli};
private _typesTruck = if (_sideX == Occupants) then {vehNATOTrucks} else {vehCSATTrucks};
private _typesMRAP = if (_sideX == Occupants) then {vehNATOLightArmed} else {vehCSATLightArmed};

// Just getting the variables out of scope
call {
	private _typesAPC = if (_sideX == Occupants) then {vehNATOAPC} else {vehCSATAPC};
	private _typesTank = if (_sideX == Occupants) then {vehNATOTanks} else {vehCSATTanks};
	private _typesAA = if (_sideX == Occupants) then {vehNATOAA} else {vehCSATAA};

	// Add up to 4 + tierWar APCs, selected randomly from available vehicles
	{
		private _vcount = floor (timer getVariable [_x, 0]);
		for "_i" from 1 to (_vcount) do { _vehPoolLand pushBack _x };
	} forEach _typesAPC;

	{
		private _vcount = tierWar min (timer getVariable [_x, 0]);
		for "_i" from 1 to (_vcount) do { _vehPoolLand pushBack _x };
	} forEach _typesTank;

	_vehPoolLand = _vehPoolLand call BIS_fnc_arrayShuffle;
	_vehPoolLand resize ((4 + tierWar) min (count _vehPoolLand));

	// Add in war-tier capped AA vehicles
	{
		private _aacount = (ceil (tierWar / 3)) min (timer getVariable [_x, 0]);
		for "_i" from 1 to (_aacount) do { _vehPoolLand pushBack _x };
	} forEach _typesAA;

	// Add some trucks and MRAPs depending on war tier
	private _truckCount = 8 - ceil (tierWar / 2);
	for "_i" from 1 to (_truckCount) do { _vehPoolLand pushBack (selectRandom _typesTruck) };
	private _mrapCount = 8 - ceil (tierWar / 2);
	for "_i" from 1 to (_mrapCount) do { _vehPoolLand pushBack (selectRandom _typesMRAP) };


	// Separate air support from transports because air support can't conquer

	private _typePlane = if (_sideX == Occupants) then {selectRandom vehNATOPlanes} else {selectRandom vehCSATPlanes};
	private _typePlaneAA = if (_sideX == Occupants) then {selectRandom vehNATOPlanesAA} else {selectRandom vehCSATPlanesAA};
	private _typesAttackHelis = if (_sideX == Occupants) then {vehNATOAttackHelis} else {vehCSATAttackHelis};
	private _typesTransportPlanes = if (_sideX == Occupants) then {vehNATOTransportPlanes} else {vehCSATTransportPlanes};
	private _typesTransportHelis = if (_sideX == Occupants) then {vehNATOTransportHelis} else {vehCSATTransportHelis};

	// Add up to 2 + tierWar attack helis, selected randomly from available vehicles
	{
		private _vcount = floor (timer getVariable [_x, 0]);
		for "_i" from 1 to (_vcount) do { _vehPoolAirSupport pushBack _x };
	} forEach _typesAttackHelis;
	_vehPoolAirSupport = _vehPoolAirSupport call BIS_fnc_arrayShuffle;
	_vehPoolAirSupport resize ((2 + tierWar) min (count _vehPoolAirSupport));

	// Plus a handful of fixed-wing aircraft
	private _planeCount = ceil (tierWar / 3);
	for "_i" from 1 to (_planeCount) do { _vehPoolAirSupport pushBack _typePlane };
	for "_i" from 1 to (_planeCount) do { _vehPoolAirSupport pushBack _typePlaneAA };

	// Use up to 8 + tierWar/2 air transports, randomly selected from available vehicles
	{
		private _vcount = floor (timer getVariable [_x, 0]);
		for "_i" from 1 to (_vcount) do { _vehPoolAirTransport pushBack _x };
	} forEach (_typesTransportPlanes + _typesTransportHelis);
	_vehPoolAirTransport = _vehPoolAirTransport call BIS_fnc_arrayShuffle;
	_vehPoolAirTransport resize ((8 + tierWar/2) min (count _vehPoolAirTransport));

	// Fill out with patrol helis
	private _patrolHeliCount = 8 - ceil (tierWar / 2);
	for "_i" from 1 to (_patrolHeliCount) do { _vehPoolAirTransport pushBack _typePatrolHeli };
};

[3, format ["Land vehicle pool: %1", _vehPoolLand], _filename] call A3A_fnc_log;
[3, format ["Air transport pool: %1", _vehPoolAirTransport], _filename] call A3A_fnc_log;
[3, format ["Air support pool: %1", _vehPoolAirSupport], _filename] call A3A_fnc_log;

private _airSupport = [];
private _uav = objNull;

// First wave: half air support, half either air transports or ground vehicles.
// Subsequent waves: if live air support < half, top up. Otherwise, +1 air support. Fill out with transports/ground.
// Only one UAV at a time, rebuild if destroyed instead of one vehicle.
// Builds minimum 10 soldiers (air cargo or ground units) per wave.

while {(_waves > 0)} do
{
	_soldiers = [];
	private _playerScale = if (_isSDK) then { call A3A_fnc_getPlayerScale } else { 1 };			// occ vs inv attacks shouldn't depend on player count
	_nVeh = round (1.5 + random 1 + 3*_playerScale);
	if (_firstWave) then { _nVeh = _nVeh + 2 };

    [3, format ["Due to %1 player scale, wave will contain %2 vehicles", _playerScale, _nVeh], _fileName] call A3A_fnc_log;

	
	// *********** Convoy vehicle spawning ***********************

	private _route_t = [_posOrigin] call A3A_fnc_findNearestGoodRoad;
	private _pos_t = position _route_t findEmptyPosition [1,5,"B_G_Van_01_transport_F"];
	private _route = [_pos_t, _posDestination] call A3A_fnc_findPath;
	_route = _route apply { _x select 0 };			// reduce to position array
	if (_route isEqualTo []) then { _route = [_pos_t, _posDestination] };
	
	private _pathState = [];			
	private _fnc_spawnConvoyVehicle = // ?????????????? ???????????????????????? ?????????????? ???????????????? ?????????????? ???? ????????????
	{	
		params ["_vehType", "_markName"];
		[2, format ["Spawning vehicle type %1", _vehType], _filename, true] call A3A_fnc_log;

		// Find location down route
		_pathState = [_route, [0, 60] select (count _pathState == 0), _pathState] call A3A_fnc_findPosOnRoute;
		
		while {true} do {
			// make sure there are no other vehicles within 15m
			if (count (ASLtoAGL (_pathState#0) nearEntities 15) == 0) exitWith {};
			_pathState = [_route, 15, _pathState] call A3A_fnc_findPosOnRoute;
		};

		private _veh = createVehicle [_vehType, [0,0,2000] , [], 0, "NONE"];               // Give it a little air vectorAdd [0,0,0.5]

		//===================================================== TACTICAL Z ============================================================			
		//if ((_sideX != Occupants) && !(_veh isKindOf "Helicopter")) then {[_vehType , _veh] call HR_GRG_fnc_setTacticalZnak; sleep 2;};  
		//===================================================== END Z =================================================================
		
		_veh setPos [ASLToATL (_pathState#0) select 0, ASLToATL (_pathState#0) select 1, 0];
		
		private _vecUp = (_pathState#1) vectorCrossProduct [0,0,1] vectorCrossProduct (_pathState#1);       // correct pitch angle
		_veh setVectorDirAndUp [_pathState#1, _vecUp];
		
		private _group = [_sideX, _veh] call A3A_fnc_createVehicleCrew;
		{ [_x] call A3A_fnc_NATOinit; } forEach (units _group);
		_soldiers append (units _group);
		(driver _veh) stop true;
		deleteWaypoint [_group, 0];													// groups often start with a bogus waypoint

		[_veh, _sideX] call A3A_fnc_AIVEHinit;
		if (_vehType in vehArmor) then { _veh allowCrewInImmobile true };			// move this to AIVEHinit at some point?
		//_vehiclesX pushBack _veh;
		//_markNames pushBack _markName;

		//private _unitTypeL = [_side, _veh] call A3A_fnc_crewTypeForVehicle;

		//Spawn the crew
		//private _groupL = [_group, _veh, _unitTypeL] call A3A_fnc_createVehicleCrew;

		[_veh, crew _veh, _group];
	};
	
	
	_posOriginLand = [];
	_pos = [];
	_dir = 0;
	_spawnPoint = "";
	if !(_mrkDestination in blackListDest) then {
		//Attempt land attack if origin is an airport in range
		_airportIndex = airportsX find _mrkOrigin;
		if (_airportIndex >= 0 and (_posOrigin distance _posDestination < distanceForLandAttack)
			and ([_posOrigin, _posDestination] call A3A_fnc_arePositionsConnected)) then
		{
			_posOriginLand = _posOrigin;
			//_spawnPoint = server getVariable (format ["spawn_%1", _mrkOrigin]);
			_spawnPoint = [_posOriginLand] call A3A_fnc_findNearestGoodRoad;
			_pos = position _spawnPoint;
			_dir = getDir _spawnPoint;
			//_pos = getMarkerPos _spawnPoint;
			//_dir = markerDir _spawnPoint;
			[2, format ["???????????? ???????????????? ?????? ???????????????? ?????????? %1", _mrkOrigin], _filename] call A3A_fnc_log;
		}
		else
		//Find an outpost we can attack from
		{
			_outposts = outposts select {
				(sidesX getVariable [_x,sideUnknown] == _sideX)
				and (getMarkerPos _x distance _posDestination < distanceForLandAttack)
				and {[_posDestination, getMarkerPos _x] call A3A_fnc_arePositionsConnected}
				and {[_x,false] call A3A_fnc_airportCanAttack}			// checks idle, garrison size, spawndist2
			};
			[2, format ["???????????????? ?????? ???????????????? ?????????? %1", _outposts], _filename] call A3A_fnc_log;
			if !(_outposts isEqualTo []) then
			{
				_outpost = selectRandom _outposts;
				_posOriginLand = getMarkerPos _outpost;
				_spawnPoint = [_posOriginLand] call A3A_fnc_findNearestGoodRoad;
				_pos = position _spawnPoint;
				_dir = getDir _spawnPoint;
				[2, format ["???????????? ?????????????? ?????? ???????????????? ?????????? %1", _outpost], _filename] call A3A_fnc_log;
			};
		};
	};
	private _nVehLand = 0;	//???????????????? ???????????????? ??????????????
	if !(_posOriginLand isEqualTo []) then
	{
		_nVehLand = ceil (_nVeh / 2);			// spawn >half ground, <half air
		_road = [_posDestination] call A3A_fnc_findNearestGoodRoad;
		_countX = 1;
		_landPosBlacklist = [];
		while {_countX <= _nVehLand} do
		{
			if (count _vehPoolLand == 0) then {
				_vehPoolLand append _typesTruck;
				_vehPoolLand append _typesMRAP;
				_waves = 0;
				[2, "?? ?????????? ?????????????????????? ???????????????? ??????????????", _filename] call A3A_fnc_log;
			};
			_typeVehX = selectRandom _vehPoolLand;
			_vehPoolLand deleteAt (_vehPoolLand find _typeVehX);
			[3, format ["Spawning vehicle type %1", _typeVehX], _filename] call A3A_fnc_log;

			if (true) then
			{
				_timeOut = 0;
				/*
				_pos = _pos findEmptyPosition [50,200,_typeVehX];
				while {_timeOut < 60} do
				{
					if (count _pos > 0) exitWith {};
					_timeOut = _timeOut + 1;
					_pos = _pos findEmptyPosition [50,200,_typeVehX];
					sleep 1;
				};
				if (count _pos == 0) then {_pos = getMarkerPos _spawnPoint};
				_vehicle=[_pos, _dir,_typeVehX, _sideX] call A3A_fnc_spawnVehicle;
				*/
				_vehicle = [_typeVehX, "Convoy for Big Attak"] call _fnc_spawnConvoyVehicle;
				
				
				_veh = _vehicle select 0;
				_vehCrew = _vehicle select 1;
				
				//{[_x] call A3A_fnc_NATOinit} forEach _vehCrew;
				//[_veh, _sideX] call A3A_fnc_AIVEHinit;
				_groupVeh = _vehicle select 2;

				_soldiers append _vehCrew;
				_soldiersTotal append _vehCrew;
				_groups pushBack _groupVeh;
				_vehiclesX pushBack _veh;
				_landPos = [_posDestination,_pos,false,_landPosBlacklist] call A3A_fnc_findSafeRoadToUnload;
				if (not(_typeVehX in vehTanks)) then
				{
					_landPosBlacklist pushBack _landPos;
					_typeGroup = [_typeVehX,_sideX] call A3A_fnc_cargoSeats;
					_grupo = grpNull;
					_grupo = [_posOrigin,_sideX, _typeGroup,true,false] call A3A_fnc_spawnGroup;
					{
                        _x assignAsCargo _veh;
                        _x moveInCargo _veh;
                        if (vehicle _x == _veh) then
                        {
                            _soldiers pushBack _x;
                            _soldiersTotal pushBack _x;
                            [_x] call A3A_fnc_NATOinit;
                            _x setVariable ["originX",_mrkOrigin];
                        }
                        else
                        {
                            deleteVehicle _x;
                        };
					} forEach units _grupo;
					if (not(_typeVehX in vehTrucks)) then
					{
						{_x disableAI "MINEDETECTION"} forEach (units _groupVeh);
						(units _grupo) joinSilent _groupVeh;
						deleteGroup _grupo;
						//_groupVeh spawn A3A_fnc_attackDrillAI;
						//[_posOriginLand,_landPos,_groupVeh] call A3A_fnc_WPCreate;
						deleteWaypoint [_groupVeh, 0];
						private _Vwp0 = _groupVeh addWaypoint [_posDestination, count (wayPoints _groupVeh)];
						_Vwp0 setWaypointType "MOVE";
						_Vwp0 setWaypointBehaviour "AWARE";
						_Vwp0 setWayPointCompletionRadius (10*_countX);
						private _Vwp1 = _groupVeh addWaypoint [_posDestination, 1];
						_Vwp1 setWaypointType "SAD";
						_Vwp1 setWaypointStatements ["true","if !(local this) exitWith {}; {if (side _x != side this) then {this reveal [_x,4]}} forEach allUnits"];
						_Vwp1 setWaypointBehaviour "AWARE";
						private _typeName = if (_typeVehX in vehAPCs) then {"APC"} else {"MRAP"};
						[_veh,"APC"] spawn A3A_fnc_inmuneConvoy;
						_veh allowCrewInImmobile true;
						
					}
					else
						{
						(units _grupo) joinSilent _groupVeh;
						deleteGroup _grupo;
						_groupVeh selectLeader (units _groupVeh select 1);
						//_groupVeh spawn A3A_fnc_attackDrillAI;
						//[_posOriginLand,_landPos,_groupVeh] call A3A_fnc_WPCreate;
						deleteWaypoint [_groupVeh, 0];
						private _Vwp0 = _groupVeh addWaypoint [_posDestination, count (wayPoints _groupVeh)];
						_Vwp0 setWaypointType "MOVE";
						private _Vwp1 = _groupVeh addWaypoint [_posDestination, count (wayPoints _groupVeh)];
						_Vwp1 setWaypointType "SAD";
						_Vwp1 setWaypointBehaviour "AWARE";
						[_veh,"Truck"] spawn A3A_fnc_inmuneConvoy;
						_veh allowCrewInImmobile true;
					};
				}
				else
				{
					{_x disableAI "MINEDETECTION"} forEach (units _groupVeh);
					//[_posOriginLand,_landPos,_groupVeh] call A3A_fnc_WPCreate;
					deleteWaypoint [_groupVeh, 0];
					private _Vwp0 = _groupVeh addWaypoint [_posDestination, count (wayPoints _groupVeh)];
					_Vwp0 setWaypointType "MOVE";
					_Vwp0 setWaypointStatements ["true","if !(local this) exitWith {}; {if (side _x != side this) then {this reveal [_x,4]}} forEach allUnits"];
					private _Vwp0 = _groupVeh addWaypoint [_posDestination, count (wayPoints _groupVeh)];
					_Vwp0 setWaypointType "SAD";
					private _typeName = if (_typeVehX in vehTanks) then {"Tank"} else {"AA"};
					[_veh, _typeName] spawn A3A_fnc_inmuneConvoy;
					_veh allowCrewInImmobile true;
				};
			};

			if ((count _soldiers >= 10) && ([_sideX] call A3A_fnc_remUnitCount < 5)) exitWith {
				[2, format ["Ground wave reached maximum units count after %1 vehicles", _countX], _filename] call A3A_fnc_log;
			};
			sleep 15;
			_countX = _countX + 1;
		};
	};

	_isSea = false;
	if (count seaAttackSpawn != 0) then
		{
		for "_i" from 0 to 3 do
			{
			_pos = _posDestination getPos [1000,(_i*90)];
			if (surfaceIsWater _pos) exitWith
				{
				if ({sidesX getVariable [_x,sideUnknown] == _sideX} count seaports > 1) then
					{
					_isSea = true;
					};
				};
			};
		};

	if ((_isSea) and (_firstWave)) then
		{
		_pos = getMarkerPos ([seaAttackSpawn,_posDestination] call BIS_fnc_nearestPosition);
		if (count _pos > 0) then
			{
			_vehPool = if (_sideX == Occupants) then {vehNATOBoats} else {vehCSATBoats};
			_vehPool = _vehPool select {[_x] call A3A_fnc_vehAvailable};
			_countX = 0;
			_spawnedSquad = false;
			while {(_countX < 3) and (count _soldiers <= 80)} do
				{
				_typeVehX = if (_vehPool isEqualTo []) then {if (_sideX == Occupants) then {vehNATORBoat} else {vehCSATRBoat}} else {selectRandom _vehPool};
				_proceed = true;
				if ((_typeVehX == vehNATOBoat) or (_typeVehX == vehCSATBoat)) then
					{
					_landPos = [_posDestination, 10, 1000, 10, 2, 0.3, 0] call BIS_Fnc_findSafePos;
					}
				else
					{
					_allUnits = {(local _x) and (alive _x)} count allUnits;
					_allUnitsSide = 0;
					_maxUnitsSide = maxUnits;
					if (gameMode <3) then
						{
						_allUnitsSide = {(local _x) and (alive _x) and (side group _x == _sideX)} count allUnits;
						_maxUnitsSide = round (maxUnits * 0.7);
						};
					if (((_allUnits + 4 > maxUnits) or (_allUnitsSide + 4 > _maxUnitsSide)) and _spawnedSquad) then
						{
						_proceed = false
						}
					else
						{
						_typeGroup = [_typeVehX,_sideX] call A3A_fnc_cargoSeats;
						_landPos = [_posDestination, 10, 1000, 10, 2, 0.3, 1] call BIS_Fnc_findSafePos;
						};
					};
				if ((count _landPos > 0) and _proceed) then
					{
					_vehicle=[_pos, random 360,_typeVehX, _sideX] call A3A_fnc_spawnVehicle;

					_veh = _vehicle select 0;
					_vehCrew = _vehicle select 1;
					_groupVeh = _vehicle select 2;
					_pilots append _vehCrew;
					_groups pushBack _groupVeh;
					_vehiclesX pushBack _veh;
					{[_x] call A3A_fnc_NATOinit} forEach units _groupVeh;
					[_veh, _sideX] call A3A_fnc_AIVEHinit;
					if ((_typeVehX == vehNATOBoat) or (_typeVehX == vehCSATBoat)) then
						{
						_wp0 = _groupVeh addWaypoint [_landpos, 0];
						_wp0 setWaypointType "SAD";
						//[_veh,"Boat"] spawn A3A_fnc_inmuneConvoy;
						}
					else
						{
						_grupo = grpNull;
						if !(_spawnedSquad) then {_grupo = [_posOrigin,_sideX, _typeGroup,true,false] call A3A_fnc_spawnGroup;_spawnedSquad = true} else {_grupo = [_posOrigin,_sideX, _typeGroup,false,true] call A3A_fnc_spawnGroup};
						{
						_x assignAsCargo _veh;
						_x moveInCargo _veh;
						if (vehicle _x == _veh) then
							{
							_soldiers pushBack _x;
							_soldiersTotal pushBack _x;
							[_x] call A3A_fnc_NATOinit;
							_x setVariable ["originX",_mrkOrigin];
							}
						else
							{
							deleteVehicle _x;
							};
						} forEach units _grupo;
						if (_typeVehX in vehAPCs) then
							{
							_groups pushBack _grupo;
							_Vwp = _groupVeh addWaypoint [_landPos, 0];
							_Vwp setWaypointBehaviour "SAFE";
							_Vwp setWaypointType "TR UNLOAD";
							_Vwp setWaypointSpeed "FULL";
							_Vwp1 = _groupVeh addWaypoint [_posDestination, 1];
							_Vwp1 setWaypointType "SAD";
							_Vwp1 setWaypointStatements ["true","if !(local this) exitWith {}; {if (side _x != side this) then {this reveal [_x,4]}} forEach allUnits"];
							_Vwp1 setWaypointBehaviour "COMBAT";
							_Vwp2 = _grupo addWaypoint [_landPos, 0];
							_Vwp2 setWaypointType "GETOUT";
							_Vwp2 setWaypointStatements ["true", "if !(local this) exitWith {}; (group this) spawn A3A_fnc_attackDrillAI"];
							//_grupo setVariable ["mrkAttack",_mrkDestination];
							_Vwp synchronizeWaypoint [_Vwp2];
							_Vwp3 = _grupo addWaypoint [_posDestination, 1];
							_Vwp3 setWaypointType "SAD";
							_veh allowCrewInImmobile true;
							//[_veh,"APC"] spawn A3A_fnc_inmuneConvoy;
							}
						else
							{
							(units _grupo) joinSilent _groupVeh;
							deleteGroup _grupo;
							_groupVeh selectLeader (units _groupVeh select 1);
							_Vwp = _groupVeh addWaypoint [_landPos, 0];
							_Vwp setWaypointBehaviour "SAFE";
							_Vwp setWaypointSpeed "FULL";
							_Vwp setWaypointType "GETOUT";
							_Vwp setWaypointStatements ["true", "if !(local this) exitWith {}; (group this) spawn A3A_fnc_attackDrillAI"];
							_Vwp1 = _groupVeh addWaypoint [_posDestination, 1];
							_Vwp1 setWaypointType "SAD";
							_Vwp1 setWaypointBehaviour "COMBAT";
							//[_veh,"Boat"] spawn A3A_fnc_inmuneConvoy;
							};
						};
					};
				sleep 15;
				_countX = _countX + 1;
				_vehPool = _vehPool select {[_x] call A3A_fnc_vehAvailable};
				};
			};
		};

	private _nVehAir = _nVeh;
	if !(_posOriginLand isEqualTo []) then {
		sleep ((_posOrigin distance _posDestination)/15);			// give land vehicles a head start
		_nVehAir = floor (_nVeh / 2);								// fill out with air vehicles
	};
	_posGround = [_posOrigin select 0,_posOrigin select 1,0];
	_posOrigin set [2,300];

	_countX = 1;
	_pos = _posOrigin;
	_ang = 0;
	_size = [_mrkOrigin] call A3A_fnc_sizeMarker;
	private _runwayTakeoff = [_mrkOrigin] call A3A_fnc_getRunwayTakeoffForAirportMarker;
	if (count _runwayTakeoff > 0) then {
		_pos = _runwayTakeoff select 0;
		_ang = _runwayTakeoff select 1;
	};

	// Remove disabled air supports from active list
	_airSupport = _airSupport select { canMove _x };

	// Fill air supports up to half wave size, minimum +1
	private _countNewSupport = 1 max (floor (_nVeh / 2) - count _airSupport);
	[3, format ["Spawning %1 new support aircraft", _countNewSupport], _filename] call A3A_fnc_log;

	if (_countNewSupport > count _vehPoolAirSupport) then {
		_countNewSupport = count _vehPoolAirSupport;
		[2, "Attack ran out of air supports", _filename] call A3A_fnc_log;
		_waves = 0;
	};

	if !(canMove _uav) then //???????????????? ???????????????????????? ?? ???????????? 75%
	{
		//75% chance to spawn a UAV, to give some variety.
		if (random 1 < 0.25) exitWith {};
		_typeVehX = if (_sideX == Occupants) then {vehNATOUAV} else {vehCSATUAV};
		if (_typeVehX isEqualTo "not_supported") exitWith {};
		_uav = createVehicle [_typeVehX, _posOrigin, [], 0, "FLY"];
		_vehiclesX pushBack _uav;
		_airSupport pushBack _uav;
		//[_uav,"UAV"] spawn A3A_fnc_inmuneConvoy;
		[_uav,_mrkDestination,_sideX] spawn A3A_fnc_VANTinfo;
		[_sideX, _uav] call A3A_fnc_createVehicleCrew;
		_pilots append (crew _uav);
		_groupVeh = group driver _uav;
		_groups pushBack _groupVeh;
		_uwp0 = _groupVeh addWayPoint [_posDestination,0];
		_uwp0 setWaypointBehaviour "AWARE";
		_uwp0 setWaypointType "SAD";
		{[_x] call A3A_fnc_NATOinit} forEach (crew _uav);
		[_uav, _sideX] call A3A_fnc_AIVEHinit;
		if (not(_mrkDestination in airportsX)) then {_uav removeMagazines "6Rnd_LG_scalpel"};
        [3, format ["Spawning vehicle type %1", _typeVehX], _filename] call A3A_fnc_log;
		sleep 5;
		_countX = _countX + 1;
	};

	while {_countX <= _nVehAir} do	//???????????????? ?????????????????? ?? ????????????????????
	{
		private _typeVehX = "";
		if (_countX <= _countNewSupport) then {
			_typeVehX = selectRandom _vehPoolAirSupport;
			_vehPoolAirSupport deleteAt (_vehPoolAirSupport find _typeVehX);
		}
		else {
			if (count _vehPoolAirTransport == 0) then {
				for "_i" from 1 to 10 do { _vehPoolAirTransport pushBack _typePatrolHeli };
				[2, "Attack ran out of air transports", _filename] call A3A_fnc_log;
				_waves = 0;
			};
			_typeVehX = selectRandom _vehPoolAirTransport;
			_vehPoolAirTransport deleteAt (_vehPoolAirTransport find _typeVehX);
		};
		[3, format ["Spawning vehicle type %1", _typeVehX], _filename] call A3A_fnc_log;

		if (true) then
			{
			//_vehicle=[_pos, _ang + 90,_typeVehX, _sideX] call A3A_fnc_spawnVehicle;
			//_veh = _vehicle select 0;
			
			_veh = createVehicle [_typeVehX, _pos, [], 400, "FLY"];
			_veh flyInHeight 100;
			
			private _unitType = [_sideX, _veh] call A3A_fnc_crewTypeForVehicle;

			//Spawn the crew
			_groupVeh = [_sideX, _veh, _unitType] call A3A_fnc_createVehicleCrew;
			
			if (_veh isKindOf "Plane") then {
				_veh setVelocityModelSpace (velocityModelSpace _veh vectorAdd [0, 150, 50]);
			};
			//_vehCrew = crew _veh;
			//_pilots append _vehCrew;
			private _driver_veh = driver _veh;
			
			
			_vehiclesX pushBack _veh;
			{[_x] call A3A_fnc_NATOinit} forEach units _groupVeh;
			[_veh, _sideX] call A3A_fnc_AIVEHinit;
			if (not (_typeVehX in vehTransportAir)) then //?????? ???????????????????? ???????????? ??????????????
				{
				_airSupport pushBack _veh;
				_groups pushBack _groupVeh;
				
				/*
				_uwp0 = _groupVeh addWayPoint [_posDestination,0];
				_uwp0 setWaypointBehaviour "AWARE";
				_uwp0 setWaypointType "SAD";
				*/
				
				if (_veh isKindOf "Helicopter" && {!((typeof _veh) in vehTransportAir)}) then
				{
					//Attack helicopter
					private _vehWP0 = _groupVeh addWaypoint [_posDestination, 0];
					_vehWP0 setWaypointBehaviour "AWARE";
					_vehWP0 setWaypointType "SAD";
				};
				
				if (_veh isKindOf "Plane") then
				{
					//Attack plane or drone
					private _vehWP0 = _groupVeh addWaypoint [_posDestination, 0];
					_vehWP0 setWaypointBehaviour "COMBAT";
					_vehWP0 setWaypointType "SAD";
					_groupVeh setCombatMode "RED";
				};
				
				
				
				//[_veh,"Air Attack"] spawn A3A_fnc_inmuneConvoy;
				}
			else //?????????? ???????????????????? ???????????????????????? ?????????????????? ?????????? (?????????? ???????? ?? ???????????????? ?? ?????????????? ????????????????????????)
				{		//?????????????? ???????????? ????????????
				_groups pushBack _groupVeh;
				_typeGroup = [_typeVehX,_sideX] call A3A_fnc_cargoSeats;
				_grupo = grpNull;
				_grupo = [_posGround,_sideX, _typeGroup,true,false] call A3A_fnc_spawnGroup;
				_groups pushBack _grupo;
				
				{	//???????????? ???????????? ?? ???????????????????????? ?????????????????? ??????????
					_x assignAsCargo _veh;
					_x moveInCargo _veh;
					if (vehicle _x == _veh) then
						{
						_soldiers pushBack _x;
						_soldiersTotal pushBack _x;
						[_x] call A3A_fnc_NATOinit;
						_x setVariable ["originX",_mrkOrigin];
						}
					else
						{
						deleteVehicle _x;
						};
				} forEach units _grupo;
				if (!(_veh isKindOf "Helicopter") or (_mrkDestination in airportsX)) then		//???????? ???????????????????????? ?????????????????? ?????????? ???? ???????????????? (?? ?????????????????????? ??????????????) ?????? ?????????? ???????????????????? ????????????????
					{
					[_veh,_grupo,_mrkDestination,_mrkOrigin] spawn A3A_fnc_paradrop;		//?????????????????? ?????????????? ?????????????????????????????? ?????? ???????????? ????????????????????
					}
				else
					{
					
					_landPos = _posDestination getPos [150, random 360]; 
					_landPos = [_landPos, 0, 300, 20, 0, 0.2, 0, [], [[0,0,0],[0,0,0]]] call BIS_fnc_findSafePos; //?????????? ?????????????? ?? ?????????????? 550 ???????????? ?? ?????????????????? 150 ???????????? ???? ?????????? ????????????????????
					if !(_landPos isEqualTo [0,0,0]) then //???????? ?????????????? ?????? ?????????????? ?????????????? ???????????????????? ???????????????? ???? ?????????????? ??????????????
						{
						_landPos set [2, 0];
						_pad = createVehicle ["Land_HelipadEmpty_F", _landPos, [], 0, "NONE"];
						
						[2, format ["?????????????????? ???????????????????????? ???????????????? ?? ?????????????? %1", _landPos], _filename] call A3A_fnc_log;
						
						_vehiclesX pushBack _pad;
					
											
						//?????????????? ?????????? ?????? ??????????????
						private _mywp0 = _groupVeh addWaypoint [_landpos, 0];
						_mywp0 setWaypointType "TR UNLOAD"; //?????????????????? ?????????????????? ????????????
						_mywp0 setWaypointStatements ["true", "if !(local this) exitWith {}; (vehicle this) land 'GET OUT';[vehicle this] call A3A_fnc_smokeCoverAuto"];
						_mywp0 setWaypointBehaviour "CARELESS";
						
						private _mywp2 = _groupVeh addWaypoint [_posOrigin, 1];
						_mywp2 setWaypointType "MOVE";	//?????????????? ?????????????? ???? ????????
						_mywp2 setWaypointSpeed "FULL";
						_mywp2 setWaypointStatements ["true", "if !(local this) exitWith {}; [vehicle this] call A3A_fnc_smokeCoverAuto; deleteVehicle (vehicle this); {deleteVehicle _x} forEach thisList"];
						_mywp2 setWaypointBehaviour "AWARE";

						/*
						//deleteWaypoint [_grupo, 0];
						private _mywp3 = _grupo addWaypoint [_posDestination, 0];
						_mywp3 setWaypointType "SAD";
						_mywp3 setWaypointSpeed "FULL";
						_mywp3 setWaypointBehaviour "AWARE";

						
						//_wp3 setWaypointStatements ["true", "if !(local this) exitWith {}; (group this) spawn A3A_fnc_attackDrillAI"];
						//_wp0 synchronizeWaypoint [_wp3];
						private _mywp4 = _grupo addWaypoint [_posDestination, 1];
						_mywp4 setWaypointType "SAD";
						_mywp4 setWaypointBehaviour "AWARE";
						*/
					
						
						//Set the waypoints for cargoGroup  / ?????????????? ?????????? ?????? ??????????????
						private _cargoWP0 = _grupo addWaypoint [_landpos, 0];
						_cargoWP0 setWaypointType "GETOUT";	//???????????????????? ?? ??????????????????
						_cargoWP0 setWaypointStatements ["true", "if !(local this) exitWith {}; (group this) spawn A3A_fnc_attackDrillAI"];
						private _cargoWP1 = _grupo addWaypoint [_posDestination, 0];
						_cargoWP1 setWaypointType "SAD";	//?????????? ?? ???????????????????? ?????????? ???? ??????????
						_cargoWP1 setWaypointBehaviour "AWARE";
						_cargoWP1 setWaypointSpeed "FULL";

						
						}
					else //???????? ?????????? ?????? ?????????????? ??????
						{
						{_x disableAI "TARGET"; _x disableAI "AUTOTARGET"} foreach units _groupVeh;
						if ((_typeVehX in vehFastRope) and ((count(garrison getVariable [_mrkDestination, []])) < 10)) then
							{
							//_grupo setVariable ["mrkAttack",_mrkDestination];
							[_veh,_grupo,_posDestination,_posOrigin,_groupVeh] spawn A3A_fnc_fastrope;		//???????????????? ???????????? ???? ???????????????? ???????? ???????????????????????? ?????????????????? ?????????? ???????????????????????? "?????????????? ??????????????"
							}
						else
							{
							[_veh,_grupo,_mrkDestination,_mrkOrigin] spawn A3A_fnc_paradrop;		//?????????? ???????????????????? ???????????? ???? ??????????????????
							}
						};
					};
				};
			};
		if ((_countX > _countNewSupport) && (count _soldiers >= 10) && ([_sideX] call A3A_fnc_remUnitCount < 5)) exitWith {
			[2, format ["Air wave reached maximum units count after %1 vehicles", _countX], _filename] call A3A_fnc_log;
		};
		sleep 1;
		_pos = [_pos, 80,_ang] call BIS_fnc_relPos;
		_countX = _countX + 1;
		};

	[2, format ["Spawn performed: %1 air vehicles inc. %2 supports, %3 land vehicles, %4 soldiers", _nVehAir, _countNewSupport, _nVehLand, count _soldiers], _filename] call A3A_fnc_log;

	private _planePool = if (_sideX == Occupants) then {vehNATOPlanes} else {vehCSATPlanes};
	private _isCasPlaneAvailable = (_planePool findIf {[_x] call A3A_fnc_vehAvailable} != -1);
	if (_sideX == Occupants) then
		{
		if ((not(_mrkDestination in outposts)) and (not(_mrkDestination in seaports)) and (_mrkOrigin != "NATO_carrier")) then
			{
            private _reveal = [getMarkerPos _mrkDestination, _sideX] call A3A_fnc_calculateSupportCallReveal;
            [getMarkerPos _mrkDestination, 4, ["MORTAR"], _sideX, _reveal] remoteExec ["A3A_fnc_sendSupport", 2];
			if (_isCasPlaneAvailable && {(!(_mrkDestination in citiesX)) && {_firstWave}}) then
				{
				sleep 60;
				_rnd = if (_mrkDestination in airportsX) then {round random 4} else {round random 2};
				for "_i" from 0 to _rnd do
					{
                        private _reveal = [getMarkerPos _mrkDestination, _sideX] call A3A_fnc_calculateSupportCallReveal;
                        [getMarkerPos _mrkDestination, 4, ["AIRSTRIKE"], _sideX, _reveal] remoteExec ["A3A_fnc_sendSupport", 2];
                        sleep 30;
					};
				};
			};
		}
	else
		{
		if ((not(_mrkDestination in resourcesX)) and (not(_mrkDestination in seaports)) and (_mrkOrigin != "CSAT_carrier")) then
			{
                private _reveal = [getMarkerPos _mrkDestination, _sideX] call A3A_fnc_calculateSupportCallReveal;
                    [getMarkerPos _mrkDestination, 4, ["MORTAR"], _sideX, _reveal] remoteExec ["A3A_fnc_sendSupport", 2];
			if (_isCasPlaneAvailable && {_firstWave}) then
				{
				sleep 60;
				_rnd = if (_mrkDestination in airportsX) then {if ({sidesX getVariable [_x,sideUnknown] == Invaders} count airportsX == 1) then {8} else {round random 4}} else {round random 2};
				for "_i" from 0 to _rnd do
					{
					if (_isCasPlaneAvailable) then
						{
                            private _reveal = [getMarkerPos _mrkDestination, _sideX] call A3A_fnc_calculateSupportCallReveal;
                            [getMarkerPos _mrkDestination, 4, ["AIRSTRIKE"], _sideX, _reveal] remoteExec ["A3A_fnc_sendSupport", 2];
						};
					};
				};
			};
		};

	_timeX = time + 900;		// wave timeout, 15 mins after the wave has finished spawning

	if (!_SDKShown) then
		{
		if !([true] call A3A_fnc_FIAradio) then {sleep 100};
		_SDKShown = true;
		["TaskSucceeded", ["", "Attack Destination Updated"]] remoteExec ["BIS_fnc_showNotification",teamPlayer];
		[_taskId, getMarkerPos _mrkDestination] call BIS_fnc_taskSetDestination;
		};
	_solMax = round ((count _soldiers)*0.6);
	_waves = _waves -1;
	_firstWave = false;
	if (sidesX getVariable [_mrkDestination,sideUnknown] != teamPlayer) then {_soldiers spawn A3A_fnc_remoteBattle};
	if (_sideX == Occupants) then
		{
		waitUntil {sleep 5; (({!([_x] call A3A_fnc_canFight)} count _soldiers) >= _solMax) or (time > _timeX) or (sidesX getVariable [_mrkDestination,sideUnknown] == Occupants) or (({[_x,_mrkDestination] call A3A_fnc_canConquer} count _soldiers) > 3*({(side _x != _sideX) and (side _x != civilian) and ([_x,_mrkDestination] call A3A_fnc_canConquer)} count allUnits))};
		if  ((({[_x,_mrkDestination] call A3A_fnc_canConquer} count _soldiers) > 3*({(side _x != _sideX) and (side _x != civilian) and ([_x,_mrkDestination] call A3A_fnc_canConquer)} count allUnits)) or (sidesX getVariable [_mrkDestination,sideUnknown] == Occupants)) then
			{
			_waves = 0;
			if ((!(sidesX getVariable [_mrkDestination,sideUnknown] == Occupants)) and !(_mrkDestination in citiesX)) then {[Occupants,_mrkDestination] remoteExec ["A3A_fnc_markerChange",2]};
			[_taskId, "rebelAttack", "FAILED", true] call A3A_fnc_taskSetState;
			if (_mrkDestination in citiesX) then
			{
                //Impact the support on other cities in the area
                //They cant defend us, switch back to NATO
                {
                    if(_x != _mrkDestination) then
                    {
                        private _distance = (getMarkerPos _mrkDestination) distance2D (getMarkerPos _x);
                        private _supportChange = [0, 0];
                        if(_distance < 2000) then
                        {
                            _supportChange = [10, -10];
                        };
                        if(_distance < 1000) then
                        {
                            _supportChange = [20, -20];
                        };
                        if(_distance < 500) then
                        {
                            _supportChange = [30, -30];
                        };
                        if(_distance < 2000) then
                        {
                            _supportChange pushBack _x;
                            _supportChange remoteExec ["A3A_fnc_citySupportChange",2];
                        };
                    };
                } forEach citiesX;
				[60,-60,_mrkDestination,false] remoteExec ["A3A_fnc_citySupportChange",2];		// no pop scaling, force swing
				["TaskFailed", ["", format ["%1 joined %2",[_mrkDestination, false] call A3A_fnc_location,nameOccupants]]] remoteExec ["BIS_fnc_showNotification",teamPlayer];
				sidesX setVariable [_mrkDestination,Occupants,true];
				[Occupants, -10, 45] remoteExec ["A3A_fnc_addAggression",2];
				_mrkD = format ["Dum%1",_mrkDestination];
				_mrkD setMarkerColor colorOccupants;
				garrison setVariable [_mrkDestination,[],true];
				};
			};
		sleep 10;
		if (!(sidesX getVariable [_mrkDestination,sideUnknown] == Occupants)) then
			{
			if (sidesX getVariable [_mrkOrigin,sideUnknown] == Occupants) then
				{
				_killZones = killZones getVariable [_mrkOrigin,[]];
				_killZones append [_mrkDestination,_mrkDestination,_mrkDestination];
				killZones setVariable [_mrkOrigin,_killZones,true];
				};

			if ((_waves <= 0) or (sidesX getVariable [_mrkOrigin,sideUnknown] != Occupants)) then
				{
				{_x doMove _posOrigin} forEach _soldiersTotal;
				if (_waves <= 0) then {[_mrkDestination,_mrkOrigin] call A3A_fnc_minefieldAAF};

				[_taskId, "rebelAttack", "SUCCEEDED", true] call A3A_fnc_taskSetState;
				};
			};
		}
	else
		{
		waitUntil {sleep 5; (({!([_x] call A3A_fnc_canFight)} count _soldiers) >= _solMax) or (time > _timeX) or (sidesX getVariable [_mrkDestination,sideUnknown] == Invaders) or (({[_x,_mrkDestination] call A3A_fnc_canConquer} count _soldiers) > 3*({(side _x != _sideX) and (side _x != civilian) and ([_x,_mrkDestination] call A3A_fnc_canConquer)} count allUnits))};
		if  ((({[_x,_mrkDestination] call A3A_fnc_canConquer} count _soldiers) > 3*({(side _x != _sideX) and (side _x != civilian) and ([_x,_mrkDestination] call A3A_fnc_canConquer)} count allUnits)) or (sidesX getVariable [_mrkDestination,sideUnknown] == Invaders))  then
			{
			_waves = 0;
			if ((!(sidesX getVariable [_mrkDestination,sideUnknown] == Invaders)) and !(_mrkDestination in citiesX)) then {[Invaders,_mrkDestination] remoteExec ["A3A_fnc_markerChange",2]};
			if (gamemode ==5) then {[_taskId, "rebelAttack", "SUCCEEDED", true] call A3A_fnc_taskSetState;} else {[_taskId, "rebelAttack", "FAILED", true] call A3A_fnc_taskSetState;};
			if (_mrkDestination in citiesX) then
			{
                //Impact the support on other cities in the area
                //They cant defend us, switch back to NATO
                {
                    if(_x != _mrkDestination) then
                    {
                        private _distance = (getMarkerPos _mrkDestination) distance2D (getMarkerPos _x);
                        private _supportChange = [0, 0];
                        if(_distance < 2000) then
                        {
                            _supportChange = [10, -10];
                        };
                        if(_distance < 1000) then
                        {
                            _supportChange = [20, -20];
                        };
                        if(_distance < 500) then
                        {
                            _supportChange = [30, -30];
                        };
                        if(_distance < 2000) then
                        {
                            _supportChange pushBack _x;
                            _supportChange remoteExec ["A3A_fnc_citySupportChange",2];
                        };
                    };
                } forEach citiesX;
				[60,-60,_mrkDestination,false] remoteExec ["A3A_fnc_citySupportChange",2];		// no pop scaling, force swing
				["TaskFailed", ["", format ["%1 joined %2",[_mrkDestination, false] call A3A_fnc_location,nameInvaders]]] remoteExec ["BIS_fnc_showNotification",teamPlayer];
				sidesX setVariable [_mrkDestination,Invaders,true];
				[Invaders, -10, 45] remoteExec ["A3A_fnc_addAggression",2];
				_mrkD = format ["Dum%1",_mrkDestination];
				_mrkD setMarkerColor colorInvaders;
				garrison setVariable [_mrkDestination,[],true];
				};
			};
		sleep 10;
		if (!(sidesX getVariable [_mrkDestination,sideUnknown] == Invaders)) then
			{
            diag_log format ["%1: [Antistasi] | INFO | Wave number %2 on wavedCA lost",servertime,_waves];
			if (sidesX getVariable [_mrkOrigin,sideUnknown] == Invaders) then
				{
				_killZones = killZones getVariable [_mrkOrigin,[]];
				_killZones append [_mrkDestination,_mrkDestination,_mrkDestination];
				killZones setVariable [_mrkOrigin,_killZones,true];
				};

			if ((_waves <= 0) or (sidesX getVariable [_mrkOrigin,sideUnknown] != Invaders)) then
				{
				{_x doMove _posOrigin} forEach _soldiersTotal;
				if (_waves <= 0) then {[_mrkDestination,_mrkOrigin] call A3A_fnc_minefieldAAF};
				[_taskId, "rebelAttack", "SUCCEEDED", true] call A3A_fnc_taskSetState;
				};
			};
		};
	};





if (_isSDK) then
	{
	if (!(sidesX getVariable [_mrkDestination,sideUnknown] == teamPlayer)) then
		{
		[-10,theBoss] call A3A_fnc_playerScoreAdd;
		}
	else
		{
		{if (isPlayer _x) then {[10,_x] call A3A_fnc_playerScoreAdd}} forEach ([500,0,_posDestination,teamPlayer] call A3A_fnc_distanceUnits);
		[5,theBoss] call A3A_fnc_playerScoreAdd;
		};
	};
diag_log "Antistasi: Reached end of winning conditions. Starting despawn";
sleep 30;
[_taskId, "rebelAttack", 0, true] spawn A3A_fnc_taskDelete;

[_mrkOrigin,60] call A3A_fnc_addTimeForIdle;
[3600, _originalSide] remoteExec ["A3A_fnc_timingCA", 2]; //?????????????????? 60 ?????????? ?????????? ?????????????????? ????????????
bigAttackInProgress = false; publicVariable "bigAttackInProgress";  //?????????????????? ?????????????????????? ?????????????? ??????????
forcedSpawn = forcedSpawn - [_mrkDestination]; publicVariable "forcedSpawn";


// Hand remaining aggressor units to the group despawner - ?????????????????? ?????????????????? ???????????????? ?????????? ??????????????????
{
	// order return to base if it's an air group, city attack or if it was unsuccessful
	private _isPilot = vehicle leader _x isKindOf "Air";
	if (_isPilot || _mrkDestination in citiesX || sidesX getVariable [_mrkDestination,sideUnknown] != _sideX) then {
		private _wp = _x addWaypoint [_posOrigin, 50];
		_wp setWaypointType "MOVE";
		_x setCurrentWaypoint _wp;
	};
	[_x] spawn A3A_fnc_groupDespawner;
} forEach _groups;

{ [_x] spawn A3A_fnc_VEHdespawner } forEach _vehiclesX;
