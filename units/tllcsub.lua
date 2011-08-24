-- UNITDEF -- TLLCSUB --
--------------------------------------------------------------------------------

local unitName = "tllcsub"

--------------------------------------------------------------------------------

local unitDef = {
  acceleration       = 0.032,
  bmcode             = 1,
  brakeRate          = 0.2,
  buildCostEnergy    = 2568,
  buildCostMetal     = 295,
  buildDistance      = 240,
  builder            = true,
  buildTime          = 6247,
  canGuard           = true,
  canMove            = true,
  canPatrol          = true,
  canreclamate       = 1,
  canstop            = 1,
  category           = [[TLL ALL UNDERWATER MOBILE WEAPON NOTLAND NOTAIR]],
  collisionvolumeoffsets = [[0 0 0]],
  collisionvolumescales = [[21 21 51]],
  collisionvolumetest = 0,
  collisionvolumetype = [[Ell]],
  copyright          = [[Copyright 1997 Humongous Entertainment. All rights reserved.]],
  corpse             = [[dead]],
  defaultmissiontype = [[Standby]],
  description        = [[Tech Level 1]],
  designation        = [[]],
  energyMake         = 9,
  energyStorage      = 50,
  energyUse          = 0.1,
  explodeAs          = [[SMALL_UNITEX]],
  footprintX         = 3,
  footprintZ         = 3,
  frenchdescription  = [[Niveau Tech 1]],
  frenchname         = [[Ss-marin de construction]],
  germandescription  = [[Tech Level 1]],
  germanname         = [[Konstr. U-Boot]],
  italiandescription = [[Tecnologia Livello 1]],
  italianname        = [[Unit� Sub di costr.]],
  maneuverleashlength = 640,
  maxDamage          = 280,
  maxVelocity        = 2.15,
  metalMake          = 0.25,
  metalStorage       = 50,
  minWaterDepth      = 20,
  mobilestandorders  = 1,
  movementClass      = [[UBOAT3]],
  name               = [[Construction Sub]],
  noAutoFire         = false,
  objectName         = [[TLLCSUB]],
  selfDestructAs     = [[SMALL_UNIT]],
  shootme            = 1,
  side               = [[TLL]],
  sightDistance      = 100,
  sonarDistance      = 200,
  spanishdescription = [[Nivel Tecn. 1]],
  spanishname        = [[Submarino Constr.]],
  standingmoveorder  = 1,
  steeringmode       = 1,
  threed             = 1,
  turnRate           = 256,
  unitname           = [[tllcsub]],
  unitnumber         = 887,
  upright            = true,
  version            = 3.1,
  waterline          = 30,
  workerTime         = 150,
  zbuffer            = 1,
   buildoptions = {
    [[tlltide]],
    [[tllatidal]],
    [[tlluwmex]],
    [[tllwmconv]],
    [[tlluwmstorage]],
    [[tlluwestorage]],
    [[tllhevsenan]],
    [[tllsy]],
    [[tllasy]],
    [[tllhpns]],
    [[tllsubpen]],
    [[tllsonar]],
    [[tlldtns]],
    [[tlldcsta]],
    [[tlllmtns]],
    [[tllnssam]],
    [[tllhltns]],
    [[tlltorp]],
    [[tllplat]],
    [[tllsolarns]],
  },
  sounds = {
    build              = [[nanlath1]],
    canceldestruct     = [[cancel2]],
    capture            = [[capture1]],
    repair             = [[repair1]],
    underattack        = [[warning1]],
    working            = [[reclaim1]],
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
      [[suarmmov]],
    },
    select = {
      [[suarmsel]],
    },
  },
}


--------------------------------------------------------------------------------

local featureDefs = {
  dead = {
    blocking           = false,
    category           = [[tll_corpses]],
    damage             = unitDef.maxDamage*0.6,
    description        = [[Wreckage]],
    featureDead        = [[heap]],
    featurereclamate   = [[smudge01]],
    footprintX         = 3,
    footprintZ         = 3,
    height             = 4,
    hitdensity         = 100,
    metal              = unitDef.buildCostMetal*0.8,
    object             = [[TLLCSUB_dead]],
    reclaimable        = true,
    seqnamereclamate   = [[tree1reclamate]],
    world              = [[All Worlds]],
  },
  heap = {
    blocking           = false,
    category           = [[heaps]],
    damage             = unitDef.maxDamage*0.36,
    description        = [[Wreckage]],
    featurereclamate   = [[smudge01]],
    footprintX         = 3,
    footprintZ         = 3,
    height             = 4,
    hitdensity         = 5,
    metal              = unitDef.buildCostMetal*0.64,
    object             = [[3x3F]],
    reclaimable        = true,
    seqnamereclamate   = [[tree1reclamate]],
    world              = [[All Worlds]],
  },
}
unitDef.featureDefs = featureDefs


--------------------------------------------------------------------------------

return lowerkeys({ [unitName] = unitDef })

--------------------------------------------------------------------------------