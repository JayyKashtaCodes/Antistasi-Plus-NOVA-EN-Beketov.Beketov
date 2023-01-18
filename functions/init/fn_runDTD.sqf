//вызов [_Object] call (uiNamespace getVariable "NOVA_fnc_runDTD"); или [objNull] call NOVA_fnc_runDTD; 

params ["_objUnit"];
private _arrUnits = [];

//если _objUnit = objNull = isNull (пустой объект по умолчанию), скрипт применяется ко всем юнитам на карте, если указан _objUnit, то только к нему.
if (isNull _objUnit) then {_arrUnits append allUnits} else {_arrUnits pushBack _objUnit};

{   
//создаем событие срабатываемое после убийства юнита
_x addEventHandler ["Killed", { 
 params ["_unit", "_killer"];  // с параметрами кого убили и кто убил
 //если у убитого юнита под ногами разрушенный объект
 if (damage (lineintersectsobjs [([getPosASL _unit select 0,getPosASL _unit select 1,(getPosASL _unit select 2) +2]),([getPosASL _unit select 0,getPosASL _unit select 1,0]),objnull,objnull,false,32] select 0) == 1) then { 
   _x setPos [getPos _x select 0,getPos _x select 1,0];}  //опускаем его на землю
 else { //иначе
   //стреляем вниз и получаем объект под ногами убитого и сразу присваиваем этому объекту (будь то вышка или дом) событие срабатываемое на разрушение этого объекта
   (lineintersectsobjs [([getPosASL _unit select 0,getPosASL _unit select 1,(getPosASL _unit select 2) +2]),([getPosASL _unit select 0,getPosASL _unit select 1,0]),objnull,objnull,false,32] select 0) addEventHandler ["Killed", { 
	params ["_unit", "_killer"]; //здесь переменная _unit возвращает разрушенный дом или вышку, что было под ногами цбитого юнита, _killer кто разрушил этот (дом или вышку)
	{
		if ((getPosATL (_x)) select 2 > 1) then {_x setPos [getPos _x select 0,getPos _x select 1,0];}; //если позиция объекта над землей больше 1 метра то опускаем объект на землю
	} forEach (nearestObjects [(getPosATL _unit), [], 20]); //для каждого объекта в радиусе 20 метров от (вышки, дома)делать (ищем трупы и другие объекты)
 }];
 };
}]; 
}   
forEach _arrUnits; //для каждого юнита в массиве делать (если для всех allUnits)