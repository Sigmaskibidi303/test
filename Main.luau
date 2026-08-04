local Rayfield = loadstring(game:HttpGet("https://sirius.menu/rayfield"))()

local Window = Rayfield:CreateWindow({
    Name = "test",

    Icon = 0,
    LoadingTitle = "Developer Tools",
    LoadingSubtitle = "by nex",

    Theme = "Default",

    ToggleUIKeybind = Enum.KeyCode.RightShift,

    ConfigurationSaving = {
        Enabled = true,
        FolderName = "DeveloperTools",
        FileName = "Settings"
    }
})

-- Tabs
local MainTab = Window:CreateTab("Main", "home")
local MovementTab = Window:CreateTab("Movement", "person-standing")
local UtilityTab = Window:CreateTab("Utility", "settings")

-- Main Tab
local MainSection = MainTab:CreateSection("Tools")

MainTab:CreateButton({
    Name = "Test Button",

    Callback = function()
        print("Hello!")
    end
})


-- Movement Tab
local MovementSection = MovementTab:CreateSection("Movement Options")

local SpeedValue = 16

MovementTab:CreateSlider({
    Name = "Speed",
    Range = {16, 50},
    Increment = 1,
    Suffix = " Speed",
    CurrentValue = 16,

    Callback = function(Value)
        SpeedValue = Value

        local Character = game.Players.LocalPlayer.Character
        if Character then
            local Humanoid = Character:FindFirstChildOfClass("Humanoid")

            if Humanoid then
                Humanoid.WalkSpeed = Value
            end
        end
    end
})

-- Fly Toggle
local Flying = false

MovementTab:CreateToggle({
    Name = "Fly",
    CurrentValue = false,

    Callback = function(Value)
        Flying = Value

        if Flying then
            print("Fly Enabled")
        else
            print("Fly Disabled")
        end
    end
})

-- Utility Tab
local UtilitySection = UtilityTab:CreateSection("Utility Options")


Rayfield:LoadConfiguration()
