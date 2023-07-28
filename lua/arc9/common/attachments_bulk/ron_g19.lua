local ATT = {}

ATT = {}

ATT.PrintName = "VM Light"
ATT.CompactName = "VM"
ATT.Icon = Material("entities/att/acwatt_ud_glock_material.png", "mips smooth")
ATT.Description = "VM Light."
ATT.Category = {"ron_vmlight"}
ATT.Model = "shared\attachments\vmlight.mdl"

ATT.ToggleOnF = true
ATT.ToggleStats = {
    {
        PrintName = "Light",
        Flashlight = true,
        FlashlightColor = Color(255, 255, 255),
        FlashlightMaterial = "effects/flashlight001",
        FlashlightDistance = 2048,
        FlashlightFOV = 83,
        FlashlightAttachment = 1,
        Flare = true,
        FlareColor = Color(255, s255, 255),
        FlareSize = 125,
        FlareAttachment = 1,
    },
    {
        PrintName = "None",
		
		ARC9.LoadAttachment(ATT, "vmlight")
    }
}