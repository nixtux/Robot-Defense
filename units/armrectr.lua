-- UNITDEF -- ARMRECTR --
--------------------------------------------------------------------------------

local unitName = "armrectr"

--------------------------------------------------------------------------------

local unitDef = {
  acceleration       = 0.2,
  bmcode             = 1,
  brakeRate          = 0.25,
  buildCostEnergy    = 1400,
  buildCostMetal     = 102,
  buildDistance      = 100,
  builder            = true,
  buildPic           = [[ARMRECTR.png]],
  buildTime          = 2400,
  canAssist          = false,
  canMove            = true,
  canPatrol          = true,
  canreclamate       = 1,
  canResurrect       = true,
  canstop            = 1,
  category           = [[KBOT MOBILE ALL NOTSUB NOWEAPON NOTAIR]],
  corpse             = [[DEAD]],
  defaultmissiontype = [[Standby]],
  description        = [[Stealthy Rez Kbot]],
  energyMake         = 1.75,
  energyStorage      = 0,
  energyUse          = 1.75,
  explodeAs          = [[BIG_UNITEX]],
  footprintX         = 2,
  footprintZ         = 2,
  idleAutoHeal       = 5,
  idleTime           = 60,
  maneuverleashlength = 640,
  maxDamage          = 200,
  maxSlope           = 14,
  maxVelocity        = 2.6,
  maxWaterDepth      = 22,
  metalStorage       = 0,
  mobilestandorders  = 1,
  movementClass      = [[KBOT2]],
  name               = [[Rector]],
  noAutoFire         = false,
  objectName         = [[ARMRECTR]],
  radarDistance      = 50,
  resurrect          = 1,
  seismicSignature   = 0,
  selfDestructAs     = [[BIG_UNIT]],
  side               = [[ARM]],
  sightDistance      = 430,
  smoothAnim         = true,
  standingmoveorder  = 1,
  stealth            = true,
  steeringmode       = 1,
  turnRate           = 1122,
  unitname           = [[armrectr]],
  upright            = true,
  workerTime         = 200,
  sounds = {
    canceldestruct     = [[cancel2]],
    underattack        = [[warning1]],
    cant = {
      [[cantdo4]],
    },
    count = {
      [[count6]],
      [[count5]],
      [[count4]],
      [[count3]],
      [[count2]],
      [[count1]],
    },
    ok = {
      [[necrok1]],
    },
    select = {
      [[necrsel1]],
    },
  },
}


--------------------------------------------------------------------------------

local featureDefs = {
  DEAD = {
    blocking           = true,
    category           = [[corpses]],
    damage             = unitDef.maxDamage*0.6,
    description        = [[Rector Wreckage]],
    featureDead        = [[HEAP]],
    featurereclamate   = [[SMUDGE01]],
    footprintX         = 2,
    footprintZ         = 2,
    height             = 20,
    hitdensity         = 100,
    metal              = unitDef.buildCostMetal*0.8,
    object             = [[ARMRECTR_DEAD]],
    reclaimable        = true,
    seqnamereclamate   = [[TREE1RECLAMATE]],
    world              = [[All Worlds]],
  },
  HEAP = {
    blocking           = false,
    category           = [[heaps]],
    damage             = unitDef.maxDamage*0.36,
    description        = [[Rector Heap]],
    featurereclamate   = [[SMUDGE01]],
    footprintX         = 2,
    footprintZ         = 2,
    height             = 4,
    hitdensity         = 100,
    metal              = unitDef.buildCostMetal*0.64,
    object             = [[2X2D]],
    reclaimable        = true,
    seqnamereclamate   = [[TREE1RECLAMATE]],
    world              = [[All Worlds]],
  },
}
unitDef.featureDefs = featureDefs


--------------------------------------------------------------------------------

return lowerkeys({ [unitName] = unitDef })

--------------------------------------------------------------------------------
