-- Initialize Variables
local uis = game:GetService("UserInputService")
local devs = require(game.ReplicatedStorage.Devs)
local event = game.ReplicatedStorage.Log

-- Connect to key press
uis.InputBegan:Connect(function(ip)
	if ip.KeyCode == Enum.KeyCode.F9 then
		-- If the key F9 is pressed, then check if it is an dev, then notify the server
		if table.find(devs, game.Players.LocalPlayer.Name) then
			event:FireServer("User interacted with console:", game.Players.LocalPlayer.Name)
		end
	end
end)
