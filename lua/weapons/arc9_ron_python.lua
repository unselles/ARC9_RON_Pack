AddCSLuaFile()

SWEP.Base					= "arc9_base"

SWEP.Spawnable				= true
SWEP.Category				= "ARC9 - Ready or Not"

SWEP.PrintName				= "Colt Python"
SWEP.TrueName				= ".357 Magnum"

SWEP.Class					= "Revolver"
SWEP.Trivia = {
	Manufacturer	= "Colt's Manufacturing Company",
	Calibre			= ".357 Magnum",
	Mechanism		= "Double Action",
	Country			= "USA",
	Year			= 1955
}
if ARC9:UseTrueNames() then
	SWEP.PrintName				= SWEP.TrueName
    SWEP.Trivia.Manufacturer	= "Colt's Manufacturing Company"
end

SWEP.Credits = {
	Author	= "Unselles",
}

SWEP.Description				= [[This powerful revolver is limited to only six shots but boasts substantial power behind each one. High on recoil and awkward to reload, it's a relic of policing that finds a home in the hands of officers that stand by tradition.]]


SWEP.ViewModel				= "models/weapons/arc9/python.mdl"
SWEP.WorldModel				= "models/weapons/arc9/python.mdl"
SWEP.ViewModelFOVBase		= 70

SWEP.Slot					= 1
SWEP.Crosshair				= true

SWEP.MirrorVMWM				= true
SWEP.WorldModelOffset = {
	Pos				= Vector(-3, 2, -5),
	Ang				= Angle(0, 0, 180),
	Scale				= 1
}

SWEP.DefaultBodygroups		= "0000000000000000000000"

-------------------------- DAMAGE PROFILE

SWEP.DamageMax				= 50 -- Damage done at point blank range
SWEP.DamageMin				= 25 -- Damage done at maximum range

SWEP.DamageRand				= 0 -- Damage varies randomly per shot by this fraction. 0.1				= +- 10% damage per shot.

SWEP.RangeMin				= 10 / ARC9.HUToM -- How far bullets retain their maximum damage for.
SWEP.RangeMax				= 100 / ARC9.HUToM -- In Hammer units, how far bullets can travel before dealing DamageMin.

SWEP.Penetration			= 48 -- Units of wood that can be penetrated by this gun.

SWEP.PhysBulletMuzzleVelocity	= 715 / ARC9.HUToM

-------------------------- MAGAZINE

SWEP.Ammo						= "pistol" -- What ammo type this gun uses.
SWEP.ChamberSize				= 0 -- The amount of rounds this gun can chamber.
SWEP.ClipSize					= 6 -- Self-explanatory.
SWEP.SupplyLimit				= 3 -- Amount of magazines of ammo this gun can take from an ARC9 supply crate.
SWEP.SecondarySupplyLimit		= 0 -- Amount of reserve UBGL magazines you can take.

SWEP.DropMagazineModel				= false -- Set to a string or table to drop this magazine when reloading.
SWEP.DropMagazineSounds = {
	"weapons/arc9_ud/common/rifle_magdrop_1.ogg",
	"weapons/arc9_ud/common/rifle_magdrop_2.ogg",
	"weapons/arc9_ud/common/rifle_magdrop_3.ogg",
	"weapons/arc9_ud/common/rifle_magdrop_4.ogg"
}	-- Table of sounds a dropped magazine should play.
SWEP.DropMagazineAmount				= 0 -- Amount of mags to drop.
SWEP.DropMagazineTime				= 0

-------------------------- FIREMODES

SWEP.RPM				= 75
SWEP.Firemodes = {
	{
		Mode				= 1
	},
	{
		Mode				= 1
	}
}

-------------------------- MELEE

SWEP.Bash						= true
SWEP.PrimaryBash				= false

SWEP.BashDamage					= 50
SWEP.BashLungeRange				= 128
SWEP.BashRange					= 64
SWEP.PreBashTime				= 0.25
SWEP.PostBashTime				= 0.5

-------------------------- RECOIL

-- General recoil multiplier
SWEP.Recoil				= 1

-- Static increasing recoil
SWEP.RecoilUp				= 2.5
SWEP.RecoilSide				= 1
SWEP.RecoilUpAddSighted = -1 -- Multiplier for vertical recoil

-- Unpredictable circle recoil
SWEP.RecoilRandomUp			= 0.1
SWEP.RecoilRandomSide		= 0.4

SWEP.RecoilDissipationRate	= 15 -- How much recoil dissipates per second.
SWEP.RecoilResetTime		= 0.2 -- How long the gun must go before the recoil pattern starts to reset.
SWEP.RecoilFullResetTime = 0.10

SWEP.RecoilAutoControl		= 5
SWEP.RecoilAutoControlMultHipFire = 0.2
SWEP.RecoilAutoControlMultSights = 0.2
SWEP.RecoilAutoControlMultCrouch = 3

SWEP.RecoilKick				= 1
SWEP.RecoilPatternDrift		= 5000

SWEP.RecoilMultHipFire				= 1.25
SWEP.RecoilAutoControlMultHipFire	= 0.5

-- VISUAL RECOIL

SWEP.UseVisualRecoil = true 
SWEP.VisualRecoil = 4.5
SWEP.VisualRecoilMultHipFire = 0.15
SWEP.VisualRecoilMultSights = -0.02
SWEP.VisualRecoilMultCrouch = 0.10

SWEP.VisualRecoilCenter = Vector(0, 25, 0)
SWEP.VisualRecoilUp = -0.8
SWEP.VisualRecoilSide = 0.2 -- Horizontal tilt
SWEP.VisualRecoilSideAddSighted = 0.05
SWEP.VisualRecoilRoll = 50 -- Roll tilt

SWEP.VisualRecoilPositionBump = 0.75
SWEP.VisualRecoilPositionBumpUp = 1.2

SWEP.VisualRecoilPunch = 6.5 -- How far back visual recoil moves the gun
SWEP.VisualRecoilPunchSights = 0 -- How far back visual recoil moves the gun

-------------------------- SPREAD

SWEP.Spread				= math.rad(0.1)

SWEP.SpreadMultHipFire				= 2
SWEP.SpreadMultMidAir				= 2
SWEP.SpreadMultMove					= 2
SWEP.SpreadMultCrouch				= 0.5

-------------------------- HANDLING

SWEP.FreeAimRadius			= 1 / 1.25 -- In degrees, how much this gun can free aim in hip fire.
SWEP.Sway					= 0.1 + 0 -- How much the gun sways.
SWEP.SwayMove = 0.5

SWEP.SwayMultMidAir			= 1.8
SWEP.SwayMultMove			= 1.05
SWEP.SwayMultCrouch			= 0.66
SWEP.SwayMultShooting		= 1.0

SWEP.FreeAimRadiusSights	= 1

SWEP.SwayMultSights				= 0.3

SWEP.AimDownSightsTime		= 0.2 -- How long it takes to go from hip fire to aiming down sights.
SWEP.SprintToFireTime		= 0.3 -- How long it takes to go from sprinting to being able to fire.

SWEP.Speed = 1
SWEP.SpeedMult				= 0.95
SWEP.SpeedMultSights		= 0.75
SWEP.SpeedMultShooting		= 0.75
SWEP.SpeedMultMelee			= 0.75
SWEP.SpeedMultCrouch		= 1
SWEP.SpeedMultBlindFire		= 1

SWEP.BarrelLength = 30 -- Distance for nearwalling

-------------------------- TRACERS

SWEP.TracerNum				= 6 -- Tracer every X
SWEP.TracerColor			= Color(255, 225, 200) -- Color of tracers. Only works if tracer effect supports it. For physical bullets, this is compressed down to 9-bit color.

-------------------------- POSITIONS

SWEP.IronSights = {
	Pos			= Vector(-6.42, -12, 1.85),
	Ang			= Angle(0, 0, 0),
	Midpoint = { -- Where the gun should be at the middle of it's irons
		Pos			= Vector(0, 15, -4),
		Ang			= Angle(0, 0, -45),
	},
	ViewModelFOV = 85,
	Magnification	= 1.1,
}

SWEP.SprintPos				= Vector(-1, -12, -2)
SWEP.SprintAng				= Angle(15.5, 2, -7)

SWEP.ActivePos				= Vector(-4, -11, 1)
SWEP.ActiveAng				= Angle(.5, 0, 0)

SWEP.CrouchPos				= Vector(-4, -12, -1)
SWEP.CrouchAng				= Angle(0, 0, -10)

SWEP.CustomizeAng			= Angle(90, 0, 0)
SWEP.CustomizePos			= Vector(20, 25, 5)
SWEP.CustomizeSnapshotFOV	= 70

-------------------------- HoldTypes

SWEP.HoldType				= "ar2"
SWEP.HoldTypeSprint			= "passive"
SWEP.HoldTypeHolstered		= "passive"
SWEP.HoldTypeSights			= "ar2"
SWEP.HoldTypeCustomize		= "slam"
SWEP.HoldTypeBlindfire		= "pistol"

SWEP.AnimShoot				= ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
SWEP.AnimReload				= false
SWEP.AnimDraw				= false

-------------------------- EFFECTS

SWEP.MuzzleParticle			= "muzzleflash_1" -- Used for some muzzle effects.

SWEP.ShellModel				= "models/weapons/arccw/uc_shells/9x19.mdl"
SWEP.ShellCorrectAng		= Angle(0, 180, 0)
SWEP.ShellScale				= 0
SWEP.ShellPhysBox			= Vector(0.5, 0.5, 2)

SWEP.CamQCA					= 3
SWEP.CamOffsetAng			= Angle(0, 90, 0)
-------------------------- SOUNDS


local path					= ")^weapons/arc9_ron_python/"
local common				= ")^weapons/arc9_ron_shared/"
SWEP.FirstShootSound			= path .. "Python_Fire_01.ogg"
SWEP.ShootSound					= path .. "Python_Fire_02.ogg"
SWEP.DistantShootSound			= path .. ""
SWEP.DryFireSound				= path .. "weap_mp5_dryfire_03.ogg"

SWEP.ShootSound = {
    path .. "Python_Fire_01.ogg",
    path .. "Python_Fire_02.ogg",
    path .. "Python_Fire_03.ogg",
    path .. "Python_Fire_04.ogg"
}

SWEP.DryFireSingleAction = false

SWEP.EnterSightsSound = ratel
SWEP.ExitSightsSound = ratel

SWEP.DistantShootSound = {
    path .. "Python_Reflection_Ext_Base_01.ogg",
    path .. "Python_Reflection_Ext_Base_02.ogg"
}
SWEP.DistantShootSoundIndoor = {
    path .. "Python_Fire_01.ogg",
    path .. "Python_Fire_02.ogg"
}

SWEP.FiremodeSound				= "weapons/arc9_ron_shared/SwitchToSemi.ogg"

local ci = CHAN_AUTO
local ratel = {path .. "pistol_rattle_1.ogg", path .. "pistol_rattle_2.ogg", path .. "pistol_rattle_3.ogg"}
local rottle = {common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}

SWEP.ReloadInSights				= false -- This weapon can aim down sights while reloading.

SWEP.Animations = {
	["ready"] = {
		Source				= "ready",
		Time				= 3,
		EventTable = {
			{s	= path .. "p90_first_draw.ogg",			t = 0},
			{s	= common .. "Cloth-ReloadStart.ogg",			t = 0},
			{s	= common .. "Cloth-DryReloadEndGrab.ogg",			t = 20},
		},
	},
	["idle"] = {
		Source				= "idle",
		Time				= 1
	},
	["idle_empty"] = {
		Source				= "idle_empty",
		Time				= 1
	},
	["draw"] = {
		Source				= "draw",
		Time				= 30 / 60,
		EventTable = {
			{s	= path .. "Python_Draw.ogg",			t = 0},
			{s	= common .. "Universal_Long_Draw_01.ogg",			t = 0},
			{s	= ratel,							t = 0},
		},
	},
	["draw_empty"] = {
		Source				= "draw_empty",
		Time				= 20 / 30,
		EventTable = {
			{s	= common .. "raise.ogg",			t = 0},
			{s	= common .. "shoulder.ogg",			t = 0.15},
			{s	= ratel,							t = 0.2},
		},
	},
	["holster"] = {
		Source				= "holster",
		Time				= 20 / 30,
		EventTable = {
			{s	= ratel,							t = 0},
			{s	= path .. "Python_Holster.ogg",			t = 0},
		},
	},
	["holster_empty"] = {
		Source				= "holster_empty",
		Time				= 20 / 30,
		EventTable = {
			{s	= ratel,							t = 0},
			{s	= common .. "cloth_6.ogg",			t = 0.2},
		},
	},
	["fire"] = {
		Source				= "fire",
		Time				= 0.9,
		ShellEjectAt				= 0.03,
		EventTable = {
			{s	= {
		
				path .. "",
				path .. ""
			},										t = 0.03},
		},
	},
	["fire_empty"] = {
		Source				= "fire_empty",
		Time				= 1,
		ShellEjectAt				= 0.03,
		EventTable = {
			{s	= path .. "mech_last.ogg",			t = 0},
		},
	},

	["fix"] = {
		Source				= "fix",
		Time				= 45 / 30,
		IKTimeLine = {
			{
				t				= 0,
				lhik				= 1,
				rhik				= 1
			},
			{
				t				= 0.4,
				lhik				= 0,
				rhik				= 0
			},
			{
				t				= 0.6,
				lhik				= 0,
				rhik				= 0
			},
			{
				t				= 1,
				lhik				= 1,
				rhik				= 1
			},
		},
		EventTable = {
			{s	= path .. "chback.ogg",				t = 0.15},
			{s	= common .. "cloth_4.ogg", 			t = 0.5},
			{s	= path .. "chamber.ogg", 			t = 0.55},
		},
	},
	["fix_empty"] = {
		Source				= "fix_empty",
		Time				= 45 / 30,
		IKTimeLine = {
			{
				t				= 0,
				lhik				= 1,
				rhik				= 1
			},
			{
				t				= 0.4,
				lhik				= 0,
				rhik				= 0
			},
			{
				t				= 0.6,
				lhik				= 0,
				rhik				= 0
			},
			{
				t				= 1,
				lhik				= 1,
				rhik				= 1
			},
		},
		EventTable = {
			{s	= path .. "chback.ogg",				t = 0.15},
			{s	= common .. "cloth_4.ogg", 			t = 0.5},
			{s	= path .. "chamber.ogg", 			t = 0.55},
		},
	},
	["fix_100"] = {
		Source				= "fix_100",
		Time				= 50 / 30,
		IKTimeLine = {
			{
				t				= 0,
				lhik				= 1,
				rhik				= 1
			},
			{
				t				= 0.4,
				lhik				= 0,
				rhik				= 0
			},
			{
				t				= 0.6,
				lhik				= 0,
				rhik				= 0
			},
			{
				t				= 1,
				lhik				= 1,
				rhik				= 1
			},
		},
		EventTable = {
			{s	= path .. "chback.ogg",				t = 0.15},
			{s	= common .. "cloth_4.ogg", 			t = 0.5},
			{s	= path .. "chamber.ogg", 			t = 0.55},
		},
	},
	["fix_empty_100"] = {
		Source				= "fix_empty_100",
		Time				= 50 / 30,
		IKTimeLine = {
			{
				t				= 0,
				lhik				= 1,
				rhik				= 1
			},
			{
				t				= 0.4,
				lhik				= 0,
				rhik				= 0
			},
			{
				t				= 0.6,
				lhik				= 0,
				rhik				= 0
			},
			{
				t				= 1,
				lhik				= 1,
				rhik				= 1
			},
		},
		EventTable = {
			{s	= path .. "chback.ogg",				t = 0.15},
			{s	= common .. "cloth_4.ogg", 			t = 0.5},
			{s	= path .. "chamber.ogg", 			t = 0.55},
		},
	},

	["cycle"] = {
		Source				= "fix",
		Time				= 36 / 30 * 0.7,
		ShellEjectAt				= 0.3,
		IKTimeLine = {
			{
				t				= 0,
				lhik				= 1,
				rhik				= 1
			},
			{
				t				= 0.4,
				lhik				= 0,
				rhik				= 0
			},
			{
				t				= 0.6,
				lhik				= 0,
				rhik				= 0
			},
			{
				t				= 1,
				lhik				= 1,
				rhik				= 1
			},
		},
		EventTable = {
			{s	= path .. "chback.ogg",				t = 0.05},
			{s	= common .. "cloth_4.ogg", 			t = 0.2},
			{s	= path .. "chamber.ogg", 			t = 0.3},
		},
	},

	-- Reloads --

	["reload"] = {
		Source				= "reload",
		TPAnim				= ACT_HL2MP_GESTURE_RELOAD_AR2,
		Time				= 30 / 10,
		MinProgress				= 1.1,
		LastClip1OutTime				= 0.9,
		IKTimeLine = {
			{
				t				= 0,
				lhik				= 1,
				rhik				= 1
			},
			{
				t				= 0.2,
				lhik				= 0,
				rhik				= 0
			},
			{
				t				= 0.75,
				lhik				= 0,
				rhik				= 0
			},
			{
				t				= 1,
				lhik				= 1,
				rhik				= 1
			},
		},
		EventTable = {
			{v1	= 0, v2	= 5000, vt	= 0.1,		t = 0},
			{v1	= 10000, v2	= 10000, vt	= 0.1,	t = 0.35},
			{v1	= 10000, v2	= 20000, vt	= 0.3,	t = 0.9},
			{v1	= 0, v2	= 5000, vt	= 0.1,		t = 1.55},
			{FOV = -6,
			FOV_Start = 1.4,
			FOV_End = 1.7,
			FOV_FuncStart = ARC9.Ease.OutCirc,
			FOV_FuncEnd = ARC9.Ease.InCirc,	t = 0},
			{s = rottle,									t = 0},
			{s = path .. "Python_ReloadStart.ogg",		t = 0.075},
			{s = rattel,									t = 0.3},
			{s = path .. "Python_ReloadCylOut.ogg",				t = 0.1, c = ci},
			{s = path .. "Python_ReloadBulletEject.ogg",				t = 0.3, c = ci},
			{s = rattel,									t = 0.35},
			{s = path .. "Python_ReloadBulletInsert.ogg",					t = 1.4, c = ci},
			{s = path .. "Python_ReloadCylIn.ogg",					t = 2.1, c = ci},
			{s = rottle,									t = 0.5},
			{s = common .. "Cloth-ReloadEnd.ogg",	t = 2.3},
		},
	},
	["reload_empty"] = {
		Source				= "reload_empty",
		TPAnim				= ACT_HL2MP_GESTURE_RELOAD_AR2,
		Time				= 30 / 10,
		MinProgress				= 1.5,
		LastClip1OutTime				= 0.7,
		IKTimeLine = {
			{
				t				= 0,
				lhik				= 1,
				rhik				= 1
			},
			{
				t				= 0.2,
				lhik				= 0,
				rhik				= 0
			},
			{
				t				= 0.75,
				lhik				= 0,
				rhik				= 0
			},
			{
				t				= 1,
				lhik				= 1,
				rhik				= 1
			},
		},
		EventTable = {
			{v1	= 0, v2	= 5000, vt	= 0.1,		t = 0},
			{v1	= 10000, v2	= 10000, vt	= 0.1,	t = 0.35},
			{v1	= 10000, v2	= 20000, vt	= 0.3,	t = 0.9},
			{v1	= 0, v2	= 5000, vt	= 0.1,		t = 1.55},
			{FOV = -6,
			FOV_Start = 1.4,
			FOV_End = 1.7,
			FOV_FuncStart = ARC9.Ease.OutCirc,
			FOV_FuncEnd = ARC9.Ease.InCirc,	t = 0},
			{s = rottle,									t = 0},
			{s = path .. "Python_ReloadStart.ogg",		t = 0.075},
			{s = rattel,									t = 0.3},
			{s = path .. "Python_ReloadCylOut.ogg",				t = 0.1, c = ci},
			{s = path .. "Python_ReloadBulletEject.ogg",				t = 0.3, c = ci},
			{s = rattel,									t = 0.35},
			{s = path .. "Python_ReloadBulletInsert.ogg",					t = 1.4, c = ci},
			{s = path .. "Python_ReloadCylIn.ogg",					t = 2.1, c = ci},
			{s = rottle,									t = 0.5},
			{s = common .. "Cloth-ReloadEnd.ogg",	t = 2.3},
		},
	},
	
	-- Inspect --
	
	["inspect_enter"] = {
        Source = "inspect_enter",
		Time				= 1,
		EventTable = {
			{s	= path .. "Python_AmmoCheck.ogg",			t = 0},
			{s	= common .. "Cloth-ReloadStart.ogg",			t = 0},
			{s	= common .. "Cloth-DryReloadEndGrab.ogg",			t = 0},
		},
	},
}

-------------------------- ATTACHMENTS
