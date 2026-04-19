local services = require("../Utilities/Services")
local Creator = require("../Utilities/Creator")
local utilities = require("../Utilities")
local imageparser = require("../Utilities/ImageParser")
local Components = require("./")

return function(
	Config: {
		Title: string,
		Subtitle: string,
		Tags: {
			[any]: {
				Title: string,
				Color: Color3,
			},
		},
		Footer: string,

		MinimizeKey: Enum.KeyCode,
		InitialDPIScale: number?,

		Discord: {
			Enabled: boolean,
			Invite: string,
			RememberJoins: boolean,
		},

		Theme: string | {
			[any]: Color3,
		},
	},
	Library
)
	local Size = UDim2.fromOffset(560, 750)
	local Window = {
		Instance = nil,
		Tabs = {},
		CurrentTab = nil,
		CurrentSize = Size,
		CurrentPosition = UDim2.fromOffset(
			services.Camera.ViewportSize.X / 2 - Size.X.Offset / 2,
			services.Camera.ViewportSize.Y / 2 - Size.Y.Offset / 2
		),

		Minimized = false,

		Config = Config,
	}

	-- this exists cus I am so fucking tired of passing Library into the Creator function. Fuck you cyclic module dependency errors
	local New = function(Class, Properties, Children)
		Creator:New(Class, Properties, Children, Library)
	end

	local WindowInstance = New("Frame", {
		Name = "MainWindow",
		Parent = Library.GUI,
		Size = Size,
		Position = Window.CurrentPosition,
		ZIndex = 0,
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

		-- Shadows
		New("Frame", {
			Name = "DropShadowHolder",
			BackgroundTransparency = 1,
			Size = UDim2.fromScale(1, 1),
		}, {
			New("AntumbraShadow", {
				Size = UDim2.fromScale(1.34, 1.34),
				ZIndex = -1,
				ThemeData = {
					ImageColor3 = "Shadow",
				},
			}),
			New("PenumbraShadow", {
				Size = UDim2.fromScale(1.25, 1.25),
				ZIndex = -1,
				ThemeData = {
					ImageColor3 = "Shadow",
				},
			}),
			New("UmbraShadow", {
				Size = UDim2.new(1, 58, 1, 58),
				ZIndex = -1,
				ThemeData = {
					ImageColor3 = "Shadow",
				},
			}),
		}),

		-- Footer/Status Bar
		New("Frame", {
			Name = "Footer",
			AnchorPoint = Vector2.new(0, 1),
			Position = UDim2.fromScale(0, 1),
			Size = UDim2.new(1, 0, 0, 28),
			ZIndex = 1,
			ThemeData = {
				BackgroundColor3 = "GroupboxBackground",
			},
		}, {
			New("UICorner", {
				CornerRadius = UDim.new(0, 10),
			}),
			New("Frame", {
				Name = "CornerRepair",
				Size = UDim2.fromScale(1, 0.5),
				ZIndex = 1,
				ThemeData = {
					BackgroundColor3 = "GroupboxBackground",
				},
			}),
			New("Frame", {
				Name = "UIStroke",
				BackgroundTransparency = 0.1,
				Size = UDim2.new(1, 0, 0, 1),
				ZIndex = 1,
				ThemeData = {
					BackgroundColor3 = "FooterStroke",
				},
			}),

			New("TextLabel", {
				AnchorPoint = Vector2.new(0, 0.5),
				Position = UDim2.fromScale(0, 0.5),
				Size = UDim2.fromScale(1, 1),
				ZIndex = 1,
				FontFace = Font.new("rbxasset://fonts/families/Inter.json", Enum.FontWeight.Medium),
				Text = Config.Footer,
				TextTransparency = 0.5,
				TextXAlignment = Enum.TextXAlignment.Center,
				ThemeData = {
					TextColor3 = "PrimaryText",
				},
			}),
			-- Will Add Status Indicators for Offline/Online etc. When Starlight Servers come and those become required
		}),

		-- Topbar
		New("Frame", {
			Name = "Topbar",
			Active = true,
			BackgroundTransparency = 1,
			Position = UDim2.fromOffset(14, 11),
			Size = UDim2.new(1, -28, 0, 28),
			ZIndex = 1,
		}, {
			New("Folder", {
				Name = "LeftSide",
			}, {
				New("UIListLayout", {
					Padding = UDim.new(0, 6),
					FillDirection = Enum.FillDirection.Horizontal,
					VerticalAlignment = Enum.VerticalAlignment.Center,
				}),

				New("TextLabel", {
					Name = "Title",
					AutomaticSize = Enum.AutomaticSize.X,
					LayoutOrder = -1,
					Size = UDim2.fromOffset(0, 21),
					ZIndex = 1,
					Text = Config.Title,
					TextSize = 14,
					TextTransparency = 0.12,
					TextYAlignment = Enum.TextYAlignment.Top,
					ThemeData = {
						TextColor3 = "Header",
					},
				}, {
					New("UIPadding", {
						PaddingLeft = UDim.new(0, 4),
						PaddingRight = UDim.new(0, 4),
						PaddingTop = UDim.new(0, 3),
					}),
				}),

				-- tags created in Window:CreateTag
			}),
			New("Folder", {
				Name = "RightSide",
			}, {
				New("UIListLayout", {
					Padding = UDim.new(0, 6),
					FillDirection = Enum.FillDirection.Horizontal,
					VerticalAlignment = Enum.VerticalAlignment.Center,
					HorizontalAlignment = Enum.HorizontalAlignment.Right,
				}),

				New("TextLabel", {
					Name = "Subtitle",
					AutomaticSize = Enum.AutomaticSize.X,
					Size = UDim2.fromOffset(0, 21),
					ZIndex = 1,
					Text = Config.Subtitle,
					TextSize = 12,
					TextTransparency = 0.12,
					TextYAlignment = Enum.TextYAlignment.Top,
					TextXAlignment = Enum.TextXAlignment.Right,
					ThemeData = {
						TextColor3 = "SecondaryText",
					},
				}, {
					New("UIPadding", {
						PaddingLeft = UDim.new(0, 4),
						PaddingRight = UDim.new(0, 4),
						PaddingTop = UDim.new(0, 3),
					}),
				}),
			}),
		}),

		-- Tabbar
		New("Frame", {
			Name = "TabBar",
			BackgroundTransparency = 1,
			Position = UDim2.fromOffset(18, 48),
			Size = UDim2.new(1, -28, 0, 28),
			ZIndex = 1,
		}, {
			New("Folder", {
				Name = "Tabs",
			}),
			New("Frame", {
				Name = "ActiveIndicator",
				BackgroundTransparency = 0.8,
				Position = UDim2.fromOffset(0, 1),
				Size = UDim2.fromOffset(0, 26),
				Visible = false,
				ZIndex = 1,
				ThemeData = {
					BackgroundColor3 = "Accent",
				},
			}, {
				New("UICorner", {
					CornerRadius = UDim.new(0.25, 0),
				}),
				New("UIPadding", {
					PaddingBottom = UDim.new(0, 3),
					PaddingTop = UDim.new(0, 3),
					PaddingLeft = UDim.new(0, 6),
					PaddingRight = UDim.new(0, 6),
				}),
				New("UIStroke", {
					Thickness = 2,
					Transparency = 0.78,
					ThemeData = {
						Color = "Accent",
					},
				}),
			}),
		}),

		-- Content
		New("Frame", {
			Name = "Content",
			BackgroundTransparency = 1,
			Position = UDim2.fromOffset(17, 85),
			Size = UDim2.new(1, -34, 1, -120),
			ZIndex = 1,
		}, {
			New("UIPageLayout", {
				Circular = true,
				EasingStyle = Enum.EasingStyle.Exponential,
				TweenTime = 0.2,
			}),
		}),
	})
	Window.Instance = WindowInstance

	function Window:CreateTag(Text: string, Color: Color3)
		return New("Frame", {
			Name = "Tag",
			AutomaticSize = Enum.AutomaticSize.X,
			BackgroundColor3 = Color,
			BackgroundTransparency = 0.8,
			Parent = WindowInstance.Topbar.LeftSide,
			Size = UDim2.fromOffset(0, 20),
			ZIndex = WindowInstance.ZIndex + 1,
		}, {
			New("UICorner", {
				CornerRadius = UDim.new(1, 0),
			}),
			New("UIPadding", {
				PaddingBottom = UDim.new(0, 3),
				PaddingTop = UDim.new(0, 3),
				PaddingLeft = UDim.new(0, 6),
				PaddingRight = UDim.new(0, 6),
			}),
			New("UIStroke", {
				Color = Color,
				Transparency = 0.5,
			}),
			New("TextLabel", {
				AnchorPoint = Vector2.new(0, 0.5),
				AutomaticSize = Enum.AutomaticSize.X,
				Position = UDim2.fromScale(0, 0.5),
				Size = UDim2.fromScale(0, 1),
				ZIndex = WindowInstance.ZIndex + 1,
				Text = Text,
				TextColor3 = Color,
				TextTransparency = 0.1,
				TextXAlignment = Enum.TextXAlignment.Center,
			}),
		})
	end
	for _, Tag in pairs(Config.Tags) do
		Window:CreateTag(Tag.Title, Tag.Color)
	end

	utilities:MakeDraggable(WindowInstance.Topbar, WindowInstance)

	local debounce = false
	function Window:Toggle()
		if debounce then
			return
		end
		if not Window.Minimized then
			Window.Minimized = true
			debounce = true
			utilities:Hide(WindowInstance)
			task.wait(1)
			debounce = false
		else
			Window.Minimized = false
			debounce = true
			utilities:Unhide(WindowInstance)
			task.wait(1)
			debounce = false
		end
	end

	function Window:CreateTab() end

	Creator:AddSignal(WindowInstance:GetPropertyChangedSignal("ZIndex"), function()
		-- updating ZIndex cus fuck you roblox Shadows don't work on Sibling ZIndex. fuck u fuck u fuck u roblox
		WindowInstance.DropShadowHolder.antumbraShadow.ZIndex = WindowInstance.ZIndex - 1
		WindowInstance.DropShadowHolder.penumbraShadow.ZIndex = WindowInstance.ZIndex - 1
		WindowInstance.DropShadowHolder.umbraShadow.ZIndex = WindowInstance.ZIndex - 1
		WindowInstance.Footer.ZIndex = WindowInstance.ZIndex + 1
		WindowInstance.Footer.CornerRepair.ZIndex = WindowInstance.ZIndex + 1
		WindowInstance.Footer.UIStroke.ZIndex = WindowInstance.ZIndex + 1
		WindowInstance.Footer.TextLabel.ZIndex = WindowInstance.ZIndex + 1
		WindowInstance.Topbar.ZIndex = WindowInstance.ZIndex + 1
		WindowInstance.Topbar.LeftSide.TextLabel.ZIndex = WindowInstance.ZIndex + 1
		WindowInstance.Topbar.RightSide.TextLabel.ZIndex = WindowInstance.ZIndex + 1
		for _, Tag in pairs(WindowInstance.Topbar.LeftSide:GetChildren()) do
			if not Tag:IsA("Frame") then
				continue
			end
			Tag.ZIndex = WindowInstance.ZIndex + 1
			Tag.TextLabel.ZIndex = WindowInstance.ZIndex + 1
		end
		WindowInstance.TabBar.ZIndex = WindowInstance.ZIndex + 1
		WindowInstance.TabBar.ActiveIndicator.ZIndex = WindowInstance.ZIndex + 1
		WindowInstance.Content.ZIndex = WindowInstance.ZIndex + 1
	end)

	local strokeRotation = services.TweenService:Create(
		WindowInstance.UIStroke.Accent,
		TweenInfo.new(5, Enum.EasingStyle.Quint, Enum.EasingDirection.InOut, -1, false, 0),
		{ Rotation = 360 }
	)
	Creator:AddSignal(services.UserInputService.InputBegan, function(input: InputObject, _)
		if input.UserInputType == Enum.UserInputType.MouseButton1 then
			if utilities:MouseIsOverFrame(WindowInstance, Vector2.new(services.Mouse.X, services.Mouse.Y)) then
				if Library.ActiveWindow ~= Window then
					local passthrough = true
					for _, window in pairs(Library.Windows) do
						if
							utilities:MouseIsOverFrame(window.Instance, Vector2.new(services.Mouse.X, services.Mouse.Y))
						then
							passthrough = false
						end
					end
					if passthrough then
						Library.ActiveWindow = Window
						strokeRotation:Play()
						WindowInstance.ZIndex = 100
					end
				end
			else
				strokeRotation:Pause()
				WindowInstance.ZIndex = 0
			end
		end
	end)
	if Library.ActiveWindow == nil then
		Library.ActiveWindow = Window
	end

	return Window
end
