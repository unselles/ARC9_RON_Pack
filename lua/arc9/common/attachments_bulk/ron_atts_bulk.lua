local ATT = {}

ATT.PrintName = "WM Light"
ATT.CompactName = "WM Light"
ATT.Icon = Material("entities/att/acwatt_ud_glock_material.png", "mips smooth")
ATT.Description = "VM Light"
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

ARC9.LoadAttachment(ATT, "wmlight")