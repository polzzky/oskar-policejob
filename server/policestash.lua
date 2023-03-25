
ESX.RegisterServerCallback("police:canGetKit", function (source, cb)
    local xPlayer = ESX.GetPlayerFromId(source)
    local user = MySQL.Sync.fetchAll("SELECT * FROM `police_stashkit` WHERE `iden` = @identifier", {
        ["@identifier"] = xPlayer.getIdentifier()
    })[1] or false
    if user == false then
        -- dodawanie itkow

        xPlayer.showNotification("Wziąłeś wyposażenie dzienne!")

        local time = os.time() + (5 * 60 * 60)
        MySQL.insert.await('INSERT INTO police_stashkit (iden, time) VALUES (?, ?)', {xPlayer.getIdentifier(), time})
    else
        local blockT = tonumber(user.time)
        if os.time() < blockT then
            local timeLeft = (5 * 1 * 1) - (os.time() - user.time)  -5
            local hours = math.floor(timeLeft / 3600) 
            local minutes = math.floor((timeLeft % 3600) / 60) 
            local seconds = timeLeft % 60 
            xPlayer.showNotification("Musisz poczekać jeszcze " .. hours .. " h " .. minutes .. " min i " .. seconds .. " sek.")
        else
            xPlayer.showNotification("Wziąłeś wyposażenie dzienne!")
            MySQL.scalar.await('DELETE FROM police_stashkit WHERE iden = ?', {xPlayer.getIdentifier()})
            Wait(100)
            local time = os.time() + (5 * 60 * 60)
            MySQL.insert.await('INSERT INTO police_stashkit (iden, time) VALUES (?, ?)', {xPlayer.getIdentifier(), time})

            -- dodawanie itkow
        end
    end
end)











ESX.RegisterServerCallback("police:canGetKitSwat", function (source, cb)
    local xPlayer = ESX.GetPlayerFromId(source)
    local user = MySQL.Sync.fetchAll("SELECT * FROM `police_stashkit2` WHERE `iden` = @identifier", {
        ["@identifier"] = xPlayer.getIdentifier()
    })[1] or false
    if user == false then
        -- dodawanie itkow

        xPlayer.showNotification("Wziąłeś wyposażenie SWAT!")

        local time = os.time() + (5 * 60 * 60)
        MySQL.insert.await('INSERT INTO police_stashkit2 (iden, time) VALUES (?, ?)', {xPlayer.getIdentifier(), time})
    else
        local blockT = tonumber(user.time)
        if os.time() < blockT then
            local timeLeft = (5 * 1 * 1) - (os.time() - user.time)  -5
            local hours = math.floor(timeLeft / 3600) 
            local minutes = math.floor((timeLeft % 3600) / 60) 
            local seconds = timeLeft % 60 
            xPlayer.showNotification("Musisz poczekać jeszcze " .. hours .. " h " .. minutes .. " min i " .. seconds .. " sek.")
        else
            xPlayer.showNotification("Wziąłeś wyposażenie SWAT!")
            MySQL.scalar.await('DELETE FROM police_stashkit2 WHERE iden = ?', {xPlayer.getIdentifier()})
            Wait(100)
            local time = os.time() + (5 * 60 * 60)
            MySQL.insert.await('INSERT INTO police_stashkit2 (iden, time) VALUES (?, ?)', {xPlayer.getIdentifier(), time})

            -- dodawanie itkow
        end
    end
end)