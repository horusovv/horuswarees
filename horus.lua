--https://docs.sirius.menu/rayfield
local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "horusWare",
   Icon = 0, -- Use 0 for no icon
   LoadingTitle = "Loading..",
   LoadingSubtitle = "by horus",
   ShowText = "Rayfield", -- for mobile users to unhide rayfield, change if you'd like
   Theme = "Default",

   ToggleUIKeybind = "K",

   DisableRayfieldPrompts = false,
   DisableBuildWarnings = false,

   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil,
      FileName = "Big Hub"
   },

   Discord = {
      Enabled = false,
      Invite = "noinvitelink",
      RememberJoins = true
   },

   KeySystem = true,
   KeySettings = {
      Title = "Key",
      Subtitle = "Key System",
      Note = "you can get key on discord server",
      FileName = "Key",
      SaveKey = false,
      GrabKeyFromSite = false,
      Key = {"7728"}
   }
})

local Tab = Window:CreateTab("Аимбот", 4483362458) -- Title, Image

Rayfield:Notify({
   Title = "Greetings",
   Content = "enjoy",
   Duration = 6.5,
   Image = "home",
})

local Button = Tab:CreateButton({
   Name = "Хит саунд и Cframe",
   Callback = function()
--// Precisionlock.lua
loadstring(game:HttpGet("https://raw.githubusercontent.com/elxocasXD/Trip-Hub/refs/heads/main/Scripts/Precisionlock.lua"))()
   end,
})


    local Button = Tab:CreateButton({
   Name = "air hub",
   Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/Exunys/AirHub/main/AirHub.lua"))()
   end,
    })

         
local Tab = Window:CreateTab("Хабы", 4483362458) -- Title, Image


local Button = Tab:CreateButton({
   Name = "lipe",
   Callback = function()
   loadstring(game:HttpGet("https://pastebin.com/raw/ke146qjn"))()
   end,
})

local Button = Tab:CreateButton({
   Name = "miranda",
   Callback = function()

   loadstring(game:HttpGet("https://pastefy.app/JJVhs3rK/raw"))()
   end,
})

local Button = Tab:CreateButton({
   Name = "lennon",
   Callback = function()

   loadstring(game:HttpGet("https://pastefy.app/MJw2J4T6/raw"))()
   end,
})
   
local Button = Tab:CreateButton({
   Name = "ezhub",
   Callback = function()
   loadstring(game:HttpGet(('https://raw.githubusercontent.com/debug42O/Ez-Industries-Launcher-Data/master/Launcher.lua'),true))()
   end,
})

local Button = Tab:CreateButton({
   Name = "zzzzz hub ",
   Callback = function()
loadstring(game:HttpGet("https://pastefy.app/LlkfAKqJ/raw"))() -- pastefy version
   end,
})

local Button = Tab:CreateButton({
   Name = "miranda",
   Callback = function()

   loadstring(game:HttpGet("https://pastefy.app/JJVhs3rK/raw"))()
   end,
})

local Tab = Window:CreateTab("Телепорт", 4483362458) -- Title, Image
local Button = Tab:CreateButton({
   Name = "tp 50 studs",
   Callback = function()

   local Players = game:GetService("Players")
local player = Players.LocalPlayer

-- Создание простого GUI
local screenGui = Instance.new("ScreenGui")
screenGui.Parent = player.PlayerGui

local teleportButton = Instance.new("TextButton")
teleportButton.Size = UDim2.new(0, 150, 0, 50)
teleportButton.Position = UDim2.new(0, 20, 0, 20)
teleportButton.BackgroundColor3 = Color3.fromRGB(60, 120, 200)
teleportButton.TextColor3 = Color3.fromRGB(255, 255, 255)
teleportButton.Text = "ТЕЛЕПОРТ ВВЕРХ"
teleportButton.TextScaled = true
teleportButton.Parent = screenGui

teleportButton.MouseButton1Click:Connect(function()
    local character = player.Character
    if character and character:FindFirstChild("HumanoidRootPart") then
        character.HumanoidRootPart.CFrame = character.HumanoidRootPart.CFrame + Vector3.new(0, 50, 0)
    end
end)
   end,
})

local Tab = Window:CreateTab("Стрельба", 4483362458) -- Title, Image


local Button = Tab:CreateButton({
   Name = "Авто фаер",
   Callback = function()
      loadstring(game:HttpGet('https://raw.githubusercontent.com/VapingCat/Open-Source-TriggerBot/main/script.lua'))()
   end,
})

local Tab = Window:CreateTab("Модификация оружия", 4483362458) -- Title, Image

local Button = Tab:CreateButton({
   Name = "Нет отдачи на оружии",
   Callback = function()

   getgenv().Toggle = true 
getgenv().ValueCheck = true 
local FunctionCount = 0 
local ValueCount = 0 
 
local hookrecoil = function(func) 
    local hookrecoil; hookrecoil = hookfunction(func, function(...) 
        local args = {...} 
        if getgenv().Toggle then 
            return 0 or nil 
        end 
        return hookrecoil(unpack(args)) 
    end) 
end 
 
for _, func in next, getgc(true) do 
    if typeof(func) == "function" and string.find(string.lower(debug.getinfo(func).name), "recoil") then 
        FunctionCount = FunctionCount + 1 
        hookrecoil(func) 
    elseif typeof(func) == "table" then 
        for i, v in next, func do 
            if typeof(v) == "function" and string.find(string.lower(debug.getinfo(v).name), "recoil") then 
                FunctionCount = FunctionCount + 1 
                hookrecoil(v) 
            elseif getgenv().ValueCheck and typeof(i) == "string" and string.find(i, "%a+") and rawget(func, i) then 
                for char in string.gmatch(i, "%a+") do 
                    if string.find(string.lower(char), "recoil") then 
                        ValueCount = ValueCount + 1 
                        if typeof(v) == "number" then 
                            rawset(func, i, 0) 
                        elseif typeof(v) == "string" and tonumber(v) then 
                            rawset(func, i, "0") 
                        elseif typeof(v) == "Vector3" then 
                            rawset(func, i, Vector3.new(0,0,0)) 
                        elseif typeof(v) == "CFrame" then 
                            rawset(func, i, CFrame.new(0,0,0)) 
                        end 
                    end 
                end 
            end 
        end
    end 
end 
 
print("Fetched: " .. tostring(FunctionCount) .. " Functions") 
print("Fetched: " .. tostring(ValueCount) .. " Values")
   end,
})

local Tab = Window:CreateTab("Другое", 4483362458) -- Title, Image

local Button = Tab:CreateButton({
    Name = "infinite yeld",
   Callback = function()
   loadstring(game:HttpGet("https://cdn.wearedevs.net/scripts/Infinite%20Yield.txt"))()
   end,
})

local Button = Tab:CreateButton({
   Name = "dex explorer",
   Callback = function()
   loadstring(game:HttpGet("https://cdn.wearedevs.net/scripts/Dex%20Explorer.txt"))()
   end,
})

local Button = Tab:CreateButton({
   Name = "rejoin",
   Callback = function()
   game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer)
   end,
})

local Button = Tab:CreateButton({
   Name = "desync(patched)",
   Callback = function()
     setfflag("WorldStepMax", "-99999999999999")wait(1)queue_on_teleport([[wait(3.5)setfflag("WorldStepMax", "-1")]])game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId)
   end,   
     })
