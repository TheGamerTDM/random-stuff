local library = loadstring(game:HttpGet("https://pastebin.com/raw/CkyR8ePz",true))()
library.options.underlinecolor = "rainbow"

-- Farming tab
local Farming = library:CreateWindow("Farming")
local Swing = Farming:Toggle("Auto-Swing", {flag = "Swing"}) -- Farming.flags.Swing
local Sell = Farming:Toggle("Auto-Sell", {flag = "Sell"}) -- Farming.flags.Sell
local BackpackFull = Farming:Toggle("Auto-Full Sell", {flag = "FullBackpack"}) --Farming.flags.FullBackpack
local Boss = Farming:Toggle("Auto-Robot Boss", {flag = "Boss"}) -- Farming.flags.Boss
local Boss2 = Farming:Toggle("Auto-Eternal Boss", {flag = "Boss2"}) -- Farming.flags.Boss2


Farming:Section("--== Chi & Coins ==--")

Farming:Dropdown("Collect", {
    location = _G,
    flag = "Collection",
    list = {"Chi", "Coins", "Both"}
}, function(Yeet) print("Selected type:", Yeet) end)
-- _G.Collection

local Spawned = Farming:Toggle("Collect Spawned Things", {flag = "Spawn"}) -- Farming.flags.Spawn
local Hoops = Farming:Toggle("Collect Hoops", {flag = "Hoop"}) -- _G.Collection

-- Auto Buy Tab
local AutoBuy = library:CreateWindow("Auto Buy")
local Enabled = AutoBuy:Toggle("Auto-Purchase", {flag = "Purchase"}) -- AutoBuy.flags.Purchase
local Sword = AutoBuy:Toggle("Auto-Sword", {flag = "Sword"}) -- AutoBuy.flags.Sword
local Belt = AutoBuy:Toggle("Auto-Belt", {flag = "Belt"}) -- AutoBuy.flags.Belt
local Rank = AutoBuy:Toggle("Auto-Rank", {flag = "Rank"}) -- AutoBuy.flags.Rank
local Skill = AutoBuy:Toggle("Auto-Skills", {flag = "Skill"}) -- AutoBuy.flags.Skill
local Shuriken = AutoBuy:Toggle("Auto-Shurikens", {flag = "Shurikens"}) --AutoBuy.flags.Shurikens
_G.Enabled = AutoBuy.flags.Purchase
_G.Sword = AutoBuy.flags.Sword
_G.Belt = AutoBuy.flags.Belt
_G.Rank = AutoBuy.flags.Rank
_G.Skill = AutoBuy.flags.Skill

-- Misc
local Misc = library:CreateWindow("Misc")
Misc:Section("--== Pets ==--")

Misc:Dropdown("Eggs", {location = _G, flag = "Egg", list = {
"Blue Crystal",
"Purple Crystal",
"Orange Crystal",
"Enchanted Crystal",
"Astral Crystal",
"Golden Crystal",
"Inferno Crystal",
"Galaxy Crystal",
"Frozen Crystal",
"Eternal Crystal",
"Storm Crystal",
"Legends Crystal"
}
}, function(new) print("Selected Egg:", new) end)

local Eggs = Misc:Toggle("Open Eggs", {flag = "TEgg"}) -- Misc.flags.TEgg
local Basic = Misc:Toggle("Sell Basic", {flag = "SBasic"}) --Misc.flags.SBasic
local Advanced = Misc:Toggle("Sell Advanced", {flag = "SAdvanced"}) --Misc.flags.SAdvanced
local Rare = Misc:Toggle("Sell Rare", {flag = "SRare"}) --Misc.flags.SRare
local Epic = Misc:Toggle("Sell Epic", {flag = "SEpic"}) --Misc.flags.SEpic
local Unique = Misc:Toggle("Sell Unique", {flag = "SUnique"})
local Evolve = Misc:Toggle("Auto-Evolve", {flag = "Evolve"}) -- Misc.flags.TEgg
local Eternalise = Misc:Toggle("Auto-Eternalise", {flag = "Eternalise"}) -- Misc.flags.Eternalise

Misc:Section("--== Other Stuff ==--")

local PetGlitch = Misc:Button("Pet Glitch", function()
_G.Glitch = true
while _G.Glitch == true do 
	wait(.03)
    for i,v in pairs(game.Workspace.spawnedCoins.Valley:GetChildren()) do
        if v.Name == "Blue Chi Crate" then 
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v.Position)
            wait(.16)
        end
    end
end
end)

local PetGlitch2 = Misc:Button("Disable Pet Glitch", function()
_G.Glitch = false
end)

