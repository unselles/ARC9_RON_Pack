local ATT = {}

ATT.PrintName = "M600V"
ATT.CompactName = "M600V Flashlight"
ATT.Icon = Material("entities/attach/Flashlight_M600v_512.png", "mips smooth")
ATT.Description = "M600V Flashlight"
ATT.Category = {"ron_m600v"}
ATT.Model = "models/shared/attachments/m600v.mdl"

ATT.ToggleOnF = true
ATT.ToggleStats = {
    {
        PrintName = "Light",
        Flashlight = true,
        FlashlightColor = Color(118, 193, 243),
        FlashlightMaterial = "effects/flashlight001",
        FlashlightDistance = 2048,
        FlashlightFOV = 25,
        FlashlightAttachment = 2,
        Flare = true,
        FlareColor = Color(255, 255, 255),
        FlareSize = 25,
        FlareAttachment = 2,
    },
    {
        PrintName = "None",
    }
}

ARC9.LoadAttachment(ATT, "ron_m600v")

----------------------------------------

local ATT = {}

ATT.PrintName = "Laser Pointer"
ATT.CompactName = "Laser Pointer"
ATT.Icon = Material("entities/attach/SK_Rif_CQBL_512.png", "mips smooth")
ATT.Description = "Laser Pointer"
ATT.Category = {"ron_pointer"}
ATT.Model = "models/shared/attachments/laser_cqbl.mdl"

ATT.ToggleOnF = true
ATT.ToggleStats = {
    {
        PrintName = "Red Laser",
        Laser = true,
        LaserStrength = 0.6,
        LaserFlareMat = Material("effects/arc9_eft/laserdot"),
        LaserTraceMat = Material("effects/arc9_eft/lasertrace"),
        LaserColor = Color(238, 27, 27),
        LaserAttachment = 2,
        EFTHipFireSpreadBonus = true,
    },
    {
        PrintName = "None",
    }
}

ARC9.LoadAttachment(ATT, "ron_laser_cqbl")

----------------------------------------

local ATT = {}

ATT.PrintName = "PEQ-15"
ATT.CompactName = "PEQ-15 IR Laser"
ATT.Icon = Material("entities/attach/laser_light_PEQ15_512.png", "mips smooth")
ATT.Description = "PEQ-15 IR Laser"
ATT.Category = {"ron_peq"}
ATT.Model = "models/shared/attachments/laser_peq15.mdl"

ATT.ToggleOnF = true
ATT.ToggleStats = {
    {
        PrintName = "Green Laser",
        Laser = true,
        LaserStrength = 0.6,
        LaserFlareMat = Material("effects/arc9_eft/laserdot"),
        LaserTraceMat = Material("effects/arc9_eft/lasertrace"),
        LaserColor = Color(23, 247, 34),
        LaserAttachment = 2,
        EFTHipFireSpreadBonus = true,
    },
    {
        PrintName = "None",
    }
}

ARC9.LoadAttachment(ATT, "ron_laser_peq15")

----------------------------------------

local ATT = {}

ATT.PrintName = "SOCOM338"
ATT.CompactName = "SOCOM Suppresssor"
ATT.Icon = Material("entities/attach/Muzzle_suppressor_socom338_512.png", "mips smooth")
ATT.Description = "SOCOM Suppresssor"
ATT.SortOrder = 0

ATT.Model = "models/shared/attachments/supp_socom338.mdl"
ATT.MuzzleParticle = "muzzleflash_suppressed"
ATT.NoFlash = true
ATT.BarrelLengthAdd = 5
ATT.Silencer = true

ATT.MuzzleDevice = true
ATT.MuzzleDevice_Priority = 2

ATT.RecoilMult = 0.85
ATT.VisualRecoilMult = 0.85
ATT.SpreadMult = 0.85

ATT.Category = {"ron_socom338"}

ARC9.LoadAttachment(ATT, "ron_supp_socom338")

----------------------------------------

local ATT = {}

ATT.PrintName = "HARVESTER"
ATT.CompactName = "HARVESTER Suppresssor"
ATT.Icon = Material("entities/attach/sk_suppressor_harvester_512.png", "mips smooth")
ATT.Description = "SOCOM Suppresssor"
ATT.SortOrder = 0

ATT.Model = "models/shared/attachments/supp_harvester.mdl"
ATT.MuzzleParticle = "muzzleflash_suppressed"
ATT.NoFlash = true
ATT.BarrelLengthAdd = 5
ATT.Silencer = true

