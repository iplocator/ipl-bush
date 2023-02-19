
local QBCore = exports['qb-core']:GetCoreObject()

QBCore.Functions.CreateUseableItem("bush", function(source, item)
    TriggerClientEvent("ipl-bush:interact", source)
end)