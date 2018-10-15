AddEventHandler("playerSpawned", function (spawnInfo)
    local message = {
        color = { 255, 255, 255 },
        multiline = false,
        args = {
            'HU3HU3', -- author
            'AEHOOOOOO MODAFOCA' -- message
        }
    }
    TriggerEvent("chat:addMessage", message)
end)