ATT.MuzzleDevice = true
ATT.MuzzleDevice_Priority = 2

ATT.RecoilMult = 0.85
ATT.VisualRecoilMult = 0.85
ATT.SpreadMult = 0.85

ATT.Category = {"ron_harvester"}

ARC9.LoadAttachment(ATT, "ron_supp_harvester")

----------------------------------------

local ATT = {}

ATT.PrintName = "WM"
ATT.CompactName = "WM Flashlight"
ATT.Icon = Material("entities/attach/Flashlight_M600v_512.png", "mips smooth")
ATT.Description = "WM Flashlight"
ATT.Category = {"ron_wmlight"}
ATT.Model = "models/shared/attachments/wmlight.mdl"

ATT.ToggleOnF = true
ATT.ToggleStats = {
    {
        PrintName = "Light",
        Flashlight = true,
        FlashlightColor = Color(78, 182, 252),
        FlashlightMaterial = "effects/flashlight001",
        FlashlightDistance = 2048,
        FlashlightFOV = 20,
        FlashlightAttachment = 2,
        Flare = true,
        FlareColor = Color(255, 255, 255),
        FlareSize = 125,
        FlareAttachment = 1,
    },
    {
        PrintName = "None",
    }
}

ARC9.LoadAttachment(ATT, "ron_wmlight")

----------------------------------------

ATT = {}

ATT.PrintName = "Holosight EXPS3"
ATT.CompactName = "EXPS3"
ATT.Icon = Material("entities/attach/Optic_EXPS3_512.png", "mips smooth")
ATT.Description = "EXPS3 holographic sight"
ATT.SortOrder = 1


ATT.Model = "models/shared/attachments/optic_exps3.mdl"

ATT.Category = {"ron_holosight"}



//ATT.FoldSights = true

ATT.Sights = {
    {
        Pos = Vector(0, 10, -2),
        Ang = Angle(0, 0, 0),
        Magnification = 1.1,
        ViewModelFOV = 75
    }
}

ATT.HoloSight = true
ATT.HoloSightReticle = Material("vgui/shared/reticles/Optic_Holo_Double.png", "mips smooth")
ATT.HoloSightReticle:SetInt("$additive", 1)
ATT.HoloSightSize = 465
ATT.HoloSightColorable = false


//ATT.ModelOffset = Vector(0, 0, 0)


ARC9.LoadAttachment(ATT, "ron_optic_exps3")

----------------------------------------

ATT = {}

ATT.PrintName = "MK1 folding sights"
ATT.CompactName = "MK1 FS"
ATT.Icon = Material("", "mips smooth")
ATT.Description = "MK1 folding sights."

ATT.SortOrder = 0

ATT.Category = {"ron_mk1_iron"}



ARC9.LoadAttachment(ATT, "ron_mk1_fs")

----------------------------------------

local ATT = {}

ATT.PrintName = "TUNDRA"
ATT.CompactName = "TUNDRA Suppressor"
ATT.Icon = Material("entities/attach/sk_suppressor_tundra_512.png", "mips smooth")
ATT.Description = "TUNDRA Suppressor"
ATT.SortOrder = 0

ATT.Model = "models/shared/attachments/supp_tundra.mdl"
ATT.MuzzleParticle = "muzzleflash_suppressed"
ATT.NoFlash = true
ATT.BarrelLengthAdd = 5
ATT.Silencer = true

ATT.MuzzleDevice = true
ATT.MuzzleDevice_Priority = 2

ATT.RecoilMult = 0.85
ATT.VisualRecoilMult = 0.85
ATT.SpreadMult = 0.85

ATT.Category = {"ron_tundra"}

ARC9.LoadAttachment(ATT, "ron_supp_tundra")

//---------------------------------------- Optic MicroT2

local ATT = {}

ATT.PrintName = "MicroT2 Reflex"
ATT.CompactName = "MicroT2"
ATT.Icon = Material("entities/attach/SK_MicroT2_512.png", "mips smooth")
ATT.Description = "MicroT2 reflex sight"
ATT.SortOrder = 1


ATT.Model = "models/shared/attachments/optic_microt2_tall.mdl"

ATT.Category = {"ron_reflex"}



//ATT.FoldSights = true

