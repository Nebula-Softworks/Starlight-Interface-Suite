local services = require("../Utilities/Services")
local Creator = require("../Utilities/Creator")
local utilities = require("../Utilities")
local imageparser = require("../Utilities/ImageParser")

return function(Library)
	if not imageparser.GetAsset(Library.Icon) then
		imageparser.AddAsset(
			Library.Icon,
			typeof(Library.Icon) == "number" and Library.Icon or nil,
			typeof(Library.Icon) ~= "number" and Library.Icon or nil
		)
	end

	local WatermarkObject = Creator:New("Frame", {
		Name = "Watermark",
		Parent = Library.Instance,
		Position = UDim2.fromOffset(12, 12),
		Size = UDim2.fromOffset(0, 32),
		ZIndex = 2147483639,
		ThemeData = {
			BackgroundColor3 = "WindowBackground",
		},
	}, {
		Creator:New("UICorner", {
			CornerRadius = UDim.new(0, 6),
		}, nil, Library),
		Creator:New("UIStroke", {
			Thickness = 1.5,
			Transparency = 0.78,
			Color = Color3.new(1, 1, 1),
		}, {
			Creator:New("UIAccent", {
				Rotation = -87,
				ThemeData = {
					"Accent",
					"WindowBackground",
				},
			}, nil, Library),
		}, Library),

		Creator:New("Frame", {
			Name = "DropShadowHolder",
			BackgroundTransparency = 1,
			Size = UDim2.fromScale(1, 1),
		}, {
			Creator:New("AntumbraShadow", {
				Size = UDim2.fromScale(1.34, 2.08),
				ZIndex = 2147483638,
				ThemeData = {
					ImageColor3 = "Shadow",
				},
			}, nil, Library),
			Creator:New("PenumbraShadow", {
				Size = UDim2.fromScale(1.15, 1.832),
				ZIndex = 2147483638,
				ThemeData = {
					ImageColor3 = "Shadow",
				},
			}, nil, Library),
			Creator:New("UmbraShadow", {
				Size = UDim2.new(1, 75, 1, 70),
				ZIndex = 2147483638,
				ThemeData = {
					ImageColor3 = "Shadow",
				},
			}, nil, Library),
		}, Library),

		Creator:New("ImageLabel", {
			Name = "Icon",
			AnchorPoint = Vector2.new(0, 0.5),
			Position = UDim2.new(0, 7, 0.5, 0),
			Size = UDim2.fromOffset(22, 22),
			ZIndex = 2147483640,
			Image = imageparser.GetAsset(Library.Icon),
			ScaleType = Enum.ScaleType.Crop,
			ImageColor3 = Color3.new(1, 1, 1),
		}, nil, Library),

		Creator:New("TextLabel", {
			AnchorPoint = Vector2.new(0, 0.5),
			Position = UDim2.fromScale(0, 0.5),
			Size = UDim2.new(1, -24, 0, 21),
			ZIndex = 2147483640,
			Text = Library.WatermarkTitle,
			TextTransparency = 0.12,
			ThemeData = {
				TextColor3 = "Header",
			},
		}, {
			Creator:New("UIPadding", {
				PaddingLeft = UDim.new(0, 22),
			}, nil, Library),
		}, Library),
	}, Library)

	local function getPing()
		return math.round(
			(
				(
					services.RunService:IsStudio() and services.LocalPlayer:GetNetworkPing()
					or services.Stats.PerformanceStats.Ping:GetValue()
				) * 2
			) / 0.01
		)
	end
	local LastIteration, Start = nil, nil
	local FrameUpdateTable = {}
	local TimeFunction = services.RunService:IsRunning() and time or os.clock
	local good, mid, bad
	Creator:AddSignal(services.RunService.Heartbeat, function()
		LastIteration = TimeFunction()
		for Index = #FrameUpdateTable, 1, -1 do
			FrameUpdateTable[Index + 1] = FrameUpdateTable[Index] >= LastIteration - 1 and FrameUpdateTable[Index]
				or nil
		end

		local fps = math.floor(
			TimeFunction() - Start >= 1 and #FrameUpdateTable or #FrameUpdateTable / (TimeFunction() - Start)
		)
		local ping = getPing()
		good =
			`{Library.CurrentTheme.Good.R * 255}, {Library.CurrentTheme.Good.G * 255}, {Library.CurrentTheme.Good.B * 255}`
		mid =
			`{Library.CurrentTheme.Mid.R * 255}, {Library.CurrentTheme.Mid.G * 255}, {Library.CurrentTheme.Mid.B * 255}`
		bad =
			`{Library.CurrentTheme.Bad.R * 255}, {Library.CurrentTheme.Bad.G * 255}, {Library.CurrentTheme.Bad.B * 255}`

		FrameUpdateTable[1] = LastIteration
		WatermarkObject.TextLabel.Text =
			`{Library.WatermarkTitle}}   |   {services.LocalPlayer.Name}   |   <font color="rgb({fps >= 60 and good or (fps >= 20 and mid or bad)})">{fps} FPS</font>  |   <font color="rgb({ping <= 60 and good or (fps <= 120 and mid or bad)})">{ping}}ms</font>`
	end)

	utilities:MakeDraggable(WatermarkObject, WatermarkObject)

	return WatermarkObject
end
