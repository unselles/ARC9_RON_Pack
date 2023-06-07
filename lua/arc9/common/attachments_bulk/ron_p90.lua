local ATT = {}

ATT = {}

ATT.PrintName							= "GEN3 Subcompact Frame"
ATT.PrintNameTrue						= "Glock 17 Subcompact Frame"
ATT.CompactName							= "SUBCOMPACT"
ATT.Icon								= Material("entities/att/acwatt_ud_glock_frame_subcompact.png", "mips smooth")
ATT.Description							= "A smaller frame that is noticably shorter on the magwell.\nFast to handle, but the smaller grip surface affects recoil control."

ATT.Category = {"ud_glock_frame"}

ATT.DeployTimeMult						= 0.75
ATT.RecoilMult							= 1.15
ATT.SpeedMultSights						= 1.05
ATT.AimDownSightsTimeMult				= 0.8

ARC9.LoadAttachment(ATT, "ud_glock_frame_subcompact")

ATT = {}

ATT.PrintName = "FDE Polymer"
ATT.CompactName = "FDE"
ATT.Icon = Material("entities/att/acwatt_ud_glock_material.png", "mips smooth")
ATT.Description = "Flat dark earth finish for your polymer handgun."
ATT.Category = {"ud_glock_skin"}

ARC9.LoadAttachment(ATT, "ud_glock_skin_tan")

ATT = {}

ATT.PrintName							= "Olive Drab"
ATT.CompactName							= "OLIVE"
ATT.Icon								= Material("entities/att/acwatt_ud_glock_material.png", "mips smooth")
ATT.Description							= "Olive drab finish for for your polymer handgun."
ATT.Category							= {"ud_glock_skin"}

ARC9.LoadAttachment(ATT, "ud_glock_skin_olive")


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
        FlareColor = Color(255, 255, 255),
        FlareSize = 125,
        FlareAttachment = 1,
    },
    {
        PrintName = "None",
		
		ARC9.LoadAttachment(ATT, "vmlight")
    }
}