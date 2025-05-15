local cooldown = {}

lib.addCommand('motor', {
    help = 'Spawn een motor.',
    restricted = false,
}, function(source, args)
    local src = source
    local os = os.time()

    if cooldown[src] and os - cooldown[src] < 300 then
        local remaining = 300 - (os - cooldown[src])
        TriggerClientEvent("ox_lib:notify", src, {
            description = "Je moet nog " .. remaining .. " seconden wachten voordat je weer een motor kan spawnen",
            type = "error"
        })
        return
    end

    cooldown[src] = os
    TriggerClientEvent('grp-motor:client:spawn', src)
end)