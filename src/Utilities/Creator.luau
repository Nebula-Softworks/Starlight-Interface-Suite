local Root = require("../")
local functions = require("./")

local Creator = {
	ThemeRegistry = {},
	Signals = {},
	DefaultProperties = {
		ScreenGui = {
			ResetOnSpawn = false,
			ZIndexBehaviour = Enum.ZIndexBehavior.Global,
			IgnoreGuiInset = true,
			DisplayOrder = 2147483647,
		},
		Frame = {
			BorderSizePixel = 0,
		},
		ScrollingFrame = {
			AutomaticCanvasSize = Enum.AutomaticSize.Y,
			CanvasSize = UDim2.fromScale(0, 0),
			ScrollBarThickness = 0,
			ScrollingDirection = Enum.ScrollingDirection.Y,
		},
		TextLabel = {
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
			Font = Font.new("rbxasset://fonts/families/Inter.json", Enum.FontWeight.SemiBold),
			TextColor3 = Color3.fromRGB(185, 184, 193),
			TextSize = 12,
			TextXAlignment = Enum.TextXAlignment.Left,
			Text = "",
		},
		TextButton = {
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
			Modal = true,
			Text = "",
			AutoButtonColor = false,
			TextTransparency = 1,
		},
		TextBox = {
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
			ClearTextOnFocus = false,
			Font = Font.new("rbxasset://fonts/families/Inter.json", Enum.FontWeight.SemiBold),
			Text = "",
			TextColor3 = Color3.fromRGB(185, 184, 193),
			PlaceholderColor3 = Color3.fromRGB(102, 101, 108),
			TextSize = 12,
		},
		ImageLabel = {
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
		},
		ImageButton = {
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
			AutoButtonColor = false,
			Modal = true,
		},
		ViewportFrame = {
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
		},
	},
}

function Creator:AddSignal(Signal, Function)
	return functions:GiveSignal(Creator, Signal:Connect(Function))
end

function Creator:RemoveSignal(Connection: Connection)
	table.remove(Creator.Signals, table.find(Creator.Signals, Connection))
	Connection:Disconnect()
end

function Creator:Disconnect()
	for Idx = #Creator.Signals, 1, -1 do
		local Connection = table.remove(Creator.Signals, Idx)
		Connection:Disconnect()
	end
end

function Creator:New(Class, Properties, Children)
	local Object = Instance.new(Class)

	for Name, Value in next, Creator.DefaultProperties[Class] or {} do
		Object[Name] = Value
	end

	for Name, Value in next, Properties or {} do
		if Name ~= "ThemeData" then
			Object[Name] = Value
		else
			Creator:AddThemeObject(Object, Value)
		end
	end

	for _, Child in next, Children or {} do
		Child.Parent = Object
	end

	return Object
end

function Creator:AddThemeObject(Object: GuiObject, ThemeProperties)
	Creator.ThemeRegistry[Object] = {
		Object = Object,
		Properties = ThemeProperties,
	}
	Creator:UpdateTheme()
	return Object
end

function Creator:UpdateTheme()
	for Object, Data in pairs(Creator.ThemeRegistry) do
		if Object:IsA("UIGradient") then
			local numColors = #Data.Properties
			local keypoints = {}

			if numColors == 1 then
				Object["Color"] = ColorSequence.new(Root.CurrentTheme[Data.Properties[1]])
			end

			for i, color in ipairs(Data.Properties) do
				local time = (i - 1) / (numColors - 1)
				table.insert(keypoints, ColorSequenceKeypoint.new(time, Root.CurrentTheme[color]))
			end

			Object["Color"] = ColorSequence.new(keypoints)
		else
			for Property, Value in pairs(Data.Properties) do
				Object[Property] = Root.CurrentTheme[Value]
			end
		end
	end
end

return Creator
