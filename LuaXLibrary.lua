local Library = {}
-----------[['Library']]--------------------

local LocalPlayer = game:GetService('Players').LocalPlayer
local PlayerGui = LocalPlayer.PlayerGui
-------------------['Player Things']--------

local UIS = game:GetService('UserInputService')
-------------------['Services']--------------

local ScreenGui = nil
local Frame = nil
-------------------['UI Things']-------------


function Library:CreateWindow(WindowName)
	local ScreenGui = Instance.new('ScreenGui', PlayerGui)
	ScreenGui.Name = WindowName	
	ScreenGui.IgnoreGuiInset = true
end




function Library:CreateTab(TabName)
	local Frame = Instance.new('Frame', ScreenGui)
	local UICorner = Instance.new('UICorner', Frame)
	Frame.Size = UDim2.new(0, 561, 0, 341)
	Frame.AnchorPoint = Vector2.new(0.5, 0.5)
	Frame.Position = UDim2.new(0.5, 0, 0.5, 0)
	Frame.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
	Frame.Name = TabName
end


--function Library:CreateTextButton(ButtonName)
	--local Button = Instance.new('TextButton', Frame)
--end
