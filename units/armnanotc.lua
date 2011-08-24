-- UNITDEF -- ARMNANOTC --
--------------------------------------------------------------------------------

local unitName = "armnanotc"

--------------------------------------------------------------------------------

local unitDef = {
  acceleration       = 0,
  brakeRate          = 1.5,
  buildCostEnergy    = 9021,
  buildCostMetal     = 297,
  buildDistance      = 580,
  builder            = true,
  buildPic           = [[ARMNANOTC.png]],
  buildTime          = 5312,
  canGuard           = true,
  canMove            = false,
  canPatrol          = true,
  canreclamate       = 1,
  canstop            = 1,
  cantBeTransported  = true,
  category           = [[ALL NOTSUB NOWEAPON NOTAIR]],
  defaultmissiontype = [[Standby]],
  description        = [[Repairs and builds in large radius]],
  energyStorage      = 0,
  energyUse          = 30,
  explodeAs          = [[NANOBOOM2]],
  footprintX         = 3,
  footprintZ         = 3,
  iconType           = [[building]],
  idleAutoHeal       = 5,
  idleTime           = 1800,
  maneuverleashlength = 380,
  mass               = 1e+12,
  maxDamage          = 500,
  maxSlope           = 10,
  maxVelocity        = 0,
  maxWaterDepth      = 0,
  metalStorage       = 0,
  name               = [[Nano Turret]],
  noAutoFire         = false,
  objectName         = [[ARMNANOTC]],
  seismicSignature   = 0,
  selfDestructAs     = [[TINY_BUILDINGEX]],
  side               = [[ARM]],
  sightDistance      = 380,
  smoothAnim         = true,
  steeringmode       = 1,
  turnRate           = 1,
  unitname           = [[armnanotc]],
  upright            = true,
  workerTime         = 300,
  sounds = {
    build              = [[nanlath1]],
    canceldestruct     = [[cancel2]],
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
      [[varmmove]],
    },
    select = {
      [[varmsel]],
    },
  },
}


--------------------------------------------------------------------------------

return lowerkeys({ [unitName] = unitDef })

--------------------------------------------------------------------------------
