local services = require("../Utilities/Services")
local Creator = require("../Utilities/Creator")
local Acrylic = require("../Acrylic")
local imageparser = require("../Utilities/ImageParser")

return function(GUI: ScreenGui, Library)
	local Holder = Creator:New("Folder", {
		Name = "BackgroundFX",
		Parent = GUI,
	}, nil, Library)

	local Darkener = Creator:New("Frame", {
		Name = "Background",
		Visible = true,
		BackgroundTransparency = 0.2,
		Size = UDim2.fromScale(1, 1),
		ZIndex = -10000,
		Parent = Holder,
		ThemeData = {
			BackgroundColor3 = "WindowBackground",
		},
	}, nil, Library)
	local Snowfall = Creator:New("ImageLabel", {
		Name = "Snowfall",
		Visible = true,
		Position = UDim2.fromScale(-1, -1),
		Size = UDim2.fromScale(2, 2),
		ZIndex = -10000 + 1,
		Parent = Holder,
		Image = imageparser.GetAsset("SnowfallBackground"),
		ImageTransparency = 0.5,
		ScaleType = Enum.ScaleType.Crop,
		ThemeData = {
			ImageColor3 = "White",
		},
	}, nil, Library)

	services.TweenService
		:Create(
			Snowfall,
			TweenInfo.new(4, Enum.EasingStyle.Linear, Enum.EasingDirection.Out, -1, false),
			{ Position = UDim2.fromScale(0, 0.05) }
		)
		:Play()

	local Blur = Acrylic.CreateBlur()
	Blur.Object.Parent = (not Library.SecureMode) and services.Lighting or nil

	return {
		Darkener = Darkener,
		Snowfall = Snowfall,
		Blur = Blur,
	}
end
