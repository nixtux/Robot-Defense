-- UNITDEF -- ARMPLAT --
--------------------------------------------------------------------------------

local unitName = "armplat"

--------------------------------------------------------------------------------

local unitDef = {
  acceleration       = 0,
  bmcode             = 0,
  brakeRate          = 0,
  buildCostEnergy    = 39426,
  buildCostMetal     = 5667,
  builder            = true,
  buildPic           = [[ARMPLAT.png]],
  buildTime          = 19248,
  canMove            = true,
  canPatrol          = true,
  canstop            = 1,
  category           = [[ALL PLANT NOTLAND NOTSUB NOWEAPON NOTSHIP NOTAIR]],
  corpse             = [[DEAD]],
  description        = [[Builds Seaplanes]],
  energyStorage      = 200,
  energyUse          = 0,
  explodeAs          = [[LARGE_BUILDINGEX]],
  firestandorders    = 1,
  footprintX         = 7,
  footprintZ         = 7,
  iconType           = [[building]],
  idleAutoHeal       = 5,
  idleTime           = 1800,
  maxDamage          = 1820,
  maxVelocity        = 0,
  maxWaterDepth      = 0,
  metalMake          = 1,
  metalStorage       = 200,
  minWaterDepth      = 30,
  mobilestandorders  = 1,
  name               = [[Seaplane Platform]],
  noAutoFire         = false,
  objectName         = [[ARMPLAT]],
  radarDistance      = 50,
  seismicSignature   = 0,
  selfDestructAs     = [[LARGE_BUILDING]],
  side               = [[ARM]],
  sightDistance      = 169,
  smoothAnim         = true,
  standingfireorder  = 2,
  standingmoveorder  = 1,
  turnRate           = 0,
  unitname           = [[armplat]],
  waterline          = 40,
  workerTime         = 200,
  yardMap            = [[wwwwwwwwCCCCCwwCCCCCwwCCCCCwwCCCCCwwCCCCCwwwwwwww]],
  buildoptions = {
    [[armcsa]],
    [[armsehak]],
    [[armsfig]],
    [[armseap]],
    [[armsaber]],
    [[armsb]],
  },
  sounds = {
    build              = [[seaplok1]],
    canceldestruct     = [[cancel2]],
    underattack        = [[warning1]],
    unitcomplete       = [[untdone]],
    count = {
      [[count6]],
      [[count5]],
      [[count4]],
      [[count3]],
      [[count2]],
      [[count1]],
    },
    select = {
      [[seaplsl1]],
    },
  },
}


--------------------------------------------------------------------------------

local featureDefs = {
  DEAD = {
    blocking           = false,
    category           = [[corpses]],
    damage             = unitDef.maxDamage*0.6,
    description        = [[Seaplane Platform Wreckage]],
    energy             = 0,
    footprintX         = 7,
    footprintZ         = 7,
    height             = 20,
    hitdensity         = 100,
    metal              = unitDef.buildCostMetal*0.8,
    object             = [[ARMPLAT_DEAD]],
    reclaimable        = true,
    seqnamereclamate   = [[TREE1RECLAMATE]],
    world              = [[All Worlds]],
  },
}
unitDef.featureDefs = featureDefs


--------------------------------------------------------------------------------

return lowerkeys({ [unitName] = unitDef })

--------------------------------------------------------------------------------
