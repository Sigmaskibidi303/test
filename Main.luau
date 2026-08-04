local Rayfield = loadstring(game:HttpGet("https://sirius.menu/rayfield"))()

local Window = Rayfield:CreateWindow({
    Name = "My Developer Tools",

    ConfigurationSaving = {
        Enabled = true,
        FolderName = "DeveloperTools",
        FileName = "Settings"
    }
})

local MainTab = Window:CreateTab("Main")

MainTab:CreateButton({
    Name = "Test Button",
    Flag = "TestButton",
    Callback = function()
        print("Hello!")
    end
})
Rayfield:LoadConfiguration()