local MaxJump = Misc:Button("Max Jump", function()
while true do 
	wait(.001)
game.Players.LocalPlayer.multiJumpCount.Value = "50"
end
end)

local UnlockIsland = Misc:Button("Unlock Islands", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").islandUnlockParts["Enchanted Island"].CFrame
wait(.7)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").islandUnlockParts["Astral Island"].CFrame
wait(.7)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").islandUnlockParts["Mystical Island"].CFrame
wait(.7)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").islandUnlockParts["Space Island"].CFrame
wait(.7)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").islandUnlockParts["Tundra Island"].CFrame
wait(.7)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").islandUnlockParts["Eternal Island"].CFrame
wait(.7)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").islandUnlockParts["Sandstorm"].CFrame

end)

local StatEffects = Misc:Button("Toggle Stat Effects", function()
    game:GetService("Players").LocalPlayer.PlayerGui.statEffectsGui.Enabled = not game:GetService("Players").LocalPlayer.PlayerGui.statEffectsGui.Enabled
    game:GetService("Players").LocalPlayer.PlayerGui.hoopGui.Enabled = not game:GetService("Players").LocalPlayer.PlayerGui.hoopGui.Enabled
end)


Misc:Section("--== Settings ==--")

Misc:Bind("Toggle Gui",
          {flag = "Toggle", kbonly = true, default = Enum.KeyCode.LeftControl},
          function()
    game:GetService("CoreGui").ScreenGui.Container.Visible = not game:GetService("CoreGui").ScreenGui.Container.Visible
end)


-- Teleports
local Teleports = library:CreateWindow("Teleports")

Teleports:Section("--== Utilitys ==--")
local Shop = Teleports:Button("Shop", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").shopAreaCircle5.circleInner.CFrame
end)

local KOTH = Teleports:Button("King Of The Hill", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").kingOfTheHillPart.CFrame
end)

Teleports:Section("--== Worlds ==--")

local EnchantedIsland = Teleports:Button("Enchanted Island", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").islandUnlockParts["Enchanted Island"].CFrame
end)

local AstralIsland = Teleports:Button("Astral Island", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").islandUnlockParts["Astral Island"].CFrame
end)

local MysticalIsland = Teleports:Button("Mystical Island", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").islandUnlockParts["Mystical Island"].CFrame
end)

local SpaceIsland = Teleports:Button("Space Island", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").islandUnlockParts["Space Island"].CFrame
end)

local TundraIsland = Teleports:Button("Tundra Island", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").islandUnlockParts["Tundra Island"].CFrame
end)

local EternalIsland = Teleports:Button("Eternal Island", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").islandUnlockParts["Eternal Island"].CFrame
end)

local StormIsland = Teleports:Button("Storm Island", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").islandUnlockParts["Sandstorm"].CFrame
end)

Teleports:Section("--== Chests ==--")

local EternalChest = Teleports:Button("All Chest", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(37, 13694, 58)
wait(1)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(37, 9315, 58)
wait(1)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(37, 5675,58)
wait(1)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(523, 165, 370)
wait(1)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(48, 795, -185)
wait(1)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(212, 4075, 60)
wait(1)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-65, 30, 189)
wait(1)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2, 30, -232)
wait(1)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(37, 17715, 58)
end)




local rs = game:GetService("RunService").RenderStepped

spawn(function()
    while wait(1) do
        if Misc.flags.TEgg then
            -- This script was generated by Hydroxide
            local oh1 = "openCrystal"
            local oh2 = _G.Egg
            print("Purchased", _G.Egg)
            game:GetService("ReplicatedStorage").rEvents.openCrystalRemote:InvokeServer(oh1, oh2)
        end
    end
end)
spawn(function()
    while wait() do
            if Farming.flags.Swing then
                if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") then 
                game.Players.LocalPlayer.ninjaEvent:FireServer("swingKatana")
                    else
                    for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do 
                        if v.ClassName == "Tool" and v:FindFirstChild("attackShurikenScript") then 
                            game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
                        wait()
                        if v.ClassName == "Tool" and v:FindFirstChild("attackKatanaScript") then 
                            game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)                            
                        end
                     
                end
            end
        end
    end
end
end)

