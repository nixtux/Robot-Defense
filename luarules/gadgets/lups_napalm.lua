-- $Id: lups_napalm.lua 3171 2008-11-06 09:06:29Z det $

function gadget:GetInfo()
  return {
    name      = "Napalm",
    desc      = "",
    author    = "jK",
    date      = "Sep. 2008",
    license   = "GNU GPL, v2 or later",
    layer     = 0,
    enabled   = true,
  }
end

local FIRE_WEAPONS = {
  ["tllhtml_tll_rockets2"] = true,
  ["corhurc_coradvbomb"] = true,
  ["tllabomber_coradvbomb"] = true,
  ["corshad_corebomb"] = true,
  ["armcbomb_arm_carpet_bomb"] = true,
  ["armraven_exp_heavyrocket"] = true,
  ["armraven1_exp_heavyrocket1"] = true,
  ["corsb_seaadvbomb"] = true,
}

if (gadgetHandler:IsSyncedCode()) then

  local napalmWeapons = {}

  --// find napalms
  for i=1,#WeaponDefs do
    local wd = WeaponDefs[i]
    if FIRE_WEAPONS[wd.name] then
      Script.SetWatchWeapon(wd.id,true)
      napalmWeapons[wd.id] = true
    end
  end

  local napalmExplosions  = {}

  --// Speed-ups
  local SendToUnsynced = SendToUnsynced

  function gadget:Explosion(weaponID, px, py, pz)
    if (napalmWeapons[weaponID]) then
      napalmExplosions[#napalmExplosions+1] = {px, py, pz}
    end
    return false
  end

  function gadget:GameFrame(n)
    if (#napalmExplosions>0) then
      _G.napalmExplosions =  napalmExplosions
      _G.napalmCount      = #napalmExplosions
      SendToUnsynced("napalm_GameFrame")
      napalmExplosions = {}
    end
  end

  function gadget:RecvLuaMsg(msg, id)
    if (msg == "lups shutdown") then
		SendToUnsynced("napalm_Toggle",false,id)
	elseif (msg == "lups running") then
		SendToUnsynced("napalm_Toggle",true,id)
	end
  end

else

  local napalmFX = {
    colormap        = { {0, 0, 0, 0.01}, {0.75, 0.75, 0.9, 0.02}, {0.45, 0.2, 0.3, 0.1}, {0.4, 0.16, 0.1, 0.12}, {0.3, 0.15, 0.01, 0.15},  {0.3, 0.15, 0.01, 0.15}, {0.3, 0.15, 0.01, 0.15}, {0.1, 0.035, 0.01, 0.1}, {0, 0, 0, 0.01} },
    count           = 4,
    life            = 100,
    lifeSpread      = 40,
    emitVector      = {0,1,0},
    emitRotSpread   = 90,
    force           = {0,0.3,0},

    partpos         = "r*sin(alpha),0,r*cos(alpha) | r=rand()*15, alpha=rand()*2*pi",

    rotSpeed        = 0.25,
    rotSpeedSpread  = -0.5,
    rotSpread       = 360,
    rotExp          = 1.5,

    speed           = 0.225,
    speedSpread     = 0.05,
    speedExp        = 7,

    size            = 35,
    sizeSpread      = 10,
    sizeGrowth      = 0.15,
    sizeExp         = 2.5,

    layer           = 1,
    texture         = "bitmaps/GPL/flame.png",
  }


  local heatFX = {
    count         = 1,
    emitVector    = {0,1,0},
    emitRotSpread = 60,
    force         = {0,0.5,0},

    life          = 140,
    lifeSpread    = 50,

    speed           = 0.25,
    speedSpread     = 0.25,
    speedExp        = 7,

    size            = 100,
    sizeSpread      = 40,
    sizeGrowth      = 0.3,
    sizeExp         = 2.5,

    strength      = 0.75,
    scale         = 5.0,
    animSpeed     = 0.25,
    heat          = 6.5,

    texture       = "bitmaps/GPL/Lups/mynoise2.png",
  }

  local Lups
  local LupsAddParticles 
  local SYNCED = SYNCED
  local enabled = false

  local function SpawnNapalmFX(pos)
    napalmFX.pos = {pos[1],pos[2],pos[3]}
    Lups.AddParticles('SimpleParticles2',napalmFX)
    if enabled then
		heatFX.pos = napalmFX.pos
		Lups.AddParticles('JitterParticles2',heatFX)
	end
  end

  local function GameFrame()
    if (not Lups) then Lups = GG['Lups']; LupsAddParticles = Lups.AddParticles end
    local explosions = SYNCED.napalmExplosions
    for i=1,SYNCED.napalmCount do
      SpawnNapalmFX(explosions[i])
    end
  end
  
  local function Toggle(_,enable,playerId)
    if (playerId == Spring.GetMyPlayerID()) then
      if enable then
	    enabled = true
	  else
	    enabled = false
	  end
	end
  end

  function gadget:Initialize()
    gl.DeleteTexture(napalmFX.texture)
    gadgetHandler:AddSyncAction("napalm_GameFrame", GameFrame)
    gadgetHandler:AddSyncAction("napalm_Toggle", Toggle)
  end


  function gadget:Shutdown()
    gadgetHandler.RemoveSyncAction("napalm_GameFrame")
    gadgetHandler.RemoveSyncAction("napalm_Toggle")
  end

end
