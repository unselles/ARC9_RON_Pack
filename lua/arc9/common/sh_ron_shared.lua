ARC9RON = ARC9RON or {}
ARC9RONBASE = true

if SERVER then
    util.AddNetworkString("arc9ronmagcheck")
else
    if !ARC9.ScreenScale then ARC9.ScreenScale = function(size) return size * (ScrW() / 640) * GetConVar("arc9_hud_scale"):GetFloat() end end

    local magcheckbgmat = Material("vgui/ron/magcheckgeneralbg.png", "")
    local magcheckRegularMagBGmat = Material("vgui/ron/magcheckregularmagbg.png", "")
    local magcheckRegularMagFullmat =Material("vgui/ron/magcheckregularmagfull.png", "") 
    -- local magcheckmat = Material("vgui/arc9_eft_shared/icon_info_magsize.png", "")

    surface.CreateFont("ronammotype", { font = "Comic Sans MS", size = ARC9.ScreenScale(8), weight = 1550, blursize = ARC9.ScreenScale(0.3), antialias = true, extended = true })

    local function makeronmagcheck(procent, ammotype)
        ammotype = ammotype or "???"
        surface.SetFont("ronammotype")
        local tw = surface.GetTextSize(ammotype)

        local ssize = ARC9.ScreenScale(22)

        local notif = vgui.Create("DPanel", GetHUDPanel())
        notif:SetPos(0, 0)
        notif:SetSize(ScrW(), ScrH())
        notif:SetAlpha(0)
        
        notif:AlphaTo(255, 0.3, 0.1, nil) -- in

        notif:AlphaTo(0, 0.2, 5, nil) -- out

        notif:MoveToBack()

        local wep = LocalPlayer():GetActiveWeapon()
        if !IsValid(wep) then return end
        local vm = wep.GetVM and wep:GetVM() or nil
        if !IsValid(vm) then return end
        local fov = 85

        notif.Paint = function(self2, w, h)
            local lookupb = vm:LookupBone("tag_mag_01")
            
            if lookupb and vm:GetBoneName(lookupb) == "tag_mag_01" then -- valid bone check
                cam.Start3D(nil, nil, fov)
                local bonepos = vm:GetBoneMatrix(lookupb):GetTranslation()
                local bonepostoscreen = bonepos:ToScreen()
                cam.End3D()
                local boneposX, boneposY = bonepostoscreen.x - ssize*.5, bonepostoscreen.y - ssize*.5

                surface.SetDrawColor(255, 255, 255, 255)
                surface.SetMaterial(magcheckbgmat)
                surface.DrawTexturedRect(boneposX, boneposY + ssize*.5, ssize, ssize)
                surface.SetDrawColor(255, 255, 255, 255)
                surface.SetMaterial(magcheckRegularMagBGmat)
                surface.DrawTexturedRect(boneposX, boneposY + ssize*.5, ssize, ssize)
                surface.SetMaterial(magcheckRegularMagFullmat)
                surface.DrawTexturedRectUV(boneposX, boneposY + ssize*.5 + ssize * (1 - procent), ssize, ssize * procent, 0, 1 - procent, 1, 1)

                surface.SetFont("ronammotype")
                surface.SetTextPos(boneposX + ssize*.5 - tw*.5, boneposY)
                surface.SetTextColor(255, 255, 255)
                surface.DrawText(ammotype)
            end
        end
    end
    
    -- makeronmagcheck(0.5, "JHP")
    
    net.Receive("arc9ronmagcheck", function(len)
        local checktype = net.ReadBool()
        local rnds = net.ReadUInt(9)
        local maxrnds = net.ReadUInt(9)
        
        rnds = math.Clamp(rnds-1, 0, maxrnds) / maxrnds

        local ply = LocalPlayer()
        if !IsValid(ply) then return end
        local wep = ply:GetActiveWeapon()
        if !IsValid(ply:GetActiveWeapon()) and wep.Trivia then return end

        local rndtype = wep:GetValue("RONRoundName") or "????"
        
        makeronmagcheck(rnds)
    end)
end


-- As of 2023-11-12, this feature is only available on dev branch.
-- Won't break anything on release branch though.
-- list.Set("ContentCategoryIcons", "ARC9 - Ready or Not", "ron_16.png") -- make orange logo and uncomment this pls