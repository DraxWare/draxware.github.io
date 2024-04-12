--[[
	Please Make Sure To Give Us Credits If Youre Planning On Sharing it / Posting It On Your Hub etc.
]]

--[[
	This Area It's Going To Be For Making The Gui's On The Roblox Enviroment.	
]]
local Slider = Instance.new("ScreenGui")
local SliderMainFrame = Instance.new("ImageLabel")
local TextLabel = Instance.new("TextLabel")
local TextLabel_Roundify_12px = Instance.new("ImageLabel")
local hbeframe = Instance.new("Frame")
local Max = Instance.new("TextButton")
local Bar = Instance.new("Frame")
local TextControl = Instance.new("TextBox")
local TextLabel_2 = Instance.new("TextLabel")
local spdframe = Instance.new("Frame")
local Max_2 = Instance.new("TextButton")
local Bar_2 = Instance.new("Frame")
local TextControl_2 = Instance.new("TextBox")
local TextLabel_3 = Instance.new("TextLabel")
local jpwframe = Instance.new("Frame")
local Max_3 = Instance.new("TextButton")
local Bar_3 = Instance.new("Frame")
local TextControl_3 = Instance.new("TextBox")
local TextLabel_4 = Instance.new("TextLabel")
--[[
	Properties;
]]
Slider.Name = "Slider"
Slider.Parent = game.CoreGui
SliderMainFrame.Name = "SliderMainFrame"
SliderMainFrame.Parent = Slider
SliderMainFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SliderMainFrame.BackgroundTransparency = 1.000
SliderMainFrame.ClipsDescendants = true
SliderMainFrame.Position = UDim2.new(0.142124549, 0, 0.228004992, 0)
SliderMainFrame.Size = UDim2.new(0.33792302, 0, 0.406443626, 0)
SliderMainFrame.ZIndex = 0
SliderMainFrame.Image = "rbxassetid://3570695787"
SliderMainFrame.ImageColor3 = Color3.fromRGB(50, 50, 50)
SliderMainFrame.ScaleType = Enum.ScaleType.Slice
SliderMainFrame.SliceCenter = Rect.new(100, 100, 100, 100)
SliderMainFrame.SliceScale = 0.050
TextLabel.Parent = SliderMainFrame
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.BorderSizePixel = 0
TextLabel.Size = UDim2.new(1, 0, 0, 25)
TextLabel.ZIndex = 2
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "Testing Purposes [Alpha]"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true
TextLabel_Roundify_12px.Name = "TextLabel_Roundify_12px"
TextLabel_Roundify_12px.Parent = TextLabel
TextLabel_Roundify_12px.AnchorPoint = Vector2.new(0.5, 0.5)
TextLabel_Roundify_12px.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_Roundify_12px.BackgroundTransparency = 1.000
TextLabel_Roundify_12px.ClipsDescendants = true
TextLabel_Roundify_12px.Position = UDim2.new(0.5, 0, 0.5, 0)
TextLabel_Roundify_12px.Size = UDim2.new(1, 0, 1, 0)
TextLabel_Roundify_12px.Image = "rbxassetid://3570695787"
TextLabel_Roundify_12px.ImageColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_Roundify_12px.ImageTransparency = 0.400
TextLabel_Roundify_12px.ScaleType = Enum.ScaleType.Slice
TextLabel_Roundify_12px.SliceCenter = Rect.new(100, 100, 100, 100)
TextLabel_Roundify_12px.SliceScale = 0.050
hbeframe.Name = "hbeframe"
hbeframe.Parent = SliderMainFrame
hbeframe.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
hbeframe.BorderColor3 = Color3.fromRGB(0, 0, 0)
hbeframe.BorderSizePixel = 0
hbeframe.Position = UDim2.new(0.29723224, 0, 0.594512165, 0)
hbeframe.Size = UDim2.new(0, 293, 0, 113)
Max.Name = "Max"
Max.Parent = hbeframe
Max.AnchorPoint = Vector2.new(0.5, 0.5)
Max.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Max.BackgroundTransparency = 0.950
Max.BorderSizePixel = 0
Max.Position = UDim2.new(0.5, 0, 0.5, 0)
Max.Size = UDim2.new(0.75, 0, 0.100000001, 0)
Max.AutoButtonColor = false
Max.Font = Enum.Font.SourceSans
Max.Text = ""
Max.TextColor3 = Color3.fromRGB(0, 0, 0)
Max.TextSize = 14.000
Bar.Name = "Bar"
Bar.Parent = Max
Bar.BackgroundColor3 = Color3.fromRGB(50, 150, 250)
Bar.BorderSizePixel = 0
Bar.Size = UDim2.new(0.5, 0, 1, 0)
TextControl.Name = "TextControl"
TextControl.Parent = hbeframe
TextControl.AnchorPoint = Vector2.new(0.5, 0.5)
TextControl.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextControl.BackgroundTransparency = 0.900
TextControl.BorderSizePixel = 0
TextControl.Position = UDim2.new(0.5, 0, 0.75, 0)
TextControl.Size = UDim2.new(0.200000003, 0, 0.200000003, 0)
TextControl.ClearTextOnFocus = false
TextControl.Font = Enum.Font.SourceSansBold
TextControl.PlaceholderColor3 = Color3.fromRGB(100, 100, 100)
TextControl.Text = "50"
TextControl.TextColor3 = Color3.fromRGB(200, 200, 200)
TextControl.TextScaled = true
TextControl.TextSize = 14.000
TextControl.TextWrapped = true
TextLabel_2.Parent = hbeframe
TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.BackgroundTransparency = 1.000
TextLabel_2.Size = UDim2.new(0, 293, 0, 24)
TextLabel_2.Font = Enum.Font.ArialBold
TextLabel_2.Text = "Hitbox Extender Size"
TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.TextScaled = true
TextLabel_2.TextSize = 14.000
TextLabel_2.TextWrapped = true
spdframe.Name = "spdframe"
spdframe.Parent = SliderMainFrame
spdframe.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
spdframe.BorderColor3 = Color3.fromRGB(0, 0, 0)
spdframe.BorderSizePixel = 0
spdframe.Position = UDim2.new(0.0341590344, 0, 0.155487806, 0)
spdframe.Size = UDim2.new(0, 293, 0, 113)
Max_2.Name = "Max"
Max_2.Parent = spdframe
Max_2.AnchorPoint = Vector2.new(0.5, 0.5)
Max_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Max_2.BackgroundTransparency = 0.950
Max_2.BorderSizePixel = 0
Max_2.Position = UDim2.new(0.5, 0, 0.5, 0)
Max_2.Size = UDim2.new(0.75, 0, 0.100000001, 0)
Max_2.AutoButtonColor = false
Max_2.Font = Enum.Font.SourceSans
Max_2.Text = ""
Max_2.TextColor3 = Color3.fromRGB(0, 0, 0)
Max_2.TextSize = 14.000
Bar_2.Name = "Bar"
Bar_2.Parent = Max_2
Bar_2.BackgroundColor3 = Color3.fromRGB(50, 150, 250)
Bar_2.BorderSizePixel = 0
Bar_2.Size = UDim2.new(0.5, 0, 1, 0)
TextControl_2.Name = "TextControl"
TextControl_2.Parent = spdframe
TextControl_2.AnchorPoint = Vector2.new(0.5, 0.5)
TextControl_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextControl_2.BackgroundTransparency = 0.900
TextControl_2.BorderSizePixel = 0
TextControl_2.Position = UDim2.new(0.5, 0, 0.75, 0)
TextControl_2.Size = UDim2.new(0.200000003, 0, 0.200000003, 0)
TextControl_2.ClearTextOnFocus = false
TextControl_2.Font = Enum.Font.SourceSansBold
TextControl_2.PlaceholderColor3 = Color3.fromRGB(100, 100, 100)
TextControl_2.Text = "50"
TextControl_2.TextColor3 = Color3.fromRGB(200, 200, 200)
TextControl_2.TextScaled = true
TextControl_2.TextSize = 14.000
TextControl_2.TextWrapped = true
TextLabel_3.Parent = spdframe
TextLabel_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_3.BackgroundTransparency = 1.000
TextLabel_3.Size = UDim2.new(0, 293, 0, 24)
TextLabel_3.Font = Enum.Font.ArialBold
TextLabel_3.Text = "Speed Walk"
TextLabel_3.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_3.TextScaled = true
TextLabel_3.TextSize = 14.000
TextLabel_3.TextWrapped = true
jpwframe.Name = "jpwframe"
jpwframe.Parent = SliderMainFrame
jpwframe.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
jpwframe.BorderColor3 = Color3.fromRGB(0, 0, 0)
jpwframe.BorderSizePixel = 0
jpwframe.Position = UDim2.new(0.535960505, 0, 0.155487806, 0)
jpwframe.Size = UDim2.new(0, 293, 0, 113)
Max_3.Name = "Max"
Max_3.Parent = jpwframe
Max_3.AnchorPoint = Vector2.new(0.5, 0.5)
Max_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Max_3.BackgroundTransparency = 0.950
Max_3.BorderSizePixel = 0
Max_3.Position = UDim2.new(0.5, 0, 0.5, 0)
Max_3.Size = UDim2.new(0.75, 0, 0.100000001, 0)
Max_3.AutoButtonColor = false
Max_3.Font = Enum.Font.SourceSans
Max_3.Text = ""
Max_3.TextColor3 = Color3.fromRGB(0, 0, 0)
Max_3.TextSize = 14.000
Bar_3.Name = "Bar"
Bar_3.Parent = Max_3
Bar_3.BackgroundColor3 = Color3.fromRGB(50, 150, 250)
Bar_3.BorderSizePixel = 0
Bar_3.Size = UDim2.new(0.5, 0, 1, 0)
TextControl_3.Name = "TextControl"
TextControl_3.Parent = jpwframe
TextControl_3.AnchorPoint = Vector2.new(0.5, 0.5)
TextControl_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextControl_3.BackgroundTransparency = 0.900
TextControl_3.BorderSizePixel = 0
TextControl_3.Position = UDim2.new(0.5, 0, 0.75, 0)
TextControl_3.Size = UDim2.new(0.200000003, 0, 0.200000003, 0)
TextControl_3.ClearTextOnFocus = false
TextControl_3.Font = Enum.Font.SourceSansBold
TextControl_3.PlaceholderColor3 = Color3.fromRGB(100, 100, 100)
TextControl_3.Text = "50"
TextControl_3.TextColor3 = Color3.fromRGB(200, 200, 200)
TextControl_3.TextScaled = true
TextControl_3.TextSize = 14.000
TextControl_3.TextWrapped = true
TextLabel_4.Parent = jpwframe
TextLabel_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_4.BackgroundTransparency = 1.000
TextLabel_4.Size = UDim2.new(0, 293, 0, 24)
TextLabel_4.Font = Enum.Font.ArialBold
TextLabel_4.Text = "Jump Power"
TextLabel_4.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_4.TextScaled = true
TextLabel_4.TextSize = 14.000
TextLabel_4.TextWrapped = true
--[[
	Scripts;
]]
local function MPIEAA_fake_script() -- hbeframe.Main Handler 
	local script = Instance.new('LocalScript', hbeframe)
	local Default,Min,Max = 2,0,200
	local ValueFrame = script.Parent.Max.Bar -- Frame to slider
	local Value = script.Parent.TextControl -- TextLabel or whatever the value text
	local UserInput = game:GetService("UserInputService")
	local Dragging = false
	Value.Text = Min
	local Position = UDim2.new((math.clamp(Default,Min,Max) - Min) * (ValueFrame.Parent.AbsoluteSize.X / (Max - Min)) / ValueFrame.Parent.AbsoluteSize.X,0,1,0)
	ValueFrame.Size = Position
	local SlideValue = math.round(Position.X.Scale * (Max - Min) + Min)
	Value.Text = SlideValue
	local function Slide(Input)
		local Position = UDim2.new(math.clamp((Input.Position.X - ValueFrame.Parent.AbsolutePosition.X) / ValueFrame.Parent.AbsoluteSize.X,0,1),0,1,0)
		ValueFrame:TweenSize(Position,"Out","Quart",0.3,true)
	
		local SlideValue = math.round(Position.X.Scale * (Max - Min) + Min)
	
		Value.Text = SlideValue
	end
	
	ValueFrame.Parent.InputBegan:Connect(function(Input)
		if Input.UserInputType == Enum.UserInputType.MouseButton1 then
			Dragging = true
			Slide(Input)
		end
	end)
	
	ValueFrame.Parent.InputEnded:Connect(function(Input)
		if Input.UserInputType == Enum.UserInputType.MouseButton1 then
			Dragging = false
		end
	end)
	
	UserInput.InputChanged:Connect(function(Input)
		if Input.UserInputType == Enum.UserInputType.MouseMovement and Dragging then
			Slide(Input)
		end
	end)
	Value.FocusLost:Connect(function(Enter,Past)
	    if Enter then
		Default = tonumber(Value.Text)
		if not Default then return end
	        local Position = UDim2.new((math.clamp(Default,Min,Max) - Min) * (ValueFrame.Parent.AbsoluteSize.X / (Max - Min)) / ValueFrame.Parent.AbsoluteSize.X,0,1,0)
		ValueFrame.Size = Position
		local SlideValue = math.round(Position.X.Scale * (Max - Min) + Min)
		Value.Text = SlideValue
	    end
	end)
