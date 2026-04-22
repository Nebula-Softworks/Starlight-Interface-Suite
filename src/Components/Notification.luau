local services = require("../Utilities/Services")
local Creator = require("../Utilities/Creator")
local imageparser = require("../Utilities/ImageParser")

local module = {}

function module.Init(Library)
	Creator:New("Frame", {
		Parent = Library.Instance,
		Name = "NotificationHolder",
		AnchorPoint = Vector2.new(1, 0),
		BackgroundTransparency = 1,
		Position = UDim2.new(1, -12, 0, 12),
		Size = UDim2.fromOffset(300, 0),
	}, {
		Creator:New("UIListLayout", {
			Padding = UDim.new(0, 6),
			SortOrder = Enum.SortOrder.LayoutOrder,
		}, nil, Library),
	}, Library)

	module.Library = Library
end

function module:Notify(data: {
	Title: string,
	Icon: string,
	Duration: number,
})
	if data.Icon == nil then
		data.Icon = 110935784457491
	end
	if not imageparser.GetAsset(data.Icon) then
		imageparser.AddAsset(
			data.Icon,
			typeof(data.Icon) == "number" and data.Icon or nil,
			typeof(data.Icon) ~= "number" and data.Icon or nil
		)
	end

	task.spawn(function()
		local newNotification = Creator:New("Frame", {
			Parent = self.Library.GUI.NotificationHolder,
			Name = data.Title,
			LayoutOrder = #self.Library.GUI.NotificationHolder:GetChildren(),
			Visible = false,
			Size = UDim2.new(1, 0, 0, 32),
			ZIndex = 2147483642,
			ThemeData = {
				BackgroundColor3 = "WindowBackground",
			},
		}, {

			Creator:New("UICorner", {
				CornerRadius = UDim.new(0, 6),
			}, nil, self.Library),
			Creator:New("UIPadding", {
				PaddingBottom = UDim.new(0, 10),
				PaddingTop = UDim.new(0, 10),
			}, nil, self.Library),
			Creator:New("UIStroke", {
				Thickness = 1.5,
				Transparency = 0.78,
				ThemeData = {
					Color = "Accent",
				},
			}, nil, self.Library),

			Creator:New("Frame", {
				Name = "DropShadowHolder",
				BackgroundTransparency = 1,
				Size = UDim2.fromScale(1, 1),
			}, {
				Creator:New("AntumbraShadow", {
					Size = UDim2.fromScale(1.34, 2.08),
					ZIndex = 2147483641,
					ThemeData = {
						ImageColor3 = "Shadow",
					},
				}, nil, self.Library),
				Creator:New("PenumbraShadow", {
					Size = UDim2.fromScale(1.15, 1.832),
					ZIndex = 2147483641,
					ThemeData = {
						ImageColor3 = "Shadow",
					},
				}, nil, self.Library),
				Creator:New("UmbraShadow", {
					Size = UDim2.new(1, 70, 1, 70),
					ZIndex = 2147483641,
					ThemeData = {
						ImageColor3 = "Shadow",
					},
				}, nil, self.Library),
			}, self.Library),

			Creator:New("ImageLabel", {
				Name = "Icon",
				AnchorPoint = Vector2.new(0, 0.5),
				Position = UDim2.new(0, 7, 0.5, 0),
				Size = UDim2.fromOffset(18, 18),
				ZIndex = 2147483643,
				Image = imageparser.GetAsset(data.Icon),
				ScaleType = Enum.ScaleType.Crop,
				ThemeData = {
					ImageColor3 = "PrimaryText",
				},
			}, nil, self.Library),

			Creator:New("TextLabel", {
				AnchorPoint = Vector2.new(0, 0.5),
				Position = UDim2.fromScale(0, 0.5),
				Size = UDim2.new(1, 0, 0, 21),
				ZIndex = 2147483643,
				ClipsDescendants = true,
				Text = data.Title,
				TextTransparency = 0.12,
				TextYAlignment = Enum.TextYAlignment.Top,
				ThemeData = {
					TextColor3 = "Header",
				},
			}, {
				Creator:New("UIPadding", {
					PaddingLeft = UDim.new(0, 32),
					PaddingRight = UDim.new(0, 6),
				}, nil, self.Library),
			}, self.Library),
		}, self.Library)

		newNotification.Size = UDim2.new(1, 0, 0, -6)
		newNotification.Visible = true

		newNotification.TextLabel.Size = UDim2.new(1, 0, 0, math.huge)
		local bounds = newNotification.TextLabel.TextBounds.Y
		newNotification.TextLabel.Size = UDim2.new(1, 0, 0, bounds)
		services.TweenService
			:Create(
				newNotification,
				TweenInfo.new(0.6, Enum.EasingStyle.Exponential),
				{ Size = UDim2.new(1, 0, 0, bounds + 20) }
			)
			:Play()

		data.Duration = data.Duration or math.min(math.max((#data.Title * 0.1) + 2.5, 3), 10)
		if data.Duration >= 0 then
			task.wait(data.Duration)

			pcall(function()
				newNotification.Icon.Visible = false
				services.TweenService
					:Create(
						newNotification,
						TweenInfo.new(0.6, Enum.EasingStyle.Exponential),
						{ Size = UDim2.new(1, 0, 0, -6) }
					)
					:Play()
				task.wait(0.6)
				newNotification.Visible = false
				newNotification:Destroy()
			end)
		end

		return newNotification
	end)
end

return module
