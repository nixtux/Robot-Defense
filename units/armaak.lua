-- UNITDEF -- ARMAAK --
--------------------------------------------------------------------------------

local unitName = "armaak"

--------------------------------------------------------------------------------

local unitDef = {
  acceleration       = 0.12,
  badTargetCategory  = [[ALL]],
  bmcode             = 1,
  brakeRate          = 0.188,
  buildCostEnergy    = 5266,
  buildCostMetal     = 483,
  buildPic           = [[ARMAAK.png]],
  buildTime          = 6958,
  canMove            = true,
  category           = [[KBOT MOBILE WEAPON ALL NOTSUB NOTSHIP NOTAIR]],
  corpse             = [[DEAD]],
  defaultmissiontype = [[Standby]],
  description        = [[Advanced Amphibious Anti-Air Kbot]],
  explodeAs          = [[BIG_UNITEX]],
  footprintX         = 2,
  footprintZ         = 2,
  idleAutoHeal       = 5,
  idleTime           = 1800,
  maneuverleashlength = 640,
  maxDamage          = 1020,
  maxSlope           = 14,
  maxVelocity        = 1.58,
  movementClass      = [[AKBOT2]],
  name               = [[Archangel]],
  noChaseCategory    = [[ALL]],
  objectName         = [[ARMAAK]],
  seismicSignature   = 1,
  selfDestructAs     = [[BIG_UNIT]],
  side               = [[ARM]],
  sightDistance      = 400,
  smoothAnim         = true,
  steeringmode       = 2,
  turnRate           = 1021,
  unitname           = [[armaak]],
  upright            = true,
  w1_badtargetcategory = [[ALL]],
  w2_badtargetcategory = [[ALL]],
  w3_badtargetcategory = [[ALL]],
  w4_badtargetcategory = [[ALL]],
  w5_badtargetcategory = [[ALL]],
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
      [[kbarmmov]],
    },
    select = {
      [[kbarmsel]],
    },
  },
  weapons = {
    [1]  = {
      def                = [[BOGUS_MISSILE]],
    },
    [2]  = {
      def                = [[ARMAAKBOT_MISSILE1]],
    },
    [3]  = {
      def                = [[ARMAAKBOT_MISSILE2]],
      slaveTo            = 2,
    },
    [4]  = {
      def                = [[ARMAAKBOT_MISSILE2]],
      slaveTo            = 1,
    },
    [5]  = {
      def                = [[AAKFLAK]],
    },
  },
}


--------------------------------------------------------------------------------

