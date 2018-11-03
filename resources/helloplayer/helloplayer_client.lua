function DebugInChat (message)
    TriggerEvent('chat:addMessage', {
        color = { 255, 255, 255 },
        multiline = false,
        args = {
            'debug', -- author
            message
        }
    })
end

function LoadFreemodeModelAsync ()
    Citizen.CreateThread(function ()
        DebugInChat('[ loading  model ...')
        model = GetHashKey("mp_f_freemode_01")
        while (not HasModelLoaded(model)) do
            -- Busy wait...
            RequestModel(model)
            Citizen.Wait(1)
        end
        SetPlayerModel(GetPlayerIndex(), model)
        DebugInChat('... ... ... ...done]')
    end)
end

AddEventHandler('playerSpawned', function (spawn)
    DebugInChat('playerSpawned event in "helloplayer_client"')
    LoadFreemodeModelAsync()
end)