ATT.Sights = {
    {
        Pos = Vector(0, 10, -1.6),
        Ang = Angle(0, 0, 0),
        Magnification = 1.1,
        ViewModelFOV = 75
    }
}

ATT.ModelOffset = Vector(0, 0, 0.02)

ATT.HoloSight = true
ATT.HoloSightReticle = Material("vgui/shared/reticles/Optic_Dot_Single.png", "mips smooth")
ATT.HoloSightReticle:SetInt("$additive", 1)
ATT.HoloSightSize = 465
ATT.HoloSightColorable = false


ARC9.LoadAttachment(ATT, "ron_optic_microt2")

//---------------------------------------- Optic SRS


local ATT = {}

ATT.PrintName = "SRS"
ATT.CompactName = "SRS Reflex"
ATT.Icon = Material("entities/attach/Optic_SRS_512.png", "mips smooth")
ATT.Description = "SRS reflex sight"
ATT.SortOrder = 1


ATT.Model = "models/shared/attachments/optic_srs.mdl"

ATT.Category = {"ron_reflex"}



ATT.FoldSights = true

ATT.Sights = {
    {
        Pos = Vector(0, 10, -1.6),
        Ang = Angle(0, 0, 0),
        Magnification = 1.1,
        ViewModelFOV = 75
    }
}

ATT.ModelOffset = Vector(0, 0, 0.32)

ATT.HoloSight = true
ATT.HoloSightReticle = Material("vgui/shared/reticles/Optic_Dot_Single.png", "mips smooth")
ATT.HoloSightReticle:SetInt("$additive", 1)
ATT.HoloSightSize = 465
ATT.HoloSightColorable = false



ARC9.LoadAttachment(ATT, "ron_optic_srs")

//---------------------------------------- Optic M5B

local ATT = {}

ATT.PrintName = "M5B"
ATT.CompactName = "M5B Optic"
ATT.Icon = Material("entities/attach/Optic_M5B_512.png", "mips smooth")
ATT.Description = "M5B reflex sight"
ATT.SortOrder = 1


ATT.Model = "models/shared/attachments/optic_m5b.mdl"

ATT.Category = {"ron_reflex"}



ATT.FoldSights = true

ATT.Sights = {
    {
        Pos = Vector(0.1, 10, -2),
        Ang = Angle(0, 0, 0),
        Magnification = 1.1,
        ViewModelFOV = 75
    }
}

ATT.ModelOffset = Vector(0, 0.1, 0.05)

ATT.HoloSight = true
ATT.HoloSightReticle = Material("vgui/shared/reticles/Optic_Dot_Single.png", "mips smooth")
ATT.HoloSightReticle:SetInt("$additive", 1)
ATT.HoloSightSize = 465
ATT.HoloSightColorable = false




ARC9.LoadAttachment(ATT, "ron_optic_m5b")

----------------------------------------// Optic SDR

ATT = {}

ATT.PrintName = "SDR 1x-4x scope"
ATT.CompactName = "SpecterDR"
ATT.Icon = Material("entities/attach/SK_Optic_SpecterDR_512.png", "mips smooth")
ATT.Description = "SDR 1x-4x scope"
ATT.SortOrder = 2

ATT.Model = "models/shared/attachments/optic_sdr.mdl"

ATT.Category = "ron_scope"

ATT.Sights = {
    {
        Pos = Vector(0, 8.0, -2),
        Ang = Angle(0, 0, 0),
        Magnification = 1,
        ViewModelFOV = 70,
        RTScopeFOV = 4/1,
    },
    {
        Pos = Vector(0, 8.0, -2),
        Ang = Angle(0, 0, 0),
        Magnification = 1,
        ViewModelFOV = 70,
        RTScopeFOV = 1/1,
    },
    {
        Pos = Vector(0, 8, -3.5),
        Ang = Angle(0, 0, 0),
        ShadowPos = Vector(0,0,3),
        Disassociate = true
    },
}

ATT.DrawFunc = function(swep, model, wm) 
    if !wm then
        model:SetBodygroup(1, swep:GetMultiSight()-1)
    end
end

//ATT.RTScope = true
//ATT.RTScopeSubmatIndex = 4
//ATT.RTScopeFOV = 12
//ATT.RTScopeReticle = Material("vgui/shared/reticles/T_ATACR_Dot.png", "mips smooth")
//ATT.RTScopeReticleScale = 1.04
//ATT.RTScopeColorable = true
//ATT.RTScopeShadowIntensity = 10
//ATT.RTScopeBlackBox = true 
//ATT.RTScopeBlackBoxShadow = true 

