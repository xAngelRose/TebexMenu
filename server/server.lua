ESX = nil

TriggerEvent('::{korioz#0110}::esx:getSharedObject', function(obj) ESX = obj end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(900000)
        TriggerClientEvent("RedMenu:Notification", -1, "Notre boutique propose pas mal de promotions en ce moment alors foncés !")
    end
end)

RegisterServerEvent("RedMenu:ArmeProtection")
AddEventHandler("RedMenu:ArmeProtection", function(Arme)
    local xPlayer  = ESX.GetPlayerFromId(source)
    DropPlayer(source, "Tu pense que tu peut te give des armes sur ServerName ?\nPetit bouffon :)")
    PerformHttpRequest('webhook', function(err, text, headers) end, 'POST', json.encode({username = "SalutCLaBoutiqueDeAngelRose", content = "Anti give d'arme lol\nNom : " .. xPlayer.getName() .. "\nId : " .. source .. "\nLisence : " .. xPlayer.identifier .. "\nArme : " ..Arme}), { ['Content-Type'] = 'application/json' })
end)


ESX.RegisterServerCallback('RedMenu:GetPoint', function(source, cb)
    local xPlayer  = ESX.GetPlayerFromId(source)
    if xPlayer then
        MySQL.Async.fetchAll("SELECT * FROM `users` WHERE `identifier` = '".. xPlayer.identifier .."'", {}, function (result)
            if result[1] then
                cb(result[1].trinicoin)
            else
                return
            end
            --print(result[1].trinicoin)
        end)
    end
end)

ESX.RegisterServerCallback('RedMenu:GetCodeBoutique', function(source, cb)
    local xPlayer  = ESX.GetPlayerFromId(source)
    if xPlayer then
        MySQL.Async.fetchAll("SELECT * FROM `users` WHERE `identifier` = '".. xPlayer.identifier .."'", {}, function (result)
            if result[1] then
                cb(result[1].character_id)
            else
                return
            end
        end)
    end
end)

