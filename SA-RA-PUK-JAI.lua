if game.PlaceId == 4660690549 then
    local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
    local Window = Library.CreateLib("Yumek00 Hub | SA-RA-PUK-JAI", "BloodTheme")
    local Main = Window:NewTab("Main")
    local Player = Window:NewTab("Player")

    local MainSection = Main:NewSection("Main")
    local PlayerSection = Player:NewSection("Player")

    PlayerSection:NewSlider("WalkSpeed", "Weeeeeeeeeeeeeeeeeeeeeeeeeeeeee", 30, 16, function(s) 
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
    end)

    PlayerSection:NewSlider("JumpPower", "Let's GOOOOOOOOOOOOOOOOOOOOOO", 140, 50, function(s)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
    end)

    MainSection:NewTextBox("Give Money", "Ez to get money", function(txt)
        local args = {
            [1] = (txt)
        }        
        game:GetService("ReplicatedStorage").Fishing:FireServer(unpack(args))
    end)

    MainSection:NewButton("DubaiBoy", "Riches", function()
        local args = {
            [1] = 350000000000000000000000000000000000000000000000000000003500000000000000000000000000000000000000000000000000000035000000000000000000000000000000000000000000000000000000350000000000000000000000000000000000000000000000000000003500000000000000000000000000000000000000000000000000000035000000000000000000000000000000000000000000000000000000350000000000000000000000000000000000000000000000000000003500000000000000000000000000000000000000000000000000000035000000000000000000000000000000000000000000000000000000350000000000000000000000000000000000000000000000000000003500000000000000000000000000000000000000000000000000000035000000000000000000000000000000000000000000000000000000
        }        
        game:GetService("ReplicatedStorage").Fishing:FireServer(unpack(args))
    end)

    PlayerSection:NewToggle("INF Jump", "727PP", function(state)
        if state then
            _G.infinjump = true
        else
            _G.infinjump = false
        end
    end)


end

--[[
local args = {
    [1] = 35000
    -- [1] = 350000000000000000000000000000000000000000000000000000003500000000000000000000000000000000000000000000000000000035000000000000000000000000000000000000000000000000000000350000000000000000000000000000000000000000000000000000003500000000000000000000000000000000000000000000000000000035000000000000000000000000000000000000000000000000000000350000000000000000000000000000000000000000000000000000003500000000000000000000000000000000000000000000000000000035000000000000000000000000000000000000000000000000000000350000000000000000000000000000000000000000000000000000003500000000000000000000000000000000000000000000000000000035000000000000000000000000000000000000000000000000000000
}

game:GetService("ReplicatedStorage").Fishing:FireServer(unpack(args))
]]

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
