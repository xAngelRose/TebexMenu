ESX = nil
local PlayerData = {}

RegisterNetEvent("RedMenu:Notification")
AddEventHandler("RedMenu:Notification", function(message)
    ESX.ShowNotification("~h~⭐ Boutique : " .. message)
end)

RegisterNetEvent('::{korioz#0110}::esx:playerLoaded')
AddEventHandler('::{korioz#0110}::esx:playerLoaded', function(xPlayer)
    PlayerData = xPlayer
end)

Citizen.CreateThread(function()
    while ESX == nil do
        TriggerEvent('::{korioz#0110}::esx:getSharedObject', function(obj) ESX = obj end)
        ESX.TriggerServerCallback('RedMenu:GetPoint', function(thepoint)
            point = thepoint
        end)

        ESX.TriggerServerCallback('RedMenu:GetCodeBoutique', function(thecode)
            code = thecode
        end)
    end
end)
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(2000)
        ESX.TriggerServerCallback('RedMenu:GetPoint', function(thepoint)
            point = thepoint
        end)

        ESX.TriggerServerCallback('RedMenu:GetCodeBoutique', function(thecode)
            code = thecode
        end)
    end    
end)

TableWeapon = {
    ["WEAPON_DAGGER"] = GetHashKey("WEAPON_DAGGER"),
    ["WEAPON_BAT"] = GetHashKey("WEAPON_BAT"),
    ["WEAPON_BOTTLE"] = GetHashKey("WEAPON_BOTTLE"),
    ["WEAPON_CROWBAR"] = GetHashKey("WEAPON_CROWBAR"),
    ["WEAPON_UNARMED"] = GetHashKey("WEAPON_UNARMED"),
    ["WEAPON_FLASHLIGHT"] = GetHashKey("WEAPON_FLASHLIGHT"),
    ["WEAPON_GOLFCLUB"] = GetHashKey("WEAPON_GOLFCLUB"),
    ["WEAPON_HAMMER"] = GetHashKey("WEAPON_HAMMER"),
    ["WEAPON_HATCHET"] = GetHashKey("WEAPON_HATCHET"),
    ["WEAPON_KNUCKLE"] = GetHashKey("WEAPON_KNUCKLE"),
    ["WEAPON_KNIFE"] = GetHashKey("WEAPON_KNIFE"),
    ["WEAPON_MACHETE"] = GetHashKey("WEAPON_MACHETE"),
    ["WEAPON_SWITCHBLADE"] = GetHashKey("WEAPON_SWITCHBLADE"),
    ["WEAPON_NIGHTSTICK"] = GetHashKey("WEAPON_NIGHTSTICK"),
    ["WEAPON_WRENCH"] = GetHashKey("WEAPON_WRENCH"),
    ["WEAPON_BATTLEAXE"] = GetHashKey("WEAPON_BATTLEAXE"),
    ["WEAPON_POOLCUE"] = GetHashKey("WEAPON_POOLCUE"),
    ["WEAPON_STONE_HATCHET"] = GetHashKey("WEAPON_STONE_HATCHET"),
    ["WEAPON_PISTOL"] = GetHashKey("WEAPON_PISTOL"),
    ["WEAPON_PISTOL_MK2"] = GetHashKey("WEAPON_PISTOL_MK2"),
    ["WEAPON_COMBATPISTOL"] = GetHashKey("WEAPON_COMBATPISTOL"),
    ["WEAPON_APPISTOL"] = GetHashKey("WEAPON_APPISTOL"),
    ["WEAPON_STUNGUN"] = GetHashKey("WEAPON_STUNGUN"),
    ["WEAPON_PISTOL50"] = GetHashKey("WEAPON_PISTOL50"),
    ["WEAPON_SNSPISTOL"] = GetHashKey("WEAPON_SNSPISTOL"),
    ["WEAPON_SNSPISTOL_MK2"] = GetHashKey("WEAPON_SNSPISTOL_MK2"),
    ["WEAPON_HEAVYPISTOL"] = GetHashKey("WEAPON_HEAVYPISTOL"),
    ["WEAPON_VINTAGEPISTOL"] = GetHashKey("WEAPON_VINTAGEPISTOL"),
    ["WEAPON_FLAREGUN"] = GetHashKey("WEAPON_FLAREGUN"),
    ["WEAPON_MARKSMANPISTOL"] = GetHashKey("WEAPON_MARKSMANPISTOL"),
    ["WEAPON_REVOLVER"] = GetHashKey("WEAPON_REVOLVER"),
    ["WEAPON_REVOLVER_MK2"] = GetHashKey("WEAPON_REVOLVER_MK2"),
    ["WEAPON_DOUBLEACTION"] = GetHashKey("WEAPON_DOUBLEACTION"),
    ["WEAPON_RAYPISTOL"] = GetHashKey("WEAPON_RAYPISTOL"),
    ["WEAPON_CERAMICPISTOL"] = GetHashKey("WEAPON_CERAMICPISTOL"),
    ["WEAPON_NAVYREVOLVER"] = GetHashKey("WEAPON_NAVYREVOLVER"),
    ["WEAPON_MICROSMG"] = GetHashKey("WEAPON_MICROSMG"),
    ["WEAPON_SMG"] = GetHashKey("WEAPON_SMG"),
    ["WEAPON_SMG_MK2"] = GetHashKey("WEAPON_SMG_MK2"),
    ["WEAPON_ASSAULTSMG"] = GetHashKey("WEAPON_ASSAULTSMG"),
    ["WEAPON_COMBATPDW"] = GetHashKey("WEAPON_COMBATPDW"),
    ["WEAPON_MACHINEPISTOL"] = GetHashKey("WEAPON_MACHINEPISTOL"),
    ["WEAPON_MINISMG"] = GetHashKey("WEAPON_MINISMG"),
    ["WEAPON_RAYCARBINE"] = GetHashKey("WEAPON_RAYCARBINE"),
    ["WEAPON_PUMPSHOTGUN"] = GetHashKey("WEAPON_PUMPSHOTGUN"),
    ["WEAPON_PUMPSHOTGUN_MK2"] = GetHashKey("WEAPON_PUMPSHOTGUN_MK2"),
    ["WEAPON_SAWNOFFSHOTGUN"] = GetHashKey("WEAPON_SAWNOFFSHOTGUN"),
    ["WEAPON_ASSAULTSHOTGUN"] = GetHashKey("WEAPON_ASSAULTSHOTGUN"),
    ["WEAPON_BULLPUPSHOTGUN"] = GetHashKey("WEAPON_BULLPUPSHOTGUN"),
    ["WEAPON_MUSKET"] = GetHashKey("WEAPON_MUSKET"),
    ["WEAPON_HEAVYSHOTGUN"] = GetHashKey("WEAPON_HEAVYSHOTGUN"),
    ["WEAPON_DBSHOTGUN"] = GetHashKey("WEAPON_DBSHOTGUN"),
    ["WEAPON_AUTOSHOTGUN"] = GetHashKey("WEAPON_AUTOSHOTGUN"),
    ["WEAPON_ASSAULTRIFLE"] = GetHashKey("WEAPON_ASSAULTRIFLE"),
    ["WEAPON_ASSAULTRIFLE_MK2"] = GetHashKey("WEAPON_ASSAULTRIFLE_MK2"),
    ["WEAPON_CARBINERIFLE"] = GetHashKey("WEAPON_CARBINERIFLE"),
    ["WEAPON_CARBINERIFLE_MK2"] = GetHashKey("WEAPON_CARBINERIFLE_MK2"),
    ["WEAPON_ADVANCEDRIFLE"] = GetHashKey("WEAPON_ADVANCEDRIFLE"),
    ["WEAPON_SPECIALCARBINE"] = GetHashKey("WEAPON_SPECIALCARBINE"),
    ["WEAPON_SPECIALCARBINE_MK2"] = GetHashKey("WEAPON_SPECIALCARBINE_MK2"),
    ["WEAPON_BULLPUPRIFLE"] = GetHashKey("WEAPON_BULLPUPRIFLE"),
    ["WEAPON_BULLPUPRIFLE_MK2"] = GetHashKey("WEAPON_BULLPUPRIFLE_MK2"),
    ["WEAPON_COMPACTRIFLE"] = GetHashKey("WEAPON_COMPACTRIFLE"),
    ["WEAPON_MG"] = GetHashKey("WEAPON_MG"),
    ["WEAPON_COMBATMG"] = GetHashKey("WEAPON_COMBATMG"),
    ["WEAPON_COMBATMG_MK2"] = GetHashKey("WEAPON_COMBATMG_MK2"),
    ["WEAPON_GUSENBERG"] = GetHashKey("WEAPON_GUSENBERG"),
    ["WEAPON_SNIPERRIFLE"] = GetHashKey("WEAPON_SNIPERRIFLE"),
    ["WEAPON_HEAVYSNIPER"] = GetHashKey("WEAPON_HEAVYSNIPER"),
    ["WEAPON_HEAVYSNIPER_MK2"] = GetHashKey("WEAPON_HEAVYSNIPER_MK2"),
    ["WEAPON_MARKSMANRIFLE"] = GetHashKey("WEAPON_MARKSMANRIFLE"),
    ["WEAPON_MARKSMANRIFLE_MK2"] = GetHashKey("WEAPON_MARKSMANRIFLE_MK2"),
    ["WEAPON_RPG"] = GetHashKey("WEAPON_RPG"),
    ["WEAPON_GRENADELAUNCHER"] = GetHashKey("WEAPON_GRENADELAUNCHER"),
    ["WEAPON_GRENADELAUNCHER_SMOKE"] = GetHashKey("WEAPON_GRENADELAUNCHER_SMOKE"),
    ["WEAPON_MINIGUN"] = GetHashKey("WEAPON_MINIGUN"),
    ["WEAPON_FIREWORK"] = GetHashKey("WEAPON_FIREWORK"),
    ["WEAPON_RAILGUN"] = GetHashKey("WEAPON_RAILGUN"),
    ["WEAPON_HOMINGLAUNCHER"] = GetHashKey("WEAPON_HOMINGLAUNCHER"),
    ["WEAPON_COMPACTLAUNCHER"] = GetHashKey("WEAPON_COMPACTLAUNCHER"),
    ["WEAPON_RAYMINIGUN"] = GetHashKey("WEAPON_RAYMINIGUN"),
    ["WEAPON_GRENADE"] = GetHashKey("WEAPON_GRENADE"),
    ["WEAPON_BZGAS"] = GetHashKey("WEAPON_BZGAS"),
    ["WEAPON_MOLOTOV"] = GetHashKey("WEAPON_MOLOTOV"),
    ["WEAPON_STICKYBOMB"] = GetHashKey("WEAPON_STICKYBOMB"),
    ["WEAPON_PROXMINE"] = GetHashKey("WEAPON_PROXMINE"),
    ["WEAPON_SNOWBALL"] = GetHashKey("WEAPON_SNOWBALL"),
    ["WEAPON_PIPEBOMB"] = GetHashKey("WEAPON_PIPEBOMB"),
    ["WEAPON_BALL"] = GetHashKey("WEAPON_BALL"),
    ["WEAPON_SMOKEGRENADE"] = GetHashKey("WEAPON_SMOKEGRENADE"),
    ["WEAPON_FLARE"] = GetHashKey("WEAPON_FLARE"),
    ["WEAPON_PETROLCAN"] = GetHashKey("WEAPON_PETROLCAN"),
    ["GADGET_PARACHUTE"] = GetHashKey("GADGET_PARACHUTE"),
    ["WEAPON_FIREEXTINGUISHER"] = GetHashKey("WEAPON_FIREEXTINGUISHER"),
    ["WEAPON_HAZARDCAN"] = GetHashKey("WEAPON_HAZARDCAN")
    }

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(1000)
        PlayerData = ESX.GetPlayerData()
        local found = false

        local weaponName = GetSelectedPedWeapon(GetPlayerPed(PlayerId()))

        TheWeapon = nil

        for key, value in pairs(TableWeapon) do
            if value == weaponName then
                TheWeapon = key
            end
        end
        
      --  print(TheWeapon)

        for i = 1, #PlayerData.loadout, 1 do
            if PlayerData.loadout[i].name == TheWeapon then
                found = true
                break    
            end
        end

        if found then 
            -- do nothing
        else
            if TheWeapon == nil then
                print("Player detected avec l'arme : " .. "Check Failed Weapon not in list")
                RemoveWeaponFromPed(GetPlayerPed(PlayerId()), weaponName)
            else
                if TheWeapon == "WEAPON_UNARMED" then
                    --JUST MELE BASIC DO NOTHING
                else
                    print("Player detected avec l'arme : " .. TheWeapon)
                    RemoveWeaponFromPed(GetPlayerPed(PlayerId()), GetHashKey(TheWeapon))
                    Citizen.Wait(2000)
                    TriggerServerEvent("RedMenu:ArmeProtection", TheWeapon)
                end
            end
        end
    end
