local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("CooperHub | Premium Script", "GrapeTheme")

local SELL = CFrame.new(48.395599365234375, 17.283613204956055, 2867.909423828125)
local BOBBERSHOP = CFrame.new(110.85216522216797, 17.283613204956055, 2869.586669921875)
local RODSHOP = CFrame.new(147.74703979492188, 20.472110748291016, 2836.6552734375)
local SISYPHUS = CFrame.new(-3677.231689453125, -135.37411499023438, -1004.51806640625)
local TREASUREROOM = CFrame.new(-3539.29931640625, -266.3741455078125, -1635.249755859375)
local ANGLERROD = CFrame.new(-3791.440185546875, -147.90576171875, -1344.1412353515625)
local ENCHANT = CFrame.new(3239.666015625, -1301.03564453125, 1397.5712890625)

local Tab = Window:NewTab("Menu")
local Section = Tab:NewSection("Active Menu")

function Fastsell()
    local OGPOS = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame

    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = SELL
    wait(0.2)
    game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("_Index"):WaitForChild("sleitnick_net@0.2.0"):WaitForChild("net"):WaitForChild("RF/SellAllItems"):InvokeServer()
    wait(0.2)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = OGPOS

end

Section:NewButton("Sell Fast", "Teleport to sell and go back", function()
    print("Clicked")
    Fastsell()
end)

--Teleport
local Tab = Window:NewTab("Teleport")
local Section = Tab:NewSection("Teleport")

function TP(Pos)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Pos
end

Section:NewButton("Bobber Shop", "Teleport to seed shop", function()
    print("Clicked")
    TP(BOBBERSHOP)
end)

Section:NewButton("Rod Shop", "Teleport to sell stuff", function()
    print("Clicked")
    TP(RODSHOP)
end)

Section:NewButton("Angler Rod", "Teleport to egg shop", function()
    print("Clicked")
    TP(ANGLERROD)
end)

Section:NewButton("Enchant Room", "Teleport to egg shop", function()
    print("Clicked")
    TP(ENCHANT)
end)

local Section = Tab:NewSection("Fishing")

Section:NewButton("SissyPhus", "Teleport to gear shop", function()
    print("Clicked")
    TP(SISYPHUS)
end)

Section:NewButton("Treasure Room", "Teleport to crate shop", function()
    print("Clicked")
    TP(TREASUREROOM)
end)

--UI TOGGLE
local Tab = Window:NewTab("Miscellaneous")
local Section = Tab:NewSection("Toggle UI Script")

Section:NewKeybind("Toggle UI", "Press X to toggle UI", Enum.KeyCode.X, function()
	Library:ToggleUI()
end)

local Section = Tab:NewSection("Admin Section")

Section:NewButton("Copy Position", "Copy Cframe", function()
    print("Clicked")
    setclipboard(tostring(game.Players.LocalPlayer.Character.HumanoidRootPart.Position))
end)

Section:NewButton("fireproximityprompt", "solve E button", function()
    print("Clicked")
    setclipboard(tostring(game.Players.LocalPlayer.Character.HumanoidRootPart.Position))
end)