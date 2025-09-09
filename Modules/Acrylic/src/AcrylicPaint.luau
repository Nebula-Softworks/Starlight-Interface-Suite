local Creator = require(script.Parent.Creator)
local AcrylicBlur = require(script.Parent.AcrylicBlur)

local New = Creator.New

return function()
	local AcrylicPaint = {}

	AcrylicPaint.Frame = New("Frame", {
		Size = UDim2.fromScale(1, 1),
		BackgroundTransparency = 0.9,
		BackgroundColor3 = Color3.fromRGB(255, 255, 255),
		BorderSizePixel = 0,
		Name = "Acrylic",
		ZIndex = 0,
	}, {
		New("ImageLabel", {
			Image = "rbxassetid://8992230677",
			ScaleType = "Slice",
			SliceCenter = Rect.new(Vector2.new(99, 99), Vector2.new(99, 99)),
			AnchorPoint = Vector2.new(0.5, 0.5),
			Size = UDim2.new(1, 120, 1, 116),
			Position = UDim2.new(0.5, 0, 0.5, 0),
			BackgroundTransparency = 1,
			ImageColor3 = Color3.fromRGB(0, 0, 0),
			ImageTransparency = 0.7,
			Name = "shadow"
		}),

		New("UICorner", {
			CornerRadius = UDim.new(0, 8),
		}),

		New("ImageLabel", {
			Image = "rbxassetid://9968344105",
			ImageTransparency = 0.98,
			ScaleType = Enum.ScaleType.Tile,
			TileSize = UDim2.new(0, 128, 0, 128),
			Size = UDim2.fromScale(1, 1),
			BackgroundTransparency = 1,
			Name = "tint"
		}, {
			New("UICorner", {
				CornerRadius = UDim.new(0, 8),
			}),
		}),

		New("ImageLabel", {
			Image = "rbxassetid://9968344227",
			ImageTransparency = 0.9,
			ScaleType = Enum.ScaleType.Tile,
			TileSize = UDim2.new(0, 128, 0, 128),
			Size = UDim2.fromScale(1, 1),
			BackgroundTransparency = 1,
			Name = "Noise"
		}, {
			New("UICorner", {
				CornerRadius = UDim.new(0, 8),
			}),
		}),
	})

	local Blur = AcrylicBlur()
	Blur.Frame.Parent = AcrylicPaint.Frame
	AcrylicPaint.Model = Blur.Model
	AcrylicPaint.AddParent = Blur.AddParent
	AcrylicPaint.SetVisibility = Blur.SetVisibility

	return AcrylicPaint
end
