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

ATT.RecoilMult = 0.75
ATT.VisualRecoilMult = 0.75
ATT.SpreadMult = 0.75

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

ATT.RecoilMult = 0.75
ATT.VisualRecoilMult = 0.75
ATT.SpreadMult = 0.75

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



ATT.FoldSights = true

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


ATT.ModelOffset = Vector(0, 0, 0)


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
ATT.Icon = Material("entities/attach/sk_suppressor_harvester_512.png", "mips smooth")
ATT.Description = "TUNDRA Suppressor"
ATT.SortOrder = 0

ATT.Model = "models/shared/attachments/supp_tundra.mdl"
ATT.MuzzleParticle = "muzzleflash_suppressed"
ATT.NoFlash = true
ATT.BarrelLengthAdd = 5
ATT.Silencer = true

ATT.MuzzleDevice = true
ATT.MuzzleDevice_Priority = 2

ATT.RecoilMult = 0.75
ATT.VisualRecoilMult = 0.75
ATT.SpreadMult = 0.75

ATT.Category = {"ron_tundra"}

ARC9.LoadAttachment(ATT, "ron_supp_tundra")