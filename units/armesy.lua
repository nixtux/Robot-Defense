-- UNITDEF -- ARMESY --
--------------------------------------------------------------------------------

local unitName = "armesy"

--------------------------------------------------------------------------------

local unitDef = {
	bmcode = 0,
	buildCostEnergy = 70384,
	buildCostMetal = 19982,
	builder = true,
	buildTime = 43930,
	canMove = true,
	canPatrol = true,
	canstop = 1,
	category = [[ALL NOTDEFENSE NOTHOVERNOTVTOL NOTMOBILE NOTSUB NOTSUBNOTSHIP NOTVTOL NOTWEAPON PLANT]],
	collisionvolumeoffsets = [[0 -8 0]],
	collisionvolumescales = [[185 64 227]],
	collisionvolumetype = [[Box]],
	corpse = [[dead]],
	description = [[Produces Level 3 Ships, water depth 86 or more required]],
	designation = [[ARM-SCF]],
	energyStorage = 400,
	energyUse = 0,
	explodeAs = [[ATOMIC_BLASTSML]],
	firestandorders = 1,
	footprintX = 15,
	footprintZ = 15,
	iconType = [[building]],
	maxDamage = 10829,
	metalMake = 2,
	metalStorage = 400,
	minWaterDepth = 86,
	mobilestandorders = 1,
	name = [[Experimental Shipyard]],
	noAutoFire = false,
	noChaseCategory = [[ALL]],
	objectName = [[ARMESY]],
	radarDistance = 100,
	selfDestructAs = [[ATOMIC_BLAST]],
	side = [[ARM]],
	sightDistance = 324,
	smoothAnim = true,
	standingfireorder = 2,
	standingmoveorder = 1,
	unitname = [[armesy]],
	waterline = 65,
	workerTime = 400,
	yardMap = [[wCCCCCCCCCCCCCw	cCCCCCCCCCCCCCc	cCCCCCCCCCCCCCc	cCCCCCCCCCCCCCccCCCCCCCCCCCCCccCCCCCCCCCCCCCccCCCCCCCCCCCCCccCCCCCCCCCCCCCccCCCCCCCCCCCCCccCCCCCCCCCCCCCccCCCCCCCCCCCCCccCCCCCCCCCCCCCccCCCCCCCCCCCCCccCCCCCCCCCCCCCccCCCCCCCCCCCCCc]],
	buildoptions = {
		[1] = [[armtrmph]],
		[2] = [[armhcar]],
		[3] = [[aseadragon]],
		[4] = [[uppercut]],
		[5] = [[armbc]],
	},
	featureDefs = nil,
	sounds = {
		build = [[pshpwork]],
		canceldestruct = [[cancel2]],
		underattack = [[warning1]],
		unitcomplete = [[untdone]],
		count = {
			[1] = [[count6]],
			[2] = [[count5]],
			[3] = [[count4]],
			[4] = [[count3]],
			[5] = [[count2]],
			[6] = [[count1]],
		},
		select = {
			[1] = [[pshpactv]],
		},
	},
}

--------------------------------------------------------------------------------

local featureDefs = {
	dead = {
		blocking = true,
		category = [[corpses]],
		damage = 0.3600 * unitDef.maxDamage,
		description = unitDef.name .. [[ Wreckage]],
		energy = 0,
		featureDead = [[HEAP]],
		featurereclamate = [[SMUDGE01]],
		footprintX = 15,
		footprintZ = 15,
		height = 40,
		hitdensity = 100,
		metal = 0.6400 * unitDef.buildCostMetal,
		object = [[ARMESY_DEAD]],
		reclaimable = true,
		seqnamereclamate = [[TREE1RECLAMATE]],
		world = [[All Worlds]],
	},
	HEAP = {
		blocking = false,
		category = [[heaps]],
		damage = 0.6000 * unitDef.maxDamage,
		description = unitDef.name .. [[ Heap]],
		energy = 0,
		featurereclamate = [[SMUDGE01]],
		footprintX = 7,
		footprintZ = 7,
		height = 6,
		hitdensity = 100,
		metal = 0.8000 * unitDef.buildCostMetal,
		object = [[7X7E]],
		reclaimable = true,
		seqnamereclamate = [[TREE1RECLAMATE]],
		world = [[All Worlds]],
	},
}
unitDef.featureDefs = featureDefs

--------------------------------------------------------------------------------

return lowerkeys({[unitName] = unitDef})

--------------------------------------------------------------------------------
