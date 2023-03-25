local variables = {
    canHeli = false,
    heliOut = false,
    heli = "",
    heliPlate = "",
    canVeh = false,
    vehOut = false,
    vehicle = "",
    vehiclePlate = "",
    clothesOn = false,
    playerSkin = "",
}


local function loadModel(model)
    RequestModel(model)
    local repeater = 0
    repeat
        Wait(1)
        repeater = HasModelLoaded(model)
    until (repeater == 1)
end

local function loadAnimDict(dict)
    RequestAnimDict(dict)
    local repeater = 0
    repeat
        Wait(1)
        repeater = HasAnimDictLoaded(dict)
    until (repeater == 1)
end



Citizen.CreateThread(function()
    loadModel("ig_trafficwarden")
    local ped = CreatePed(4, "ig_trafficwarden", 463.9208, -985.2357, 43.69155-1, 94.88185, false, true)
    FreezeEntityPosition(ped, true)
    SetEntityInvincible(ped, true)
    SetBlockingOfNonTemporaryEvents(ped, true)

    loadModel("csb_trafficwarden")
    local ped2 = CreatePed(4, "csb_trafficwarden", 441.3613, -974.7421, 25.69996-1, 182.7144, false, true)
    FreezeEntityPosition(ped2, true)
    SetEntityInvincible(ped2, true)
    SetBlockingOfNonTemporaryEvents(ped2, true)



    local blip = AddBlipForCoord(442.7524, -981.6527, 30.68958)
    SetBlipSprite(blip, 137)
    SetBlipDisplay(blip, 4)
    SetBlipScale(blip, 0.7)
    SetBlipColour(blip, 26)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentString("Komenda Policji")
    EndTextCommandSetBlipName(blip)
    SetBlipAsShortRange(blip , true)
end)


local function checkHeli()
    ESX.TriggerServerCallback("police:canUseHeli", function(dt)
        variables.canHeli = dt
    end)
end



local function checkSwat()
    ESX.TriggerServerCallback("police:canUseSwat", function(dt)
        variables.canVeh = dt
    end)
end




local function takeHeli() 
    if IsAnyVehicleNearPoint(449.5941, -981.1891, 43.69129, 15.0) == false then
                ESX.ShowNotification("Wyjęto helikopter!")
                variables.heliOut = true
                ESX.Game.SpawnVehicle('polmav', {
                    x = 449.5941,
                    y = -981.1891,
                    z = 43.69129
                }, 93.63721, function(vehicle)
                    SetEntityAsMissionEntity(vehicle, true, true);
                    variables.heliPlate = GetVehicleNumberPlateText(vehicle)
                    variables.heli = vehicle
                    SetVehicleLivery(vehicle , 2)
                end)
    else
        ESX.ShowNotification("Niestety nie można wyjąć helikoptera gdy miejsce jest zablokowane!")
    end
end


local function deleteHeli()
DeleteEntity(variables.heli)
variables.heli = ""
variables.heliPlate = ""
variables.heliOut = false
ESX.ShowNotification("Schowano helikopter")
end



local function takeConvo()
    if IsAnyVehicleNearPoint(431.2323, -986.9486, 25.69996, 10.0) == false then
        ESX.ShowNotification("Wyjęto pojazd!")
        variables.heliOut = true
        ESX.Game.SpawnVehicle('riot', {
            x = 431.2323,
            y = -986.9486,
            z = 25.69996
        }, 176.3482, function(vehicle)

        end)
else
ESX.ShowNotification("Niestety nie można wyjąć pojazdu gdy miejsce jest zablokowane!")
end
end



local function skinMenu()
ESX.ShowNotification("Otworzono menu")
TriggerEvent("esx_skin:openSaveableMenu")
end



local function takeBus()
    if IsAnyVehicleNearPoint(431.2323, -986.9486, 25.69996, 10.0) == false then
        ESX.ShowNotification("Wyjęto pojazd!")
        variables.heliOut = true
        ESX.Game.SpawnVehicle('police', {
            x = 431.2323,
            y = -986.9486,
            z = 25.69996
        }, 176.3482, function(vehicle)

        end)
else
ESX.ShowNotification("Niestety nie można wyjąć pojazdu gdy miejsce jest zablokowane!")
end
end


local function takeSwat()
    if IsAnyVehicleNearPoint(431.2323, -986.9486, 25.69996, 10.0) == false then
        ESX.ShowNotification("Wyjęto pojazd!")
        variables.heliOut = true
        ESX.Game.SpawnVehicle('fbi2', {
            x = 431.2323,
            y = -986.9486,
            z = 25.69996
        }, 176.3482, function(vehicle)

        end)
