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
			BorderSizePixel = 0,
			AutomaticCanvasSize = Enum.AutomaticSize.Y,
			CanvasSize = UDim2.fromScale(0, 0),
			ScrollBarThickness = 0,
			ScrollingDirection = Enum.ScrollingDirection.Y,
			ClipsDescendants = true,
		},
		TextLabel = {
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
			FontFace = Font.new("rbxasset://fonts/families/Inter.json", Enum.FontWeight.SemiBold),
			TextColor3 = Color3.fromRGB(185, 184, 193),
			TextSize = 12,
			TextXAlignment = Enum.TextXAlignment.Left,
			Text = "",
			TextWrapped = true,
			RichText = true,
		},
		TextButton = {
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
			Modal = true,
			Text = "",
			AutoButtonColor = false,
			TextTransparency = 1,
			RichText = true,
		},
		TextBox = {
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
			ClearTextOnFocus = false,
			ClipsDescendants = true,
			FontFace = Font.new("rbxasset://fonts/families/Inter.json", Enum.FontWeight.SemiBold),
			Text = "",
			TextColor3 = Color3.fromRGB(185, 184, 193),
			PlaceholderColor3 = Color3.fromRGB(102, 101, 108),
			TextSize = 12,
			RichText = true,
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
		UIStroke = {
			ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
		},
		UIListLayout = {
			SortOrder = Enum.SortOrder.LayoutOrder,
		},
		UIGridLayout = {
			SortOrder = Enum.SortOrder.LayoutOrder,
		},
		UIPageLayout = {
			GamepadInputEnabled = false,
			ScrollWheelInputEnabled = false,
			TouchInputEnabled = false,
			SortOrder = Enum.SortOrder.LayoutOrder,
		},
	},
}

function Creator:AddSignal(Signal, Function)
	return functions:GiveSignal(Creator, Signal:Connect(Function))
end

function Creator:RemoveSignal(Connection: RBXScriptConnection)
	table.remove(Creator.Signals, table.find(Creator.Signals, Connection))
	Connection:Disconnect()
end

function Creator:Disconnect()
	for Idx = #Creator.Signals, 1, -1 do
		local Connection = table.remove(Creator.Signals, Idx)
		Connection:Disconnect()
	end
end

function Creator:New(
	Class: string,
	Properties: {
		[string]: any,
	},
	Children: { [any]: GuiObject },
	Root
)
	if Class == "AntumbraShadow" then
		local Object = Instance.new("ImageLabel")

		Object.Name = "antumbraShadow"
		Object.AnchorPoint = Vector2.new(0.5, 0.5)
		Object.Position = UDim2.fromScale(0.5, 0.5)
		Object.Image = "rbxassetid://5587865193"
		Object.ImageTransparency = 0.94
		Object.ScaleType = Enum.ScaleType.Slice
		Object.SliceCenter = Rect.new(80, 78, 189, 318)

		for Name, Value in next, Properties or {} do
			if Name ~= "ThemeData" then
				Object[Name] = Value
			else
				Creator:AddThemeObject(Object, Value, Root)
			end
		end

		return Object
	elseif Class == "PenumbraShadow" then
		local Object = Instance.new("ImageLabel")

		Object.Name = "penumbraShadow"
		Object.AnchorPoint = Vector2.new(0.5, 0.5)
		Object.Position = UDim2.fromScale(0.5, 0.5)
		Object.Image = "rbxassetid://8992230677"
		Object.ImageTransparency = 0.55
		Object.ScaleType = Enum.ScaleType.Slice
		Object.SliceCenter = Rect.new(99, 99, 99, 99)

		for Name, Value in next, Properties or {} do
			if Name ~= "ThemeData" then
				Object[Name] = Value
			else
				Creator:AddThemeObject(Object, Value, Root)
			end
		end

		return Object
	elseif Class == "UmbraShadow" then
		local Object = Instance.new("ImageLabel")

		Object.Name = "umbraShadow"
		Object.AnchorPoint = Vector2.new(0.5, 0.5)
		Object.Position = UDim2.fromScale(0.5, 0.5)
		Object.Image = "rbxassetid://76200300325831"
		Object.ImageTransparency = 0
		Object.ScaleType = Enum.ScaleType.Slice
		Object.SliceCenter = Rect.new(46, 43, 351, 355)

		for Name, Value in next, Properties or {} do
			if Name ~= "ThemeData" then
				Object[Name] = Value
			else
				Creator:AddThemeObject(Object, Value, Root)
			end
		end

		return Object
	end

	local Object = Instance.new(Class)

	for Name, Value in next, Creator.DefaultProperties[Class] or {} do
		Object[Name] = Value
	end

	for Name, Value in next, Properties or {} do
		if Name ~= "ThemeData" then
			Object[Name] = Value
		else
			Creator:AddThemeObject(Object, Value, Root)
		end
	end

	for _, Child in next, Children or {} do
		Child.Parent = Object
	end

	return Object
end

function Creator:AddThemeObject(Object: GuiObject, ThemeProperties, Root)
	Creator.ThemeRegistry[Object] = {
		Object = Object,
		Properties = ThemeProperties,
	}
	Creator:UpdateTheme(Root)
	return Object
end

function Creator:UpdateTheme(Root)
	for Object, Data in pairs(Creator.ThemeRegistry) do
		if Data == nil then
			continue
		end
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