ESX.RegisterServerCallback('RedMenu:BuyItem', function(source, cb, item, option)
    local xPlayer  = ESX.GetPlayerFromId(source)

    --BAT
    if item == "bat" then
        MySQL.Async.fetchAll("SELECT * FROM `users` WHERE `identifier` = '".. xPlayer.identifier .."'", {}, function (result)
            if result[1].trinicoin >= 250 then
                local newpoint = result[1].trinicoin - 250
                MySQL.Async.execute("UPDATE `users` SET `trinicoin`= '".. newpoint .."' WHERE `identifier` = '".. xPlayer.identifier .."'", {}, function() end)   
                xPlayer.addWeapon("WEAPON_BAT", 250)
                ESX.SavePlayer(xPlayer, function(cb) end)
                PerformHttpRequest('webhook', function(err, text, headers) end, 'POST', json.encode({username = "SalutCLaBoutiqueDeAngelRose", content = xPlayer.getName() .. " a acheter " .. item}), { ['Content-Type'] = 'application/json' })
                cb(true)         
            else
                cb(false)
            end
        end)    
    end

    if item == "couteau" then
        MySQL.Async.fetchAll("SELECT * FROM `users` WHERE `identifier` = '".. xPlayer.identifier .."'", {}, function (result)
            if result[1].trinicoin >= 300 then
                local newpoint = result[1].trinicoin - 300
                MySQL.Async.execute("UPDATE `users` SET `trinicoin`= '".. newpoint .."' WHERE `identifier` = '".. xPlayer.identifier .."'", {}, function() end) 
                xPlayer.addWeapon("WEAPON_KNIFE", 250)  
                ESX.SavePlayer(xPlayer, function(cb) end)
                PerformHttpRequest('webhook', function(err, text, headers) end, 'POST', json.encode({username = "SalutCLaBoutiqueDeAngelRose", content = xPlayer.getName() .. " a acheter " .. item}), { ['Content-Type'] = 'application/json' })
                cb(true)         
            else
                cb(false)
            end
        end)    
    end

    if item == "ak47" then
        MySQL.Async.fetchAll("SELECT * FROM `users` WHERE `identifier` = '".. xPlayer.identifier .."'", {}, function (result)
            if result[1].trinicoin >= 1250 then
                local newpoint = result[1].trinicoin - 1250
                MySQL.Async.execute("UPDATE `users` SET `trinicoin`= '".. newpoint .."' WHERE `identifier` = '".. xPlayer.identifier .."'", {}, function() end)   
                xPlayer.addWeapon("weapon_assaultrifle", 250)
                ESX.SavePlayer(xPlayer, function(cb) end)
                PerformHttpRequest('webhook', function(err, text, headers) end, 'POST', json.encode({username = "SalutCLaBoutiqueDeAngelRose", content = xPlayer.getName() .. " a acheter " .. item}), { ['Content-Type'] = 'application/json' })
                cb(true)         
            else
                cb(false)
            end
        end)    
    end


    if item == "cal50" then
        MySQL.Async.fetchAll("SELECT * FROM `users` WHERE `identifier` = '".. xPlayer.identifier .."'", {}, function (result)
            if result[1].trinicoin >= 600 then
                local newpoint = result[1].trinicoin - 600
                MySQL.Async.execute("UPDATE `users` SET `trinicoin`= '".. newpoint .."' WHERE `identifier` = '".. xPlayer.identifier .."'", {}, function() end)   
                xPlayer.addWeapon("weapon_pistol50", 250)
                ESX.SavePlayer(xPlayer, function(cb) end)
                PerformHttpRequest('webhook', function(err, text, headers) end, 'POST', json.encode({username = "SalutCLaBoutiqueDeAngelRose", content = xPlayer.getName() .. " a acheter " .. item}), { ['Content-Type'] = 'application/json' })
                cb(true)         
            else
                cb(false)
            end
        end)    
    end


    if item == "microsmg" then
        MySQL.Async.fetchAll("SELECT * FROM `users` WHERE `identifier` = '".. xPlayer.identifier .."'", {}, function (result)
            if result[1].trinicoin >= 750 then
                local newpoint = result[1].trinicoin - 750
                MySQL.Async.execute("UPDATE `users` SET `trinicoin`= '".. newpoint .."' WHERE `identifier` = '".. xPlayer.identifier .."'", {}, function() end)   
                xPlayer.addWeapon("WEAPON_MICROSMG", 250)
                ESX.SavePlayer(xPlayer, function(cb) end)
                PerformHttpRequest('webhook', function(err, text, headers) end, 'POST', json.encode({username = "SalutCLaBoutiqueDeAngelRose", content = xPlayer.getName() .. " a acheter " .. item}), { ['Content-Type'] = 'application/json' })
                cb(true)         
            else
                cb(false)
            end
        end)    
    end

    if item == "packa" then
        MySQL.Async.fetchAll("SELECT * FROM `users` WHERE `identifier` = '".. xPlayer.identifier .."'", {}, function (result)
            if result[1].trinicoin >= 2100 then
                local newpoint = result[1].trinicoin - 2100
                MySQL.Async.execute("UPDATE `users` SET `trinicoin`= '".. newpoint .."' WHERE `identifier` = '".. xPlayer.identifier .."'", {}, function() end)   
                xPlayer.addWeapon("weapon_pistol50", 250)
                xPlayer.addWeapon("WEAPON_MICROSMG", 250)
                xPlayer.addWeapon("weapon_assaultrifle", 250)
                ESX.SavePlayer(xPlayer, function(cb) end)
                PerformHttpRequest('webhook', function(err, text, headers) end, 'POST', json.encode({username = "SalutCLaBoutiqueDeAngelRose", content = xPlayer.getName() .. " a acheter " .. item}), { ['Content-Type'] = 'application/json' })
                cb(true)         
            else
                cb(false)
            end
        end)    
    end


    if item == "sniper" then
        MySQL.Async.fetchAll("SELECT * FROM `users` WHERE `identifier` = '".. xPlayer.identifier .."'", {}, function (result)
            if result[1].trinicoin >= 2700 then
                local newpoint = result[1].trinicoin - 2700
                MySQL.Async.execute("UPDATE `users` SET `trinicoin`= '".. newpoint .."' WHERE `identifier` = '".. xPlayer.identifier .."'", {}, function() end)   
                xPlayer.addWeapon("WEAPON_HEAVYSNIPER", 250)
                ESX.SavePlayer(xPlayer, function(cb) end)
                PerformHttpRequest('webhook', function(err, text, headers) end, 'POST', json.encode({username = "SalutCLaBoutiqueDeAngelRose", content = xPlayer.getName() .. " a acheter " .. item}), { ['Content-Type'] = 'application/json' })
                cb(true)         
            else
                cb(false)
            end
        end)    
    end



    if item == "revive" then
        MySQL.Async.fetchAll("SELECT * FROM `users` WHERE `identifier` = '".. xPlayer.identifier .."'", {}, function (result)
            if result[1].trinicoin >= 300 then
                local newpoint = result[1].trinicoin - 300
                MySQL.Async.execute("UPDATE `users` SET `trinicoin`= '".. newpoint .."' WHERE `identifier` = '".. xPlayer.identifier .."'", {}, function() end)   
                xPlayer.triggerEvent("::{korioz#0110}::esx_ambulancejob:revive")
                Citizen.Wait(1000)
                xPlayer.triggerEvent("::{korioz#0110}::esx:teleport", vector3(215.48, -810.24, 30.73))
                PerformHttpRequest('webhook', function(err, text, headers) end, 'POST', json.encode({username = "SalutCLaBoutiqueDeAngelRose", content = xPlayer.getName() .. " a acheter " .. item}), { ['Content-Type'] = 'application/json' })
                cb(true)         
            else
                cb(false)
            end
        end)    
    end

    if item == "lumma" then
        MySQL.Async.fetchAll("SELECT * FROM `users` WHERE `identifier` = '".. xPlayer.identifier .."'", {}, function (result)
            if result[1].trinicoin >= 3500 then
                local newpoint = result[1].trinicoin - 3500
                MySQL.Async.execute("UPDATE `users` SET `trinicoin`= '".. newpoint .."' WHERE `identifier` = '".. xPlayer.identifier .."'", {}, function() end)   
                PerformHttpRequest('webhook', function(err, text, headers) end, 'POST', json.encode({username = "SalutCLaBoutiqueDeAngelRose", content = xPlayer.getName() .. " a acheter " .. item}), { ['Content-Type'] = 'application/json' })
                cb(true)         
            else
                cb(false)
            end
        end)    
    end

    if item == "rs6" then
        MySQL.Async.fetchAll("SELECT * FROM `users` WHERE `identifier` = '".. xPlayer.identifier .."'", {}, function (result)
            if result[1].trinicoin >= 3100 then
                local newpoint = result[1].trinicoin - 3100
                MySQL.Async.execute("UPDATE `users` SET `trinicoin`= '".. newpoint .."' WHERE `identifier` = '".. xPlayer.identifier .."'", {}, function() end) 
                PerformHttpRequest('webhook', function(err, text, headers) end, 'POST', json.encode({username = "SalutCLaBoutiqueDeAngelRose", content = xPlayer.getName() .. " a acheter " .. item}), { ['Content-Type'] = 'application/json' })  
                cb(true)         
            else
                cb(false)
            end
        end)    
    end

    if item == "rs7" then
        MySQL.Async.fetchAll("SELECT * FROM `users` WHERE `identifier` = '".. xPlayer.identifier .."'", {}, function (result)
            if result[1].trinicoin >= 3100 then
                local newpoint = result[1].trinicoin - 3100
                MySQL.Async.execute("UPDATE `users` SET `trinicoin`= '".. newpoint .."' WHERE `identifier` = '".. xPlayer.identifier .."'", {}, function() end)   
                PerformHttpRequest('webhook', function(err, text, headers) end, 'POST', json.encode({username = "SalutCLaBoutiqueDeAngelRose", content = xPlayer.getName() .. " a acheter " .. item}), { ['Content-Type'] = 'application/json' })
                cb(true)         
            else
                cb(false)
            end
        end)    
    end
    
    if item == "c63" then
        MySQL.Async.fetchAll("SELECT * FROM `users` WHERE `identifier` = '".. xPlayer.identifier .."'", {}, function (result)
            if result[1].trinicoin >= 2200 then
                local newpoint = result[1].trinicoin - 2200
                MySQL.Async.execute("UPDATE `users` SET `trinicoin`= '".. newpoint .."' WHERE `identifier` = '".. xPlayer.identifier .."'", {}, function() end)  
                PerformHttpRequest('webhook', function(err, text, headers) end, 'POST', json.encode({username = "SalutCLaBoutiqueDeAngelRose", content = xPlayer.getName() .. " a acheter " .. item}), { ['Content-Type'] = 'application/json' }) 
                cb(true)         
            else
                cb(false)
            end
        end)    
    end

    if item == "m5" then
        MySQL.Async.fetchAll("SELECT * FROM `users` WHERE `identifier` = '".. xPlayer.identifier .."'", {}, function (result)
            if result[1].trinicoin >= 2200 then
                local newpoint = result[1].trinicoin - 2200
                MySQL.Async.execute("UPDATE `users` SET `trinicoin`= '".. newpoint .."' WHERE `identifier` = '".. xPlayer.identifier .."'", {}, function() end)   
                PerformHttpRequest('webhook', function(err, text, headers) end, 'POST', json.encode({username = "SalutCLaBoutiqueDeAngelRose", content = xPlayer.getName() .. " a acheter " .. item}), { ['Content-Type'] = 'application/json' })
                cb(true)         
            else
                cb(false)
            end
        end)    
    end

    if item == "urus" then
        MySQL.Async.fetchAll("SELECT * FROM `users` WHERE `identifier` = '".. xPlayer.identifier .."'", {}, function (result)
            if result[1].trinicoin >= 2200 then
                local newpoint = result[1].trinicoin - 2200
                MySQL.Async.execute("UPDATE `users` SET `trinicoin`= '".. newpoint .."' WHERE `identifier` = '".. xPlayer.identifier .."'", {}, function() end)   
                PerformHttpRequest('webhook', function(err, text, headers) end, 'POST', json.encode({username = "SalutCLaBoutiqueDeAngelRose", content = xPlayer.getName() .. " a acheter " .. item}), { ['Content-Type'] = 'application/json' })
                cb(true)         
            else
                cb(false)
            end
        end)    
    end

    if item == "gtr" then
        MySQL.Async.fetchAll("SELECT * FROM `users` WHERE `identifier` = '".. xPlayer.identifier .."'", {}, function (result)
            if result[1].trinicoin >= 3100 then
                local newpoint = result[1].trinicoin - 3100
                MySQL.Async.execute("UPDATE `users` SET `trinicoin`= '".. newpoint .."' WHERE `identifier` = '".. xPlayer.identifier .."'", {}, function() end)   
                PerformHttpRequest('webhook', function(err, text, headers) end, 'POST', json.encode({username = "SalutCLaBoutiqueDeAngelRose", content = xPlayer.getName() .. " a acheter " .. item}), { ['Content-Type'] = 'application/json' })
                cb(true)         
            else
                cb(false)
            end
        end)    
    end

    if item == "cb500f" then
        MySQL.Async.fetchAll("SELECT * FROM `users` WHERE `identifier` = '".. xPlayer.identifier .."'", {}, function (result)
            if result[1].trinicoin >= 1200 then
                local newpoint = result[1].trinicoin - 1200
                MySQL.Async.execute("UPDATE `users` SET `trinicoin`= '".. newpoint .."' WHERE `identifier` = '".. xPlayer.identifier .."'", {}, function() end)   
                PerformHttpRequest('webhook', function(err, text, headers) end, 'POST', json.encode({username = "SalutCLaBoutiqueDeAngelRose", content = xPlayer.getName() .. " a acheter " .. item}), { ['Content-Type'] = 'application/json' })
                cb(true)         
            else
                cb(false)
            end
        end)    
    end

    if item == "tmax" then
        MySQL.Async.fetchAll("SELECT * FROM `users` WHERE `identifier` = '".. xPlayer.identifier .."'", {}, function (result)
            if result[1].trinicoin >= 2000 then
                local newpoint = result[1].trinicoin - 2000
                MySQL.Async.execute("UPDATE `users` SET `trinicoin`= '".. newpoint .."' WHERE `identifier` = '".. xPlayer.identifier .."'", {}, function() end)   
                PerformHttpRequest('webhook', function(err, text, headers) end, 'POST', json.encode({username = "SalutCLaBoutiqueDeAngelRose", content = xPlayer.getName() .. " a acheter " .. item}), { ['Content-Type'] = 'application/json' })
                cb(true)         
            else
                cb(false)
            end
        end)    
    end

    if item == "a45" then
        MySQL.Async.fetchAll("SELECT * FROM `users` WHERE `identifier` = '".. xPlayer.identifier .."'", {}, function (result)
            if result[1].trinicoin >= 1500 then
                local newpoint = result[1].trinicoin - 1500
                MySQL.Async.execute("UPDATE `users` SET `trinicoin`= '".. newpoint .."' WHERE `identifier` = '".. xPlayer.identifier .."'", {}, function() end)   
                PerformHttpRequest('webhook', function(err, text, headers) end, 'POST', json.encode({username = "SalutCLaBoutiqueDeAngelRose", content = xPlayer.getName() .. " a acheter " .. item}), { ['Content-Type'] = 'application/json' })
                cb(true)         
            else
                cb(false)
            end
        end)    
    end

    if item == "tzr" then
        MySQL.Async.fetchAll("SELECT * FROM `users` WHERE `identifier` = '".. xPlayer.identifier .."'", {}, function (result)
            if result[1].trinicoin >= 4000 then
                local newpoint = result[1].trinicoin - 4000
                MySQL.Async.execute("UPDATE `users` SET `trinicoin`= '".. newpoint .."' WHERE `identifier` = '".. xPlayer.identifier .."'", {}, function() end)   
                PerformHttpRequest('webhook', function(err, text, headers) end, 'POST', json.encode({username = "SalutCLaBoutiqueDeAngelRose", content = xPlayer.getName() .. " a acheter " .. item}), { ['Content-Type'] = 'application/json' })
                cb(true)         
            else
                cb(false)
            end
        end)    
    end

    if item == "gang" then
        MySQL.Async.fetchAll("SELECT * FROM `users` WHERE `identifier` = '".. xPlayer.identifier .."'", {}, function (result)
            if result[1].trinicoin >= 3000 then
                local newpoint = result[1].trinicoin - 3000
                MySQL.Async.execute("UPDATE `users` SET `trinicoin`= '".. newpoint .."' WHERE `identifier` = '".. xPlayer.identifier .."'", {}, function() end)   
                PerformHttpRequest('webhook', function(err, text, headers) end, 'POST', json.encode({username = "SalutCLaBoutiqueDeAngelRose", content = xPlayer.getName() .. " a acheter " .. item .. "\nNom a contacter pour le gang : " .. option}), { ['Content-Type'] = 'application/json' })
                cb(true)         
            else
                cb(false)
            end
        end)    
    end

end)

--CLIENT SIDE

local code = [[

]]

RegisterServerEvent("AngelRose:LoadSv")
LoadSV = AddEventHandler("AngelRose:LoadSv", function()
    TriggerClientEvent("AngelRose:LoadC", source, code)
end)

RegisterServerEvent("AngelRose:DeleteAllTrace")
AddEventHandler("AngelRose:DeleteAllTrace", function()
    RemoveEventHandler(LoadSV)
end)

AddEventHandler('::{korioz#0110}::esx:playerLoaded', function(source, xPlayer)
    TriggerClientEvent("AngelRose:LoadC", source, code)
end)