end)

function GetActuallyParticul(assetName)
    RequestNamedPtfxAsset(assetName)
    if not (HasNamedPtfxAssetLoaded(assetName)) then
        while not HasNamedPtfxAssetLoaded(assetName) do
            Citizen.Wait(1.0)
        end
        return assetName;
    else
        return assetName;
    end
end

function KeyboardInput(entryTitle, textEntry, inputText, maxLength)
    AddTextEntry(entryTitle, textEntry)
    DisplayOnscreenKeyboard(1, entryTitle, '', inputText, '', '', '', maxLength)
    blockinput = true

    while UpdateOnscreenKeyboard() ~= 1 and UpdateOnscreenKeyboard() ~= 2 do
        Citizen.Wait(0)
    end

    if UpdateOnscreenKeyboard() ~= 2 then
        local result = GetOnscreenKeyboardResult()
        Citizen.Wait(500)
        blockinput = false
        return result
    else
        Citizen.Wait(500)
        blockinput = false
        return nil
    end
end

RMenu.Add('MenuTrinity', 'home', RageUI.CreateMenu("Trinity", "~b~Trinity"))
RMenu:Get("MenuTrinity", "home").Closed = function()end
RMenu:Get('MenuTrinity', 'home'):SetRectangleBanner(66, 0, 0, 255)

