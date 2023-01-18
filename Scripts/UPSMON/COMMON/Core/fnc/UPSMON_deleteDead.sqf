/****************************************************************
File: UPSMON_deleteDead.sqf
Author: KRONZKY

Description:

Parameter(s):

Returns:

****************************************************************/
private["_u","_s"];

_u=_this select 0; 
_s= _this select 1; 
_u removeAllEventHandlers "killed"; 
sleep _s; 

	//если есть прикрепленные объекты Z - открепляем и удаляем их
	if (count attachedObjects _u > 0) then 
	{
		{
			if (typeOf _x == "UserTexture1m_F") then
			{
			  detach _x;
			  deleteVehicle _x;
			}
		} forEach attachedObjects _u;
	};

deletevehicle _u