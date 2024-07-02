-- Plugin metadata
local toolbar = plugin:CreateToolbar("Security Tools")
local button = toolbar:CreateButton("Scan for Loadstring", "Scans all scripts for loadstring usage", "rbxassetid://4458901886")

-- Function to scan scripts
local function scanScripts()
	-- Get all the scripts in the game
	local scripts = game:GetDescendants()
	local foundScripts = {}

	-- Scan each script
	for _, obj in ipairs(scripts) do
		if obj:IsA("LuaSourceContainer") then
			local scriptSource = obj.Source
			if scriptSource:find("loadstring") or scriptSource:find(":Kick") then
				table.insert(foundScripts, obj:GetFullName())
			end
		end
	end

	-- Notify the developer
	if #foundScripts > 0 then
		local message = "Warning: Found loadstring/kick usage in the following scripts:\n"
		for _, scriptName in ipairs(foundScripts) do
			message = message .. scriptName .. "\n"
		end
		print(message)
		warn(message)
	else
		print("No loadstring usage found.")
	end
end

-- Bind the function to the button click
button.Click:Connect(scanScripts)
