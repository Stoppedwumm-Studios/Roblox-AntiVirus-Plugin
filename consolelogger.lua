local uis = game:GetService("UserInputService")
local devs = require(game.ReplicatedStorage.Devs)
local event = game.ReplicatedStorage.Log
uis.InputBegan:Connect(function(ip)
	if ip.KeyCode == Enum.KeyCode.F9 then
		if table.find(devs, game.Players.LocalPlayer.Name) then
			event:FireServer("User interacted with console:", game.Players.LocalPlayer.Name)
		end
	end
end)`
