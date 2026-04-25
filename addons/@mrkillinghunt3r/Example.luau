-- Raknet Built-in Plugin
-- EXAMPLE

return function(Starlight)
	local New = function(Class, Properties, Children)
		Starlight.Creator:New(Class, Properties, Children, Starlight)
	end

	local Window = New("Frame", {
		Name = "Desync",
		Parent = Starlight.Instance,
		Position = UDim2.fromOffset(
			Starlight.Services.Camera.ViewportSize.X / 2 - 250,
			Starlight.Services.Camera.ViewportSize.Y / 2 - 49
		),
		Size = UDim2.fromOffset(500, 98),
		ZIndex = 20,
		ThemeData = {
			BackgroundColor3 = "WindowBackground",
		},
	}, {
		New("UICorner", {
			CornerRadius = UDim.new(0, 10),
		}),
		New("UIStroke", {
			Color = Color3.new(1, 1, 1),
			Thickness = 2,
			Transparency = 0.78,
		}, {
			New("UIGradient", {
				Rotation = 0,
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
				ZIndex = 19,
				ThemeData = {
					ImageColor3 = "Shadow",
				},
			}),
			New("PenumbraShadow", {
				Size = UDim2.fromScale(1.25, 1.25),
				ZIndex = 19,
				ThemeData = {
					ImageColor3 = "Shadow",
				},
			}),
			New("UmbraShadow", {
				Size = UDim2.new(1, 58, 1, 58),
				ZIndex = 19,
				ThemeData = {
					ImageColor3 = "Shadow",
				},
			}),
		}),

		New("Frame", {
			Name = "Topbar",
			BackgroundTransparency = 1,
			Position = UDim2.fromOffset(14, 12),
			Size = UDim2.new(1, -28, 0, 28),
		}, {
			New("TextLabel", {
				Name = "Title",
				AnchorPoint = Vector2.new(0, 0.5),
				AutomaticSize = Enum.AutomaticSize.X,
				Position = UDim2.fromScale(0, 0.5),
				Size = UDim2.fromOffset(0, 21),
				ZIndex = 21,
				Text = "Raknet Desync",
				TextSize = 14,
				TextTransparency = 0.12,
				TextYAlignment = Enum.TextYAlignment.Top,
				ThemeData = {
					TextColor3 = "Header",
				},
			}),
		}),

		New("Frame", {
			Name = "Holder",
			BackgroundTransparency = 1,
			Position = UDim2.fromOffset(20, 50),
			Size = UDim2.new(1, -40, 1, -70),
		}, {

			New("Frame", {
				Name = "ToggleDesync",
				ThemeData = {
					BackgroundColor3 = "ElementBackground",
				},
				Position = UDim2.fromOffset(0, 0),
				Size = UDim2.new(1, 0, 0, 28),
				ZIndex = 21,
			}, {
				New("UICorner", {
					CornerRadius = UDim.new(0, 4),
				}),
				New("UIStroke", {
					Transparency = 0.5,
					ThemeData = {
						Color = "Stroke",
					},
				}),
				New("Folder", {
					Name = "HoverFX",
				}, {
					New("Frame", {
						Name = "Brighten",
						BackgroundTransparency = 1, -- 0.95,
						Position = UDim2.fromOffset(-8, -6),
						Size = UDim2.fromScale(1, 1),
						ZIndex = 21,
						ThemeData = {
							BackgroundColor3 = "Accent",
						},
					}, {
						New("UICorner", {
							CornerRadius = UDim.new(0, 4),
						}),
					}),
					New("Frame", {
						Name = "Underline",
						AnchorPoint = Vector2.new(0, 1),
						Position = UDim2.new(0, -8, 1, -6),
						Size = UDim2.fromOffset(0, 2),
						ZIndex = 21,
						ThemeData = {
							BackgroundColor3 = "Accent",
						},
					}),
				}),
				New("TextButton", {
					Name = "Interact",
					Size = UDim2.fromScale(1, 1),
					ZIndex = 23,
				}),
				New("TextLabel", {
					Name = "Text",
					Size = UDim2.fromScale(1, 1),
					ZIndex = 22,
					FontFace = Font.new("rbxasset://fonts/families/Inter.json", Enum.FontWeight.Bold),
					Text = "Toggle Desync",
					TextXAlignment = Enum.TextXAlignment.Center,
					ThemeData = {
						TextColor3 = "PrimaryText",
					},
				}),
			}),
		}),
	})

	Starlight.UtilityLibrary:MakeDraggable(Window.Topbar, Window)

	Starlight.Creator:AddSignal((Window.Holder.ToggleDesync :: Frame).MouseEnter, function()
		Starlight.Services.TweenService:Create(
			Window.Holder.ToggleDesync.HoverFX.Brighten,
			TweenInfo.new(0.4, Enum.EasingStyle.Quart, Enum.EasingDirection.Out),
			{
				BackgroundTransparency = 0.95,
			}
		)
		Starlight.Services.TweenService:Create(
			Window.Holder.ToggleDesync.HoverFX.Underline,
			TweenInfo.new(0.4, Enum.EasingStyle.Quart, Enum.EasingDirection.Out),
			{
				Size = UDim2.new(1, 0, 0, 2),
			}
		)
	end)
	Starlight.Creator:AddSignal((Window.Holder.ToggleDesync :: Frame).MouseLeave, function()
		Starlight.Services.TweenService:Create(
			Window.Holder.ToggleDesync.HoverFX.Brighten,
			TweenInfo.new(0.4, Enum.EasingStyle.Quart, Enum.EasingDirection.Out),
			{
				BackgroundTransparency = 1,
			}
		)
		Starlight.Services.TweenService:Create(
			Window.Holder.ToggleDesync.HoverFX.Underline,
			TweenInfo.new(0.4, Enum.EasingStyle.Quart, Enum.EasingDirection.Out),
			{
				Size = UDim2.fromOffset(0, 2),
			}
		)
	end)

	local hooked = false
	local function rakhook(packet)
		if packet.PacketId == 0x1B then
			local buf = packet.AsBuffer
			buffer.writeu32(buf, 1, 0xFFFFFFFF)
			packet:SetData(buf)
		end
	end
	Starlight.Creator:AddSignal(Window.Holder.ToggleDesync.Interact.MouseButton1Click, function()
		if hooked then
			raknet.remove_send_hook(rakhook)
		else
			raknet.add_send_hook(rakhook)
		end

		hooked = not hooked
	end)
end