end
coroutine.wrap(MPIEAA_fake_script)()
local function HGRLFB_fake_script() -- SliderMainFrame.Dragging 
	local script = Instance.new('LocalScript', SliderMainFrame)

	loadstring(game:HttpGet("https://raw.githubusercontent.com/Jonatanortiz2/Johnny-Test/master/AntiCoreGui"))();
	--[[
		This Loadstring It's Going To Be Reffered To Exploit Anti Core Gui
	]]
	script.Parent.Active = true;
	script.Parent.Draggable = true;
end
coroutine.wrap(HGRLFB_fake_script)()
local function XVXWR_fake_script() -- spdframe.Main Handler 
	local script = Instance.new('LocalScript', spdframe)

	local Default,Min,Max = 16,0,200
	local ValueFrame = script.Parent.Max.Bar -- Frame to slider
	local Value = script.Parent.TextControl -- TextLabel or whatever the value text
	
	local UserInput = game:GetService("UserInputService")
	local Dragging = false
	
	Value.Text = Min
	
	local Position = UDim2.new((math.clamp(Default,Min,Max) - Min) * (ValueFrame.Parent.AbsoluteSize.X / (Max - Min)) / ValueFrame.Parent.AbsoluteSize.X,0,1,0)
	
	ValueFrame.Size = Position
	
	local SlideValue = math.round(Position.X.Scale * (Max - Min) + Min)
	
	Value.Text = SlideValue
	
	local function Slide(Input)
		local Position = UDim2.new(math.clamp((Input.Position.X - ValueFrame.Parent.AbsolutePosition.X) / ValueFrame.Parent.AbsoluteSize.X,0,1),0,1,0)
	
		ValueFrame:TweenSize(Position,"Out","Quart",0.3,true)
	
		local SlideValue = math.round(Position.X.Scale * (Max - Min) + Min)
	
		Value.Text = SlideValue
	end
	
	ValueFrame.Parent.InputBegan:Connect(function(Input)
		if Input.UserInputType == Enum.UserInputType.MouseButton1 then
			Dragging = true
			Slide(Input)
		end
	end)
	
	ValueFrame.Parent.InputEnded:Connect(function(Input)
		if Input.UserInputType == Enum.UserInputType.MouseButton1 then
			Dragging = false
		end
	end)
	
	UserInput.InputChanged:Connect(function(Input)
		if Input.UserInputType == Enum.UserInputType.MouseMovement and Dragging then
			Slide(Input)
		end
	end)
	Value.FocusLost:Connect(function(Enter,Past)
	    if Enter then
		Default = tonumber(Value.Text)
		if not Default then return end
	        local Position = UDim2.new((math.clamp(Default,Min,Max) - Min) * (ValueFrame.Parent.AbsoluteSize.X / (Max - Min)) / ValueFrame.Parent.AbsoluteSize.X,0,1,0)
		ValueFrame.Size = Position
		local SlideValue = math.round(Position.X.Scale * (Max - Min) + Min)
		Value.Text = SlideValue
	    end
	end)