local weaponDefs = {
  AAKFLAK = {
    accuracy           = 1000,
    areaOfEffect       = 128,
    ballistic          = true,
    burnblow           = true,
    canattackground    = false,
    color              = 1,
    craterBoost        = 0,
    craterMult         = 0,
    edgeEffectiveness  = 0.85,
    gravityaffected    = [[true]],
    impulseBoost       = 0,
    impulseFactor      = 0,
    minbarrelangle     = -24,
    name               = [[FlakCannon]],
    noSelfDamage       = true,
    range              = 680,
    reloadtime         = 2.5,
    renderType         = 4,
    size               = 1.4,
    soundHit           = [[flakhit]],
    soundHitVolume     = 9,
    soundStart         = [[flakfire]],
    soundStartVolume   = 7,
    startsmoke         = 1,
    toAirWeapon        = true,
    turret             = true,
    unitsonly          = 1,
    weaponTimer        = 1,
    weaponType         = [[Cannon]],
    weaponVelocity     = 1500,
    damage = {
      amphibious         = 10,
      anniddm            = 10,
      antibomber         = 10,
      antifighter        = 10,
      antiraider         = 10,
      atl                = 10,
      blackhydra         = 10,
      commanders         = 10,
      crawlingbombs      = 10,
      default            = 1000,
      dl                 = 10,
      ["else"]           = 10,
      flakboats          = 10,
      flaks              = 10,
      flamethrowers      = 10,
      gunships           = 150,
      heavyunits         = 10,
      hgunships          = 75,
      jammerboats        = 10,
      krogoth            = 10,
      l1bombers          = 150,
      l1fighters         = 400,
      l1subs             = 5,
      l2bombers          = 550,
      l2fighters         = 400,
      l2subs             = 5,
      l3subs             = 5,
      mechs              = 10,
      mines              = 10,
      nanos              = 10,
      otherboats         = 10,
      plasmaguns         = 10,
      radar              = 10,
      seadragon          = 10,
      spies              = 10,
      tl                 = 10,
      vradar             = 150,
      vtol               = 150,
      vtrans             = 150,
    },
  },
  ARMAAKBOT_MISSILE1 = {
    areaOfEffect       = 64,
    canattackground    = false,
    craterBoost        = 0,
    craterMult         = 0,
    explosionGenerator = [[custom:FLASH2]],
    fireStarter        = 70,
    flightTime         = 1.5,
    guidance           = true,
    impulseBoost       = 0,
    impulseFactor      = 0,
    lineOfSight        = true,
    metalpershot       = 0,
    model              = [[missile]],
    name               = [[Missiles]],
    noSelfDamage       = true,
    range              = 875,
    reloadtime         = 3,
    renderType         = 1,
    selfprop           = true,
    smokedelay         = 0.1,
    smokeTrail         = true,
    soundHit           = [[xplosml2]],
    soundHitVolume     = 7.5,
    soundStart         = [[rocklit1]],
    soundStartVolume   = 7.5,
    startsmoke         = 1,
    startVelocity      = 600,
    texture2           = [[armsmoketrail]],
    toAirWeapon        = true,
    tolerance          = 9000,
    tracks             = true,
    turnRate           = 63000,
    turret             = true,
    weaponAcceleration = 150,
    weaponTimer        = 6,
    weaponType         = [[MissileLauncher]],
    weaponVelocity     = 1000,
    damage = {
      default            = 150,
      gunships           = 113,
      hgunships          = 113,
      l1subs             = 5,
      l2bombers          = 300,
      l2subs             = 5,
      l3subs             = 5,
    },
  },
  ARMAAKBOT_MISSILE2 = {
    areaOfEffect       = 24,
    canattackground    = false,
    craterBoost        = 0,
    craterMult         = 0,
    explosionGenerator = [[custom:FLASH2]],
    fireStarter        = 70,
    flightTime         = 1.5,
    guidance           = true,
    impulseBoost       = 0,
    impulseFactor      = 0,
    lineOfSight        = true,
    metalpershot       = 0,
    model              = [[missile]],
    name               = [[Missiles]],
    noSelfDamage       = true,
    range              = 770,
    reloadtime         = 1.6,
    renderType         = 1,
    selfprop           = true,
    smokedelay         = 0.1,
    smokeTrail         = true,
    soundHit           = [[xplosml2]],
    soundHitVolume     = 7.5,
    soundStart         = [[rocklit1]],
    soundStartVolume   = 7.5,
    startsmoke         = 1,
    startVelocity      = 650,
    texture2           = [[armsmoketrail]],
    toAirWeapon        = true,
    tolerance          = 9000,
    tracks             = true,
    turnRate           = 63000,
    turret             = true,
    weaponAcceleration = 125,
    weaponTimer        = 5,
    weaponType         = [[MissileLauncher]],
    weaponVelocity     = 900,
    damage = {
      default            = 68,
      gunships           = 51,
      hgunships          = 51,
      l1subs             = 5,
      l2bombers          = 300,
      l2subs             = 5,
      l3subs             = 5,
    },
  },
  BOGUS_MISSILE = {
    areaOfEffect       = 48,
    canattackground    = false,
    craterBoost        = 0,
    craterMult         = 0,
    impulseBoost       = 0,
    impulseFactor      = 0,
    lineOfSight        = true,
    metalpershot       = 0,
    name               = [[Missiles]],
    range              = 800,
    reloadtime         = 0.5,
    renderType         = 1,
    startVelocity      = 450,
    toAirWeapon        = true,
    tolerance          = 9000,
    turnRate           = 33000,
    turret             = true,
    weaponAcceleration = 101,
    weaponTimer        = 0.1,
    weaponType         = [[Cannon]],
    weaponVelocity     = 650,
    damage = {
      default            = 0,
    },
  },
}
unitDef.weaponDefs = weaponDefs


--------------------------------------------------------------------------------

local featureDefs = {
  DEAD = {
    blocking           = true,
    category           = [[corpses]],
    damage             = unitDef.maxDamage*0.6,
    description        = [[Archangel Wreckage]],
    energy             = 0,
    featureDead        = [[HEAP]],
    featurereclamate   = [[SMUDGE01]],
    footprintX         = 4,
    footprintZ         = 4,
    height             = 15,
    hitdensity         = 100,
    metal              = unitDef.buildCostMetal*0.8,
    object             = [[ARMAAK_DEAD]],
    reclaimable        = true,
    seqnamereclamate   = [[TREE1RECLAMATE]],
    world              = [[All Worlds]],
  },
  HEAP = {
    blocking           = false,
    category           = [[heaps]],
    damage             = unitDef.maxDamage*0.36,
    description        = [[Archangel Heap]],
    energy             = 0,
    featurereclamate   = [[SMUDGE01]],
    footprintX         = 4,
    footprintZ         = 4,
    height             = 4,
    hitdensity         = 100,
    metal              = unitDef.buildCostMetal*0.64,
    object             = [[4X4A]],
    reclaimable        = true,
    seqnamereclamate   = [[TREE1RECLAMATE]],
    world              = [[All Worlds]],
  },
}
unitDef.featureDefs = featureDefs


--------------------------------------------------------------------------------

return lowerkeys({ [unitName] = unitDef })

--------------------------------------------------------------------------------