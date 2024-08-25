RegisterCommand('coords', function(source)
    local source = source
    if source ~= nil and source ~= 0 then 
        if IsAuthorized(source) then 
            TriggerClientEvent('oxCoords:openMenu', source)
        else
            TriggerClientEvent('ox_lib:notify', source, {
                description = 'Permissions insuffisantes',
                type = 'error'
            })
        end
    end
end)