-- https://discord.gg/gbETDfyS5q
repeat task.wait() until game:IsLoaded()
setfpscap(240)

_G.Premium = false

local EH_PS = "https://raw.githubusercontent.com/znIck43/EverlastHub/main/CL/EH-PS.lua"
local Players = game:GetService("Players").LocalPlayer
local Id = game.PlaceId
local Games = {
    [6299805723] = "https://raw.githubusercontent.com/znIck43/EverlastHub/main/Free/AnimeFightersSim.lua",
    [12886143095] = "https://raw.githubusercontent.com/znIck43/EverlastHub/main/Free/AnimeLastStand.lua",
    [15367026228] = "https://raw.githubusercontent.com/znIck43/EverlastHub/main/Free/AnimeSoulsX.lua",
    [2753915549] = "https://raw.githubusercontent.com/znIck43/EverlastHub/main/Free/BloxFruits.lua",
    [4996049426] = "https://raw.githubusercontent.com/znIck43/EverlastHub/main/Free/AllStarTD.lua",
    [606849621] = "https://raw.githubusercontent.com/znIck43/EverlastHub/main/Free/Jailbreak.lua"
}

local function Notify(title, text, dur)
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = title,
        Text = text,
        Duration = dur
    })
end

local function LoadScript(name)
    loadstring(game:HttpGet(name))()
end

if _G.Premium == false and Games[Id] then
    LoadScript(Games[Id])
    Notify("Free Script Version", "🟢 = Working", 10)
elseif _G.Premium and Games[Id] then
    LoadScript(EH_PS)
    Notify("Paid Script Version", "🟣 = Working", 10)
else
    setclipboard("https://discord.gg/gbETDfyS5q")
    Players:Kick("Game not supported. Copied Discord server invite to your clipboard.")
end
