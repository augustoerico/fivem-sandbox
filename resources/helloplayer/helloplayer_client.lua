function debug_in_chat (message)
    TriggerEvent('chat:addMessage', {
        color = { 255, 255, 255 },
        multiline = false,
        args = {
            'debug', -- author
            message
        }
    })
end

AddEventHandler('playerSpawned', function (spawn)
    debug_in_chat('playerSpawned event in "helloplayer_client"')
    Citizen.CreateThread(function ()
        local player = GetPlayerIndex() -- index or id? from docs: Player GET_PLAYER_INDEX();
        debug_in_chat('player: ' .. tostring(player))
    end)
end)