//ATT.ScopeScreenRatio = 0.66

ATT.RTScope = true
ATT.RTScopeSubmatIndex = 1
ATT.RTScopeFOV = 12
ATT.RTScopeRes = 512
ATT.RTScopeReticle = Material("vgui/shared/reticles/T_ATACR_Dot.png")
ATT.RTScopeReticleScale = 1.05
ATT.RTScopeShadowIntensity = 15
ATT.RTCollimator = false -- Disables cheap scopes fov boost, disables sensivity adjustements
ATT.RTScopeNoBlur = false -- By default, if arc9_fx_rtblur 1 then world behind gun wil be blurred. Enable if your "scope" is not so scope.
ATT.RTScopeNoPP = false
ATT.RTScopeNoShadow = false
ATT.RTScopeBlackBox = true
ATT.RTScopeBlackBoxShadow = true
ATT.RTScopeColorable = false -- Scope takes color from player settings
-- Lets you draw more things on to the reticle
ATT.RTScopeDrawFunc = function(swep, rtsize) end
-- Extra post processing like DrawMotionBlur() DrawSharpen() DrawBloom()
ATT.RTScopeCustomPPFunc = function(swep) end



ARC9.LoadAttachment(ATT, "ron_scope_sdr")

----------------------------------------// Optic ATACR

ATT = {}

ATT.PrintName = "ATAKR scope"
ATT.CompactName = "ATAKR 1x-12x scope"
ATT.Icon = Material("entities/attach/BP_Scope_ATACR_512.png", "mips smooth")
ATT.Description = "ATAKR 1x-12x long-range scope"
ATT.SortOrder = 2

ATT.Model = "models/shared/attachments/optic_atacr.mdl"

ATT.Category = "ron_scope"

ATT.Sights = {
    {
        Pos = Vector(0, 8, -1.7),
        Ang = Angle(0, 0, 0),
        Magnification = 1,
        ViewModelFOV = 70,
        RTScopeFOV = 1/0.1,
    },
    {
        Pos = Vector(0, 8, -1.7),
        Ang = Angle(0, 0, 0),
        Magnification = 1.05,
        ViewModelFOV = 65,
        RTScopeFOV = 1/12,
    },
}

ATT.DrawFunc = function(swep, model, wm) 
    if !wm then
        model:SetBodygroup(1, swep:GetMultiSight()-1)
    end
end

//ATT.RTScope = true
//ATT.RTScopeSubmatIndex = 4
//ATT.RTScopeFOV = 12
//ATT.RTScopeReticle = Material("vgui/shared/reticles/T_ATACR_Dot.png", "mips smooth")
//ATT.RTScopeReticleScale = 1.04
//ATT.RTScopeColorable = true
//ATT.RTScopeShadowIntensity = 10
//ATT.RTScopeBlackBox = true 
//ATT.RTScopeBlackBoxShadow = true 

//ATT.ScopeScreenRatio = 0.66

ATT.RTScope = true
ATT.RTScopeSubmatIndex = 2
ATT.RTScopeFOV = 0
ATT.RTScopeRes = 512
ATT.RTScopeReticle = Material("vgui/shared/reticles/T_ATACR_Dot.png")
ATT.RTScopeReticleScale = 1.05
ATT.RTScopeShadowIntensity = 15
ATT.RTCollimator = false -- Disables cheap scopes fov boost, disables sensivity adjustements
ATT.RTScopeNoBlur = false -- By default, if arc9_fx_rtblur 1 then world behind gun wil be blurred. Enable if your "scope" is not so scope.
ATT.RTScopeNoPP = false
ATT.RTScopeNoShadow = false
ATT.RTScopeBlackBox = true
ATT.RTScopeBlackBoxShadow = true
ATT.RTScopeColorable = false -- Scope takes color from player settings
-- Lets you draw more things on to the reticle
ATT.RTScopeDrawFunc = function(swep, rtsize) end
-- Extra post processing like DrawMotionBlur() DrawSharpen() DrawBloom()
ATT.RTScopeCustomPPFunc = function(swep) end



ARC9.LoadAttachment(ATT, "ron_scope_atacr")

----------------------------------------// SFMB Brake