spawn(function()
    while wait(0.1) do
            if Farming.flags.Sell then
                if Farming.flags.FullBackpack == false then
                    if game.Players.LocalPlayer.Character:findFirstChild("HumanoidRootPart") then
                        game.workspace["sellAreaCircle"].circleInner.CFrame = game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame
                    end
                else
                    local Values = string.split(game:GetService("Players").LocalPlayer.PlayerGui.gameGui.currencyFrame.strengthFrame.amountLabel.Text, "/")
                    if Values[1] == Values[2] then 
                        if game.Players.LocalPlayer.Character:findFirstChild("HumanoidRootPart") then
                            game.workspace["sellAreaCircle"].circleInner.CFrame = game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame
                        end                    
                    
                end
            end
        end
    end
end)

spawn(function()
    while rs:wait() do
            if Farming.flags.Boss then
                if game:GetService("Workspace").bossFolder:WaitForChild("RobotBoss"):WaitForChild("HumanoidRootPart") then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.bossFolder.RobotBoss.HumanoidRootPart.CFrame
                else
                    wait(1)
                end
            
        end
    end
end)

spawn(function()
    while rs:wait() do
            if Farming.flags.Boss2 then
                if game:GetService("Workspace").bossFolder:WaitForChild("RobotBoss"):WaitForChild("HumanoidRootPart") then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.bossFolder.EternalBoss.HumanoidRootPart.CFrame
                else
                    wait(1)
                end
            
        end
    end
end)

spawn(function()
    while wait(0.5) do
        if AutoBuy.flags.Purchase then
            if AutoBuy.flags.Sword then
                -- This script was generated by Hydroxide
                local oh1 = "buyAllSwords"
                local oh2 = {"Ground", "Astral Island", "Space Island","Tundra Island", "Eternal Island"}
                for i = 1,#oh2 do
                    game:GetService("Players").LocalPlayer.ninjaEvent:FireServer(oh1, oh2[i])
                end
            end
        end
    end
end)

spawn(function()
    while wait(0.5) do
        if AutoBuy.flags.Purchase then
            if AutoBuy.flags.Belt then
                -- This script was generated by Hydroxide
                local oh1 = "buyAllBelts"
                local oh2 = {"Ground", "Astral Island", "Space Island","Tundra Island", "Eternal Island"}
                for i = 1,#oh2 do
                    game:GetService("Players").LocalPlayer.ninjaEvent:FireServer(oh1, oh2[i])
                end
            end
        end
    end
end)

spawn(function()
    while wait(0.5) do
        if AutoBuy.flags.Purchase then
            if AutoBuy.flags.Skill then
                -- This script was generated by Hydroxide
                local oh1 = "buyAllSkills"
                local oh2 = {"Ground", "Astral Island", "Space Island","Tundra Island", "Eternal Island"}
                for i = 1,#oh2 do
                    game:GetService("Players").LocalPlayer.ninjaEvent:FireServer(oh1, oh2[i])
                end
            end
        end
    end
end)

spawn(function()
    while wait(0.5) do
        if AutoBuy.flags.Purchase then
            if AutoBuy.flags.Rank then
-- This script was generated by Hydroxide
local oh1 = "buyRank"
local oh2 = game:GetService("ReplicatedStorage").Ranks.Ground:GetChildren()
for i = 1,#oh2 do
game:GetService("Players").LocalPlayer.ninjaEvent:FireServer(oh1, oh2[i].Name)
end
            end
        end
    end
end)

spawn(function()
    while wait(0.5) do
        if AutoBuy.flags.Purchase then
            if AutoBuy.flags.Shurikens then
                -- This script was generated by Hydroxide
                local oh1 = "buyAllShurikens"
                local oh2 = {"Ground", "Astral Island", "Space Island","Tundra Island", "Eternal Island"}
                for i = 1,#oh2 do
                    game:GetService("Players").LocalPlayer.ninjaEvent:FireServer(oh1, oh2[i])
                end
            end
        end
    end
end)

spawn(function()
        while wait(0.1) do
            if Farming.flags.Spawn then
                if _G.Collection == "Coins" then
                    for i, v in pairs(game.Workspace.spawnedCoins.Valley:GetChildren()) do
                        wait(0.1)
                        if string.match(v.Name, "Coin") == "Coin" then
                            if Farming.flags.Spawn then
                                if game.Players.LocalPlayer.Character:findFirstChild("HumanoidRootPart") then
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
                                end
                            end
                        end
                    end
                end
                if _G.Collection == "Chi" then
                    for i, v in pairs(game.Workspace.spawnedCoins.Valley:GetChildren()) do
                        wait(0.01)
                        if string.match(v.Name, "Blue Chi Crate") == "Blue Chi Crate" then
                            if Farming.flags.Spawn then
                                if game.Players.LocalPlayer.Character:findFirstChild(
                                    "HumanoidRootPart") then
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
                                end
                            end
                        end
                    end
                end
                if _G.Collection == "Both" then
                    for i, v in pairs(game.Workspace.spawnedCoins.Valley:GetChildren()) do
                        wait(0.1)
                        if Farming.flags.Spawn then
                            if game.Players.LocalPlayer.Character:findFirstChild(
                                "HumanoidRootPart") then
                                game.Players.LocalPlayer.Character
                                .HumanoidRootPart.CFrame = v.CFrame
                            end
                        end
                    end
                end
            end
        end
    end)

