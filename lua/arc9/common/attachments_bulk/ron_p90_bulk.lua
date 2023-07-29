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

ARC9.LoadAttachment(ATT, "wmlight")