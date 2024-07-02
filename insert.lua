local Event = Instance.new("RemoteEvent")
local LocalScript = Instance.new("LocalScript")
local http = game:GetService("HttpService")
LocalScript.Source = http:GetAsync("https://raw.githubusercontent.com/Stoppedwumm-Studios/Roblox-AntiVirus-Plugin/main/consolelogger.lua")
LocalScript.Parent = game.StarterPlayer.StarterPlayerScripts
Event.Name = "Log"
Event.Parent = game.ReplicatedStorage