else
ESX.ShowNotification("Niestety nie można wyjąć pojazdu gdy miejsce jest zablokowane!")
end
end

local function  putClothesBack()
    variables.clothesOn = false
    TriggerEvent('skinchanger:loadClothes', variables.playerSkin)
    Wait(10)
    variables.playerSkin = ""
end




local function putClothes()
    variables.clothesOn = true
-- dopisac te pagony itp itd
end





local function putClothes2()
    variables.clothesOn = true
    if variables.playerSkin == "" then
        TriggerEvent('skinchanger:getSkin', function(skin)
            variables.playerSkin = skin
            local uniformObject
            if skin.sex == 0 then
                uniformObject = Config.Clothes.galowymale
            else
                uniformObject = Config.Clothes.galowyfemale
            end
            if uniformObject then
                TriggerEvent('skinchanger:loadClothes', skin, uniformObject)
            end
        end)
    else
        TriggerEvent('skinchanger:getSkin', function(skin)
            local uniformObject
            if skin.sex == 0 then
                uniformObject = Config.Clothes.galowymale
            else
                uniformObject = Config.Clothes.galowyfemale
            end
            if uniformObject then
                TriggerEvent('skinchanger:loadClothes', skin, uniformObject)
            end
        end)
    
        
    end
end

local function putClothes3()
    variables.clothesOn = true
    if variables.playerSkin == "" then
        TriggerEvent('skinchanger:getSkin', function(skin)
            variables.playerSkin = skin
            local uniformObject
            if skin.sex == 0 then
                uniformObject = Config.Clothes.treningmale
            else
                uniformObject = Config.Clothes.treningfemale
            end
            if uniformObject then
                TriggerEvent('skinchanger:loadClothes', skin, uniformObject)
            end
        end)
    else
        TriggerEvent('skinchanger:getSkin', function(skin)
            local uniformObject
            if skin.sex == 0 then
                uniformObject = Config.Clothes.galowymale
            else
                uniformObject = Config.Clothes.galowyfemale
            end
            if uniformObject then
                TriggerEvent('skinchanger:loadClothes', skin, uniformObject)
            end
        end)
    
        
    end
end

local function putClothes4()
    variables.clothesOn = true
    if variables.playerSkin == "" then
        TriggerEvent('skinchanger:getSkin', function(skin)
            variables.playerSkin = skin
            local uniformObject
            if skin.sex == 0 then
                uniformObject = Config.Clothes.motormale
            else
                uniformObject = Config.Clothes.motorfemale
            end
            if uniformObject then
                TriggerEvent('skinchanger:loadClothes', skin, uniformObject)
            end
        end)
    else
        TriggerEvent('skinchanger:getSkin', function(skin)
            local uniformObject
            if skin.sex == 0 then
                uniformObject = Config.Clothes.motormale
            else
                uniformObject = Config.Clothes.motorfemale
            end
            if uniformObject then
                TriggerEvent('skinchanger:loadClothes', skin, uniformObject)
            end
        end)
    
        
    end
end


local function putClothes5()
    variables.clothesOn = true
    if variables.playerSkin == "" then
        TriggerEvent('skinchanger:getSkin', function(skin)
            variables.playerSkin = skin
            local uniformObject
            if skin.sex == 0 then
                uniformObject = Config.Clothes.helimale
            else
                uniformObject = Config.Clothes.helifemale
            end
            if uniformObject then
                TriggerEvent('skinchanger:loadClothes', skin, uniformObject)
            end
        end)
    else
        TriggerEvent('skinchanger:getSkin', function(skin)
            local uniformObject
            if skin.sex == 0 then
                uniformObject = Config.Clothes.helimale
            else
                uniformObject = Config.Clothes.helifemale
            end
            if uniformObject then
                TriggerEvent('skinchanger:loadClothes', skin, uniformObject)
            end
        end)
    
        
    end
end



local function putClothes6()
    variables.clothesOn = true
    if variables.playerSkin == "" then
        TriggerEvent('skinchanger:getSkin', function(skin)
            variables.playerSkin = skin
            local uniformObject
            if skin.sex == 0 then
                uniformObject = Config.Clothes.swatmale
            else
                uniformObject = Config.Clothes.swatfemale
            end
            if uniformObject then
                TriggerEvent('skinchanger:loadClothes', skin, uniformObject)
            end
        end)
    else
        TriggerEvent('skinchanger:getSkin', function(skin)
            local uniformObject
            if skin.sex == 0 then
                uniformObject = Config.Clothes.swatmale
            else
                uniformObject = Config.Clothes.swatfemale
            end
            if uniformObject then
                TriggerEvent('skinchanger:loadClothes', skin, uniformObject)
            end
        end)
    
        
    end
