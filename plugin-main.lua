-- Plugin metadata
local toolbar = plugin:CreateToolbar("AntiVirus")
local scanbutton = toolbar:CreateButton("Scan", "Scans globally for :Kick/loadstring", "rbxassetid://4458901886")
local insertButton = toolbar:CreateButton("Insert Console Opener", "Insert an console open checker", "rbxassetid://4458901886")

-- Function to scan scripts
local function scanScripts()
	-- Get all the scripts in the game
	local scripts = game:GetDescendants()
	local lsScripts = {}
	local kScripts = {}
	local hScripts = {}
	local mainCounter = 0

	-- Scan each script
	for _, obj in ipairs(scripts) do
		if obj:IsA("LuaSourceContainer") then
			local scriptSource = obj.Source
			if scriptSource:find("loadstring") or scriptSource:find(":Kick") then
				table.insert(lsScripts, obj:GetFullName())
				mainCounter += 1
			end
			if scriptSource:find(":Kick") or scriptSource:Find(":kick") then
				table.insert(kScripts, obj:GetFullName())
				mainCounter += 1
			end
			if scriptSource:find("HttpService") then
				table.insert(kScripts, obj:GetFullName())
				mainCounter += 1
			end
		end
	end

	-- Notify the developer
	if mainCounter > 0 then
		local message = "Warning: Found loadstring usage in the following scripts:\n"
		for _, scriptName in ipairs(lsScripts) do
			message = message .. scriptName .. "\n"
		end
		warn(message)
		local message = "Warning: Found kick usage in the following scripts:\n"
		for _, scriptName in ipairs(kScripts) do
			message = message .. scriptName .. "\n"
		end
		warn(message)
		local message = "Warning: Found HttpService usage in the following scripts:\n"
		for _, scriptName in ipairs(hScripts) do
			message = message .. scriptName .. "\n"
		end
		warn(message)
	else
		print("No suspicous scripts found")
	end
end

-- Bind the function to the button click
scanbutton.Click:Connect(scanScripts)
