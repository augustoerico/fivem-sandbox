AddEventHandler("playerConnecting", function (name, setEventCancelMessage, deferrals, source)
    print("name: " .. tostring(name))
    print("source: " .. tostring(source))
end)
