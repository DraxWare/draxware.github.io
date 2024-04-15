--[[
    Welcome To Emergency Response AUTO ATM (At the Momment. This is a coding guide so I'll quote it as much as i want to.), Next: Lockpick, Cars, Safe, e.t.c.
]]
spawn(loadstring(game:HttpGet("https://raw.githubusercontent.com/DraxWare/draxware.github.io/main/Lua/Scripts/Bypass%20Anti%20Cheat.lua"))); -- Bypass Anti Cheat

repeat
    wait()
until getgenv().HasAuthenticatedAntiCheat == true
wait()
getgenv().HasAuthenticatedAntiCheat = false

--[[
    Init
]]

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/DraxWare/draxware.github.io/main/Lua/Ui%20Libraries/Jons-Ui-Library/Source.lua"))();

--[[
    Bypassing Game.Instance
]]

local Services = setmetatable({},{
    __index = function(a, b)
        return game:GetService(b)
    end
});

--[[
    Small Check for the game to be loaded.
]]

function WaitForInstance(_a, _b)
    local FirstCheck = _a:FindFirstChild(_b)
    while not FirstCheck do
        FirstCheck = _a.ChildAdded:Wait()
        if FirstCheck.Name == _b then
            return FirstCheck
        end
    end
    return FirstCheck
end

--[[
    Ui Go BRRRRRRR if you don't let it load!
]]

local Player = Services.Players.LocalPlayer
local Gui = WaitForInstance(Player, "PlayerGui")
local GameMenus = WaitForInstance(Gui, "GameMenus")
local ATM = WaitForInstance(GameMenus, "ATM")
local Hacking = WaitForInstance(ATM, "Hacking")
local Timer = WaitForInstance(Hacking, "Timer")
WaitForInstance(Hacking, "SelectingCode")

repeat
    wait()
until Timer ~= nil and ATM.Name == "ATM"

--[[
    Locals
]]

local ATMTimer = "Not Set"
local Activated = "Not Set"
local ManualActivation = "Not Set"

--[[
    Functions
]]

function _print(Level, Text, Timer)
    local _aa = 5
    if Timer then
        _aa = Timer + 3
    end
    if type(Level) == "String" or type(Level) == "Number" and Level ~= 1 or "1" or 2 or "2" or 3 or "3" then -- Yall Might Change this, WILD :kekw:.
        if tonumber(Level) == 1 then
            Library:CreateNotification("Console Print", tostring(Text), _aa)
    elseif tonumber(Level) == 2 then
        Library:CreateNotification("⚠️ Console Warning ⚠️", tostring(Text), _aa)
    elseif tonumber(Level) == 3 then
        Library:CreateNotification("🔴 Console Error! 🔴", tostring(Text), _aa)
    else
        Library:CreateNotification("Hello!?!?", "Somehow i messed up my checks huh?", _aa)
    end
    end
end

--[[
    Creating The GUI, Skip to 000 To see Source Code.
]]

local Window = Library:CreateWindow("ER:LC Auto ATM", false)
local Tab = Window:CreateTab("Auto ATM", true, "rbxassetid://4483362458", Vector2.new(0, 0), Vector2.new(0, 0))
local Section = Tab:CreateSection("ATM - TESTING")
local Label = Section:CreateLabel("ATM Time: 00")
local SecondLabel = Section:CreateLabel("Next Code: ABC")

local Toggle = Section:CreateToggle("Detect ATM Hacking", false, Color3.fromRGB(0, 146, 214), 0.25, function(Value)
    Activated = Value

    if Value == true then
        _print(1, "The ATM Auto Detect is On", 1)
    else
        _print(1, "The ATM Auto Detect is Off", 1)
    end
end);

Section:CreateButton("Manual ATM Detection", function()
    Library:CreatePrompt("TwoButton", "ATM Hacking", "Are You Currently Hacking the ATM ?", {
        "Yes", function()
            ManualActivation = true
        end,
        "No",
        function()
            _print(1, 'Alright', 1);
        end
    })
end);

--[[
    Main Code
]]

local PreviousNumber = 0
local LastUpdate = tick() -- Get the current time in seconds
local IsHackingATM = false
local Coordinates = Vector2.new(0, 0)
Toggle:Set(true)

function HackATM()

    local CycleFrame = WaitForInstance(Hacking, 'CycleFrame');
    local GotPos = false
    local Button;
    local PreviousCode = 'Not SET'

    repeat
        wait()
        for _, Child in next, CycleFrame:GetDescendants() do
            if Child.ClassName == 'TextLabel' then
                if Child.Text == Hacking.SelectingCode.Text then
                    Coordinates = (Child.AbsolutePosition + (Child.AbsoluteSize / 2))
                    GotPos = true
                    Button = Child
                    PreviousCode = Child.Text
                end
            end
        end
    until GotPos == true

    SecondLabel:UpdateLabel(Hacking.SelectingCode.Text..": (X, Y) = "..Coordinates.X..", "..Coordinates.Y)
    
    repeat
        for i = 1, (Coordinates - Vector2.new(Services.Players.LocalPlayer:GetMouse().X, Services.Players.LocalPlayer:GetMouse().Y)).Magnitude * 30 do
            Services.RunService.RenderStepped:Wait()
            if PreviousCode ~= Hacking.SelectingCode.Text then break end
            if (Coordinates - Vector2.new(Services.Players.LocalPlayer:GetMouse().X, Services.Players.LocalPlayer:GetMouse().Y)).Magnitude < 2  then 
                break 
            end
            local mouseDelta = Coordinates - Vector2.new(Services.Players.LocalPlayer:GetMouse().X, Services.Players.LocalPlayer:GetMouse().Y)
            if PreviousCode ~= Hacking.SelectingCode.Text then break end
            local step = mouseDelta / ((Coordinates - Vector2.new(Services.Players.LocalPlayer:GetMouse().X, Services.Players.LocalPlayer:GetMouse().Y)).Magnitude * 30) * i
            mousemoverel(step.X, step.Y)
            if PreviousCode ~= Hacking.SelectingCode.Text then break end
        end
        wait()
    until (Coordinates - Vector2.new(Services.Players.LocalPlayer:GetMouse().X, Services.Players.LocalPlayer:GetMouse().Y)).Magnitude < 2

    
    local OriginalColor = Button.BackgroundColor3

    while true do
        if PreviousCode ~= Hacking.SelectingCode.Text then break end
        if Button.BackgroundColor3 ~= OriginalColor then
            if PreviousCode ~= Hacking.SelectingCode.Text then break end
            mouse1click()
            break
        end
        wait()
    end
end

spawn(function()
    while true do
        if IsHackingATM == true and Activated == true then
            HackATM()
        end
        if tostring(ManualActivation) == 'true' then
            ManualActivation = false
            HackATM()
        end
    wait();
    end
end)

while true do
    if Timer.Text ~= "" then
        if tonumber(Timer.Text) ~= PreviousNumber and tonumber(Timer.Text) > 0 and tonumber(Timer.Text) < 100 then
            local CurrentNumber = tonumber(Timer.Text)
            Label:UpdateLabel(Timer.Text)
            LastUpdate = tick()
            PreviousNumber = CurrentNumber
            IsHackingATM = true
        elseif tick() - LastUpdate > 5 then
            IsHackingATM = false
            SecondLabel:UpdateLabel('Awaiting to start ATM HACK!')
            Label:UpdateLabel('Awaiting to start ATM HACK!')
        end
    else
        SecondLabel:UpdateLabel('Awaiting to start ATM HACK!...');
        Label:UpdateLabel('Awaiting to start ATM HACK!...');
    end
    wait(.50)
end
