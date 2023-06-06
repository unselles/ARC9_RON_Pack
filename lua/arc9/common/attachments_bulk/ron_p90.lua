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