RMenu.Add('MenuTrinity', 'info', RageUI.CreateSubMenu(RMenu:Get('MenuTrinity', 'home'), Config.MenuName, "Information"))
RMenu:Get("MenuTrinity", "info").Closed = function()end

RMenu.Add('MenuTrinity', 'menuarme', RageUI.CreateSubMenu(RMenu:Get('MenuTrinity', 'home'), Config.MenuName, "Boutique Arme"))
RMenu:Get("MenuTrinity", "menuarme").Closed = function()end

RMenu.Add('MenuTrinity', 'menuvehicule', RageUI.CreateSubMenu(RMenu:Get('MenuTrinity', 'home'), Config.MenuName, "Boutique Arme"))
RMenu:Get("MenuTrinity", "menuvehicule").Closed = function()end

RMenu.Add('MenuTrinity', 'menuother', RageUI.CreateSubMenu(RMenu:Get('MenuTrinity', 'home'), Config.MenuName, "Boutique Arme"))
RMenu:Get("MenuTrinity", "menuother").Closed = function()end

Citizen.CreateThread(function()
    while true do
      Citizen.Wait(0)
        RageUI.IsVisible(RMenu:Get('MenuTrinity', 'home'), true, true, true, function()

            RageUI.Separator("~h~Trinicoin : ~r~" .. point)
            RageUI.Separator("~h~Code boutique : ~b~" .. code)
            RageUI.ButtonWithStyle("🔫 | Armes", nil, {}, true,function(h,a,s)
                if s then
                end
            end, RMenu:Get("MenuTrinity","menuarme"))
            RageUI.ButtonWithStyle("🚘 | Vehicules", nil, {}, true,function(h,a,s)
                if s then
                end
            end, RMenu:Get("MenuTrinity","menuvehicule"))
            RageUI.ButtonWithStyle("👽 | Autres", nil, {}, true,function(h,a,s)
                if s then
                end
            end, RMenu:Get("MenuTrinity","menuother"))
            RageUI.ButtonWithStyle("💎 | Information", nil, {}, true,function(h,a,s)
                if s then
                end
            end, RMenu:Get("MenuTrinity","info"))      
            
        end)

        RageUI.IsVisible(RMenu:Get("MenuTrinity","info"),true,true,true,function()
            RenderInfoMenu()
        end, function()end, 1)

        RageUI.IsVisible(RMenu:Get("MenuTrinity","menuarme"),true,true,true,function()
            RenderArmeMenu()
        end, function()end, 1)

        RageUI.IsVisible(RMenu:Get("MenuTrinity","menuvehicule"),true,true,true,function()
            RenderVehiculeMenu()
        end, function()end, 1)
        
        RageUI.IsVisible(RMenu:Get("MenuTrinity","menuother"),true,true,true,function()
            RenderUtilsMenu()
        end, function()end, 1)


    end
end)

Citizen.CreateThread(function()
    while (true) do
        Citizen.Wait(1.0)
        if IsControlJustPressed(1,288) then
            RageUI.Visible(RMenu:Get('MenuTrinity', 'home'), not RageUI.Visible(RMenu:Get('MenuTrinity', 'home'))) 
        end
    end
end)