end
coroutine.wrap(XVXWR_fake_script)()
local function DOBLGL_fake_script() -- jpwframe.Main Handler 
	local script = Instance.new('LocalScript', jpwframe)

	local Default,Min,Max = 50,0,200
	local ValueFrame = script.Parent.Max.Bar -- Frame to slider
	local Value = script.Parent.TextControl -- TextLabel or whatever the value text
	
	local UserInput = game:GetService("UserInputService")
	local Dragging = false
	
	Value.Text = Min
	
	local Position = UDim2.new((math.clamp(Default,Min,Max) - Min) * (ValueFrame.Parent.AbsoluteSize.X / (Max - Min)) / ValueFrame.Parent.AbsoluteSize.X,0,1,0)
	
	ValueFrame.Size = Position
	
	local SlideValue = math.round(Position.X.Scale * (Max - Min) + Min)
	
	Value.Text = SlideValue
	
	local function Slide(Input)
		local Position = UDim2.new(math.clamp((Input.Position.X - ValueFrame.Parent.AbsolutePosition.X) / ValueFrame.Parent.AbsoluteSize.X,0,1),0,1,0)
	
		ValueFrame:TweenSize(Position,"Out","Quart",0.3,true)
	
		local SlideValue = math.round(Position.X.Scale * (Max - Min) + Min)
	
		Value.Text = SlideValue
	end
	
	ValueFrame.Parent.InputBegan:Connect(function(Input)
		if Input.UserInputType == Enum.UserInputType.MouseButton1 then
			Dragging = true
			Slide(Input)
		end
	end)
	
	ValueFrame.Parent.InputEnded:Connect(function(Input)
		if Input.UserInputType == Enum.UserInputType.MouseButton1 then
			Dragging = false
		end
	end)
	
	UserInput.InputChanged:Connect(function(Input)
		if Input.UserInputType == Enum.UserInputType.MouseMovement and Dragging then
			Slide(Input)
		end
	end)
	Value.FocusLost:Connect(function(Enter,Past)
	    if Enter then
		Default = tonumber(Value.Text)
		if not Default then return end
	        local Position = UDim2.new((math.clamp(Default,Min,Max) - Min) * (ValueFrame.Parent.AbsoluteSize.X / (Max - Min)) / ValueFrame.Parent.AbsoluteSize.X,0,1,0)
		ValueFrame.Size = Position
		local SlideValue = math.round(Position.X.Scale * (Max - Min) + Min)
		Value.Text = SlideValue
	    end
	end)
