local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("The Real Script", "DarkTheme")


---AUTO/Main
local Tab = Window:NewTab("Auto")
local Section = Tab:NewSection("Instant Kills")

Section:NewButton("Kill Dio", "Punch Him First", function()
    workspace.Enemies.DIO.Head:Destroy()
    print("KONO DIO DA!")
end)
Section:NewButton("Kill Vergil", "Punch Him First", function()
    workspace.Enemies.Vergil.Head:Destroy()
    print("The fog is coming")
end)

Section:NewButton("Kill Garou", "Punch Him First", function()
    workspace.Enemies.Garou.Head:Destroy()
    print("Weakest monster?")
end)

Section:NewButton("Kill Sakya(Event)", "Punch Her First", function()
    workspace.Enemies["Sakuya Izayoi"].Head:Destroy()
    print("Fake The World")
end)
Section:NewButton("Kill SCR", "Punch Him First", function()
    workspace.Enemies["Silver Chariot Requiem"].Head:Destroy()
    print("This is REQUIEM!")
end)

--Shop
local Tab = Window:NewTab("Shop")
local Section = Tab:NewSection("Shop")
Section:NewButton("Buy Arrow", "buys arrow for your money", function()
local args = {
    [1] = "Arrow",
    [2] = {
        ["Price"] = 250,
        ["Icon"] = "rbxassetid://6397031841"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remote_Events"):WaitForChild("Shop"):FireServer(unpack(args))

end)
Section:NewButton("Buy Rokakaka", "buys Rokakaka for your money", function()

local args = {
    [1] = "Rokakaka",
    [2] = {
        ["Price"] = 250,
        ["Icon"] = "rbxassetid://6397031841"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remote_Events"):WaitForChild("Shop"):FireServer(unpack(args))
end)
    

--shop end    
--Create Farm
local Tab = Window:NewTab("Farm")
local Section = Tab:NewSection("Create Farm")
Section:NewToggle("Create Farm", "instantly teleports you to create and pick it up", function(state)
    if state then
        print("Farm On")
                _G.Farm = true
        while _G.Farm == true do wait(0.1)
        local x = 0

    for i = 1,6 do
pcall(function()
   x = x+1
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Item_Spawnner.Box:GetChildren()[x].Box.Base.CFrame 
wait(0.2)
local clickdetector = workspace.Item_Spawnner.Box:GetChildren()[x].Box.Base.ClickDetector
fireclickdetector(clickdetector)
    
    end)
        end
            end


    else
            _G.Farm = false
        while _G.Farm == true do wait(0.1)
        local x = 0

    for i = 1,6 do
pcall(function()
   x = x+1
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Item_Spawnner.Box:GetChildren()[x].Box.Base.CFrame 
wait(0.2)
local clickdetector = workspace.Item_Spawnner.Box:GetChildren()[x].Box.Base.ClickDetector
fireclickdetector(clickdetector)
    
    end)
        end
            end


        print("Farm Off")
    end
end)


--Gojo
local Section = Tab:NewSection("Gojo Farm")
Section:NewToggle("Gojo Farm", "instantly teleports you to Blindfold and pick it up", function(state)
    if state then
        _G.Gojo = true
        while _G.Gojo == true do wait(0.1)
        local x = 0

    for i = 1,4 do
pcall(function() 
   
   x = x+1
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Item_Spawnner.Blindfold:GetChildren()[3].Blindfold.CFrame
local clickdetector = workspace.Item_Spawnner.Blindfold:GetChildren()[x].Blindfold.ClickDetector
fireclickdetector(clickdetector)
print("working")
    end)
        end
            end


    else
        _G.Gojo = false
        while _G.Gojo == true do wait(0.1)
        local x = 0

    for i = 1,4 do
pcall(function()
   x = x+1
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Item_Spawnner.Blindfold:GetChildren()[3].Blindfold.CFrame
local clickdetector = workspace.Item_Spawnner.Blindfold:GetChildren()[x].Blindfold.ClickDetector
fireclickdetector(clickdetector)
    end)
        end
            end




    end
end)

local Section = Tab:NewSection("Infnite Yield")
Section:NewButton("Infnite Yield", "Admin cmds", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
end)

    
--Hide gui
local Tab = Window:NewTab("Keybinds")
local Section = Tab:NewSection("Binds")
Section:NewKeybind("Hide Gui", "Hides GUI", Enum.KeyCode.L, function()
	Library:ToggleUI()
end)
