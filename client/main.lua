RegisterNetEvent("grp-motor:client:spawn", function()
    local playerPed = PlayerPedId()
    local coords = GetEntityCoords(playerPed)
    local heading = GetEntityHeading(playerPed)
    local model = GetHashKey("bati")

    RequestModel(model)
    while not HasModelLoaded(model) do
        Wait(10)
    end

    local vehicle = CreateVehicle(model, coords.x, coords.y, coords.z, heading, true, false)

    TaskWarpPedIntoVehicle(playerPed, vehicle, -1)
    SetModelAsNoLongerNeeded(model)
end)