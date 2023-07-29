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

ARC9.LoadAttachment(ATT, "m600v")

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

ARC9.LoadAttachment(ATT, "laser_cqbl")

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

ARC9.LoadAttachment(ATT, "laser_peq15")

----------------------------------------

ATT = {}

ATT.PrintName = "SOCOM338"
ATT.CompactName = "SOCOM Suppresssor"
ATT.Icon = Material("entities/attach/laser_light_PEQ15_512.png", "mips smooth")
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

ARC9.LoadAttachment(ATT, "supp_socom338")