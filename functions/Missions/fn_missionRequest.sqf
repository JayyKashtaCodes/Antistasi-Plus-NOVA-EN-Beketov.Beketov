if(!isServer) exitWith {};

params ["_type", ["_requester", clientOwner], ["_silent", false]];

waitUntil {isNil "A3A_missionRequestInProgress"};
A3A_missionRequestInProgress = true;

if(isNil "_type") then {
	private _types = ["AS","CON","DES","LOG","SUPP","RES","CONVOY"];
	_type = selectRandom (_types - A3A_activeTasks);
	_silent = true;
};
if (isNil "_type" or leader group petros != petros) exitWith { A3A_missionRequestInProgress = nil };
if (_type in A3A_activeTasks) exitWith {
	if (!_silent) then {
		[petros,"globalChat","I already endl gave you a mission of this type."] remoteExec ["A3A_fnc_commsMP",_requester],
		[petros,"globalChat","У вас уже есть подобное задание."] remoteExec ["A3A_fnc_commsMP",_requester],
	};
	A3A_missionRequestInProgress = nil;
};

private _findIfNearAndHostile = {
	/*
	Input : single array of markers, do 'array + array' for multiple.
	Returns: array of markers within max mission distance and is not rebel.
	*/
	params ["_Markers"];
	_Markers = _Markers select {(getMarkerPos _x distance2D getMarkerPos respawnTeamPlayer < distanceMission) && (sidesX getVariable [_x,sideUnknown] != teamPlayer)};
	_Markers
};

