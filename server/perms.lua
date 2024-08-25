local authorized = {
    'license:xxxxxx'
}

function IsAuthorized(player)
    local allowed = false
    for _, id in pairs(authorized) do
        for x, pid in ipairs(GetPlayerIdentifiers(player)) do
            if string.lower(pid) == string.lower(id) then
                allowed = true
            end
        end
    end
    return allowed
end