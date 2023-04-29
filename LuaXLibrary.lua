_G.Library = {}
-----------[['Library']]--------------------

LocalPlayer = game:GetService('Players').LocalPlayer
PlayerGui = LocalPlayer.PlayerGui
-------------------['Player Things']--------

UIS = game:GetService('UserInputService')
-------------------['Services']--------------

ScreenGui = nil
Frame = nil


-------------------['UI Things']-------------


function _G.Library.Window:CreateWindow(WindowName, TabName)
	ScreenGui = Instance.new('ScreenGui', PlayerGui)
	ScreenGui.Name = WindowName	
	ScreenGui.IgnoreGuiInset = true
	
	Frame = Instance.new('Frame', ScreenGui)
	UICorner = Instance.new('UICorner', Frame)
	Frame.Size = UDim2.new(0, 561, 0, 341)
	Frame.AnchorPoint = Vector2.new(0.5, 0.5)
	Frame.Position = UDim2.new(0.5, 0, 0.5, 0)
	Frame.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
	Frame.Name = TabName
end


return _G.Library



--function Library:CreateTextButton(ButtonName)
	--local Button = Instance.new('TextButton', Frame)
--end
