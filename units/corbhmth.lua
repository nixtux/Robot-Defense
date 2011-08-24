-- UNITDEF -- CORBHMTH --
--------------------------------------------------------------------------------

local unitName = "corbhmth"

--------------------------------------------------------------------------------

local unitDef = {
  acceleration       = 0,
  activateWhenBuilt  = true,
  badTargetCategory  = [[VTOL]],
  bmcode             = 0,
  brakeRate          = 0,
  buildAngle         = 8192,
  buildCostEnergy    = 50000,
  buildCostMetal     = 5000,
  builder            = false,
  buildPic           = [[CORBHMTH.png]],
  buildTime          = 90000,
  canAttack          = true,
  canstop            = 1,
  category           = [[ALL NOTLAND NOTSUB WEAPON NOTSHIP NOTAIR]],
  corpse             = [[dead]],
  defaultmissiontype = [[GUARD_NOMOVE]],
  description        = [[Geothermal Plasma Battery]],
  energyMake         = 1024,
  energyStorage      = 2048,
  explodeAs          = [[LARGE_BUILDINGEX]],
  firestandorders    = 1,
  footprintX         = 5,
  footprintZ         = 5,
  iconType           = [[building]],
  idleAutoHeal       = 5,
  idleTime           = 1800,
  maxDamage          = 7500,
  maxSlope           = 10,
  maxVelocity        = 0,
  maxWaterDepth      = 0,
  metalStorage       = 0,
  name               = [[Behemoth]],
  noAutoFire         = false,
  noChaseCategory    = [[MOBILE]],
  objectName         = [[CORBHMTH]],
  onoffable          = false,
  seismicSignature   = 0,
  selfDestructAs     = [[ESTOR_BUILDING]],
  side               = [[CORE]],
  sightDistance      = 650,
  smoothAnim         = true,
  standingfireorder  = 2,
  turnRate           = 0,
  unitname           = [[corbhmth]],
  workerTime         = 0,
  yardMap            = [[ooooo ooooo ooGoo ooooo ooooo]],
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
      [[geothrm2]],
    },
  },
  weapons = {
    [1]  = {
      badTargetCategory  = [[VTOL]],
      def                = [[CORBHMTH_WEAPON1]],
      onlyTargetCategory = [[NOTAIR]],
    },
  },
}


--------------------------------------------------------------------------------

local weaponDefs = {
  CORBHMTH_WEAPON1 = {
    accuracy           = 780,
    areaOfEffect       = 192,
    ballistic          = true,
    craterBoost        = 0,
    craterMult         = 0,
    edgeEffectiveness  = 0.7,
    energypershot      = 320,
    explosionGenerator = [[custom:FLASHSMALLBUILDINGEX]],
    fireStarter        = 99,
    gravityaffected    = [[true]],
    impulseBoost       = 0.123,
    impulseFactor      = 0.123,
    name               = [[PlasmaBattery]],
    noSelfDamage       = true,
    range              = 1780,
    reloadtime         = 0.5,
    renderType         = 4,
    soundHit           = [[xplolrg3]],
    soundStart         = [[xplonuk3]],
    startsmoke         = 1,
    turret             = true,
    weaponType         = [[Cannon]],
    weaponVelocity     = 620,
    damage = {
      blackhydra         = 1350,
      commanders         = 900,
      default            = 450,
      flakboats          = 1350,
      gunships           = 110,
      hgunships          = 110,
      jammerboats        = 1350,
      l1bombers          = 110,
      l1fighters         = 110,
      l1subs             = 5,
      l2bombers          = 110,
      l2fighters         = 110,
      l2subs             = 5,
      l3subs             = 5,
      otherboats         = 1350,
      seadragon          = 1350,
      vradar             = 110,
      vtol               = 110,
      vtrans             = 110,
    },
  },
}
unitDef.weaponDefs = weaponDefs


--------------------------------------------------------------------------------

local featureDefs = {
  HEAP = {
    blocking           = false,
    category           = [[heaps]],
    damage             = unitDef.maxDamage*0.6,
    description        = [[Behemoth Heap]],
    energy             = 0,
    featurereclamate   = [[SMUDGE01]],
    footprintX         = 5,
    footprintZ         = 5,
    height             = 4,
    hitdensity         = 100,
    metal              = unitDef.buildCostMetal*0.8,
    object             = [[5X5C]],
    reclaimable        = true,
    seqnamereclamate   = [[TREE1RECLAMATE]],
    world              = [[All Worlds]],
  },
  dead = {
    blocking           = true,
    category           = [[corpses]],
    damage             = unitDef.maxDamage*0.36,
    description        = [[Behemoth Wreckage]],
    energy             = 0,
    featureDead        = [[HEAP]],
    featurereclamate   = [[SMUDGE01]],
    footprintX         = 5,
    footprintZ         = 5,
    height             = 20,
    hitdensity         = 100,
    metal              = unitDef.buildCostMetal*0.64,
    object             = [[CORBHMTH_DEAD]],
    reclaimable        = true,
    seqnamereclamate   = [[TREE1RECLAMATE]],
    world              = [[All Worlds]],
  },
}
unitDef.featureDefs = featureDefs


--------------------------------------------------------------------------------

return lowerkeys({ [unitName] = unitDef })

--------------------------------------------------------------------------------
