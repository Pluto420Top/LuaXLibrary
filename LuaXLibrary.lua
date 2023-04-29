local UIS = game:GetService('UserInputService')
local Players = game:GetService('Players')
local LocalPlayer = Players.LocalPlayer
------------------[['Services']]-----------------

local LuaX = nil
local frame = nil
local dragToggle = nil
local dragSpeed = 0.1
local dragStart = nil
local startPos = nil
local A = 0
local library = {}

function library:CreateWindow(Name, LuaX, Frame)
	 local LuaX = Instance.new('ScreenGui')
	 local Frame = Instance.new('Frame')
	 local UICorner = Instance.new('UICorner')
	 Frame.Parent = LuaX
	 frame = Frame
	 UICorner.Parent = Frame
	
	 frame.AnchorPoint = Vector2.new(0.5, 0.5)
	 frame.Position = UDim2.new(0.5, 0, 0.5, 0)
	 frame.Size = UDim2.new(0, 561, 0, 331)
	 frame.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
	 LuaX.Parent = LocalPlayer.PlayerGui
	 A = A + 1
	 LuaX.Name = "LuaX"
	 frame.Name = "LuaXFrame"
	 LuaX.IgnoreGuiInset = true
	if A == 2 then
		LuaX:Destroy()
		if LuaX == nil then
			A = 0
		end
	end
end



local function updateInput(input)
	local delta = input.Position - dragStart
	local position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X,
		startPos.Y.Scale, startPos.Y.Offset + delta.Y)
	game:GetService('TweenService'):Create(frame, TweenInfo.new(dragSpeed), {Position = position}):Play()
end

frame.InputBegan:Connect(function(input)
	if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) then 
		dragToggle = true
		dragStart = input.Position
		startPos = frame.Position
		input.Changed:Connect(function()
			if input.UserInputState == Enum.UserInputState.End then
				dragToggle = false
			end
		end)
	end
end)

UIS.InputChanged:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
		if dragToggle then
			updateInput(input)
		end
	end
end)