spawn(function()
    while wait(0.1) do
        if _G.Collection then
            if _G.Collection == "Coin" then
                local stuff = workspace.Hoops:getChildren()
                for i = 1, #stuff do
                    if _G.Collection then
                        if string.match(stuff[i].Name, "Coin") == "Coin" then
                            for i = 1, 10 do
                                if game.Players.LocalPlayer.Character:findFirstChild("HumanoidRootPart") then
                                    stuff[i].touchPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                                    wait(0.1)
                                end
                            end
                        end
                    end
                    wait()
                end
            end
            if _G.Collection == "Chi" then
                local stuff = workspace.Hoops:getChildren()
                for i = 1, #stuff do
                    if _G.Collection then
                        if string.match(stuff[i].Name, "Chi") == "Chi" then
                            for i = 1, 10 do
                                if game.Players.LocalPlayer.Character:findFirstChild("HumanoidRootPart") then
                                    stuff[i].touchPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                                    wait(0.1)
                                end
                            end
                        end
                    end
                    wait()
                end
            end
            if _G.Collection == "Both" then
                local stuff = workspace.Hoops:getChildren()
                for i = 1, #stuff do
                    if _G.Collection then
                        for i = 1, 10 do
                            if game.Players.LocalPlayer.Character:findFirstChild("HumanoidRootPart") then
                                stuff[i].touchPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                                wait(0.1)
                            end
                        end
                    end
                    wait()
                end
            end
        end
    end
end)

spawn(function()
    while wait(3) do
        if Misc.flags.Evolve then
            for i,v in pairs(game:GetService("Players").LocalPlayer.petsFolder:GetChildren()) do
                for i,x in pairs(v:GetChildren()) do
                    local oh1 = "evolvePet"
                    local oh2 = x.Name
                    game:GetService("ReplicatedStorage").rEvents.petEvolveEvent:FireServer(oh1, oh2)
                end
            end
        end
    end
end)
spawn(function()
    while wait(3) do
        if Misc.flags.Eternalise then
            for i,v in pairs(game:GetService("Players").LocalPlayer.petsFolder:GetChildren()) do
                for i,x in pairs(v:GetChildren()) do
                    -- This script was generated by Hydroxide
                    local oh1 = "eternalizePet"
                    local oh2 = v.Name
                    game:GetService("ReplicatedStorage").rEvents.petEternalizeEvent:FireServer(oh1, oh2)
                end
            end
        end
    end
end)

spawn(function() 
    while wait(1) do 
      if Misc.flags.SBasic then
        for i,v in pairs(game.Players.LocalPlayer.petsFolder.Basic:GetChildren()) do
          game.ReplicatedStorage.rEvents.sellPetEvent:FireServer("sellPet", v)
        end
      end
    end
  end
)
spawn(function() 
    while wait(1) do 
      if Misc.flags.SAdvanced then
        for i,v in pairs(game.Players.LocalPlayer.petsFolder.Advanced:GetChildren()) do
          game.ReplicatedStorage.rEvents.sellPetEvent:FireServer("sellPet", v)
        end
      end
    end
  end
)
spawn(function() 
    while wait(1) do 
        if Misc.flags.SRare then
            for i,v in pairs(game.Players.LocalPlayer.petsFolder.Rare:GetChildren()) do
                game.ReplicatedStorage.rEvents.sellPetEvent:FireServer("sellPet", v)
            end
        end
    end
end)
spawn(function() 
    while wait(1) do 
        if Misc.flags.SEpic then
            for i,v in pairs(game.Players.LocalPlayer.petsFolder.Epic:GetChildren()) do
                game.ReplicatedStorage.rEvents.sellPetEvent:FireServer("sellPet", v)
            end
        end
    end
end)
spawn(function() 
    while wait(1) do 
        if Misc.flags.SUnique then
            for i,v in pairs(game.Players.LocalPlayer.petsFolder.Unique:GetChildren()) do
                game.ReplicatedStorage.rEvents.sellPetEvent:FireServer("sellPet", v)
            end
        end
    end
end)

local vu = game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:connect(
    function()
        vu:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
        wait(1)
        vu:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    end)