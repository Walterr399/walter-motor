local cooldown = {}

vx.addCommand('motor', {
    help = 'Spawn a motor.',
    restricted = false,
}, function(source, args)
    local src = source
    local os = os.time()

    if cooldown[src] and os - cooldown[src] < 300 then
        local remaining = 300 - (os - cooldown[src])
        TriggerClientEvent("ox_lib:notify", src, {
            description = "You have to wait " .. remaining .. " seconds before you can spawn a motor again.",
            position = "left-center",
            type = "error"
        })
        return
    end

    cooldown[src] = os
    TriggerClientEvent('grp-motor:client:spawn', src)
end)