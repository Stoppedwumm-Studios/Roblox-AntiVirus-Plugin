local Event = Instance.new("RemoteEvent")
local LocalScript = Instance.new("LocalScript")
local ServerScript = Instance.new("Script")
local http = game:GetService("HttpService")
LocalScript.Source = http:GetAsync("https://raw.githubusercontent.com/Stoppedwumm-Studios/Roblox-AntiVirus-Plugin/main/consolelogger.lua")
LocalScript.Parent = game.StarterPlayer.StarterPlayerScripts
LocalScript.Name = "Logger"
Event.Name = "Log"
Event.Parent = game.ReplicatedStorage
ServerScript.Source = http:GetAsync("https://raw.githubusercontent.com/Stoppedwumm-Studios/Roblox-AntiVirus-Plugin/main/logger.lua")
ServerScript.Parent = game.ServeScriptService
ServerScript.Name = "Logger