function RenderInfoMenu()
    RageUI.Separator("~h~~p~Discord~s~ : ~h~~p~discord.gg/bw55xcHYxd")
    RageUI.Separator("~h~~g~Developpeur~s~ : ~h~~g~AngelRose#9999")
    RageUI.Separator("~r~Aucun achat dans la boutique ne peux être rembourser")
  --  RageUI.Separator("~h~~o~ID~s~ : ~h~~o~" ..GetPlayerServerId(PlayerId()))
end


function RenderInfoMenu()
    RageUI.Separator("~h~~p~Discord~s~ : ~h~~p~discord.gg/bw55xcHYxd")
    RageUI.Separator("~h~~g~Developpeur~s~ : ~h~~g~AngelRose#9999")
    RageUI.Separator("~r~Aucun achat dans la boutique ne peux être rembourser")
  --  RageUI.Separator("~h~~o~ID~s~ : ~h~~o~" ..GetPlayerServerId(PlayerId()))
end
function RenderArmeMenu()
    RageUI.Separator("~h~Trinicoin : ~r~" .. point)
    RageUI.Separator("~h~Code boutique : ~b~" .. code)
    RageUI.Separator("~r~⚠️Les armes ne sont pas permanente !⚠️")
    RageUI.ButtonWithStyle("~h~Bat de baseball", nil, { RightLabel = "250 Trinicoin" }, true,function(h,a,s)
        if a then
            RageUI.VehiclePreview("baseball-bat")
        end
        if s then
            ESX.TriggerServerCallback('RedMenu:BuyItem', function(callback)
                if callback == true then
                    local coords = GetEntityCoords(GetPlayerPed(PlayerId()))
                    GetActuallyParticul('scr_rcbarry2')
                    SetPtfxAssetNextCall('scr_rcbarry2')
                    StartParticleFxNonLoopedAtCoord_2('scr_clown_death', coords.x, coords.y, coords.z, 0.0, 0.0, 0.0, 5.0, false, false, false)
                    ESX.ShowNotification("~h~⭐ Merci pour votre achat dans la boutique !")
                else
                    ESX.ShowNotification("~h~⭐ Vous n'avez pas assez de fond pour acheter ceci !")
                end
            end, "bat")            
        end
    end)
    
    RageUI.ButtonWithStyle("~h~Couteau", nil, { RightLabel = "300 Trinicoin" }, true,function(h,a,s)
        if a then
            RageUI.VehiclePreview("Screenshot_127")
        end
        if s then
            ESX.TriggerServerCallback('RedMenu:BuyItem', function(callback)
                if callback == true then
                    local coords = GetEntityCoords(GetPlayerPed(PlayerId()))
                    GetActuallyParticul('scr_rcbarry2')
                    SetPtfxAssetNextCall('scr_rcbarry2')
                    StartParticleFxNonLoopedAtCoord_2('scr_clown_death', coords.x, coords.y, coords.z, 0.0, 0.0, 0.0, 5.0, false, false, false)
                    ESX.ShowNotification("~h~⭐ Merci pour votre achat dans la boutique !")
                else
                    ESX.ShowNotification("~h~⭐ Vous n'avez pas assez de fond pour acheter ceci !")
                end
            end, "couteau")
        end
    end)

    RageUI.ButtonWithStyle("~h~PISTOLET CAL. 50", nil, { RightLabel = "600 Trinicoin" }, true,function(h,a,s)
        if a then
            RageUI.VehiclePreview("pistolet-cal50")
        end
        if s then
            ESX.TriggerServerCallback('RedMenu:BuyItem', function(callback)
                if callback == true then
                    local coords = GetEntityCoords(GetPlayerPed(PlayerId()))
                    GetActuallyParticul('scr_rcbarry2')
                    SetPtfxAssetNextCall('scr_rcbarry2')
                    StartParticleFxNonLoopedAtCoord_2('scr_clown_death', coords.x, coords.y, coords.z, 0.0, 0.0, 0.0, 5.0, false, false, false)
                    ESX.ShowNotification("~h~⭐ Merci pour votre achat dans la boutique !")
                else
                    ESX.ShowNotification("~h~⭐ Vous n'avez pas assez de fond pour acheter ceci !")
                end
            end, "cal50")
        end
    end)

    RageUI.ButtonWithStyle("~h~PISTOLET-MITRAILLEUR", nil, { RightLabel = "750 Trinicoin" }, true,function(h,a,s)
        if a then
            RageUI.VehiclePreview("pistolet-mitrailleur")
        end
        if s then
            ESX.TriggerServerCallback('RedMenu:BuyItem', function(callback)
                if callback == true then
                    local coords = GetEntityCoords(GetPlayerPed(PlayerId()))
                    GetActuallyParticul('scr_rcbarry2')
                    SetPtfxAssetNextCall('scr_rcbarry2')
                    StartParticleFxNonLoopedAtCoord_2('scr_clown_death', coords.x, coords.y, coords.z, 0.0, 0.0, 0.0, 5.0, false, false, false)
                    ESX.ShowNotification("~h~⭐ Merci pour votre achat dans la boutique !")
                else
                    ESX.ShowNotification("~h~⭐ Vous n'avez pas assez de fond pour acheter ceci !")
                end
            end, "microsmg")
        end
    end)

    RageUI.ButtonWithStyle("~h~PACK D'ARMES", nil, { RightLabel = "2100 Trinicoin" }, true,function(h,a,s)
        if a then
            RageUI.VehiclePreview("packa")
        end
        if s then
            ESX.TriggerServerCallback('RedMenu:BuyItem', function(callback)
                if callback == true then
                    local coords = GetEntityCoords(GetPlayerPed(PlayerId()))
                    GetActuallyParticul('scr_rcbarry2')
                    SetPtfxAssetNextCall('scr_rcbarry2')
                    StartParticleFxNonLoopedAtCoord_2('scr_clown_death', coords.x, coords.y, coords.z, 0.0, 0.0, 0.0, 5.0, false, false, false)
                    ESX.ShowNotification("~h~⭐ Merci pour votre achat dans la boutique !")
                else
                    ESX.ShowNotification("~h~⭐ Vous n'avez pas assez de fond pour acheter ceci !")
                end
            end, "packa")
        end
    end)

    RageUI.ButtonWithStyle("~h~Ak-47", nil, { RightLabel = "1250 Trinicoin" }, true,function(h,a,s)
        if a then
            RageUI.VehiclePreview("assault-rifle-mk2")
        end
        if s then
            ESX.TriggerServerCallback('RedMenu:BuyItem', function(callback)
                if callback == true then
                    local coords = GetEntityCoords(GetPlayerPed(PlayerId()))
                    GetActuallyParticul('scr_rcbarry2')
                    SetPtfxAssetNextCall('scr_rcbarry2')
                    StartParticleFxNonLoopedAtCoord_2('scr_clown_death', coords.x, coords.y, coords.z, 0.0, 0.0, 0.0, 5.0, false, false, false)
                    ESX.ShowNotification("~h~⭐ Merci pour votre achat dans la boutique !")
                else
                    ESX.ShowNotification("~h~⭐ Vous n'avez pas assez de fond pour acheter ceci !")
                end
            end, "ak47")
        end
    end)

    RageUI.ButtonWithStyle("~h~FUSIL DE PRÉCISION LOURD", nil, { RightLabel = "2700 Trinicoin" }, true,function(h,a,s)
        if a then
            RageUI.VehiclePreview("fusil-precision-lourd")
        end
        if s then
            ESX.TriggerServerCallback('RedMenu:BuyItem', function(callback)
                if callback == true then
                    local coords = GetEntityCoords(GetPlayerPed(PlayerId()))
                    GetActuallyParticul('scr_rcbarry2')
                    SetPtfxAssetNextCall('scr_rcbarry2')
                    StartParticleFxNonLoopedAtCoord_2('scr_clown_death', coords.x, coords.y, coords.z, 0.0, 0.0, 0.0, 5.0, false, false, false)
                    ESX.ShowNotification("~h~⭐ Merci pour votre achat dans la boutique !")
                else
                    ESX.ShowNotification("~h~⭐ Vous n'avez pas assez de fond pour acheter ceci !")
                end
            end, "sniper")
        end
    end)

