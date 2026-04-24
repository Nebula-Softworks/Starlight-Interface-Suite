local services = require("../Utilities/Services")
local Creator = require("../Utilities/Creator")
local utilities = require("../Utilities")
local Components = require("./")

local module = {
	IsKeybindList = true,
	Icon = 72407002146102,
}
local New = function(Class, Properties, Children)
	Creator:New(Class, Properties, Children, module.Library)
end

function module:Init(Library)
	module.Library = Library

	module.Instance = New("Frame", {
		Name = "KeybindList",
		Parent = Library.Instance,
		Position = UDim2.fromOffset(12, 51),
		Size = UDim2.fromOffset(160, 55),
		LayoutOrder = #Library.Windows,
		ThemeData = {
			BackgroundColor3 = "WindowBackground",
		},
	}, {
		New("UICorner", {
			CornerRadius = UDim.new(0, 8),
		}),
		New("UIStroke", {
			Color = Color3.new(1, 1, 1),
			Thickness = 1.5,
			Transparency = 0.78,
		}, {
			New("UIGradient", {
				Rotation = -67,
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
			Name = "Topbar",
			BackgroundTransparency = 1,
			Position = UDim2.fromOffset(10, 10),
			Size = UDim2.new(1, -28, 0, 28),
		}, {
			New("Folder", {}, {
				New("UIListLayout", {
					Padding = UDim.new(0, 6),
					FillDirection = Enum.FillDirection.Horizontal,
				}),
				New("ImageLabel", {
					Name = "Icon",
					Size = UDim2.fromOffset(22, 22),
					Image = "rbxassetid://72407002146102",
					ScaleType = Enum.ScaleType.Fit,
					ThemeData = {
						ImageColor3 = "Accent",
					},
				}),
				New("TextLabel", {
					AutomaticSize = Enum.AutomaticSize.X,
					Size = UDim2.fromOffset(0, 21),
					Text = "Hotkeys",
					FontFace = Font.new("rbxasset://fonts/families/Inter.json", Enum.FontWeight.Medium),
					ThemeData = {
						TextColor3 = "Accent",
					},
				}, {
					New("UIPadding", {
						PaddingRight = UDim.new(0, 4),
						PaddingTop = UDim.new(0, 4),
					}),
				}),
			}),
			New("Frame", {
				Name = "Divider",
				BackgroundTransparency = 1,
				AnchorPoint = Vector2.new(0, 1),
				Position = UDim2.fromScale(0, 1),
				Size = UDim2.new(1, -6, 0, 12),
			}, {
				New("Frame", {
					Name = "PART_Line",
					AnchorPoint = Vector2.new(0.5, 1),
					Position = UDim2.fromScale(0.5, 1),
					Size = UDim2.new(1, 0, 0, 1),
					ThemeData = {
						BackgroundColor3 = "Accent",
					},
				}, {
					New("UIGradient", {
						Transparency = NumberSequence.new({
							NumberSequenceKeypoint.new(0.00, 0.73),
							NumberSequenceKeypoint.new(0.37, 0.20),
							NumberSequenceKeypoint.new(0.92, 0.86),
							NumberSequenceKeypoint.new(1.00, 0.74),
						}),
					}),
				}),
			}),
		}),
		New("Frame", {
			Name = "List",
			BackgroundTransparency = 1,
			Position = UDim2.fromOffset(14, 45),
			Size = UDim2.new(1, -20, 1, -55),
		}, {
			New("UIListLayout"),
		}),
	})

	Creator:AddSignal(services.UserInputService.InputBegan, function(input: InputObject, _)
		if input.UserInputType == Enum.UserInputType.MouseButton1 then
			if utilities:MouseIsOverFrame(module.Instance, Vector2.new(services.Mouse.X, services.Mouse.Y)) then
				if Library.ActiveWindow ~= module.Instance then
					local passthrough = true
					for _, window in pairs(Library.Windows) do
						if
							utilities:MouseIsOverFrame(window.Instance, Vector2.new(services.Mouse.X, services.Mouse.Y))
						then
							passthrough = false
						end
					end
					if passthrough then
						Library.ActiveWindow = module
						module.Instance.ZIndex = 100
					end
				end
			else
				module.Instance.ZIndex = module.Instance.LayoutOrder * 6
			end
		end
	end)
	Creator:AddSignal(module.Instance:GetPropertyChangedSignal("ZIndex"), function()
		-- updating ZIndex cus fuck you roblox Shadows don't work on Sibling ZIndex. fuck u fuck u fuck u roblox
		module.Instance.DropShadowHolder.antumbraShadow.ZIndex = module.Instance.ZIndex - 1
		module.Instance.DropShadowHolder.penumbraShadow.ZIndex = module.Instance.ZIndex - 1
		module.Instance.DropShadowHolder.umbraShadow.ZIndex = module.Instance.ZIndex - 1
		for _, keybind in pairs(module.Instance.List:GetChildren()) do
			if not keybind:IsA("TextLabel") then
				continue
			end
			keybind.ZIndex = module.Instance.ZIndex + 1
		end
		module.Instance.Topbar.Folder.Icon.ZIndex = module.Instance.ZIndex + 1
		module.Instance.Topbar.Folder.TextLabel.ZIndex = module.Instance.ZIndex + 1
		module.Instance.Topbar.Divider.PART_Line.ZIndex = module.Instance.ZIndex + 1
	end)

	utilities:MakeDraggable(module.Instance.Topbar, module.Instance)
	Components.Menu.Update(module)
	module:Update()
end

function module:Update()
	-- recheck all keybinds
	-- if they already exist, edit changed values (active or keybind or mode)
	-- if they dont exist yet, make new ones and display
	-- this function will be called on keybind creation, keybind setting change, and keybind activate/deactivate

	-- recalculate main list sizing also
end

return module
