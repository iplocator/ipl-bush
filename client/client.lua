local QBCore = exports['qb-core']:GetCoreObject()
local Bush = nil
local boneIndex = 24816
local isBushActive = false
local hasBushFadedIn = false

function FadeInObject(obj, fadeInTime)
    local alpha = 0
    SetEntityAlpha(obj, alpha)
    while alpha < 255 do
        Citizen.Wait(fadeInTime / 255)
        alpha = alpha + 5
        SetEntityAlpha(obj, alpha)
    end
end

function FadeOutObject(obj, fadeOutTime)
    local alpha = 255
    SetEntityAlpha(obj, alpha)
    while alpha > 0 do
        Citizen.Wait(fadeOutTime / 255)
        alpha = alpha - 5
        SetEntityAlpha(obj, alpha)
    end
    DeleteEntity(obj)
end

RegisterNetEvent("ipl-bush:interact")
AddEventHandler("ipl-bush:interact", function()
    if not isBushActive then
        isBushActive = true
        if Bush == nil then
            Bush = CreateObject(GetHashKey("prop_bush_med_03"), 0, 0, 0, true, true, true) -- creates object
            while not DoesEntityExist(Bush) do
                Citizen.Wait(0)
            end
        end
        if not hasBushFadedIn then
            hasBushFadedIn = true
            AttachEntityToEntity(Bush, GetPlayerPed(-1), boneIndex, 0.0, 0.0, -0.9, 0, 0.0, 0.0, true, true, false, true, 1, true) -- object is attached to bone
            FadeInObject(Bush, 100) -- fades object in
        else
            AttachEntityToEntity(Bush, GetPlayerPed(-1), boneIndex, 0.0, 0.0, -0.9, 0, 0.0, 0.0, true, true, false, true, 1, true) -- object is attached to bone
            SetEntityAlpha(Bush, 255)
        end
    else
        isBushActive = false
        if hasBushFadedIn then
            hasBushFadedIn = false
            FadeOutObject(Bush, 100) -- fades object out
            Citizen.Wait(100)
            DeleteEntity(Bush) -- deletes Bush
            Bush = nil
        end
    end
end)
