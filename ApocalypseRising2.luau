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
        Subtitle = "Expires in -- days", 
        Build = "v2.6",
        Updated = "01.06.2026",
        Status = "Ready To Launch"
    }, 
    "https://api.jnkie.com/api/v1/luascripts/public/e401913c267301ae998328165932d05caa476ed5aeeee7fd590f160d8c151da2/download" 
)

myLib:AddCard(
    "SCP:Roleplay",
    "rbxassetid://115058233019940",
    {
        Subtitle = "Expires in -- days", 
        Build = "v1.0 Releas",
        Updated = "07.06.2026",
        Status = "Ready To Launch"
    }, 
    "https://api.jnkie.com/api/v1/luascripts/public/b1387d843155fd80d269f4094b9c0309c9d22137380667017ca2a76f1d3254e7/download" 
)
