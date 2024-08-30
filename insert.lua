-- Initialize Variables
local Event = Instance.new("RemoteEvent")
local LocalScript = Instance.new("LocalScript")
local ServerScript = Instance.new("Script")
local config = Instance.new("ModuleScript")
local http = game:GetService("HttpService")

-- Insert GitHub Content into LocalScript to detect Keypress
LocalScript.Source = http:GetAsync("https://raw.githubusercontent.com/Stoppedwumm-Studios/Roblox-AntiVirus-Plugin/main/consolelogger.lua")
LocalScript.Parent = game.StarterPlayer.StarterPlayerScripts
LocalScript.Name = "Logger"

-- Create Remote Event
Event.Name = "Log"
Event.Parent = game.ReplicatedStorage

-- Create Server Side Script
ServerScript.Source = http:GetAsync("https://raw.githubusercontent.com/Stoppedwumm-Studios/Roblox-AntiVirus-Plugin/main/logger.lua")
ServerScript.Parent = game.ServerScriptService
ServerScript.Name = "Logger"

-- Create Config Script
config.Source = "return {}"
config.Name = "Devs"
config.Parent = game.ReplicatedStorage

-- To mark the end of the function
return