ATT = {}

ATT.PrintName = "SFMB"
ATT.CompactName = "SFMB Brake"
ATT.Icon = Material("entities/attach/Muzzle_sfmb_brake_512.png", "mips smooth")
ATT.Description = "SFMB Brake"
ATT.SortOrder = 0

ATT.Model = "models/shared/attachments/brake_sfmb.mdl"
ATT.NoFlash = false
ATT.BarrelLengthAdd = 2
ATT.Silencer = false

ATT.MuzzleDevice = true
ATT.MuzzleDevice_Priority = 2

ATT.RecoilMult = 0.75
ATT.VisualRecoilMult = 0.75
ATT.SpreadMult = 0.75

ATT.Category = {"ron_sfmb"}

ARC9.LoadAttachment(ATT, "ron_brake_sfmb")

----------------------------------------

ATT = {}

ATT.PrintName = "Default AR Brake"
ATT.CompactName = "Default Brake"
ATT.Icon = Material("", "mips smooth")
ATT.Description = "Default AR Brake"
ATT.SortOrder = 0

ATT.Model = "models/shared/attachments/brake_ar.mdl"
ATT.NoFlash = false
ATT.BarrelLengthAdd = 2
ATT.Silencer = false

ATT.MuzzleDevice = true
ATT.MuzzleDevice_Priority = 2

ATT.RecoilMult = 0.95
ATT.VisualRecoilMult = 0.95
ATT.SpreadMult = 0.95

ATT.Category = {"ron_brake_default"}

ARC9.LoadAttachment(ATT, "ron_brake_default")

//---------------------------------------- DF Fold Sights Up

ATT = {}

ATT.PrintName = "Default folding sights up"
ATT.CompactName = "Default FS Up"
ATT.Icon = Material("", "mips smooth")
ATT.Description = "MK1 folding sights up"

ATT.Model = "models/shared/attachments/sights_flip_up.mdl"

ATT.SortOrder = 2

ATT.Category = {"ron_default_fs_up"}



ARC9.LoadAttachment(ATT, "ron_default_fs_up")

//---------------------------------------- DF Fold Sights Down

ATT = {}

ATT.PrintName = "Default folding sights down"
ATT.CompactName = "Default FS Down"
ATT.Icon = Material("", "mips smooth")
ATT.Description = "MK1 folding sights down"

ATT.Model = "models/shared/attachments/sights_flip_down.mdl"

ATT.SortOrder = 1

ATT.Category = {"ron_default_fs_down"}



ARC9.LoadAttachment(ATT, "ron_default_fs_down")

//---------------------------------------- MK18 Back Sight

ATT = {}

ATT.PrintName = "MK18 Back Sight"
ATT.CompactName = "MK18 BK Sight"
ATT.Icon = Material("", "mips smooth")
ATT.Description = "MK18 back sight"

ATT.Model = "models/shared/attachments/sight_mk18.mdl"

ATT.SortOrder = 1

ATT.Category = {"ron_mk18_sight"}



ARC9.LoadAttachment(ATT, "ron_mk18_sight")

//---------------------------------------- Grip Combat

ATT = {}

ATT.PrintName = "Combat Grip"
ATT.CompactName = "Combat Grip"
ATT.Description = "Combat grip for better recoil control"
ATT.Icon = Material("entities/attach/sm_mod3_512.png", "mips smooth")

ATT.Model = "models/shared/attachments/grip_combat.mdl"

ATT.LHIK_Priority = 1
ATT.LHIK = true
ATT.IKAnimationAlsoPlayBase = true

ATT.RecoilMult = 0.65
ATT.VisualRecoilMult = 0.65

ATT.SortOrder = 0
ATT.Category = "ron_grip"


ARC9.LoadAttachment(ATT, "ron_grip_combat")

//---------------------------------------- Grip Angled

ATT = {}

ATT.PrintName = "Angled Grip"
ATT.CompactName = "Angled Grip"
ATT.Description = "AFG Angled Grip"
ATT.Icon = Material("entities/attach/Foregrip_AFG_512.png", "mips smooth")

ATT.Model = "models/shared/attachments/grip_angled.mdl"

ATT.RecoilMult = 0.75
ATT.VisualRecoilMult = 0.75

ATT.SortOrder = 0
ATT.Category = "ron_grip"


ARC9.LoadAttachment(ATT, "ron_grip_angled")