end
coroutine.wrap(DOBLGL_fake_script)()
local function QQTJKV_fake_script() -- SliderMainFrame.Changer Handler 
	local script = Instance.new('LocalScript', SliderMainFrame)

	--[[
		This Will Give You Perks To Bypass The System Check, It's Easy Actually!
	]]
	local Old
	
	Old = hookmetamethod(game,"__index",function(Self,Index)
		if tostring(Self) == "HumanoidRootPart" and Index == "Size" then
			return Vector3.new(2,2,1)
		elseif tostring(Self) == "Humanoid" and Index == "WalkSpeed" then
			return 16
		elseif tostring(Self) == "Humanoid" and Index == "JumpPower" then
			return 50
		end
		return Old(Self,Index)
	end)
	--[[
		This Part It's For Changing Sizes etc, Don't Change it Unless You Know What You're Doing.
	]]
	local Hitbox_Size_Frame = script.Parent.hbeframe
	local Speed_Frame = script.Parent.spdframe
	local JumpPower_Frame = script.Parent.jpwframe
	
	function Get(what)
		return tonumber(what:FindFirstChild("TextControl").Text)
	end
	
	while wait() do
		for _,vv in next, game:GetService("Players"):GetPlayers() do
			if vv ~= game:GetService("Players").LocalPlayer and game:GetService("Workspace"):FindFirstChild(vv.Name) then
				for __,v in next,game:GetService("Workspace"):FindFirstChild(vv.Name):GetChildren() do
					if v and v.Parent and v:IsA("BasePart") and v.Parent:IsA("Model") and v.Name == "HumanoidRootPart" and v.Parent.Name ~= game:GetService("Players").LocalPlayer.Name then
						v.Size = Vector3.new(Get(Hitbox_Size_Frame),Get(Hitbox_Size_Frame),Get(Hitbox_Size_Frame))
						v.Transparency = 0;
						v.Material = "ForceField";
					end
				end
			else
				pcall(function()
					game:GetService('Workspace'):FindFirstChild(vv.Name):FindFirstChild("Humanoid").WalkSpeed = Get(Speed_Frame)
					game:GetService('Workspace'):FindFirstChild(vv.Name):FindFirstChild("Humanoid").JumpPower = Get(JumpPower_Frame)
				end)
			end
		end
	end
end
coroutine.wrap(QQTJKV_fake_script)()
