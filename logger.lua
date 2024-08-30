-- Initialize Variable
local Event = game.ReplicatedStorage.Log

-- Log any Response from Client
Event.OnServerEvent:Connect(function(p, ...)
    print(...)
end)
