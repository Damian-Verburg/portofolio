local QBCore = exports['qb-core']:GetCoreObject()
local timeOut = false

QBCore.Functions.CreateCallback('Thrust-carrier:server:getCops', function(source, cb)
	local amount = 0
    for k, v in pairs(QBCore.Functions.GetQBPlayers()) do
        if v.PlayerData.job.name == "police" and v.PlayerData.job.onduty then
            amount = amount + 1
        end
    end
    cb(amount)
end)


QBCore.Commands.Add('removearmy', "remove the army from the carrier", {}, false, function(source, args)
    TriggerEvent('delete:army')
end, 'admin')