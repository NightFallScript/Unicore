local p = game:GetService("Players")
local lp = p.LocalPlayer
local env = getfenv()
local ie = env.identifyexecutor or env.getexecutorname
local name = "unknown"

if ie then
    local s, r = pcall(ie)
    if s and r then
        name = tostring(r):lower()
    end
end

local wl = {
    "volt", "potassium", "pottasium", "wave", "seliware", 
    "synapse", "sirhurt", "madium", "velocity", 
    "macsploit", "opiumware", "yub-x", "delta", "codex", "real"
}

local ok = false
for _, v in ipairs(wl) do
    if name:find(v) then
        ok = true
        break
    end
end

if not ok then
    pcall(function() setclipboard("https://discord.gg/UPRtgK6tEJ") end)
    lp:Kick("Not Support Executor " .. name .. "Join to discord to get supported executor (he auto copy ti clipboard)")
end

local Lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/NightFallScript/Scripts/refs/heads/main/Key%20System%20and%20Loader%20LIB"))()

local myLib = Lib.new({
    Title = "Bullet.lua",
    Discord = "https://discord.gg/ZKQQne6BNJ",
    KeyURL = "https://raw.githubusercontent.com/NightFallScript/Unicore/refs/heads/main/key"
})

myLib:AddCard(
    "Apocalypse Rising 2",
    "rbxassetid://109672025661691",
    {
        Subtitle = "Script for Apocalypse Rising 2.", 
        Build = "v2.6",
        Updated = "01.06.2026",
        Status = "Ready To Launch"
    }, 
    "https://raw.githubusercontent.com/NightFallScript/Scripts/refs/heads/main/Apocalypse%20Rising%202" 
)

myLib:AddCard(
    "SCP:Roleplay",
    "rbxassetid://115058233019940",
    {
        Subtitle = "Script for SCP:Roleplay.", 
        Build = "v1.0",
        Updated = "07.06.2026",
        Status = "Ready To Launch"
    }, 
    "https://raw.githubusercontent.com/NightFallScript/Scripts/refs/heads/main/SCP%3ARoleplay" 
)

myLib:AddCard(
    "The Walking Dead Online",
    "rbxassetid://115058233019940",
    {
        Subtitle = "Script for The Walking Dead Online.", 
        Build = "v1.0 Release",
        Updated = "07.06.2026",
        Status = "Ready To Launch"
    }, 
    "https://raw.githubusercontent.com/NightFallScript/Scripts/refs/heads/main/The%20Walking%20Dead%20Online" 
)
