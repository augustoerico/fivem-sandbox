AddEventHandler("playerSpawned", function (spawnInfo)
    local message = {
        color = { 255, 255, 255 },
        multiline = false,
        args = {
            'put_author_here', -- author
            'put_message_here' -- message
        }
    }
    TriggerEvent("chat:addMessage", message)
end)