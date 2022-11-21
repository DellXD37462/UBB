local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Ding 69 Undertale Boss Battles GUI", "Ocean")

local Tab = Window:NewTab("Main Game")
local Tab2 = Window:NewTab("Other")
local Cred = Window:NewTab("Credits")
local ply = Tab:NewSection("Player")
local Boss = Tab:NewSection("Boss")
local HP = Tab:NewSection("Player Health")
local OS = Tab2:NewSection("Extra Scripts")
local Cred2 = Cred:NewSection("Credits")


Boss:NewButton("InstaKill (READ DESC)", "Only works in battle and must use in a private server.", function()
    local args = {
    [1] = "ErrorBlaster",
    [2] = workspace.Game.Mobs.Dummy,
    [3] = 696969696969696969
}

game:GetService("ReplicatedStorage").BlasterShoot:FireServer(unpack(args))

end)

HP:NewButton("Mythical Heath", "Recommended to use before battle", function()
    local args = {
    [1] = "DamageTaken",
    [2] = false,
    [3] = -99999999999999
}

HP:NewButton("God Mode", "Cannot take damage", function()
  workspace.DellKrittat555_Dev.KR:Destroy()
end)

OS:NewButton("Infinity Yield", "Execute Infinity Yield", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source", true))()
end)

OS:NewButton("[PATCHED] Undertale Boss Battles by xxDeziQxx", "Execute xxDeziQxx's UBB Script", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/xxDeziQxx/UndertaleBossBattles/main/ByxxDeziQxx'))()
end)

ply:NewSlider("WalkSpeed", "Is this even useful?", 250, 0, function(s) -- 250 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)

ply:NewToggle("Super Jump", "Makes you jump 3 times higher", function(state)
    if state then
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = 150
    else
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
    end
end)

Cred2:NewLabel("Thanks to Kavo Libary for making the GUI Script")
Cred2:NewLabel("All the other scripting were made by me")