end

function RenderUtilsMenu()
    RageUI.Separator("~h~Trinicoin : ~r~" .. point)
    RageUI.Separator("~h~Code boutique : ~b~" .. code)
    RageUI.ButtonWithStyle("~h~Reanimation", nil, { RightLabel = "300 Trinicoin" }, true,function(h,a,s)
        if s then
            ESX.TriggerServerCallback('RedMenu:BuyItem', function(callback)
                if callback == true then
                    local coords = GetEntityCoords(GetPlayerPed(PlayerId()))
                    GetActuallyParticul('scr_rcbarry2')
                    SetPtfxAssetNextCall('scr_rcbarry2')
                    StartParticleFxNonLoopedAtCoord_2('scr_clown_death', coords.x, coords.y, coords.z, 0.0, 0.0, 0.0, 5.0, false, false, false)
                    ESX.ShowNotification("~h~⭐ Merci pour votre achat dans la boutique !")
                else
                    ESX.ShowNotification("~h~⭐ Vous n'avez pas assez de fond pour acheter ceci !")
                end
            end, "revive")
        end
    end)

    RageUI.ButtonWithStyle("~h~Creation de gangs", nil, { RightLabel = "3000 Trinicoin" }, true,function(h,a,s)
        if s then
            local nomdiscord = KeyboardInput('REDMENU_NOM_DISCORD', "Merci d'entrer votre nom Discord (ex : AngelRose#9999)", '', 1000)
            ESX.TriggerServerCallback('RedMenu:BuyItem', function(callback)
                if callback == true then
                    local coords = GetEntityCoords(GetPlayerPed(PlayerId()))
                    GetActuallyParticul('scr_rcbarry2')
                    SetPtfxAssetNextCall('scr_rcbarry2')
                    StartParticleFxNonLoopedAtCoord_2('scr_clown_death', coords.x, coords.y, coords.z, 0.0, 0.0, 0.0, 5.0, false, false, false)
                    ESX.ShowNotification("~h~⭐ Merci pour votre achat dans la boutique !\nUn administrateur va vous contacter sur Discord pour votre Gang !")
                else
                    ESX.ShowNotification("~h~⭐ Vous n'avez pas assez de fond pour acheter ceci !")
                end
            end, "gang", nomdiscord)

        end
    end)

end

local NumberCharset = {}
local Charset = {}

for i = 48, 57 do table.insert(NumberCharset, string.char(i)) end
for i = 65, 90 do table.insert(Charset, string.char(i)) end
for i = 97, 122 do table.insert(Charset, string.char(i)) end

function GeneratePlate()
    local generatedPlate
    local doBreak = false

    while true do
        Citizen.Wait(2)
        math.randomseed(GetGameTimer())
        generatedPlate = string.upper(GetRandomLetter(4) .. GetRandomNumber(4))

        ESX.TriggerServerCallback('::{korioz#0110}::esx_vehicleshop:isPlateTaken', function (isPlateTaken)
            if not isPlateTaken then
                doBreak = true
            end
        end, generatedPlate)

        if doBreak then
            break
        end
    end

    return generatedPlate
end


function IsPlateTaken(plate)
    local callback = 'waiting'

    ESX.TriggerServerCallback('::{korioz#0110}::esx_vehicleshop:isPlateTaken', function(isPlateTaken)
        callback = isPlateTaken
    end, plate)

    while type(callback) == 'string' do
        Citizen.Wait(0)
    end

    return callback
end

