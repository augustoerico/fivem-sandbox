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
        model = GetHashKey("mp_m_freemode_01")
        while (not HasModelLoaded(model)) do
            -- Busy wait...
            RequestModel(model)
            Citizen.Wait(1)
        end
        local playerIndex = GetPlayerIndex()
        SetPlayerModel(playerIndex, model)
        SetPedDefaultOutfit()
        DebugInChat('playerIndex: ' .. playerIndex)
        DebugInChat('... ... ... ..done ]')
    end)
end

function SetPedDefaultOutfit ()
    local playerPed = GetPlayerPed(-1)
    DebugInChat('playerPed: ' .. playerPed)
    DebugInChat('[ setting outfit ...')
    SetPedComponentVariation(playerPed, 0, 0, 0, 2) --Face
    SetPedComponentVariation(playerPed, 2, 11, 4, 2) --Hair 
    SetPedComponentVariation(playerPed, 4, 1, 5, 2) -- Pantalon
    SetPedComponentVariation(playerPed, 6, 1, 0, 2) -- Shoes
    SetPedComponentVariation(playerPed, 11, 7, 2, 2) -- Jacket
    DebugInChat('[ ... ... .. .done ]')
end

AddEventHandler('playerSpawned',
    function (spawn)
        DebugInChat('playerSpawned event in "helloplayer_client"')
        LoadFreemodeModelAsync()
    end
)