private _possibleMarkers = [];
switch (_type) do {
	case "AS": {
		//find apropriate sites
		_possibleMarkers = [airportsX + milbases + citiesX] call _findIfNearAndHostile;
		_possibleMarkers = _possibleMarkers select {spawner getVariable _x != 0};
		//add controlsX not on roads and on the 'frontier'
		private _controlsX = [controlsX] call _findIfNearAndHostile;
		private _nearbyFriendlyMarkers = markersX select {
			(getMarkerPos _x inArea [getMarkerPos respawnTeamPlayer, distanceMission+distanceSPWN, distanceMission+distanceSPWN, 0, false])
			and (sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer)
		};
		_nearbyFriendlyMarkers deleteAt (_nearbyFriendlyMarkers find "Synd_HQ");
		{
			private _pos = getmarkerPos _x;
			if !(isOnRoad _pos) then {
				if (_nearbyFriendlyMarkers findIf {getMarkerPos _x distance _pos < distanceSPWN} != -1) then {_possibleMarkers pushBack _x};
			};
		}forEach _controlsX;

		private _nearbyCities = [citiesX] call _findIfNearAndHostile;
		private _policeCities = [];

		if(count _nearbyCities > 0) then {
			private _policeCityIndex = _nearbyCities findIf {
				private _policeStations = nearestObjects [getMarkerPos _x, ["Land_vn_i_barracks_v1_f", "Land_vn_barracks_01_dilapidated_f", "Land_vn_barracks_01_grey_f", "Land_vn_barracks_01_camo_f", "Land_vn_i_barracks_v2_f","Land_zachytka","Land_PoliceStation_01_F","Land_i_Barracks_V2_F"], 800, true];
				_policeStations = _policeStations select {alive _x};
				count _policeStations > 0
			};

			if(_policeCityIndex != -1) then {
				_policeCities pushBack (_nearbyCities select _policeCityIndex);
			};
		};
		
		if ((Gamemode == 5)&&(count _possibleMarkers > 0)) then {
		  _possibleMarkers = _possibleMarkers select {(sidesX getVariable [_x,sideUnknown] == Occupants)};
		};

		if (count _possibleMarkers == 0) then {
			if (!_silent) then {
				[petros,"globalChat","I have no assassination missions for you. Move our HQ closer to the enemy."] remoteExec ["A3A_fnc_commsMP",_requester];
				[petros,"hint","Assassination Missions require cities, patrolled Jungles or Airports closer than 4Km from your HQ."] remoteExec ["A3A_fnc_commsMP",_requester];
				[petros,"globalChat","У меня нет для тебя миссий по убийству. Переместите наш штаб ближе к противнику."] remoteExec ["A3A_fnc_commsMP",_requester];				
				[petros,"hint","Миссии по ликвидации требуют городов, патрулей или аэропортов ближе, чем 4 км от вашей штаб-квартиры.", "Missions"] remoteExec ["A3A_fnc_commsMP",_requester];
			};
		} else {
			private _site = selectRandom _possibleMarkers;

			switch(true) do {
				case ((random 100) < 15): {
					[[_site],"A3A_fnc_AS_Ambush"] remoteExec ["A3A_fnc_scheduler",2];
				};
				case (count _policeCities > 0 && {(random 100) < 25}): {
					_policeCity = selectRandom _policeCities;
					[[_policeCity],"A3A_fnc_AS_Collaborationist"] remoteExec ["A3A_fnc_scheduler",2];
				};
				case (_site in airportsX): {
					[[_site],"A3A_fnc_AS_Official"] remoteExec ["A3A_fnc_scheduler",2];
				};
				case (_site in citiesX): {
					[[_site],"A3A_fnc_AS_Traitor"] remoteExec ["A3A_fnc_scheduler",2];
				};
				default {
					[[_site],"A3A_fnc_AS_SpecOP"] remoteExec ["A3A_fnc_scheduler",2];
				};
			};
		};
	};

	case "CON": {
		//find apropriate sites
		_possibleMarkers = [outposts + resourcesX + (controlsX select {isOnRoad (getMarkerPos _x)})] call _findIfNearAndHostile;

		if ((Gamemode == 5)&&(count _possibleMarkers > 0)) then {
		  _possibleMarkers = _possibleMarkers select {(sidesX getVariable [_x,sideUnknown] == Occupants)};
		};
		
		if (count _possibleMarkers == 0) then {
			if (!_silent) then {
				[petros,"globalChat","I have no Conquest missions for you. Move our HQ closer to the enemy."] remoteExec ["A3A_fnc_commsMP",_requester];
				[petros,"hint","Conquest Missions require roadblocks or outposts closer than 4Km from your HQ.", "Missions"] remoteExec ["A3A_fnc_commsMP",_requester];
				[petros,"globalChat","У меня нет для вас миссий по завоеванию. Переместите наш штаб ближе к противнику."] remoteExec ["A3A_fnc_commsMP",_requester];				
				[petros,"hint","Миссии завоевания требуют наличие блокпостов или аванпостов ближе, чем 4 км от вашей штаб-квартиры.", "Missions"] remoteExec ["A3A_fnc_commsMP",_requester];
			};
		} else {
			private _site = selectRandom _possibleMarkers;
			[[_site],"A3A_fnc_CON_Outpost"] remoteExec ["A3A_fnc_scheduler",2];
		};
	};

	case "DES": {
		//find apropriate sites
		_possibleMarkers = [airportsX] call _findIfNearAndHostile;
		_possibleMarkers = _possibleMarkers select {spawner getVariable _x != 0};

		private _controlsX = [controlsX] call _findIfNearAndHostile;
		private _nearbyFriendlyMarkers = markersX select {
			(getMarkerPos _x inArea [getMarkerPos respawnTeamPlayer, distanceMission+distanceSPWN, distanceMission+distanceSPWN, 0, false])
			and (sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer)
		};
		_nearbyFriendlyMarkers deleteAt (_nearbyFriendlyMarkers find "Synd_HQ");
		{
			private _pos = getmarkerPos _x;
			if !(isOnRoad _pos) then {
				if (_nearbyFriendlyMarkers findIf {getMarkerPos _x distance _pos < distanceSPWN} != -1) then {
					_possibleMarkers pushBack _x
				};
			};
		} forEach _controlsX;

		if ((Gamemode == 5)&&(count _possibleMarkers > 0)) then {
		  _possibleMarkers = _possibleMarkers select {(sidesX getVariable [_x,sideUnknown] == Occupants)};
		};
		
		
		//append all antennas to list
		{
			private _nearbyMarker = [markersX, getPos _x] call BIS_fnc_nearestPosition;
			
			if (Gamemode == 5) then {
			  if (
				   (sidesX getVariable [_nearbyMarker,sideUnknown] == Occupants)
				   && (getPos _x distance getMarkerPos respawnTeamPlayer < distanceMission)
				  ) then {_possibleMarkers pushBack _x};
			}
			else {
			  if (
				  (sidesX getVariable [_nearbyMarker,sideUnknown] != teamPlayer)
				  && (getPos _x distance getMarkerPos respawnTeamPlayer < distanceMission)
				  ) then {_possibleMarkers pushBack _x};
			};
		} forEach antennas;


		if (count _possibleMarkers == 0) then {
			if (!_silent) then {
				[petros,"globalChat","I have no destroy missions for you. Move our HQ closer to the enemy."] remoteExec ["A3A_fnc_commsMP",_requester];
				[petros,"hint","Destroy Missions require Airbases or Radio Towers closer than 4Km from your HQ.", "Missions"] remoteExec ["A3A_fnc_commsMP",_requester];
				[petros,"globalChat","У меня нет для вас миссий по уничтожению. Переместите наш штаб ближе к противнику."] remoteExec ["A3A_fnc_commsMP",_requester];				
				[petros,"hint","Для миссий по уничтожению требуются авиабазы или радиовышки ближе 4 км от вашего штаба.", "Missions"] remoteExec ["A3A_fnc_commsMP",_requester];
			};
		} else {
			private _site = selectRandom _possibleMarkers;
			switch (true) do {
				case (_site in airportsX): {
					if (random 10 < 6) then {
						[[_site],"A3A_fnc_DES_Vehicle"] remoteExec ["A3A_fnc_scheduler",2];
					} else {
						[[_site],"A3A_fnc_DES_Heli"] remoteExec ["A3A_fnc_scheduler",2];
					};
				};
				case (_site in antennas): {
					[[_site],"A3A_fnc_DES_antenna"] remoteExec ["A3A_fnc_scheduler",2];
				};
				case (_site in controlsX): {
					[[_site],"A3A_fnc_DES_Artillery"] remoteExec ["A3A_fnc_scheduler",2];
				};
			};
		};
	};

	case "LOG": {
		//Add unspawned outposts for ammo trucks, and seaports for salvage
		_possibleMarkers = [seaports + outposts] call _findIfNearAndHostile;
		_possibleMarkers = _possibleMarkers select {(_x in seaports) or (spawner getVariable _x != 0)};

		private _controlsX = ([controlsX] call _findIfNearAndHostile) select {!isOnRoad (getMarkerPos _x)};
		_possibleMarkers = _possibleMarkers + _controlsX;

		//append banks in hostile cities
		if (random 100 < 20) then {
			{
				private _nearbyMarker = [markersX, getPos _x] call BIS_fnc_nearestPosition;
				if (
					(sidesX getVariable [_nearbyMarker,sideUnknown] != teamPlayer)
					&& (getPos _x distance getMarkerPos respawnTeamPlayer < distanceMission)
					) then {_possibleMarkers pushBack _x};
			}forEach banks;
		};
		
		if ((Gamemode == 5)&&(count _possibleMarkers > 0)) then {
		  _possibleMarkers = _possibleMarkers select {(sidesX getVariable [_x,sideUnknown] == Occupants)};
		};

		if (count _possibleMarkers == 0) then {
			if (!_silent) then {
				[petros,"globalChat","I have no logistics missions for you. Move our HQ closer to the enemy."] remoteExec ["A3A_fnc_commsMP",_requester];
				[petros,"hint","Logistics Missions require Outposts, Seaports or Banks closer than 4Km from your HQ.", "Missions"] remoteExec ["A3A_fnc_commsMP",_requester];
				[petros,"globalChat","У меня нет для тебя миссий по логистике. Переместите наш штаб ближе к противнику."] remoteExec ["A3A_fnc_commsMP",_requester];				
				[petros,"hint","Для логистических миссий требуются аванпосты, морские порты или банки ближе, чем в 4 км от вашего штаба.", "Missions"] remoteExec ["A3A_fnc_commsMP",_requester];
			};
		} else {
			private _site = selectRandom _possibleMarkers;
			switch(true) do {
                case(_site in outposts): {
                    [[_site],"A3A_fnc_LOG_Ammo"] remoteExec ["A3A_fnc_scheduler", 2];
                };
                case(_site in banks): {
                    [[_site],"A3A_fnc_LOG_Bank"] remoteExec ["A3A_fnc_scheduler", 2];
                };
                case(_site in seaports): {
                    [[_site],"A3A_fnc_LOG_Salvage"] remoteExec ["A3A_fnc_scheduler", 2];
                };
                case(_site in controlsX): {
					private _roll = random 100;
					if(_roll < 50) then {
						[[_site],"A3A_fnc_LOG_Airdrop"] remoteExec ["A3A_fnc_scheduler",2];
					} else {
						[[_site],"A3A_fnc_LOG_Helicrash"] remoteExec ["A3A_fnc_scheduler", 2];
					};
                };
                default {};
            };
		};
	};

	case "SUPP": {
		_possibleMarkers = [];
		private _weightedMarkers = [];
		{
			private _dist = getMarkerPos _x distance2D getMarkerPos respawnTeamPlayer;
			private _supportReb = (server getVariable _x) select 3;
			if (_dist < distanceMission && _supportReb < 90) then {
				private _weight = (100 - _supportReb) * ((distanceMission - _dist) ^ 2);
				_possibleMarkers pushBack _x;
				_weightedMarkers append [_x, _weight];
			};
		}forEach (citiesX - destroyedSites);
		
		if (count _possibleMarkers == 0) then {
			if (!_silent) then {
				[petros,"globalChat","I have no support missions for you. Move our HQ closer to the enemy."] remoteExec ["A3A_fnc_commsMP",_requester];
				[petros,"hint","Support Missions require Cities closer than 4Km from your HQ.", "Missions"] remoteExec ["A3A_fnc_commsMP",_requester];
				[petros,"globalChat","У меня нет миссий поддержки для вас. Переместите наш штаб ближе к противнику."] remoteExec ["A3A_fnc_commsMP",_requester];				
				[petros,"hint","Для миссий поддержки требуются города ближе 4 км от вашего штаба.", "Missions"] remoteExec ["A3A_fnc_commsMP",_requester];
			};
		} else {
			[3, format ["City weights: %1", _weightedMarkers], "missionRequest"] call A3A_fnc_log;
			private _site = selectRandomWeighted _weightedMarkers;
			[[_site],"A3A_fnc_LOG_Supplies"] remoteExec ["A3A_fnc_scheduler",2];
		};
	};

	case "RES": {
		_possibleMarkers = [citiesX] call _findIfNearAndHostile;
		{
			private _spawner = spawner getVariable _x;
			if (_spawner != 0) then {_possibleMarkers pushBack _x};
		} forEach ([airportsX + outposts] call _findIfNearAndHostile);
		
		if ((Gamemode == 5)&&(count _possibleMarkers > 0)) then {
		  _possibleMarkers = _possibleMarkers select {(sidesX getVariable [_x,sideUnknown] == Occupants)};
		};

		if (count _possibleMarkers == 0) then {
			if (!_silent) then {
				[petros,"globalChat","I have no rescue missions for you. Move our HQ closer to the enemy."] remoteExec ["A3A_fnc_commsMP",_requester];
				[petros,"hint","Rescue Missions require Cities or Airports closer than 4Km from your HQ.", "Missions"] remoteExec ["A3A_fnc_commsMP",_requester];
				[petros,"globalChat","У меня нет для тебя миссий по спасению. Переместите наш штаб ближе к противнику."] remoteExec ["A3A_fnc_commsMP",_requester];				
				[petros,"hint","Спасательные миссии требуют, чтобы города или аэропорты находились ближе, чем в 4 км от вашей штаб-квартиры.", "Missions"] remoteExec ["A3A_fnc_commsMP",_requester];
			};
		} else {
			private _site = selectRandom _possibleMarkers;

			private _shipwreckRoll = random 100;
			if(_shipwreckRoll < 20) then {
				private _shorePosition = [
					(getMarkerPos _site),
					0,
					1500,
					0,
					0,
					1,
					1,
					[],
					[[0,0,0], [0,0,0]]
				] call BIS_fnc_findSafePos;

				if (!(_shorePosition isEqualTo [0,0,0])) then {
					[[_site],"A3A_fnc_RES_Shipwreck"] remoteExec ["A3A_fnc_scheduler",2];
				} else {
					[[_site],"A3A_fnc_RES_Prisoners"] remoteExec ["A3A_fnc_scheduler",2];
				};
			} else {

				switch (true) do {
					case (_site in citiesX && {sunOrMoon < 1}): {
						[[_site],"A3A_fnc_RES_Informer"] remoteExec ["A3A_fnc_scheduler",2];
					};

					default {
						[[_site],"A3A_fnc_RES_Prisoners"] remoteExec ["A3A_fnc_scheduler",2]
					};
				};
			};
		};
	};

	case "CONVOY": {
		if (bigAttackInProgress) exitWith {
			if (!_silent) then {
				[petros,"globalChat","There is a big battle around, I don't think the enemy will send any convoy."] remoteExec ["A3A_fnc_commsMP",_requester];
				[petros,"hint","Convoy Missions require a calmed status around the island, and now it is not the proper time.", "Missions"] remoteExec ["A3A_fnc_commsMP",_requester];
				[petros,"globalChat","Вокруг идет сильный бой, я не думаю, что противник пошлет колонну."] remoteExec ["A3A_fnc_commsMP",_requester];
				[petros,"hint","Выезд колонны требует спокойной обстановки! Сейчас неподходящее время.", "Missions"] remoteExec ["A3A_fnc_commsMP",_requester];
				
			};
		};
		// only do the city convoys on flip?
        private _markers = (airportsX + resourcesX + factories + seaports + outposts + milbases - blackListDest);
        // Pre-filter the possible source bases to make this less n-squared
        private _possibleBases = (airportsX + outposts) select { (getMarkerPos _x) distance (getMarkerPos respawnTeamPlayer) < distanceMission + 3000 };
        
		if (Gamemode == 5) then {
		  _markers = _markers select {(sidesX getVariable [_x,sideUnknown] == Occupants)};
		  _possibleBases = _possibleBases select {(sidesX getVariable [_x,sideUnknown] == Occupants)};
		};
		
		private _convoyPairs = [];
        {
            private _site = _x;
            if ((getMarkerPos _site) distance (getMarkerPos respawnTeamPlayer) > distanceMission) then {continue};
            if (sidesX getVariable [_site, teamPlayer] == teamPlayer) then {continue};
            private _base = [_site, _possibleBases] call A3A_fnc_findBasesForConvoy;
            if (_base != "") then {
                _possibleMarkers pushBack _site;
                _convoyPairs pushBack [_site, _base];
            };
        } forEach _markers;

		if (count _possibleMarkers == 0) then
		{
			if (!_silent) then {
				[petros,"globalChat","I have no Convoy missions for you. Move our HQ closer to the enemy."] remoteExec ["A3A_fnc_commsMP",_requester];
				[petros,"hint","Convoy Missions require nearby enemy facilities, with a road route to an idle base within 3km.", "Missions"] remoteExec ["A3A_fnc_commsMP",_requester];
				[petros,"globalChat","У меня нет для вас миссий по уничтожению колонн. Переместите наш штаб ближе к противнику."] remoteExec ["A3A_fnc_commsMP",_requester];
				[petros,"hint","Для миссии уничтожение колонны необходимы вражеские базы, с автомобильным маршрутом до бездействующей базы в пределах 3 км.", "Missions"] remoteExec ["A3A_fnc_commsMP",_requester];
			};
		} else {
			private _convoyPair = selectRandom _convoyPairs;
			[_convoyPair,"A3A_fnc_convoy"] remoteExec ["A3A_fnc_scheduler",2];
		};
	};

	default {
		[1, format ["%1 is not an accepted task type.", _type], "missionRequest"] call A3A_fnc_log;
	};
};

if (count _possibleMarkers > 0) then {
	if (!_silent) then {
		[petros,"globalChat","I have a mission for you!"] remoteExec ["A3A_fnc_commsMP",_requester];
		[petros,"globalChat","У меня есть задание для тебя!"] remoteExec ["A3A_fnc_commsMP",_requester];
	};
	sleep 3;			// delay lockout until the mission is registered
};
A3A_missionRequestInProgress = nil;
