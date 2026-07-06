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

local SpecialClasses = {
	AntumbraShadow = {
		ClassName = "ImageLabel",
		Name = "antumbraShadow",
		AnchorPoint = Vector2.new(0.5, 0.5),
		Position = UDim2.fromScale(0.5, 0.5),
		Image = "rbxassetid://5587865193",
		ImageTransparency = 0.94,
		ScaleType = Enum.ScaleType.Slice,
		SliceCenter = Rect.new(80, 78, 189, 318),
	},
	PenumbraShadow = {
		ClassName = "ImageLabel",
		Name = "penumbraShadow",
		AnchorPoint = Vector2.new(0.5, 0.5),
		Position = UDim2.fromScale(0.5, 0.5),
		Image = "rbxassetid://8992230677",
		ImageTransparency = 0.55,
		ScaleType = Enum.ScaleType.Slice,
		SliceCenter = Rect.new(99, 99, 99, 99),
	},
	UmbraShadow = {
		ClassName = "ImageLabel",
		Name = "umbraShadow",
		AnchorPoint = Vector2.new(0.5, 0.5),
		Position = UDim2.fromScale(0.5, 0.5),
		Image = "rbxassetid://76200300325831",
		ImageTransparency = 0,
		ScaleType = Enum.ScaleType.Slice,
		SliceCenter = Rect.new(46, 43, 351, 355),
	},
	Glow = {
		ClassName = "ImageLabel",
		Name = "DropShadow",
		AnchorPoint = Vector2.new(0.5, 0.5),
		Position = UDim2.fromScale(0.5, 0.5),
		Image = "rbxassetid://94680501858633",
		ImageTransparency = 0.5,
		ScaleType = Enum.ScaleType.Slice,
		SliceCenter = Rect.new(100, 140, 500, 448),
	},
}

function Creator:New(Class: string, Properties: { [string]: any }?, Children: { [any]: GuiObject }?, Root: any?)
	local SpecialConfig = SpecialClasses[Class]
	local Object: Instance

	if SpecialConfig then
		Object = Instance.new(SpecialConfig.ClassName)

		for PropName, PropValue in pairs(SpecialConfig) do
			if PropName ~= "ClassName" then
				Object[PropName] = PropValue
			end
		end
	else
		Object = Instance.new(Class)

		local Defaults = Creator.DefaultProperties and Creator.DefaultProperties[Class]
		for PropName, PropValue in pairs(Defaults or {}) do
			Object[PropName] = PropValue
		end
	end

	for Name, Value in pairs(Properties or {}) do
		if Name == "ThemeData" then
			self:AddThemeObject(Object, Value, Root)
		else
			Object[Name] = Value
		end
	end

	for _, Child in pairs(Children or {}) do
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
