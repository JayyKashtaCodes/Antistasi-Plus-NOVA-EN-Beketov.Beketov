_filename = "fn_groupDespawner";
params ["_group", ["_checkNonRebel", false]];

if (count units _group == 0) exitWith { deleteGroup _group };

// Strip spawner status. If the group is waiting to despawn then it's no longer active - Лишить статус спавнера. Если группа ожидает исчезновения, она больше не активна.
{
	if (_x getVariable ["spawner", false]) then { _x setVariable ["spawner", false, true] };
} forEach units _group;

private _eny1 = Occupants;
private _eny2 = Invaders;
private _side = side _group;
if (_side == Occupants) then {_eny1 = teamPlayer} else {if (_side == Invaders) then {_eny2 = teamPlayer}};
if (gamemode == 5) then {
  if (_side == Occupants) then {_eny1 = teamPlayer} else {if (_side == Invaders) then {_eny2 = Occupants}};
};

private _fnc_distCheckEnemy = {
	params ["_unit"];
	if !([distanceSPWN,1,_unit,_eny1] call A3A_fnc_distanceUnits) exitWith { true };
	if !([distanceSPWN,1,_unit,_eny2] call A3A_fnc_distanceUnits) exitWith { true };
	false;
};

/*
private _fnc_distCheckRebel = {
	params ["_unit"];
	if (gamemode == 5) then {
		if !([200,1,_unit,Occupants] call A3A_fnc_distanceUnits) exitWith { true };
	} else {
		if !([200,1,_unit,teamPlayer] call A3A_fnc_distanceUnits) exitWith { true };
	};
	false;
};

if (gamemode == 5) then {
		_fnc_distCheck = if (_checkNonRebel) then {_fnc_distCheckEnemy} else {_fnc_distCheckEnemy};
	} else {
		_fnc_distCheck = if (_checkNonRebel) then {_fnc_distCheckEnemy} else {_fnc_distCheckRebel}; 
	};
*/

while {count units _group > 0} do
{
	private _leader = objNull;
	waitUntil {
		sleep 10;
		_leader = leader _group;
		isNull _leader || {[_leader] call _fnc_distCheckEnemy};
	};
	if !(isNull _leader) then //если лидер группы есть тогда
	{
		private _pos = position _leader; //запоминаем позицию лидера
		{
			if (_x distance2d _pos < 100) then { //если дистанция между юнитом группы и лидером < 100
				if (vehicle _x != _x) then { //если юнит сидит в технике
				{
					if ((typeOf _x) == "UserTexture1m_F") then { 
						detach _x,
						deleteVehicle _x;
					}
				}
				forEach attachedObjects (vehicle _x); //удаляем тактические знаки
				
				deleteVehicle (vehicle _x) }; // удалить технику
				deleteVehicle _x; //удалить юнита
			};
		} forEach units _group; //для каждого юнита группы делать
	};
};


/*
{
  if (vehicle _x != _x) then { //если юнит сидит в технике 
  {
	if ((typeOf _x) == "UserTexture1m_F") then { 
		detach _x,
		deleteVehicle _x;
	}
  }
  forEach attachedObjects (vehicle _x); //удаляем тактические знаки
  deleteVehicle (vehicle _x); //удалить технику
  };
  
  deleteVehicle _x; //удалить юнита
} forEach units _group; //для каждого юнита группы делать
*/

deleteGroup _group; //удаляем группу (Уничтожает указанную группу. Группа должна быть пустой и локальной для машины, выполняющей команду.)
