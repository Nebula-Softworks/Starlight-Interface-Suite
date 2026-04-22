local services = require("../Utilities/Services")
local Creator = require("../Utilities/Creator")
local utilities = require("../Utilities")
local imageparser = require("../Utilities/ImageParser")

local MenuModule = {
	Library = nil,
	TabCount = 0,
	Instance = nil,
}
local New = function(Class, Properties, Children)
	Creator:New(Class, Properties, Children, MenuModule.Library)
end

function MenuModule.Init(Library)
	MenuModule.Library = Library

	MenuModule.Instance = New("TextButton", {
		Name = "Menu",
		Parent = Library.Instance,
		AnchorPoint = Vector2.new(0.5, 0),
		BackgroundTransparency = 0,
		Modal = true,
		Position = UDim2.new(0.5, 0, 0, 12),
		Size = UDim2.fromOffset(12, 42),
		ZIndex = 2147483645,
		ThemeData = {
			BackgroundColor3 = "WindowBackground",
		},
	}, {
		New("UICorner", {
			CornerRadius = UDim.new(0, 8),
		}),
		New("UIStroke", {
			Color = Color3.new(1, 1, 1),
			Thickness = 2,
			Transparency = 0.78,
		}, {
			New("UIGradient", {
				Rotation = -90,
				ThemeData = {
					"Accent",
					"WindowBackground",
				},
			}),
		}),

		New("Frame", {
			Name = "DropShadowHolder",
			BackgroundTransparency = 1,
			Size = UDim2.fromScale(1, 1),
		}, {
			New("AntumbraShadow", {
				Size = UDim2.fromScale(1.34, 1.34),
				ZIndex = 2147483644,
				ThemeData = {
					ImageColor3 = "Shadow",
				},
			}),
			New("PenumbraShadow", {
				Size = UDim2.fromScale(1.25, 1.25),
				ZIndex = 2147483644,
				ThemeData = {
					ImageColor3 = "Shadow",
				},
			}),
			New("UmbraShadow", {
				Size = UDim2.new(1, 58, 1, 58),
				ZIndex = 2147483644,
				ThemeData = {
					ImageColor3 = "Shadow",
				},
			}),
		}),

		New("Frame", {
			Name = "TabBar",
			AnchorPoint = Vector2.new(0, 0.5),
			BackgroundTransparency = 1,
			Position = UDim2.new(0, 6, 0.5, 0),
			Size = UDim2.new(1, -12, 1, 0),
		}, {
			New("UIListLayout", {
				Padding = UDim.new(0, 6),
				FillDirection = Enum.FillDirection.Horizontal,
				HorizontalAlignment = Enum.HorizontalAlignment.Center,
				VerticalAlignment = Enum.VerticalAlignment.Center,
			}),
		}),
	})

	utilities:MakeDraggable(MenuModule.Instance, MenuModule.Instance)
end

function MenuModule.Update(Window)
	if not imageparser.GetAsset(Window.Icon) then
		imageparser.AddAsset(
			Window.Icon,
			typeof(Window.Icon) == "number" and Window.Icon or nil,
			typeof(Window.Icon) ~= "number" and Window.Icon or nil
		)
	end

	MenuModule.TabCount += 1

	local Tab = New("Frame", {
		Name = "Window_" .. Window.Title,
		Parent = MenuModule.Tabbar.Instance,
		BackgroundTransparency = 0.8,
		LayoutOrder = (Window.Tabs ~= nil and -1 or (Window.IsKeybindList == true and 0 or MenuModule.TabCount)),
		Size = UDim2.fromOffset(31, 30),
		ZIndex = 2147483646,
		ThemeData = {
			BackgroundColor3 = "Accent",
		},
	}, {
		New("UICorner", {
			CornerRadius = UDim.new(0.25, 0),
		}),
		New("UIPadding", {
			PaddingBottom = UDim.new(10, 0),
			PaddingLeft = UDim.new(10, 0),
			PaddingRight = UDim.new(10, 0),
			PaddingTop = UDim.new(9, 0),
		}),
		New("ImageButton", {
			Name = "Icon",
			AnchorPoint = Vector2.new(0.5, 0.5),
			Position = UDim2.fromScale(0.5, 0.5),
			Size = UDim2.fromOffset(22, 22),
			ZIndex = 2147483647,
			Image = imageparser.GetAsset(Window.Icon),
			ScaleType = Enum.ScaleType.Crop,
			ThemeData = {
				ImageColor3 = "Accent",
			},
		}),
	})

	Creator:AddSignal(Tab.Instance.Icon.MouseButton1Click, function()
		Window.Minimized = not Window.Minimized
		if Window.Minimized then
			Creator:AddThemeObject(Tab.Instance.Icon, { TextColor3 = "PrimaryText" }, MenuModule.Library)
			services.TweenService:Create(
				Tab.Instance,
				TweenInfo.new(0.4, Enum.EasingStyle.Exponential),
				{ BackgroundTransparency = 1 }
			)
			utilities:Hide(Window.Instance)
		else
			Creator:AddThemeObject(Tab.Instance.Icon, { TextColor3 = "Accent" }, MenuModule.Library)
			services.TweenService:Create(
				Tab.Instance,
				TweenInfo.new(0.4, Enum.EasingStyle.Exponential),
				{ BackgroundTransparency = 0.8 }
			)
			utilities:Unhide(Window.Instance)
		end
	end)

	MenuModule.Instance.Size = UDim2.fromOffset(6 + 37 * MenuModule.TabCount, 42)
end

return MenuModule
