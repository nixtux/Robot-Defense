-- UNITDEF -- ARMGEO --
--------------------------------------------------------------------------------

local unitName = "armgeo"

--------------------------------------------------------------------------------

local unitDef = {
  acceleration       = 0,
  activateWhenBuilt  = true,
  bmcode             = 0,
  brakeRate          = 0,
  buildAngle         = 2048,
  buildCostEnergy    = 8300,
  buildCostMetal     = 1400,
  builder            = false,
  buildPic           = [[ARMGEO.png]],
  buildTime          = 21000,
  category           = [[ALL NOTLAND NOTSUB NOWEAPON NOTSHIP NOTAIR]],
  corpse             = [[dead]],
  description        = [[Produces Energy / Storage]],
  energyMake         = 600,
  energyStorage      = 1200,
  energyUse          = 0,
  explodeAs          = [[ESTOR_BUILDING]],
  footprintX         = 4,
  footprintZ         = 4,
  iconType           = [[building]],
  idleAutoHeal       = 5,
  idleTime           = 1800,
  maxDamage          = 1800,
  maxSlope           = 20,
  maxVelocity        = 0,
  maxWaterDepth      = 9999,
  metalStorage       = 0,
  name               = [[Geothermal Powerplant]],
  noAutoFire         = false,
  objectName         = [[ARMGEO]],
  seismicSignature   = 0,
  selfDestructAs     = [[ATOMIC_BLAST]],
  side               = [[ARM]],
  sightDistance      = 273,
  smoothAnim         = true,
  turnRate           = 0,
  unitname           = [[armgeo]],
  workerTime         = 0,
  yardMap            = [[oooo oGGo oGGo oooo]],
  sounds = {
    canceldestruct     = [[cancel2]],
    underattack        = [[warning1]],
    count = {
      [[count6]],
      [[count5]],
      [[count4]],
      [[count3]],
      [[count2]],
      [[count1]],
    },
    select = {
      [[geothrm1]],
    },
  },
}


--------------------------------------------------------------------------------

local featureDefs = {
  HEAP = {
    blocking           = false,
    category           = [[heaps]],
    damage             = unitDef.maxDamage*0.6,
    description        = [[Geothermal Powerplant Heap]],
    energy             = 0,
    featurereclamate   = [[SMUDGE01]],
    footprintX         = 4,
    footprintZ         = 4,
    height             = 4,
    hitdensity         = 100,
    metal              = unitDef.buildCostMetal*0.8,
    object             = [[4X4B]],
    reclaimable        = true,
    seqnamereclamate   = [[TREE1RECLAMATE]],
    world              = [[All Worlds]],
  },
  dead = {
    blocking           = true,
    category           = [[corpses]],
    damage             = unitDef.maxDamage*0.36,
    description        = [[Geothermal Powerplant Wreckage]],
    energy             = 0,
    featureDead        = [[HEAP]],
    featurereclamate   = [[SMUDGE01]],
    footprintX         = 4,
    footprintZ         = 4,
    height             = 40,
    hitdensity         = 100,
    metal              = unitDef.buildCostMetal*0.64,
    object             = [[ARMGEO_DEAD]],
    reclaimable        = true,
    seqnamereclamate   = [[TREE1RECLAMATE]],
    world              = [[All Worlds]],
  },
}
unitDef.featureDefs = featureDefs


--------------------------------------------------------------------------------

return lowerkeys({ [unitName] = unitDef })

--------------------------------------------------------------------------------
