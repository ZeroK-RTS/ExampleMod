local unitName  =  "flyingtank"

local unitDef  =  {
--Internal settings
    BuildPic = "filename.bmp",
    ObjectName = "tank3.s3o",
    name = "Flying Tank",
    UnitName = "flyingtank",
    script = "tankscript.lua",
    category = "TANK",
    
--Unit limitations and properties
    Description = "Tank that flies.",
    MaxDamage = 800,
    RadarDistance = 0,
    SightDistance = 3000,
    SoundCategory = "TANK",
    Upright = 0,
    
--Energy and metal related
    BuildTime = 3,
    BuildCostEnergy = 3,
    BuildCostMetal = 0,
    
--Pathfinding and related
    canFly              = true,
    cruiseAlt           = 200,
    maxVelocity         = 8,
    
--Abilities
    Builder = 0,
    CanAttack = 1,
    CanGuard = 1,
    CanMove = 1,
    CanPatrol = 1,
    CanStop = 1,
    LeaveTracks = 0,
    Reclaimable = 0,
	
-- Abilities new to Spring

	CustomParams = 
	{
		supply_cost = 3,
	},
    
--Hitbox
--    collisionVolumeOffsets    =  "0 0 0",
--    collisionVolumeScales     =  "20 20 20",
--    collisionVolumeTest       =  1,
--    collisionVolumeType       =  "box",
    
--Weapons and related
    BadTargetCategory = "NOTAIR",
    ExplodeAs = "TANKDEATH",
    NoChaseCategory = "AIR",

    weapons = {
        [1] = {
            def = "bomb",
        },
        [2] = {
            def = "orangeblob",
        },
    },
}

local weaponDefs = {
    bomb = {
      name                    = "Bomb",
      areaOfEffect            = 216,
      avoidFeature            = false,
      avoidFriendly           = false,
      burst                   = 15,
      burstrate               = 0.09,
      collideFeature          = false,
      collideFriendly         = false,
      craterBoost             = 0,
      craterMult              = 0,
	  
      damage                  = {
        default = 25,
      },

      edgeEffectiveness       = 0.7,
	  explosiongenerator      = "custom:TANKGUN_FX",
      fireStarter             = 250,
      impulseBoost            = 0,
      impulseFactor           = 0.1,
      interceptedByShieldType = 1,
      manualBombSettings      = true,
      myGravity               = 0.7,
      noSelfDamage            = true,
      reloadtime              = 10,
      soundHit                = "orangeblob_explo",
      sprayangle              = 64000,
      weaponType              = "AircraftBomb",
    },

    orangeblob = {
		name = "Orange Plasma Cannon",
		weapontype = "Cannon",
		accuracy = 10,
		areaofeffect = 100,
		avoidfeature = false,
		avoidfriendly = true,
		canattackground = true,
		collidefriendly = true,
		collisionsize = 8,
		commandfire = false,
		craterboost = 0,
		cratermult = 0,
		edgeeffectiveness = 0.1,
		explosionspeed = 128,
		impulseboost = 0,
		impulsefactor = 0,
		intensity = 1,
		noselfdamage = true,
		size = 4,
--        soundstart = "tank_fire",
        soundhit = "orangeblob_explo",
		range = 500,
		reloadtime = 1.5,
		rgbcolor = "1.0 1.0 1.0",
		turret = true,
		texture1 = "flame",
		weaponvelocity = 400,
		explosiongenerator = "custom:TANKGUN_FX",
		damage =
		{
			default = 55,
		},
	},
}


unitDef.weaponDefs = weaponDefs
return lowerkeys({ [unitName]  =  unitDef })
