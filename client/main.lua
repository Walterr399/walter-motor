RegisterNetEvent("grp-marriage:client:spawn", function()
    local playerPed = PlayerPedId()
    local coords = GetEntityCoords(playerPed)
    local heading = GetEntityHeading(playerPed)
    local model = GetHashKey("bati") --# Bati by default.

    local vehicle = vx.createVehicle(model, coords, heading, true, false, true)

    TaskWarpPedIntoVehicle(playerPed, vehicle, -1)
end)