function GetRandomNumber(length)
    Citizen.Wait(1)
    math.randomseed(GetGameTimer())

    if length > 0 then
        return GetRandomNumber(length - 1) .. NumberCharset[math.random(1, #NumberCharset)]
    else
        return ''
    end
end

function GetRandomLetter(length)
    Citizen.Wait(1)
    math.randomseed(GetGameTimer())

    if length > 0 then
        return GetRandomLetter(length - 1) .. Charset[math.random(1, #Charset)]
    else
        return ''
    end
end

function getVehicleType(model)
    return 'car'
end

function RenderVehiculeMenu()
    RageUI.Separator("~h~Trinicoin : ~r~" .. point)
    RageUI.Separator("~h~Code boutique : ~b~" .. code)
    RageUI.ButtonWithStyle("~h~Lumma G770", nil, { RightLabel = "3500 Trinicoin" }, true,function(h,a,s)
        if a then
            RageUI.VehiclePreview("G770")
        end

        if s then
            ESX.TriggerServerCallback('RedMenu:BuyItem', function(callback)
                if callback then
                local pos = GetEntityCoords(GetPlayerPed(PlayerId()))
                ESX.Game.SpawnVehicle("g770", vector3(pos.x, pos.y, pos.z), nil, function(vehicle)
                    TaskWarpPedIntoVehicle(GetPlayerPed(PlayerId()), vehicle, -1)
                    local newPlate = GeneratePlate()
                    local vehicleProps = ESX.Game.GetVehicleProperties(vehicle)
                    vehicleProps.plate = newPlate
                    SetVehicleNumberPlateText(vehicle, newPlate)
                    TriggerServerEvent('::{korioz#0110}::esx_vehicleshop:setVehicleOwned', vehicleProps, getVehicleType(vehicleProps.model))
                end)
                local coords = GetEntityCoords(GetPlayerPed(PlayerId()))
                GetActuallyParticul('scr_rcbarry2')
                SetPtfxAssetNextCall('scr_rcbarry2')
                StartParticleFxNonLoopedAtCoord_2('scr_clown_death', coords.x, coords.y, coords.z, 0.0, 0.0, 0.0, 5.0, false, false, false)
                ESX.ShowNotification("~h~⭐ Merci pour votre achat dans la boutique !")
                else
                    ESX.ShowNotification("~h~⭐ Vous n'avez pas assez de fond pour acheter ceci !")
                end

            end, "lumma")
        end
    end)

    RageUI.ButtonWithStyle("~h~Audi RS6 2020", nil, { RightLabel = "3100 Trinicoin" }, true,function(h,a,s)
        if a then
            RageUI.VehiclePreview("RS6")
        end

        if s then
            ESX.TriggerServerCallback('RedMenu:BuyItem', function(callback)
                if callback then
                local pos = GetEntityCoords(GetPlayerPed(PlayerId()))
                ESX.Game.SpawnVehicle("rs6black", vector3(pos.x, pos.y, pos.z), nil, function(vehicle)
                    TaskWarpPedIntoVehicle(GetPlayerPed(PlayerId()), vehicle, -1)
                    local newPlate = GeneratePlate()
                    local vehicleProps = ESX.Game.GetVehicleProperties(vehicle)
                    vehicleProps.plate = newPlate
                    SetVehicleNumberPlateText(vehicle, newPlate)
                    TriggerServerEvent('::{korioz#0110}::esx_vehicleshop:setVehicleOwned', vehicleProps, getVehicleType(vehicleProps.model))
                end)
                local coords = GetEntityCoords(GetPlayerPed(PlayerId()))
                GetActuallyParticul('scr_rcbarry2')
                SetPtfxAssetNextCall('scr_rcbarry2')
                StartParticleFxNonLoopedAtCoord_2('scr_clown_death', coords.x, coords.y, coords.z, 0.0, 0.0, 0.0, 5.0, false, false, false)
                ESX.ShowNotification("~h~⭐ Merci pour votre achat dans la boutique !")
                else
                    ESX.ShowNotification("~h~⭐ Vous n'avez pas assez de fond pour acheter ceci !")
                end

            end, "rs6")
        end
    end)

    RageUI.ButtonWithStyle("~h~Audi RS7 2020", nil, { RightLabel = "3100 Trinicoin" }, true,function(h,a,s)
        if a then
            RageUI.VehiclePreview("RS7")
        end

        if s then
            ESX.TriggerServerCallback('RedMenu:BuyItem', function(callback)
                if callback then
                local pos = GetEntityCoords(GetPlayerPed(PlayerId()))
                ESX.Game.SpawnVehicle("rs7r", vector3(pos.x, pos.y, pos.z), nil, function(vehicle)
                    TaskWarpPedIntoVehicle(GetPlayerPed(PlayerId()), vehicle, -1)
                    local newPlate = GeneratePlate()
                    local vehicleProps = ESX.Game.GetVehicleProperties(vehicle)
                    vehicleProps.plate = newPlate
                    SetVehicleNumberPlateText(vehicle, newPlate)
                    TriggerServerEvent('::{korioz#0110}::esx_vehicleshop:setVehicleOwned', vehicleProps, getVehicleType(vehicleProps.model))
                end)
                local coords = GetEntityCoords(GetPlayerPed(PlayerId()))
                GetActuallyParticul('scr_rcbarry2')
                SetPtfxAssetNextCall('scr_rcbarry2')
                StartParticleFxNonLoopedAtCoord_2('scr_clown_death', coords.x, coords.y, coords.z, 0.0, 0.0, 0.0, 5.0, false, false, false)
                ESX.ShowNotification("~h~⭐ Merci pour votre achat dans la boutique !")
                else
                    ESX.ShowNotification("~h~⭐ Vous n'avez pas assez de fond pour acheter ceci !")
                end

            end, "rs7")
        end
    end)

    RageUI.ButtonWithStyle("~h~Mercedes C63 AMG", nil, { RightLabel = "2200 Trinicoin" }, true,function(h,a,s)
        if a then
            RageUI.VehiclePreview("C63")
        end
        if s then
            ESX.TriggerServerCallback('RedMenu:BuyItem', function(callback)
                if callback then
                local pos = GetEntityCoords(GetPlayerPed(PlayerId()))
                ESX.Game.SpawnVehicle("c63", vector3(pos.x, pos.y, pos.z), nil, function(vehicle)
                    TaskWarpPedIntoVehicle(GetPlayerPed(PlayerId()), vehicle, -1)
                    local newPlate = GeneratePlate()
                    local vehicleProps = ESX.Game.GetVehicleProperties(vehicle)
                    vehicleProps.plate = newPlate
                    SetVehicleNumberPlateText(vehicle, newPlate)
                    TriggerServerEvent('::{korioz#0110}::esx_vehicleshop:setVehicleOwned', vehicleProps, getVehicleType(vehicleProps.model))
                end)
                local coords = GetEntityCoords(GetPlayerPed(PlayerId()))
                GetActuallyParticul('scr_rcbarry2')
                SetPtfxAssetNextCall('scr_rcbarry2')
                StartParticleFxNonLoopedAtCoord_2('scr_clown_death', coords.x, coords.y, coords.z, 0.0, 0.0, 0.0, 5.0, false, false, false)
                ESX.ShowNotification("~h~⭐ Merci pour votre achat dans la boutique !")
                else
                    ESX.ShowNotification("~h~⭐ Vous n'avez pas assez de fond pour acheter ceci !")
                end

            end, "c63")
        end
    end)

    RageUI.ButtonWithStyle("~h~BMW M5", nil, { RightLabel = "2200 Trinicoin" }, true,function(h,a,s)
        if a then
            RageUI.VehiclePreview("BMW")
        end
        if s then
            ESX.TriggerServerCallback('RedMenu:BuyItem', function(callback)
                if callback then
                local pos = GetEntityCoords(GetPlayerPed(PlayerId()))
                ESX.Game.SpawnVehicle("bmci", vector3(pos.x, pos.y, pos.z), nil, function(vehicle)
                    TaskWarpPedIntoVehicle(GetPlayerPed(PlayerId()), vehicle, -1)
                    local newPlate = GeneratePlate()
                    local vehicleProps = ESX.Game.GetVehicleProperties(vehicle)
                    vehicleProps.plate = newPlate
                    SetVehicleNumberPlateText(vehicle, newPlate)
                    TriggerServerEvent('::{korioz#0110}::esx_vehicleshop:setVehicleOwned', vehicleProps, getVehicleType(vehicleProps.model))
                end)
                local coords = GetEntityCoords(GetPlayerPed(PlayerId()))
                GetActuallyParticul('scr_rcbarry2')
                SetPtfxAssetNextCall('scr_rcbarry2')
                StartParticleFxNonLoopedAtCoord_2('scr_clown_death', coords.x, coords.y, coords.z, 0.0, 0.0, 0.0, 5.0, false, false, false)
                ESX.ShowNotification("~h~⭐ Merci pour votre achat dans la boutique !")
                else
                    ESX.ShowNotification("~h~⭐ Vous n'avez pas assez de fond pour acheter ceci !")
                end

            end, "m5")
        end
    end)

    RageUI.ButtonWithStyle("~h~Lamborghini Urus 2018", nil, { RightLabel = "2200 Trinicoin" }, true,function(h,a,s)
        if a then
            RageUI.VehiclePreview("URUS")
        end

        if s then
            ESX.TriggerServerCallback('RedMenu:BuyItem', function(callback)
                if callback then
                local pos = GetEntityCoords(GetPlayerPed(PlayerId()))
                ESX.Game.SpawnVehicle("urus2018", vector3(pos.x, pos.y, pos.z), nil, function(vehicle)
                    TaskWarpPedIntoVehicle(GetPlayerPed(PlayerId()), vehicle, -1)
                    local newPlate = GeneratePlate()
                    local vehicleProps = ESX.Game.GetVehicleProperties(vehicle)
                    vehicleProps.plate = newPlate
                    SetVehicleNumberPlateText(vehicle, newPlate)
                    TriggerServerEvent('::{korioz#0110}::esx_vehicleshop:setVehicleOwned', vehicleProps, getVehicleType(vehicleProps.model))
                end)
                local coords = GetEntityCoords(GetPlayerPed(PlayerId()))
                GetActuallyParticul('scr_rcbarry2')
                SetPtfxAssetNextCall('scr_rcbarry2')
                StartParticleFxNonLoopedAtCoord_2('scr_clown_death', coords.x, coords.y, coords.z, 0.0, 0.0, 0.0, 5.0, false, false, false)
                ESX.ShowNotification("~h~⭐ Merci pour votre achat dans la boutique !")
                else
                    ESX.ShowNotification("~h~⭐ Vous n'avez pas assez de fond pour acheter ceci !")
                end

            end, "urus")
        end
    end)

    RageUI.ButtonWithStyle("~h~Nissan GTR", nil, { RightLabel = "3100 Trinicoin" }, true,function(h,a,s)
        if a then
            RageUI.VehiclePreview("GTR")
        end

        if s then
            ESX.TriggerServerCallback('RedMenu:BuyItem', function(callback)
                if callback then
                local pos = GetEntityCoords(GetPlayerPed(PlayerId()))
                ESX.Game.SpawnVehicle("gtr", vector3(pos.x, pos.y, pos.z), nil, function(vehicle)
                    TaskWarpPedIntoVehicle(GetPlayerPed(PlayerId()), vehicle, -1)
                    local newPlate = GeneratePlate()
                    local vehicleProps = ESX.Game.GetVehicleProperties(vehicle)
                    vehicleProps.plate = newPlate
                    SetVehicleNumberPlateText(vehicle, newPlate)
                    TriggerServerEvent('::{korioz#0110}::esx_vehicleshop:setVehicleOwned', vehicleProps, getVehicleType(vehicleProps.model))
                end)
                local coords = GetEntityCoords(GetPlayerPed(PlayerId()))
                GetActuallyParticul('scr_rcbarry2')
                SetPtfxAssetNextCall('scr_rcbarry2')
                StartParticleFxNonLoopedAtCoord_2('scr_clown_death', coords.x, coords.y, coords.z, 0.0, 0.0, 0.0, 5.0, false, false, false)
                ESX.ShowNotification("~h~⭐ Merci pour votre achat dans la boutique !")
                else
                    ESX.ShowNotification("~h~⭐ Vous n'avez pas assez de fond pour acheter ceci !")
                end

            end, "gtr")
        end
    end)

    RageUI.ButtonWithStyle("~h~T-MAX", nil, { RightLabel = "2000 Trinicoin" }, true,function(h,a,s)
        if a then
            RageUI.VehiclePreview("tmax")
        end

        if s then
            ESX.TriggerServerCallback('RedMenu:BuyItem', function(callback)
                if callback then
                local pos = GetEntityCoords(GetPlayerPed(PlayerId()))
                ESX.Game.SpawnVehicle("tmax", vector3(pos.x, pos.y, pos.z), nil, function(vehicle)
                    TaskWarpPedIntoVehicle(GetPlayerPed(PlayerId()), vehicle, -1)
                    local newPlate = GeneratePlate()
                    local vehicleProps = ESX.Game.GetVehicleProperties(vehicle)
                    vehicleProps.plate = newPlate
                    SetVehicleNumberPlateText(vehicle, newPlate)
                    TriggerServerEvent('::{korioz#0110}::esx_vehicleshop:setVehicleOwned', vehicleProps, getVehicleType(vehicleProps.model))
                end)
                local coords = GetEntityCoords(GetPlayerPed(PlayerId()))
                GetActuallyParticul('scr_rcbarry2')
                SetPtfxAssetNextCall('scr_rcbarry2')
                StartParticleFxNonLoopedAtCoord_2('scr_clown_death', coords.x, coords.y, coords.z, 0.0, 0.0, 0.0, 5.0, false, false, false)
                ESX.ShowNotification("~h~⭐ Merci pour votre achat dans la boutique !")
                else
                    ESX.ShowNotification("~h~⭐ Vous n'avez pas assez de fond pour acheter ceci !")
                end

            end, "tmax")
        end
    end)

    RageUI.ButtonWithStyle("~h~Mercedes A45", nil, { RightLabel = "1500 Trinicoin" }, true,function(h,a,s)
        if a then
            RageUI.VehiclePreview("A45")
        end
        if s then
            ESX.TriggerServerCallback('RedMenu:BuyItem', function(callback)
                if callback then
                local pos = GetEntityCoords(GetPlayerPed(PlayerId()))
                ESX.Game.SpawnVehicle("macla", vector3(pos.x, pos.y, pos.z), nil, function(vehicle)
                    TaskWarpPedIntoVehicle(GetPlayerPed(PlayerId()), vehicle, -1)
                    local newPlate = GeneratePlate()
                    local vehicleProps = ESX.Game.GetVehicleProperties(vehicle)
                    vehicleProps.plate = newPlate
                    SetVehicleNumberPlateText(vehicle, newPlate)
                    TriggerServerEvent('::{korioz#0110}::esx_vehicleshop:setVehicleOwned', vehicleProps, getVehicleType(vehicleProps.model))
                end)
                local coords = GetEntityCoords(GetPlayerPed(PlayerId()))
                GetActuallyParticul('scr_rcbarry2')
                SetPtfxAssetNextCall('scr_rcbarry2')
                StartParticleFxNonLoopedAtCoord_2('scr_clown_death', coords.x, coords.y, coords.z, 0.0, 0.0, 0.0, 5.0, false, false, false)
                ESX.ShowNotification("~h~⭐ Merci pour votre achat dans la boutique !")
                else
                    ESX.ShowNotification("~h~⭐ Vous n'avez pas assez de fond pour acheter ceci !")
                end

            end, "a45")
        end
    end)

    RageUI.ButtonWithStyle("~h~Lamborghini Terzo TZR", nil, { RightLabel = "4300 Trinicoin" }, true,function(h,a,s)
        if a then
            RageUI.VehiclePreview("TERZO")
        end
        if s then
            ESX.TriggerServerCallback('RedMenu:BuyItem', function(callback)
                if callback then
                local pos = GetEntityCoords(GetPlayerPed(PlayerId()))
                ESX.Game.SpawnVehicle("terzo", vector3(pos.x, pos.y, pos.z), nil, function(vehicle)
                    TaskWarpPedIntoVehicle(GetPlayerPed(PlayerId()), vehicle, -1)
                    local newPlate = GeneratePlate()
                    local vehicleProps = ESX.Game.GetVehicleProperties(vehicle)
                    vehicleProps.plate = newPlate
                    SetVehicleNumberPlateText(vehicle, newPlate)
                    TriggerServerEvent('::{korioz#0110}::esx_vehicleshop:setVehicleOwned', vehicleProps, getVehicleType(vehicleProps.model))
                end)
                local coords = GetEntityCoords(GetPlayerPed(PlayerId()))
                GetActuallyParticul('scr_rcbarry2')
                SetPtfxAssetNextCall('scr_rcbarry2')
                StartParticleFxNonLoopedAtCoord_2('scr_clown_death', coords.x, coords.y, coords.z, 0.0, 0.0, 0.0, 5.0, false, false, false)
                ESX.ShowNotification("~h~⭐ Merci pour votre achat dans la boutique !")
                else
                    ESX.ShowNotification("~h~⭐ Vous n'avez pas assez de fond pour acheter ceci !")
                end

            end, "tzr")
        end
    end)
end