end




Citizen.CreateThread(function()
exports['qtarget']:AddBoxZone("police_heli_garage", vector3(463.9, -985.41, 43.69), 1, 1, {
    name = "police_heli_garage",
    heading=0,
    minZ=40.89,
    maxZ=44.89
}, {
    options = {
        {

            action = function()
                takeHeli()
            end,
            icon = "fa-solid fa-helicopter",
            label = "Wyjmij helikopter",
            job = "police",
            canInteract = function()
                checkHeli()
                Wait(20)
                    return not variables.heliOut and variables.canHeli
            end,
        },
        {
            action = function()
                deleteHeli()
            end,
            icon = "fa-solid fa-helicopter",
            job = "police",
            label = "Schowaj helikopter",
            canInteract = function()
                checkHeli()
                Wait(20)
                    return variables.heliOut and variables.canHeli
            end,
        }
    },
    distance = 2.0
})







exports['qtarget']:AddBoxZone("police_garage", vector3(441.34, -974.94, 25.7), 1, 1, {
    name = "police_garage",
    heading=0,
    minZ=22.7,
    maxZ=26.7
}, {
    options = {
        {

            action = function()
                takeConvo()
            end,
            icon = "fa-solid fa-car",
            label = "Wyjmij pojazd do konwojów",
            job = {['police'] = 1},
        },
        {

            action = function()
                takeBus()
            end,
            icon = "fa-solid fa-car",
            label = "Wyjmij busa",
            job = {['police'] = 1},
        },
        {
            action = function()
                takeSwat()
            end,
            icon = "fa-solid fa-car",
            job = {['police'] = 1},
            label = "Wyjmij pojazd SWAT",
            canInteract = function()
                checkSwat()
                Wait(20)
                    return variables.canVeh
            end,
        }
    },
    distance = 2.0
})







exports['qtarget']:AddBoxZone("police_clothes", vector3(462.1, -1000.48, 30.69), 2, 5.2, {
    name = "police_clothes",
    heading=182,
    minZ=28.29,
    maxZ=32.89
}, {
    options = {
        {

            action = function()
                putClothesBack()
            end,
            icon = "fa-solid fa-shirt",
            label = "Przebierz się w strój prywatny",
            job = 'police',
            canInteract = function()
                    return variables.clothesOn
            end,
        },
        {

            action = function()
                putClothes()
            end,
            icon = "fa-solid fa-shirt",
            label = "Przebierz się w strój policjanta",
            job = 'police',
            canInteract = function()
                return not variables.clothesOn
        end,
        },
        {

            action = function()
                putClothes2()
            end,
            icon = "fa-solid fa-shirt",
            label = "Przebierz się w strój galowy",
            job = 'police',
            canInteract = function()
                return not variables.clothesOn
        end,
        },
        {

            action = function()
                putClothes3()
            end,
            icon = "fa-solid fa-shirt",
            label = "Przebierz się w strój treningowy",
            job = 'police',
            canInteract = function()
                return not variables.clothesOn
        end,
        },
        {

            action = function()
                putClothes4()
            end,
            icon = "fa-solid fa-shirt",
            label = "Przebierz się w strój na motor",
            job = 'police',
            canInteract = function()
                return not variables.clothesOn
        end,
        },
        {

            action = function()
                putClothes5()
            end,
            icon = "fa-solid fa-shirt",
            label = "Przebierz się w strój pilota helikoptera",
            job = 'police',
            canInteract = function()
                checkHeli()
                Wait(20)
                    return variables.canHeli and not variables.clothesOn
            end,
        },

        {
            action = function()
                putClothes6()
            end,
            icon = "fa-solid fa-shirt",
            job = 'police',
            label = "Przebierz się w strój SWAT",
            canInteract = function()
                checkSwat()
                Wait(20)
                    return variables.canVeh and not variables.clothesOn
            end,
        }
    },
    distance = 2.0
})





exports['qtarget']:AddBoxZone("police_skin", vector3(461.67, -995.99, 30.69), 2, 5, {
    name = "police_skin",
    heading=0,
    minZ=28.69,
    maxZ=32.69
}, {
    options = {
        {

            action = function()
                skinMenu()
            end,
            icon = "fa-solid fa-shirt",
            label = "Edytuj ubranie",
            job = "police",
        },
    },
    distance = 2.0
})

end)