AddEventHandler('Renewed-Lib:server:playerRemoved', function(source)
    local playerState = Player(source).state

    playerState:set('nightvision', false, true)
    playerState:set('thermalvision', false, true)
end)

AddEventHandler('Renewed-Lib:server:playerLoaded', function(source)
    local playerState = Player(source).state

    playerState:set('nightvision', false, true)
    playerState:set('thermalvision', false, true)
end)