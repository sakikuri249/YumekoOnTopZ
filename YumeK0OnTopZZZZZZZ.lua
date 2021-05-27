pcall(function()
local market = game:GetService("MarketplaceService")
local info = market:GetProductInfo(game.PlaceId, Enum.InfoType.Asset)
pcall(function() end)
if game.PlaceId == 5873526027 then
loadstring(game:HttpGet("https://raw.githubusercontent.com/sakikuri249/YumekoOnTopZ/main/BanTai.lua"))()
elseif game.PlaceId == 4660690549 then 
loadstring(game:HttpGet("https://raw.githubusercontent.com/sakikuri249/YumekoOnTopZ/main/SA-RA-PUK-JAI.lua"))()
else
    game.Players.LocalPlayer:Kick("GAME NOT SUPPORT This HUB !!!")
end
end)
