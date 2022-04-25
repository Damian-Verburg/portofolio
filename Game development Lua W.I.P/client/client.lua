local QBCore = exports['qb-core']:GetCoreObject()
local ishit = false
local laptop = 0
local code = 0


--exports 
exports['qb-target']:AddBoxZone("firsthack", vector3(3084.286, -4685.87, 26.943), 0.5, 0.5, {
    name = "firsthack",
    heading = 30.0,
    debugPoly = false,
    minZ = 26.943,
    maxZ = 27.1967,
    }, {
        options = {
            {
                event = 'thrust-hacklaptop1',
                icon = "fas fa-circle",
                label = 'hack',
                },
        },
        distance = 2.5
})

RegisterNetEvent('thrust-hacklaptop1', function(laptopData) --first hack
    if ishit == false then
        exports['hacking']:OpenHackingGame(Config.FirstTime, Config.FirstBlocks, Config.FirstRepeat, function(bool) -- Trigger Mini Game
            if bool then
                QBCore.Functions.Notify("Succes!", "success")
                ishit = true
            laptop = math.random(1, 2)
                if laptop == 1 then
                    TriggerEvent("thrust-mail")
                end
            else
                QBCore.Functions.Notify("You suck!", "error")
            end
        end)
    else 
        QBCore.Functions.Notify("This has already been done!", "success")
    end
end)

RegisterNetEvent('thrust-hacklaptop2', function(laptopData) --second hack
    if ishit == false then
        exports['hacking']:OpenHackingGame(Config.SecondTime, Config.SecondBlocks, Config.SecondRepeat, function(bool) -- Trigger Mini Game
            if bool then
                QBCore.Functions.Notify("Succes!", "success")
            
            else
                QBCore.Functions.Notify("You suck!", "error")
            end
        end)
    else 
        QBCore.Functions.Notify("This has already been done!", "success")
    end
end)

RegisterNetEvent('thrust-mail', function(amount) --sending the random laptop mail
    if laptop == 1 then
        SetTimeout(math.random(2500, 4000), function()
            TriggerServerEvent('qb-phone:server:sendNewMail', {
                sender = "UNKNOWN",
                subject = "LAPTOP",
                message = "Good job, now get the left laptop",
                button = {}
            })
        end)
        exports['qb-target']:AddBoxZone("hackleft", vector3(3094.0144, -4724.2377, 26.943), 0.5, 0.5, {
            name = "hackleft",
            heading = 30.0,
            debugPoly = false,
            minZ = 26.943,
            maxZ = 27.1967,
            }, {
                options = {
                    {
                        event = 'thrust-hacklaptop2',
                        icon = "fas fa-circle",
                        label = 'hack',
                        },
                },
                distance = 2.5
        })
    elseif laptop == 2 then
        SetTimeout(math.random(2500, 4000), function()
            TriggerServerEvent('qb-phone:server:sendNewMail', {
                sender = "UNKNOWN",
                subject = "LAPTOP",
                message = "Good job, now get the right laptop",
                button = {}
            })
        end)
        exports['qb-target']:AddBoxZone("hackright", vector3(3089.6989, -4725.4863, 26.943), 0.5, 0.5, {
            name = "hackright",
            heading = 30.0,
            debugPoly = false,
            minZ = 26.943,
            maxZ = 27.1967,
            }, {
                options = {
                    {
                        event = 'thrust-hacklaptop2',
                        icon = "fas fa-circle",
                        label = 'hack',
                        },
                },
                distance = 2.5
        })
    end
end)

