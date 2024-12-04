local screenGui = Instance.new("ScreenGui");
screenGui.Name = "JonsUiLib"

-- Set the parent of the ScreenGui to CoreGui
screenGui.Parent = gethui()
-- Create a Frame
local frame = Instance.new("Frame")
frame.Size = UDim2.new(0.5, 0, 0.5, 0)
frame.BackgroundColor3 = Color3.new(0, 0, 1)
frame.Name = tostring(math.random(0x7fffffff))
frame.Parent = screenGui
