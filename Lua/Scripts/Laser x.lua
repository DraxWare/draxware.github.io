--[[
    Don't Touch Anything Of This, Including The 5.1!!!!!!!!!, IF YOU WANT YOUR SRIPT TO BE BROKEN THAN CHANGE IT
]]
loadstring(game:HttpGet("https://raw.githubusercontent.com/Jonatanortiz2/Johnny-Test/master/freelaserxpart1.lua"))();
wait(5.1)
game:GetService("RunService").Heartbeat:Connect(function()
	pcall(_G.UpdatePosition())
end)
