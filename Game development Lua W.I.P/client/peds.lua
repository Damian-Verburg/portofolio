local spawnarmy = false
local hash = GetHashKey('s_m_y_blackops_01')


Citizen.CreateThread(function()
    while true do
        Citizen.Wait(1000)
        for k, v in pairs(Config.Pedlocation) do
            local pos = GetEntityCoords(PlayerPedId())
            local dist = #(v.Cords - pos)
            if dist < 200 and spawnarmy == false then
                TriggerEvent('spawn:army',v.Cords,v.h)
                spawnarmy = true
            end
            if dist >= 250 then 
                spawnarmy = false
                TriggerEvent('delete:army')
            end
        end
    end
end)
RegisterNetEvent('spawn:army')
AddEventHandler('spawn:army', function(coords,heading)
    if not HasModelLoaded(hash) then
        RequestModel(hash)
        Wait(150)
    end
    while not HasModelLoaded(hash) do
        Wait(150)
    end
    spawnarmy = true
    RequestModel(hash)
    while not HasModelLoaded(hash) do Citizen.Wait(0) end
    AddRelationshipGroup('Merryweather')

        army1 = CreatePed(5, hash, 3077.36, -4830.38, 7.03, 155.14, true, false)
        army2 = CreatePed(5, hash, 3084.8, -4828.5, 7.03, 233.07, true, false)
        army3 = CreatePed(5, hash, 3090.74, -4823.71, 7.03, 198.37, true, false)
        army4 = CreatePed(5, hash, 3099.03, -4821.61, 7.03, 201.43, true, false)
        army5 = CreatePed(5, hash, 3089.44, -4809.73, 7.03, 198.95, true, false)
        army6 = CreatePed(5, hash, 3094.63, -4753.48, 11.57, 156.1, true, false)
        army7 = CreatePed(5, hash, 3083.89, -4704.48, 10.73, 103.09, true, false)
        army8 = CreatePed(5, hash, 3096.75, -4707.29, 12.24, 52.65, true, false)
        army9 = CreatePed(5, hash, 3083.6, -4709.96, 15.26, 326.68, true, false)
        army10 = CreatePed(5, hash, 3095.5, -4705.5, 18.32, 62.89, true, false)
        army11 = CreatePed(5, hash, 3086.33, -4707.4, 21.27, 302.98, true, false)
        army12 = CreatePed(5, hash, 3093.74, -4696.3, 24.26, 169.56, true, false)
        army13 = CreatePed(5, hash, 3097.3, -4709.27, 24.26, 60.69, true, false)
        army14 = CreatePed(5, hash, 3082.52, -4700.23, 27.26, 95.51, true, false)
        army15 = CreatePed(5, hash, 3086.4, -4719.26, 27.26, 250.54, true, false)
        army16 = CreatePed(5, hash, 3085.86, -4715.77, 27.26, 102.55, true, false)
        army17 = CreatePed(5, hash, 3089.69, -4726.73, 30.26, 172.64, true, false)
        army18 = CreatePed(5, hash, 3086.83, -4722.05, 30.26, 62.39, true, false)
        army19 = CreatePed(5, hash, 3077.61, -4687.6, 30.07, 63.49, true, false)
        army20 = CreatePed(5, hash, 3079.83, -4696.0, 30.07, 120.17, true, false)
        army21 = CreatePed(5, hash, 3081.8, -4703.07, 27.26, 64.78, true, false)
        army22 = CreatePed(5, hash, 3083.96, -4710.92, 27.26, 146.03, true, false)
        army23 = CreatePed(5, hash, 3082.58, -4699.44, 24.26, 107.38, true, false)
        army24 = CreatePed(5, hash, 3086.12, -4713.43, 24.26, 101.21, true, false)
        army25 = CreatePed(5, hash, 3083.11, -4706.44, 24.26, 281.77, true, false)
--      ChangeMe = CreatePed(5, hash, 3083.11, -4706.44, 24.26, 281.77, true, false)
        
        GiveWeaponToPed(army1, GetHashKey('WEAPON_CARBINERIFLE'), Config.Armyammo, false, true)
        SetPedAccuracy(army1, Config.Armyaccuracy)
        SetPedArmour(army1, Config.Armyarmour)
        SetPedMaxHealth(army1, Config.Armymaxhealth)
        SetPedRelationshipGroupHash(army1, 'Merryweather')
        SetPedCombatAttributes(army1, 0, true)
        SetPedCombatMovement(army1, Config.Armycombatmovement)
        SetPedRagdollBlockingFlags(army1, 1)
        GiveWeaponComponentToPed(army1, GetHashKey("WEAPON_CARBINERIFLE"), GetHashKey("COMPONENT_AT_AR_SUPP"))
        GiveWeaponComponentToPed(army1, GetHashKey("WEAPON_CARBINERIFLE"), GetHashKey("COMPONENT_AT_AR_FLSH"))
        GiveWeaponComponentToPed(army1, GetHashKey("WEAPON_CARBINERIFLE"), GetHashKey("COMPONENT_AT_AR_AFGRIP"))
        GiveWeaponComponentToPed(army1, GetHashKey("WEAPON_CARBINERIFLE"), GetHashKey("COMPONENT_AT_SCOPE_MEDIUM"))
        

        GiveWeaponToPed(army2, GetHashKey('WEAPON_CARBINERIFLE'), Config.Armyammo, false, true)
        SetPedAccuracy(army2, Config.Armyaccuracy)
        SetPedArmour(army2, Config.Armyarmour)
        SetPedMaxHealth(army2, Config.Armymaxhealth)
        SetPedRelationshipGroupHash(army2, 'Merryweather')
        SetPedCombatAttributes(army2, 0, true)
        SetPedCombatMovement(army2, Config.Armycombatmovement)
        SetPedRagdollBlockingFlags(army2, 1)
        GiveWeaponComponentToPed(army2, GetHashKey("WEAPON_CARBINERIFLE"), GetHashKey("COMPONENT_AT_AR_SUPP"))
        GiveWeaponComponentToPed(army2, GetHashKey("WEAPON_CARBINERIFLE"), GetHashKey("COMPONENT_AT_AR_FLSH"))
        GiveWeaponComponentToPed(army2, GetHashKey("WEAPON_CARBINERIFLE"), GetHashKey("COMPONENT_AT_AR_AFGRIP"))
        GiveWeaponComponentToPed(army2, GetHashKey("WEAPON_CARBINERIFLE"), GetHashKey("COMPONENT_AT_SCOPE_MEDIUM"))

        GiveWeaponToPed(army3, GetHashKey('WEAPON_CARBINERIFLE'), Config.Armyammo, false, true)
        SetPedAccuracy(army3, Config.Armyaccuracy)
        SetPedArmour(army3, Config.Armyarmour)
        SetPedMaxHealth(army3, Config.Armymaxhealth)
        SetPedRelationshipGroupHash(army3, 'Merryweather')
        SetPedCombatAttributes(army3, 0, true)
        SetPedCombatMovement(army3, Config.Armycombatmovement)
        SetPedRagdollBlockingFlags(army3, 1)
        GiveWeaponComponentToPed(army3, GetHashKey("WEAPON_CARBINERIFLE"), GetHashKey("COMPONENT_AT_AR_SUPP"))
        GiveWeaponComponentToPed(army3, GetHashKey("WEAPON_CARBINERIFLE"), GetHashKey("COMPONENT_AT_AR_FLSH"))
        GiveWeaponComponentToPed(army3, GetHashKey("WEAPON_CARBINERIFLE"), GetHashKey("COMPONENT_AT_AR_AFGRIP"))
        GiveWeaponComponentToPed(army3, GetHashKey("WEAPON_CARBINERIFLE"), GetHashKey("COMPONENT_AT_SCOPE_MEDIUM"))

        GiveWeaponToPed(army4, GetHashKey('WEAPON_CARBINERIFLE'), Config.Armyammo, false, true)
        SetPedAccuracy(army4, Config.Armyaccuracy)
        SetPedArmour(army4, Config.Armyarmour)
        SetPedMaxHealth(army4, Config.Armymaxhealth)
        SetPedRelationshipGroupHash(army4, 'Merryweather')
        SetPedCombatAttributes(army4, 0, true)
        SetPedCombatMovement(army4, Config.Armycombatmovement)
        SetPedRagdollBlockingFlags(army4, 1)
        GiveWeaponComponentToPed(army4, GetHashKey("WEAPON_CARBINERIFLE"), GetHashKey("COMPONENT_AT_AR_SUPP"))
        GiveWeaponComponentToPed(army4, GetHashKey("WEAPON_CARBINERIFLE"), GetHashKey("COMPONENT_AT_AR_FLSH"))
        GiveWeaponComponentToPed(army4, GetHashKey("WEAPON_CARBINERIFLE"), GetHashKey("COMPONENT_AT_AR_AFGRIP"))
        GiveWeaponComponentToPed(army4, GetHashKey("WEAPON_CARBINERIFLE"), GetHashKey("COMPONENT_AT_SCOPE_MEDIUM"))

        GiveWeaponToPed(army5, GetHashKey('weapon_mg'), Config.Armyammo, false, true)
        SetPedAccuracy(army5, Config.Armyaccuracy)
        SetPedArmour(army5, Config.Armyarmour)
        SetPedMaxHealth(army5, Config.Armymaxhealth)
        SetPedRelationshipGroupHash(army5, 'Merryweather')
        SetPedCombatAttributes(army5, 0, true)
        SetPedCombatMovement(army5, 1)
        SetPedRagdollBlockingFlags(army5, 1)
        GiveWeaponComponentToPed(army5, GetHashKey("weapon_mg"), GetHashKey("COMPONENT_AT_SCOPE_SMALL_02"))

        GiveWeaponToPed(army6, GetHashKey('WEAPON_CARBINERIFLE'), Config.Armyammo, false, true)
        TaskCombatPed(army6, GetPlayerPed(-1))
        SetPedAccuracy(army6, Config.Armyaccuracy)
        SetPedArmour(army6, Config.Armyarmour)
        SetPedMaxHealth(army6, Config.Armymaxhealth)
        SetPedRelationshipGroupHash(army6, 'Merryweather')
        SetPedCombatAttributes(army6, 0, true)
        SetPedCombatMovement(army6, Config.Armycombatmovement)
        SetPedRagdollBlockingFlags(army6, 1)
        GiveWeaponComponentToPed(army6, GetHashKey("WEAPON_CARBINERIFLE"), GetHashKey("COMPONENT_AT_AR_SUPP"))
        GiveWeaponComponentToPed(army6, GetHashKey("WEAPON_CARBINERIFLE"), GetHashKey("COMPONENT_AT_AR_FLSH"))
        GiveWeaponComponentToPed(army4, GetHashKey("WEAPON_CARBINERIFLE"), GetHashKey("COMPONENT_AT_AR_AFGRIP"))
        GiveWeaponComponentToPed(army6, GetHashKey("WEAPON_CARBINERIFLE"), GetHashKey("COMPONENT_AT_SCOPE_MEDIUM"))


        GiveWeaponToPed(army7, GetHashKey('weapon_assaultshotgun'), Config.Armyammo, false, true)
        TaskCombatPed(army7, GetPlayerPed(-1))
        SetPedAccuracy(army7, Config.Armyaccuracy)
        SetPedArmour(army7, Config.Armyarmour)
        SetPedMaxHealth(army7, Config.Armymaxhealth)
        SetPedRelationshipGroupHash(army7, 'Merryweather')
        SetPedCombatAttributes(army7, 0, true)
        SetPedCombatMovement(army7, Config.Armycombatmovement)
        SetPedRagdollBlockingFlags(army7, 1)
        GiveWeaponComponentToPed(army7, GetHashKey("weapon_assaultshotgun"), GetHashKey("COMPONENT_ASSAULTSHOTGUN_CLIP_02"))
        GiveWeaponComponentToPed(army7, GetHashKey("weapon_assaultshotgun"), GetHashKey("COMPONENT_AT_AR_AFGRIP"))
        GiveWeaponComponentToPed(army7, GetHashKey("weapon_assaultshotgun"), GetHashKey("COMPONENT_AT_AR_FLSH"))

        GiveWeaponToPed(army8, GetHashKey('weapon_assaultshotgun'), Config.Armyammo, false, true)
        TaskCombatPed(army8, GetPlayerPed(-1))
        SetPedAccuracy(army8, Config.Armyaccuracy)
        SetPedArmour(army8, Config.Armyarmour)
        SetPedMaxHealth(army8, Config.Armymaxhealth)
        SetPedRelationshipGroupHash(army8, 'Merryweather')
        SetPedCombatAttributes(army8, 0, true)
        SetPedCombatMovement(army8, Config.Armycombatmovement)
        SetPedRagdollBlockingFlags(army8, 1)
        GiveWeaponComponentToPed(army8, GetHashKey("weapon_assaultshotgun"), GetHashKey("COMPONENT_ASSAULTSHOTGUN_CLIP_02"))
        GiveWeaponComponentToPed(army8, GetHashKey("weapon_assaultshotgun"), GetHashKey("COMPONENT_AT_AR_AFGRIP"))
        GiveWeaponComponentToPed(army8, GetHashKey("weapon_assaultshotgun"), GetHashKey("COMPONENT_AT_AR_FLSH"))

        GiveWeaponToPed(army9, GetHashKey('weapon_assaultshotgun'), Config.Armyammo, false, true)
        TaskCombatPed(army9, GetPlayerPed(-1))
        SetPedAccuracy(army9, Config.Armyaccuracy)
        SetPedArmour(army9, Config.Armyarmour)
        SetPedMaxHealth(army9, Config.Armymaxhealth)
        SetPedRelationshipGroupHash(army9, 'Merryweather')
        SetPedCombatAttributes(army9, 0, true)
        SetPedCombatMovement(army9, Config.Armycombatmovement)
        SetPedRagdollBlockingFlags(army9, 1)
        GiveWeaponComponentToPed(army9, GetHashKey("weapon_assaultshotgun"), GetHashKey("COMPONENT_ASSAULTSHOTGUN_CLIP_02"))
        GiveWeaponComponentToPed(army9, GetHashKey("weapon_assaultshotgun"), GetHashKey("COMPONENT_AT_AR_AFGRIP"))
        GiveWeaponComponentToPed(army9, GetHashKey("weapon_assaultshotgun"), GetHashKey("COMPONENT_AT_AR_FLSH"))

        GiveWeaponToPed(army10, GetHashKey('weapon_mg'), Config.Armyammo, false, true)
        TaskCombatPed(army10, GetPlayerPed(-1))
        SetPedAccuracy(army10, Config.Armyaccuracy)
        SetPedArmour(army10, Config.Armyarmour)
        SetPedMaxHealth(army10, Config.Armymaxhealth)
        SetPedRelationshipGroupHash(army10, 'Merryweather')
        SetPedCombatAttributes(army10, 0, true)
        SetPedCombatMovement(army10, Config.Armycombatmovement)
        SetPedRagdollBlockingFlags(army10, 1)
        GiveWeaponComponentToPed(army10, GetHashKey("WEAPON_CARBINERIFLE"), GetHashKey("COMPONENT_AT_AR_SUPP"))
        GiveWeaponComponentToPed(army10, GetHashKey("WEAPON_CARBINERIFLE"), GetHashKey("COMPONENT_AT_AR_FLSH"))
        GiveWeaponComponentToPed(army10, GetHashKey("WEAPON_CARBINERIFLE"), GetHashKey("COMPONENT_AT_AR_AFGRIP"))
        GiveWeaponComponentToPed(army10, GetHashKey("WEAPON_CARBINERIFLE"), GetHashKey("COMPONENT_AT_SCOPE_MEDIUM"))

        GiveWeaponToPed(army11, GetHashKey('weapon_assaultshotgun'), Config.Armyammo, false, true)
        TaskCombatPed(army11, GetPlayerPed(-1))
        SetPedAccuracy(army11, Config.Armyaccuracy)
        SetPedArmour(army11, Config.Armyarmour)
        SetPedMaxHealth(army11, Config.Armymaxhealth)
        SetPedRelationshipGroupHash(army11, 'Merryweather')
        SetPedCombatAttributes(army11, 0, true)
        SetPedCombatMovement(army11, Config.Armycombatmovement)
        SetPedRagdollBlockingFlags(army11, 1)
        GiveWeaponComponentToPed(army11, GetHashKey("weapon_assaultshotgun"), GetHashKey("COMPONENT_ASSAULTSHOTGUN_CLIP_02"))
        GiveWeaponComponentToPed(army11, GetHashKey("weapon_assaultshotgun"), GetHashKey("COMPONENT_AT_AR_AFGRIP"))
        GiveWeaponComponentToPed(army11, GetHashKey("weapon_assaultshotgun"), GetHashKey("COMPONENT_AT_AR_FLSH"))

        GiveWeaponToPed(army12, GetHashKey('WEAPON_CARBINERIFLE'), Config.Armyammo, false, true)
        TaskCombatPed(army12, GetPlayerPed(-1))
        SetPedAccuracy(army12, Config.Armyaccuracy)
        SetPedArmour(army12, Config.Armyarmour)
        SetPedMaxHealth(army12, Config.Armymaxhealth)
        SetPedRelationshipGroupHash(army12, 'Merryweather')
        SetPedCombatAttributes(army12, 0, true)
        SetPedCombatMovement(army12, Config.Armycombatmovement)
        SetPedRagdollBlockingFlags(army12, 1)
        GiveWeaponComponentToPed(army12, GetHashKey("WEAPON_CARBINERIFLE"), GetHashKey("COMPONENT_AT_AR_SUPP"))
        GiveWeaponComponentToPed(army12, GetHashKey("WEAPON_CARBINERIFLE"), GetHashKey("COMPONENT_AT_AR_FLSH"))
        GiveWeaponComponentToPed(army12, GetHashKey("WEAPON_CARBINERIFLE"), GetHashKey("COMPONENT_AT_AR_AFGRIP"))
        GiveWeaponComponentToPed(army12, GetHashKey("WEAPON_CARBINERIFLE"), GetHashKey("COMPONENT_AT_SCOPE_MEDIUM"))

        GiveWeaponToPed(army13, GetHashKey('WEAPON_CARBINERIFLE'), Config.Armyammo, false, true)
        TaskCombatPed(army13, GetPlayerPed(-1))
        SetPedAccuracy(army13, Config.Armyaccuracy)
        SetPedArmour(army13, Config.Armyarmour)
        SetPedMaxHealth(army13, Config.Armymaxhealth)
        SetPedRelationshipGroupHash(army13, 'Merryweather')
        SetPedCombatAttributes(army13, 0, true)
        SetPedCombatMovement(army13, Config.Armycombatmovement)
        SetPedRagdollBlockingFlags(army13, 1)
        GiveWeaponComponentToPed(army13, GetHashKey("WEAPON_CARBINERIFLE"), GetHashKey("COMPONENT_AT_AR_SUPP"))
        GiveWeaponComponentToPed(army13, GetHashKey("WEAPON_CARBINERIFLE"), GetHashKey("COMPONENT_AT_AR_FLSH"))
        GiveWeaponComponentToPed(army13, GetHashKey("WEAPON_CARBINERIFLE"), GetHashKey("COMPONENT_AT_AR_AFGRIP"))
        GiveWeaponComponentToPed(army13, GetHashKey("WEAPON_CARBINERIFLE"), GetHashKey("COMPONENT_AT_SCOPE_MEDIUM"))

        GiveWeaponToPed(army14, GetHashKey('WEAPON_CARBINERIFLE'), Config.Armyammo, false, true)
        TaskCombatPed(army14, GetPlayerPed(-1))
        SetPedAccuracy(army14, Config.Armyaccuracy)
        SetPedArmour(army14, Config.Armyarmour)
        SetPedMaxHealth(army14, Config.Armymaxhealth)
        SetPedRelationshipGroupHash(army14, 'Merryweather')
        SetPedCombatAttributes(army14, 0, true)
        SetPedCombatMovement(army14, Config.Armycombatmovement)
        SetPedRagdollBlockingFlags(army14, 1)
        GiveWeaponComponentToPed(army14, GetHashKey("WEAPON_CARBINERIFLE"), GetHashKey("COMPONENT_AT_AR_SUPP"))
        GiveWeaponComponentToPed(army14, GetHashKey("WEAPON_CARBINERIFLE"), GetHashKey("COMPONENT_AT_AR_FLSH"))
        GiveWeaponComponentToPed(army14, GetHashKey("WEAPON_CARBINERIFLE"), GetHashKey("COMPONENT_AT_AR_AFGRIP"))
        GiveWeaponComponentToPed(army14, GetHashKey("WEAPON_CARBINERIFLE"), GetHashKey("COMPONENT_AT_SCOPE_MEDIUM"))

        GiveWeaponToPed(army15, GetHashKey('weapon_mg'), Config.Armyammo, false, true)
        TaskCombatPed(army15, GetPlayerPed(-1))
        SetPedAccuracy(army15, Config.Armyaccuracy)
        SetPedArmour(army15, Config.Armyarmour)
        SetPedMaxHealth(army15, Config.Armymaxhealth)
        SetPedRelationshipGroupHash(army15, 'Merryweather')
        SetPedCombatAttributes(army15, 0, true)
        SetPedCombatMovement(army15, Config.Armycombatmovement)
        SetPedRagdollBlockingFlags(army15, 1)
        GiveWeaponComponentToPed(army15, GetHashKey("WEAPON_CARBINERIFLE"), GetHashKey("COMPONENT_AT_AR_SUPP"))
        GiveWeaponComponentToPed(army15, GetHashKey("WEAPON_CARBINERIFLE"), GetHashKey("COMPONENT_AT_AR_FLSH"))
        GiveWeaponComponentToPed(army15, GetHashKey("WEAPON_CARBINERIFLE"), GetHashKey("COMPONENT_AT_AR_AFGRIP"))
        GiveWeaponComponentToPed(army15, GetHashKey("WEAPON_CARBINERIFLE"), GetHashKey("COMPONENT_AT_SCOPE_MEDIUM"))

        GiveWeaponToPed(army16, GetHashKey('WEAPON_CARBINERIFLE'), Config.Armyammo, false, true)
        TaskCombatPed(army16, GetPlayerPed(-1))
        SetPedAccuracy(army16, Config.Armyaccuracy)
        SetPedArmour(army16, Config.Armyarmour)
        SetPedMaxHealth(army16, Config.Armymaxhealth)
        SetPedRelationshipGroupHash(army16, 'Merryweather')
        SetPedCombatAttributes(army16, 0, true)
        SetPedCombatMovement(army16, Config.Armycombatmovement)
        SetPedRagdollBlockingFlags(army16, 1)
        GiveWeaponComponentToPed(army16, GetHashKey("WEAPON_CARBINERIFLE"), GetHashKey("COMPONENT_AT_AR_SUPP"))
        GiveWeaponComponentToPed(army16, GetHashKey("WEAPON_CARBINERIFLE"), GetHashKey("COMPONENT_AT_AR_FLSH"))
        GiveWeaponComponentToPed(army16, GetHashKey("WEAPON_CARBINERIFLE"), GetHashKey("COMPONENT_AT_AR_AFGRIP"))
        GiveWeaponComponentToPed(army16, GetHashKey("WEAPON_CARBINERIFLE"), GetHashKey("COMPONENT_AT_SCOPE_MEDIUM"))

        GiveWeaponToPed(army17, GetHashKey('WEAPON_CARBINERIFLE'), Config.Armyammo, false, true)
        TaskCombatPed(army17, GetPlayerPed(-1))
        SetPedAccuracy(army17, Config.Armyaccuracy)
        SetPedArmour(army17, Config.Armyarmour)
        SetPedMaxHealth(army17, Config.Armymaxhealth)
        SetPedRelationshipGroupHash(army17, 'Merryweather')
        SetPedCombatAttributes(army17, 0, true)
        SetPedCombatMovement(army17, Config.Armycombatmovement)
        SetPedRagdollBlockingFlags(army17, 1)
        GiveWeaponComponentToPed(army17, GetHashKey("WEAPON_CARBINERIFLE"), GetHashKey("COMPONENT_AT_AR_SUPP"))
        GiveWeaponComponentToPed(army17, GetHashKey("WEAPON_CARBINERIFLE"), GetHashKey("COMPONENT_AT_AR_FLSH"))
        GiveWeaponComponentToPed(army17, GetHashKey("WEAPON_CARBINERIFLE"), GetHashKey("COMPONENT_AT_AR_AFGRIP"))
        GiveWeaponComponentToPed(army17, GetHashKey("WEAPON_CARBINERIFLE"), GetHashKey("COMPONENT_AT_SCOPE_MEDIUM"))

        GiveWeaponToPed(army18, GetHashKey('WEAPON_CARBINERIFLE'), Config.Armyammo, false, true)
        TaskCombatPed(army18, GetPlayerPed(-1))
        SetPedAccuracy(army18, Config.Armyaccuracy)
        SetPedArmour(army18, Config.Armyarmour)
        SetPedMaxHealth(army18, Config.Armymaxhealth)
        SetPedRelationshipGroupHash(army18, 'Merryweather')
        SetPedCombatAttributes(army18, 0, true)
        SetPedCombatMovement(army18, Config.Armycombatmovement)
        SetPedRagdollBlockingFlags(army18, 1)
        GiveWeaponComponentToPed(army18, GetHashKey("WEAPON_CARBINERIFLE"), GetHashKey("COMPONENT_AT_AR_SUPP"))
        GiveWeaponComponentToPed(army18, GetHashKey("WEAPON_CARBINERIFLE"), GetHashKey("COMPONENT_AT_AR_FLSH"))
        GiveWeaponComponentToPed(army18, GetHashKey("WEAPON_CARBINERIFLE"), GetHashKey("COMPONENT_AT_AR_AFGRIP"))
        GiveWeaponComponentToPed(army18, GetHashKey("WEAPON_CARBINERIFLE"), GetHashKey("COMPONENT_AT_SCOPE_MEDIUM"))

        GiveWeaponToPed(army19, GetHashKey('WEAPON_CARBINERIFLE'), Config.Armyammo, false, true)
        TaskCombatPed(army19, GetPlayerPed(-1))
        SetPedAccuracy(army19, Config.Armyaccuracy)
        SetPedArmour(army19, Config.Armyarmour)
        SetPedMaxHealth(army19, Config.Armymaxhealth)
        SetPedRelationshipGroupHash(army19, 'Merryweather')
        SetPedCombatAttributes(army19, 0, true)
        SetPedCombatMovement(army19, Config.Armycombatmovement)
        SetPedRagdollBlockingFlags(army19, 1)
        GiveWeaponComponentToPed(army19, GetHashKey("WEAPON_CARBINERIFLE"), GetHashKey("COMPONENT_AT_AR_SUPP"))
        GiveWeaponComponentToPed(army19, GetHashKey("WEAPON_CARBINERIFLE"), GetHashKey("COMPONENT_AT_AR_FLSH"))
        GiveWeaponComponentToPed(army19, GetHashKey("WEAPON_CARBINERIFLE"), GetHashKey("COMPONENT_AT_AR_AFGRIP"))
        GiveWeaponComponentToPed(army19, GetHashKey("WEAPON_CARBINERIFLE"), GetHashKey("COMPONENT_AT_SCOPE_MEDIUM"))

        GiveWeaponToPed(army20, GetHashKey('weapon_mg'), Config.Armyammo, false, true)
        TaskCombatPed(army20, GetPlayerPed(-1))
        SetPedAccuracy(army20, Config.Armyaccuracy)
        SetPedArmour(army20, Config.Armyarmour)
        SetPedMaxHealth(army20, Config.Armymaxhealth)
        SetPedRelationshipGroupHash(army20, 'Merryweather')
        SetPedCombatAttributes(army20, 0, true)
        SetPedCombatMovement(army20, Config.Armycombatmovement)
        SetPedRagdollBlockingFlags(army20, 1)
        GiveWeaponComponentToPed(army20, GetHashKey("WEAPON_CARBINERIFLE"), GetHashKey("COMPONENT_AT_AR_SUPP"))
        GiveWeaponComponentToPed(army20, GetHashKey("WEAPON_CARBINERIFLE"), GetHashKey("COMPONENT_AT_AR_FLSH"))
        GiveWeaponComponentToPed(army20, GetHashKey("WEAPON_CARBINERIFLE"), GetHashKey("COMPONENT_AT_AR_AFGRIP"))
        GiveWeaponComponentToPed(army20, GetHashKey("WEAPON_CARBINERIFLE"), GetHashKey("COMPONENT_AT_SCOPE_MEDIUM"))

        GiveWeaponToPed(army21, GetHashKey('WEAPON_CARBINERIFLE'), Config.Armyammo, false, true)
        TaskCombatPed(army21, GetPlayerPed(-1))
        SetPedAccuracy(army21, Config.Armyaccuracy)
        SetPedArmour(army21, Config.Armyarmour)
        SetPedMaxHealth(army21, Config.Armymaxhealth)
        SetPedRelationshipGroupHash(army21, 'Merryweather')
        SetPedCombatAttributes(army21, 0, true)
        SetPedCombatMovement(army21, Config.Armycombatmovement)
        SetPedRagdollBlockingFlags(army21, 1)
        GiveWeaponComponentToPed(army21, GetHashKey("WEAPON_CARBINERIFLE"), GetHashKey("COMPONENT_AT_AR_SUPP"))
        GiveWeaponComponentToPed(army21, GetHashKey("WEAPON_CARBINERIFLE"), GetHashKey("COMPONENT_AT_AR_FLSH"))
        GiveWeaponComponentToPed(army21, GetHashKey("WEAPON_CARBINERIFLE"), GetHashKey("COMPONENT_AT_AR_AFGRIP"))
        GiveWeaponComponentToPed(army21, GetHashKey("WEAPON_CARBINERIFLE"), GetHashKey("COMPONENT_AT_SCOPE_MEDIUM"))
        
        GiveWeaponToPed(army22, GetHashKey('WEAPON_CARBINERIFLE'), Config.Armyammo, false, true)
        TaskCombatPed(army22, GetPlayerPed(-1))
        SetPedAccuracy(army22, Config.Armyaccuracy)
        SetPedArmour(army22, Config.Armyarmour)
        SetPedMaxHealth(army22, Config.Armymaxhealth)
        SetPedRelationshipGroupHash(army22, 'Merryweather')
        SetPedCombatAttributes(army22, 0, true)
        SetPedCombatMovement(army22, Config.Armycombatmovement)
        SetPedRagdollBlockingFlags(army22, 1)
        GiveWeaponComponentToPed(army22, GetHashKey("WEAPON_CARBINERIFLE"), GetHashKey("COMPONENT_AT_AR_SUPP"))
        GiveWeaponComponentToPed(army22, GetHashKey("WEAPON_CARBINERIFLE"), GetHashKey("COMPONENT_AT_AR_FLSH"))
        GiveWeaponComponentToPed(army22, GetHashKey("WEAPON_CARBINERIFLE"), GetHashKey("COMPONENT_AT_AR_AFGRIP"))
        GiveWeaponComponentToPed(army22, GetHashKey("WEAPON_CARBINERIFLE"), GetHashKey("COMPONENT_AT_SCOPE_MEDIUM"))

        GiveWeaponToPed(army23, GetHashKey('WEAPON_CARBINERIFLE'), Config.Armyammo, false, true)
        TaskCombatPed(army23, GetPlayerPed(-1))
        SetPedAccuracy(army23, Config.Armyaccuracy)
        SetPedArmour(army23, Config.Armyarmour)
        SetPedMaxHealth(army23, Config.Armymaxhealth)
        SetPedRelationshipGroupHash(army23, 'Merryweather')
        SetPedCombatAttributes(army23, 0, true)
        SetPedCombatMovement(army23, Config.Armycombatmovement)
        SetPedRagdollBlockingFlags(army23, 1)
        GiveWeaponComponentToPed(army23, GetHashKey("WEAPON_CARBINERIFLE"), GetHashKey("COMPONENT_AT_AR_SUPP"))
        GiveWeaponComponentToPed(army23, GetHashKey("WEAPON_CARBINERIFLE"), GetHashKey("COMPONENT_AT_AR_FLSH"))
        GiveWeaponComponentToPed(army23, GetHashKey("WEAPON_CARBINERIFLE"), GetHashKey("COMPONENT_AT_AR_AFGRIP"))
        GiveWeaponComponentToPed(army23, GetHashKey("WEAPON_CARBINERIFLE"), GetHashKey("COMPONENT_AT_SCOPE_MEDIUM"))

        GiveWeaponToPed(army24, GetHashKey('WEAPON_CARBINERIFLE'), Config.Armyammo, false, true)
        TaskCombatPed(army24, GetPlayerPed(-1))
        SetPedAccuracy(army24, Config.Armyaccuracy)
        SetPedArmour(army24, Config.Armyarmour)
        SetPedMaxHealth(army24, Config.Armymaxhealth)
        SetPedRelationshipGroupHash(army24, 'Merryweather')
        SetPedCombatAttributes(army24, 0, true)
        SetPedCombatMovement(army24, Config.Armycombatmovement)
        SetPedRagdollBlockingFlags(army24, 1)
        GiveWeaponComponentToPed(army24, GetHashKey("WEAPON_CARBINERIFLE"), GetHashKey("COMPONENT_AT_AR_SUPP"))
        GiveWeaponComponentToPed(army24, GetHashKey("WEAPON_CARBINERIFLE"), GetHashKey("COMPONENT_AT_AR_FLSH"))
        GiveWeaponComponentToPed(army24, GetHashKey("WEAPON_CARBINERIFLE"), GetHashKey("COMPONENT_AT_AR_AFGRIP"))
        GiveWeaponComponentToPed(army24, GetHashKey("WEAPON_CARBINERIFLE"), GetHashKey("COMPONENT_AT_SCOPE_MEDIUM"))

        GiveWeaponToPed(army25, GetHashKey('weapon_mg'), Config.Armyammo, false, true)
        TaskCombatPed(army25, GetPlayerPed(-1))
        SetPedAccuracy(army25, Config.Armyaccuracy)
        SetPedArmour(army25, Config.Armyarmour)
        SetPedMaxHealth(army25, Config.Armymaxhealth)
        SetPedRelationshipGroupHash(army25, 'Merryweather')
        SetPedCombatAttributes(army25, 0, true)
        SetPedCombatMovement(army25, Config.Armycombatmovement)
        SetPedRagdollBlockingFlags(army25, 1)
        GiveWeaponComponentToPed(army25, GetHashKey("WEAPON_CARBINERIFLE"), GetHashKey("COMPONENT_AT_AR_SUPP"))
        GiveWeaponComponentToPed(army25, GetHashKey("WEAPON_CARBINERIFLE"), GetHashKey("COMPONENT_AT_AR_FLSH"))
        GiveWeaponComponentToPed(army25, GetHashKey("WEAPON_CARBINERIFLE"), GetHashKey("COMPONENT_AT_AR_AFGRIP"))
        GiveWeaponComponentToPed(army25, GetHashKey("WEAPON_CARBINERIFLE"), GetHashKey("COMPONENT_AT_SCOPE_MEDIUM"))
--[[        
        GiveWeaponToPed(ChangeMe, GetHashKey('weapon_mg'), Config.Armyammo, false, true)
        TaskCombatPed(ChangeMe, GetPlayerPed(-1))
        SetPedAccuracy(ChangeMe, Config.Armyaccuracy)
        SetPedArmour(ChangeMe, Config.Armyarmour)
        SetPedMaxHealth(ChangeMe, Config.Armymaxhealth)
        SetPedRelationshipGroupHash(ChangeMe, 'Merryweather')
        SetPedCombatAttributes(ChangeMe, 0, true)
        SetPedCombatMovement(ChangeMe, Config.Armycombatmovement)
        SetPedRagdollBlockingFlags(ChangeMe, 1)
        GiveWeaponComponentToPed(ChangeMe, GetHashKey("WEAPON_CARBINERIFLE"), GetHashKey("COMPONENT_AT_AR_SUPP"))
        GiveWeaponComponentToPed(ChangeMe, GetHashKey("WEAPON_CARBINERIFLE"), GetHashKey("COMPONENT_AT_AR_FLSH"))
        GiveWeaponComponentToPed(ChangeMe, GetHashKey("WEAPON_CARBINERIFLE"), GetHashKey("COMPONENT_AT_AR_AFGRIP"))
        GiveWeaponComponentToPed(ChangeMe, GetHashKey("WEAPON_CARBINERIFLE"), GetHashKey("COMPONENT_AT_SCOPE_MEDIUM")) 
]]--
    Citizen.Wait(3000)
    SetRelationshipBetweenGroups(5, 'Merryweather', GetHashKey("PLAYER"))
end)

RegisterNetEvent('delete:army')
AddEventHandler('delete:army', function()
    DeletePed(army25)
    DeletePed(army2)
    DeletePed(army3)
    DeletePed(army4)
    DeletePed(army5)
    DeletePed(army6)
    DeletePed(army7)
    DeletePed(army8)
    DeletePed(army9)
    DeletePed(army10)
    DeletePed(army11)
    DeletePed(army12)
    DeletePed(army13)
    DeletePed(army14)
    DeletePed(army15)
    DeletePed(army16)
    DeletePed(army17)
    DeletePed(army18)
    DeletePed(army19)
    DeletePed(army20)
    DeletePed(army21)
    DeletePed(army22)
    DeletePed(army23)
    DeletePed(army24)
    DeletePed(army25)
--  DeletePed(ChangeMe)
end)