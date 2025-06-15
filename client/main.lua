local Config = vx.callback.await("walter-motor:server:receive:config")

RegisterNetEvent("walter-motor:client:spawn", function()
    local playerPed = PlayerPedId()
    local coords = GetEntityCoords(playerPed)
    local heading = GetEntityHeading(playerPed)
    local model = GetHashKey(Config.Model)

    local vehicle = vx.createVehicle(model, coords, heading, true, false, true)

    TaskWarpPedIntoVehicle(playerPed, vehicle, -1)
end)