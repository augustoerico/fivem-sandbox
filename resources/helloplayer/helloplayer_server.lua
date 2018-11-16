AddEventHandler("playerConnecting", function (name, setEventCancelMessage, deferrals)
    print("name: " .. tostring(name))
    print("source: " .. tostring(source))
    for k, v in pairs(GetPlayerIdentifiers(source))
    do
        -- [0] is the SteamId
        print(tostring(k) .. ' = ' .. tostring(v))
    end

end)
