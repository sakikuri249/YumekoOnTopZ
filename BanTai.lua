if game.PlaceId == 5873526027 then
    local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
    local Window = Library.CreateLib("Yumek00 Hub | BanTai", "BloodTheme")
    local Main = Window:NewTab("Main")
    local Player = Window:NewTab("Player")
    local Movement = Window:NewTab("Movement")
    local MainSection = Main:NewSection("Main")
    local ToolsSection = Main:NewSection("Tools")
    local PlayerSection = Player:NewSection("Player")
    local MovementSection = Movement:NewSection("Movement")


    ToolsSection:NewButton("Steal Tools (Admin So Stupid)", "Make kids crying cuz admin so dumb!", function()
        char = game:GetService('Players').LocalPlayer.Character
        game:GetService('Players').LocalPlayer.CharacterAdded:connect(function(body)
        char = body end)
        for i,v in pairs(workspace:GetDescendants()) do
        if v:IsA('Tool') then
        char.Humanoid:EquipTool(v) end end
    end)

    MainSection:NewButton("Kick When Admin Join.", "Admin this server so stuuuuuuuuupid", function()
        print("Work!")
        local annoying = {"Noob_IcQ", "YAMOK1234", "mon2010za"} -- you can add more players by doing {"Player1", "Player2"} etc
        game.Players.PlayerAdded:Connect(function(plr)
        for i, v in pairs(annoying) do
        if plr.Name == v then
        local loc = game.Players.LocalPlayer
        loc:Kick("Admin Joined")
        end
        end
        end)
    end)


    MovementSection:NewSlider("WalkSpeed", "Weeeeeeeeeeeeeeeeeeeeeeeeeeeeee", 500, 16, function(s) 
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
    end)

    MovementSection:NewSlider("JumpPower", "Let's GOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO", 1000, 50, function(s)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
    end)

    MovementSection:NewToggle("INF Jump", "727PP", function(state)
        if state then
            _G.infinjump = true
        else
            _G.infinjump = false
        end
    end)

end

--Inf Jump
local Player = game:GetService("Players").LocalPlayer
local Mouse = Player:GetMouse()
Mouse.KeyDown:connect(function(k)
if _G.infinjump then
if k:byte() == 32 then
Humanoid = game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
Humanoid:ChangeState("Jumping")
wait(0.1)
Humanoid:ChangeState("Seated")
end
end
end)

local Player = game:GetService("Players").LocalPlayer
local Mouse = Player:GetMouse()
Mouse.KeyDown:connect(function(k)
k = k:lower()
if k == "000000000000" then
if _G.infinjump == true then
_G.infinjump = false
else
_G.infinjump = true
end
end
end)

