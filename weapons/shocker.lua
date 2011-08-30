-- WEAPONDEF -- SHOCKER --
--------------------------------------------------------------------------------

local weaponName = "shocker"

--------------------------------------------------------------------------------

local weaponDef = {
	areaofeffect = 192,
	avoidfeature = 0,
	avoidfriendly = 0,
	ballistic = 1,
	collidefriendly = 0,
	craterboost = 0,
	cratermult = 0,
	edgeeffectiveness = 0.5,
	explosiongenerator = [[custom:FLASHSMALLBUILDING]],
	heightboostfactor = 2.7999999523163,
	impulseboost = 0.5,
	impulsefactor = 0.5,
	minbarrelangle = -35,
	name = [[ShockerHeavyCannon]],
	noselfdamage = 1,
	predictboost = 0.75,
	range = 1325,
	reloadtime = 6,
	rendertype = 4,
	size = 5,
	soundhit = [[xplomed2]],
	soundstart = [[cannhvy5]],
	targetborder = 1,
	turret = 1,
	weaponvelocity = 610,
	damage = {
		default = 1100,
	},
}
--------------------------------------------------------------------------------

return lowerkeys({[weaponName] = weaponDef})

--------------------------------------------------------------------------------
