local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Blaxe's Studios", "Ocean")
    -- MAIN
    local Main = Window:NewTab("Main")
    local MainSection = Main:NewSection("Main")



    MainSection:NewToggle("Super-Human", "Go Fast & Jump High", function(state)
        if state then
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 120
            game.Players.LocalPlayer.Character.Humanoid.JumpPower = 120
        else
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
            game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
        end
    end)



    --LOCAL PLAYER
    local Player = Window:NewTab("Local Player")
    local PlayerSection = Player:NewSection("Local Player")

    PlayerSection:NewSlider("Walkspeed", "SPEED", 500, 16, function(s)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
    end)

    PlayerSection:NewSlider("Jumppower", "JUMP HIGH", 350, 50, function(s)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
    end)

    PlayerSection:NewButton("Reset WS/JP", "Resets to all defaults", function()
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
    end)


    --Misc
    local Misc = Window:NewTab("Misc")
    local MiscSection = Misc:NewSection("Misc")

    MiscSection:NewButton("Chat Spoofer", "Lets you chat for other people", function()
        loadstring(game:HttpGet(('https://pastebin.com/raw/djBfk8Li'),true))()
    end)

    
    --Credits
    local Credits = Window:NewTab("Credits")
    local CreditsSection = Credits:NewSection("CREDITS:")

    CreditsSection:NewLabel("Made By: Blaxe#8707")
    CreditsSection:NewLabel("Discord:https://discord.gg/JW84NpGzPe")
    CreditsSection:NewLabel("Property of Blaxe's Studios™")
