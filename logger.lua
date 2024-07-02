local Event = game.ReplicatedStorage.Log

Event.OnServerEvent:Connect(function(p, ...)
    local args = {...}
    for i, msg in pairs(args) do
      print(msg)
    end
end
