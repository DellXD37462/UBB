local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
	Name = "Ding 69 Undertale Boss Battles GUI",
	LoadingTitle = "Loading...",
	LoadingSubtitle = "Loading GUI Script :D",
	ConfigurationSaving = {
		Enabled = true,
		FolderName = nil, -- Create a custom folder for your hub/game
		FileName = "Save"
	},
        Discord = {
        	Enabled = false,
        	Invite = "sirius", -- The Discord invite code, do not include discord.gg/
        	RememberJoins = true -- Set this to false to make them join the discord every time they load it up
        },
	KeySystem = true, -- Set this to true to use our key system
	KeySettings = {
		Title = "User Verification",
		Subtitle = "This script is not ready",
		Note = "How did you get this script",
		FileName = "GUIKey",
		SaveKey = true,
		GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
		Key = "DingDongDrang555"
	}
})

local MainTab = Window:CreateTab("Main", 11364050499) -- Title, Image

local Keybind = MainTab:CreateKeybind({
	Name = "Insta-Kill",
	CurrentKeybind = "F",
	HoldToInteract = false,
	Flag = "Keybind1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(Keybind)
		local enemy = workspace.Game.Mobs.Dummy
	    local Humanoid = enemy.Enemy

        enemy.Health = 0
	end,
})

local Button = MainTab:CreateButton({
	Name = "Ignore KR",
	Callback = function()
		local player = game.Players.LocalPlayer
		local character = player.Character or player.CharacterAdded:wait()
		local KR = player.Character.KR

		KR:Destroy()
	end,
})

local Button = MainTab:CreateButton({
	Name = "Ignore BR",
	Callback = function()
		local player = game.Players.LocalPlayer
		local character = player.Character or player.CharacterAdded:wait()
		local BR = player.Character.BR

		BR:Destroy()
	end,
})

local Button = MainTab:CreateButton({
	Name = "Add INF HP to the boss",
	Callback = function()
		local args = {
            [1] = "ErrorBlaster",
            [2] = workspace.Game.Mobs.Dummy,
            [3] = -999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999
        }
        
        game:GetService("ReplicatedStorage").BlasterShoot:FireServer(unpack(args))
	end,
})

local Button = MainTab:CreateButton({
	Name = "INF HP (Doesn't work with KR Bosses)",
	Callback = function()
		local args = {
			[1] = "DamageTaken",
			[2] = false,
			[3] = -99999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999
		}
		
		game:GetService("ReplicatedStorage").Functions:FireServer(unpack(args))
	end,
})

local Keybind = MainTab:CreateKeybind({
	Name = "Insta-Kill",
	CurrentKeybind = "G",
	HoldToInteract = false,
	Flag = "Keybind2", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(Keybind)
        local ForceField = game.Workspace.Game.Mobs.Dummy.ForceField

		ForceField:Destroy()
	end,
})

local ExTab = Window:CreateTab("Extras", 1039338174) -- Title, Image

local Button = ExTab:CreateButton({
	Name = "Infinity Yield",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source", true))()
	end,
})

local Button = ExTab:CreateButton({
	Name = "Patched Dexi's GUI",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/xxDeziQxx/UndertaleBossBattles/main/ByxxDeziQxx", true))()
	end,
})
