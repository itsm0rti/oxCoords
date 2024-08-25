lib.registerContext({
    id = 'coords_menu',
    title = 'oxCoords',
    options = {
        {
            title = 'Copy Coords',
            description = 'Format: 721.52 569.52 45.20 236.96',
            icon = 'location-dot',
            event = 'oxCoords:copyCoords',
            args = 1
        },
        {
          title = 'Copy Coords (with comma)',
          description = 'Format: 721.52, 569.52, 45.20, 236.96',
          icon = 'location-dot',
          event = 'oxCoords:copyCoords',
          args = 2
        },
        {
          title = 'Copy Coords (detailed format)',
          description = 'Format: x = 721.52, y = 569.52, z = 45.20, h = 236.96',
          icon = 'location-dot',
          event = 'oxCoords:copyCoords',
          args = 3
        }
    }
})

function math.round(num, numDecimalPlaces)
    return tonumber(string.format("%." .. (numDecimalPlaces or 0) .. "f", num))
end

RegisterNetEvent('oxCoords:copyCoords', function(coordsType)
    local playerPed = PlayerPedId()
    local coords = GetEntityCoords(playerPed)
    local heading = GetEntityHeading(playerPed)

    if coordsType == 1 then 
        lib.setClipboard(math.round(coords.x, 2)..' '..math.round(coords.y, 2)..' '..math.round(coords.z, 2)..' '..math.round(heading, 2))
    elseif coordsType == 2 then 
        lib.setClipboard(math.round(coords.x, 2)..', '..math.round(coords.y, 2)..', '..math.round(coords.z, 2)..', '..math.round(heading, 2))
    elseif coordsType == 3 then 
        lib.setClipboard('x = '..math.round(coords.x, 2)..', y = '..math.round(coords.y, 2)..', z = '..math.round(coords.z, 2)..', h = '..math.round(heading, 2))
    end
end)

RegisterNetEvent('oxCoords:openMenu', function()
    lib.showContext('coords_menu')
end)