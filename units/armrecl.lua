-- UNITDEF -- ARMRECL --
--------------------------------------------------------------------------------

local unitName = "armrecl"

--------------------------------------------------------------------------------

local unitDef = {
  acceleration       = 0.048,
  bmcode             = 1,
  brakeRate          = 0.25,
  buildCostEnergy    = 6911,
  buildCostMetal     = 413,
  buildDistance      = 100,
  builder            = true,
  buildPic           = [[ARMRECL.png]],
  buildTime          = 9259,
  canAssist          = false,
  canGuard           = true,
  canMove            = true,
  canPatrol          = true,
  canreclamate       = 1,
  canResurrect       = true,
  canstop            = 1,
  category           = [[ALL UNDERWATER NOWEAPON NOTAIR]],
  collisionvolumeoffsets = [[0 0 0]],
  collisionvolumescales = [[54 14 94]],
  collisionvolumetest = 0,
  collisionvolumetype = [[Ell]],
  defaultmissiontype = [[Standby]],
  description        = [[Ressurection Sub]],
  energyMake         = 2,
  energyStorage      = 0,
  energyUse          = 2,
  explodeAs          = [[SMALL_UNITEX]],
  footprintX         = 4,
  footprintZ         = 4,
  iconType           = [[sea]],
  idleAutoHeal       = 5,
  idleTime           = 1800,
  maneuverleashlength = 640,
  maxDamage          = 670,
  maxVelocity        = 2.36,
  metalStorage       = 0,
  minWaterDepth      = 20,
  mobilestandorders  = 1,
  movementClass      = [[UBOAT4]],
  name               = [[Grim Reaper]],
  noAutoFire         = false,
  objectName         = [[ARMRECL]],
  resurrect          = 1,
  seismicSignature   = 0,
  selfDestructAs     = [[SMALL_UNIT]],
  side               = [[ARM]],
  sightDistance      = 156,
  smoothAnim         = true,
  standingmoveorder  = 1,
  steeringmode       = 1,
  turnRate           = 282,
  unitname           = [[armrecl]],
  waterline          = 30,
  workerTime         = 450,
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
      [[sucormov]],
    },
    select = {
      [[sucorsel]],
    },
  },
}


--------------------------------------------------------------------------------

return lowerkeys({ [unitName] = unitDef })

--------------------------------------------------------------------------------
