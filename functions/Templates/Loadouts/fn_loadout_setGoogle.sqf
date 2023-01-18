/*
 * File: fn_loadout_setGoogles.sqf
 * Author: NOVA
 * Description:
 *    Adds a googles to a unit loadout
 * Params:
 *    _loadout - Loadout to add vest to
 *    _googles - googles class to add
 * Returns:
 *    Modified loadout array
 * Example Usage:
 *    [_loadout, "rhsusf_oakley_goggles_blk"] call A3A_fnc_setGoogle
 */

params ["_loadout", "_googles"];

_loadout set [ 7,
	_googles
];

_loadout