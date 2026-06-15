local binder = require("@packages/binder")
local services = require("../Utilities/Services")
local Creator = require("../Utilities/Creator")
local utilities = require("../Utilities")
local Enums = require("../Utilities/Enums")

return function(
	Config: {
		Title: string,
		Icon: number | string,

		Template: Enums.SubWindowType,
		TemplateOptions: {
			-- CREDITS
			Subtitle: string,
			Cards: {
				[any]: {
					Name: string,
					Description: string,
					Tag: {
						Title: string,
						Color: Color3,
					},
				},
			},
		} | {
			-- ESP Preview
			Type: Enums.EspItemType?,
			ID: number?,
			Position: Vector3?,
		} | {
			-- GridPicker
			Items: {
				[any]: {
					ID: any,
					Image: number | string, -- will support viewports etc in the future
				},
			},
			Callback: (ID: any) -> nil,
			AllowResize: boolean?,
			Size: UDim2?,
		} | {
			-- Custom
			AllowResize: boolean?,
			Size: UDim2?,
			StayOpenWhenDisabled: boolean?,
		}?,
	},
	Library
)
	if Config.Title == nil then
		if Config.Template == Enums.SubWindowTypes.Credits then
			Config.Title = "Credits"
		elseif Config.Template == Enums.SubWindowTypes.ESPPreview then
			Config.Title = "ESP Preview"
		elseif Config.Template == Enums.SubWindowTypes.GridPicker then
			Config.Title = "Untitled Selector"
		elseif Config.Template == Enums.SubWindowTypes.Custom then
			Config.Title = "Untitled Window"
		end
	end
	if Config.Icon == nil then
		if Config.Template == Enums.SubWindowTypes.Credits then
			Config.Icon = 129677565037215
		elseif Config.Template == Enums.SubWindowTypes.ESPPreview then
			Config.Icon = 136005970583820
		else
			Config.Icon = 74674360702663
		end
	end

	local New = function(Class, Properties, Children)
		Creator:New(Class, Properties, Children, Library)
	end

	if Config.Template == Enums.SubWindowTypes.Credits then
		local Window = {
			Type = "SUBWINDOW_CREDITS",

			Minimized = false,
			IsBypassLibraryMinimized = false,
			Instance = nil,

			Config = Config,
		}

		Window.Instance = New("Frame", {
			Name = "Credits",
			ThemeData = {
				BackgroundColor3 = "WindowBackground",
			},
			Position = UDim2.fromOffset(
				services.Camera.ViewportSize.X / 2 - 160,
				services.Camera.ViewportSize.Y / 2 - 225
			),
			Size = UDim2.fromOffset(320, 450),

			LayoutOrder = #Library.Windows,
			ZIndex = 0,
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
					Rotation = -140,
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

			-- Topbar
			New("Frame", {
				Name = "Topbar",
				Active = false,
				BackgroundTransparency = 1,
				Position = UDim2.fromOffset(14, 12),
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
				}),
				New("TextLabel", {
					Name = "Subtitle",
					Position = UDim2.fromOffset(0, 22),
					Size = UDim2.new(1, 0, 0, 20),
					ZIndex = 1,
					FontFace = Font.new("rbxasset://fonts/families/Inter.json", Enum.FontWeight.Bold),
					TextTransparency = 0.3,
					Text = Config.TemplateOptions.Subtitle,
					ThemeData = {
						TextColor3 = "PrimaryText",
					},
				}),
			}),

			-- Cards
			New("ScrollingFrame", {
				BackgroundTransparency = 1,
				Position = UDim2.fromOffset(18, 60),
				Size = UDim2.new(1, -36, 1, -72),
				ZIndex = 1,
				Name = "Cards",
			}, {
				New("UIListLayout", {
					Padding = UDim.new(0, 6),
					HorizontalFlex = Enum.UIFlexMode.Fill,
				}),
				New("UIPadding", {
					PaddingBottom = UDim.new(0, 1),
					PaddingLeft = UDim.new(0, 1),
					PaddingRight = UDim.new(0, 1),
					PaddingTop = UDim.new(0, 1),
				}),
			}),
		})
		Window.Config = binder.Wrap(Window.Config, {
			Title = function(Value)
				Window.Instance.Topbar.LeftSide.TextLabel.Text = Value
			end,
		})
		Window = binder.Wrap(Window, {}, nil, {
			"Type",
		})

		for _, card in ipairs(Config.TemplateOptions.Cards) do
			Window:CreateCard(card)
		end
		Window.Config.TemplateOptions = binder.Wrap(Window.Config.TemplateOptions, {
			Cards = function(Value)
				for _, cardInstance in pairs(Window.Instance.Cards:GetChildren()) do
					if cardInstance:IsA("Frame") then
						cardInstance:Destroy()
					end
				end
				for _, card in ipairs(Value) do
					Window:CreateCard(card)
				end
			end,
		})

		function Window:CreateCard(CardConfig: {
			Name: string,
			Description: string,
			Tag: {
				Title: string,
				Color: Color3,
			},
		})
			assert(CardConfig.Name, "Provide Name of Contributor/Developer when creating card")
			assert(CardConfig.Description, "Provide Info of Contributor/Developer when creating card")
			if CardConfig.Tag and not CardConfig.Tag.Title then
				CardConfig.Tag = nil
			end

			return New("Frame", {
				Parent = Window.Instance.Cards,
				Name = "Card_" .. CardConfig.Name,
				Size = UDim2.new(1, -2, 0, 55),
				ZIndex = 1,
				ThemeData = {
					BackgroundColor3 = "GroupboxBackground",
				},
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
							Size = UDim2.fromOffset(0, 18),
							ZIndex = 2,
							Text = CardConfig.Name,
							TextSize = 13,
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

						CardConfig.Tag ~= nil and (New("Frame", {
							Name = "Tag",
							AutomaticSize = Enum.AutomaticSize.X,
							BackgroundColor3 = CardConfig.Tag.Color,
							BackgroundTransparency = 0.8,
							Size = UDim2.fromOffset(0, 18),
							ZIndex = 2,
						}, {
							New("UICorner", {
								CornerRadius = UDim.new(1, 0),
							}),
							New("UIPadding", {
								PaddingBottom = UDim.new(0, 3),
								PaddingTop = UDim.new(0, 3),
								PaddingLeft = UDim.new(0, 10),
								PaddingRight = UDim.new(0, 12),
							}),
							New("UIStroke", {
								Color = CardConfig.Tag.Color,
								Transparency = 0.5,
							}),
							New("TextLabel", {
								AnchorPoint = Vector2.new(0, 0.5),
								AutomaticSize = Enum.AutomaticSize.X,
								Position = UDim2.fromScale(0, 0.5),
								Size = UDim2.fromScale(0, 1),
								ZIndex = 3,
								Text = CardConfig.Tag.Title,
								TextColor3 = CardConfig.Tag.Color,
								TextTransparency = 0.1,
								TextXAlignment = Enum.TextXAlignment.Center,
							}),
						})) or nil,
					}),
				}),

				New("TextLabel", {
					Name = "Subtitle",
					AutomaticSize = Enum.AutomaticSize.X,
					LayoutOrder = -1,
					Position = UDim2.fromOffset(8, 32),
					Size = UDim2.fromOffset(0, 18),
					ZIndex = 2,
					Text = CardConfig.Description,
					TextSize = 11,
					TextTransparency = 0,
					TextYAlignment = Enum.TextYAlignment.Top,
					ThemeData = {
						TextColor3 = "SecondaryText",
					},
				}, {
					New("UIPadding", {
						PaddingLeft = UDim.new(0, 4),
						PaddingRight = UDim.new(0, 4),
					}),
				}),
			})
		end

		utilities:MakeDraggable(Window.Instance.Topbar, Window.Instance)

		local debounce = false
		function Window:Toggle()
			if debounce then
				return
			end
			if not Window.Minimized then
				Window.Minimized = true
				debounce = true
				utilities:Hide(Window.Instance)
				task.wait(1)
				debounce = false
			else
				Window.Minimized = false
				debounce = true
				utilities:Unhide(Window.Instance)
				task.wait(1)
				debounce = false
			end
		end

		Creator:AddSignal(Window.Instance:GetPropertyChangedSignal("ZIndex"), function()
			-- updating ZIndex cus fuck you roblox Shadows don't work on Sibling ZIndex. fuck u fuck u fuck u roblox
			Window.Instance.DropShadowHolder.antumbraShadow.ZIndex = Window.Instance.ZIndex - 1
			Window.Instance.DropShadowHolder.penumbraShadow.ZIndex = Window.Instance.ZIndex - 1
			Window.Instance.DropShadowHolder.umbraShadow.ZIndex = Window.Instance.ZIndex - 1
			Window.Instance.Topbar.ZIndex = Window.Instance.ZIndex + 1
			Window.Instance.Topbar.LeftSide.TextLabel.ZIndex = Window.Instance.ZIndex + 1
			Window.Instance.Topbar.Subtitle.ZIndex = Window.Instance.ZIndex + 1
			for _, Card in pairs(Window.Instance.Cards:GetChildren()) do
				if not Card:IsA("Frame") then
					continue
				end
				Card.ZIndex = Window.Instance.ZIndex + 1
				Card.Topbar.LeftSide.Title.ZIndex = Window.Instance.ZIndex + 2
				Card.Topbar.Subtitle.ZIndex = Window.Instance.ZIndex + 2
				for _, Tag in pairs(Card.Topbar.LeftSide:GetChildren()) do
					if not Tag:IsA("Frame") then
						continue
					end
					Tag.ZIndex = Window.Instance.ZIndex + 2
					Tag.TextLabel.ZIndex = Window.Instance.ZIndex + 3
				end
			end
		end)

		local strokeRotation = services.TweenService:Create(
			Window.Instance.UIStroke.Accent,
			TweenInfo.new(5, Enum.EasingStyle.Quint, Enum.EasingDirection.InOut, -1, false, 0),
			{ Rotation = 360 }
		)
		Creator:AddSignal(services.UserInputService.InputBegan, function(input: InputObject, _)
			if input.UserInputType == Enum.UserInputType.MouseButton1 then
				if utilities:MouseIsOverFrame(Window.Instance, Vector2.new(services.Mouse.X, services.Mouse.Y)) then
					if Library.ActiveWindow ~= Window then
						local passthrough = true
						for _, window in pairs(Library.Windows) do
							if
								utilities:MouseIsOverFrame(
									window.Instance,
									Vector2.new(services.Mouse.X, services.Mouse.Y)
								)
							then
								passthrough = false
							end
						end
						if passthrough then
							Library.ActiveWindow = Window
							strokeRotation:Play()
							Window.Instance.ZIndex = 100
						end
					end
				else
					strokeRotation:Pause()
					Window.Instance.ZIndex = Window.Instance.LayoutOrder * 6
				end
			end
		end)
		if Library.ActiveWindow == nil then
			Library.ActiveWindow = Window
		end

		return Window
	elseif Config.Template == Enums.SubWindowTypes.ESPPreview then
		if Config.TemplateOptions.Type == nil then
			Config.TemplateOptions.Type = Enums.EspItemTypes.Player
		end

		local Window = {
			Type = "SUBWINDOW_ESP",

			Minimized = false,
			IsBypassLibraryMinimized = false,

			UpdateEvent = New("BindableEvent") :: BindableEvent,
			Instance = nil,

			Config = Config,
		}

		Window.Instance = New("Frame", {
			Name = "ESPPreview",
			ThemeData = {
				BackgroundColor3 = "WindowBackground",
			},
			Position = UDim2.fromOffset(
				services.Camera.ViewportSize.X / 2 - 160,
				services.Camera.ViewportSize.Y / 2 - 225
			),
			Size = UDim2.fromOffset(320, 450),

			LayoutOrder = #Library.Windows,
			ZIndex = 0,
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
					Rotation = -140,
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

			-- Topbar
			New("Frame", {
				Name = "Topbar",
				Active = false,
				BackgroundTransparency = 1,
				Position = UDim2.fromOffset(14, 12),
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
				}),
			}),

			-- Viewport Frame
			New("ViewportFrame", {
				Name = "ESPFrame",
				LightDirection = Vector3.new(1, 1, 1),
				Position = UDim2.fromOffset(20, 46),
				Size = UDim2.fromOffset(280, 380),
				ZIndex = 1,
			}),
		})
		Window.Config = binder.Wrap(Window.Config, {
			Title = function(Value)
				Window.Instance.Topbar.LeftSide.TextLabel.Text = Value
			end,
		})
		Window = binder.Wrap(Window, {}, nil, {
			"Type",
		})

		local oldwin = Window.Config.TemplateOptions
		Window.Config.TemplateOptions = binder.Wrap(Window.Config.TemplateOptions, {
			ID = function(Value)
				for _, instance in pairs(Window.Instance.ESPFrame:GetChildren()) do
					instance:Destroy()
				end

				if Window.Config.TemplateOptions.Type == Enums.EspItemTypes.Custom then
					assert(Value, "Setting Type to Custom without a Value is not possible.")
					local object = game:GetObjects("rbxassetid://" .. Value)[1]
					object.Parent = Window.Instance.ESPFrame
					object.PrimaryPart.CFrame = Window.Config.TemplateOptions.Position
						or Vector3.new(-378.566, 17.188, -11.18)
					return
				elseif Window.Config.TemplateOptions.Type == Enums.EspItemTypes.Fixed and Value ~= nil then
					local object = services.Players:CreateHumanoidModelFromUserId(Value)
					object.Parent = Window.Instance.ESPFrame
					object.PrimaryPart.CFrame = Vector3.new(-378.566, 17.188, -11.18)
					return
				else
					local object = services.Players:CreateHumanoidModelFromUserId(services.LocalPlayer.UserId)
					object.Parent = Window.Instance.ESPFrame
					object.PrimaryPart.CFrame = Vector3.new(-378.566, 17.188, -11.18)
					return
				end
			end,
		})
		binder.Apply(oldwin, Window.Config.TemplateOptions)

		utilities:MakeDraggable(Window.Instance.Topbar, Window.Instance)

		local debounce = false
		function Window:Toggle()
			if debounce then
				return
			end
			if not Window.Minimized then
				Window.Minimized = true
				debounce = true
				utilities:Hide(Window.Instance)
				task.wait(1)
				debounce = false
			else
				Window.Minimized = false
				debounce = true
				utilities:Unhide(Window.Instance)
				task.wait(1)
				debounce = false
			end
		end

		local cd = false
		Window.Instance:GetPropertyChangedSignal("AbsolutePosition"):Connect(function()
			if cd then
				return
			end
			cd = true

			Window.UpdateEvent:Fire(Window.Instance.ESPFrame.AbsolutePosition)

			task.delay(1, function()
				cd = false
			end)
		end)
		Creator:AddSignal(Window.Instance:GetPropertyChangedSignal("ZIndex"), function()
			-- updating ZIndex cus fuck you roblox Shadows don't work on Sibling ZIndex. fuck u fuck u fuck u roblox
			Window.Instance.DropShadowHolder.antumbraShadow.ZIndex = Window.Instance.ZIndex - 1
			Window.Instance.DropShadowHolder.penumbraShadow.ZIndex = Window.Instance.ZIndex - 1
			Window.Instance.DropShadowHolder.umbraShadow.ZIndex = Window.Instance.ZIndex - 1
			Window.Instance.Topbar.ZIndex = Window.Instance.ZIndex + 1
			Window.Instance.Topbar.LeftSide.TextLabel.ZIndex = Window.Instance.ZIndex + 1
			Window.Instance.ESPFrame = Window.Instance.ZIndex + 1
		end)

		local strokeRotation = services.TweenService:Create(
			Window.Instance.UIStroke.Accent,
			TweenInfo.new(5, Enum.EasingStyle.Quint, Enum.EasingDirection.InOut, -1, false, 0),
			{ Rotation = 360 }
		)
		Creator:AddSignal(services.UserInputService.InputBegan, function(input: InputObject, _)
			if input.UserInputType == Enum.UserInputType.MouseButton1 then
				if utilities:MouseIsOverFrame(Window.Instance, Vector2.new(services.Mouse.X, services.Mouse.Y)) then
					if Library.ActiveWindow ~= Window then
						local passthrough = true
						for _, window in pairs(Library.Windows) do
							if
								utilities:MouseIsOverFrame(
									window.Instance,
									Vector2.new(services.Mouse.X, services.Mouse.Y)
								)
							then
								passthrough = false
							end
						end
						if passthrough then
							Library.ActiveWindow = Window
							strokeRotation:Play()
							Window.Instance.ZIndex = 100
						end
					end
				else
					strokeRotation:Pause()
					Window.Instance.ZIndex = Window.Instance.LayoutOrder * 6
				end
			end
		end)
		if Library.ActiveWindow == nil then
			Library.ActiveWindow = Window
		end

		return Window
	else
		local Window = {
			Type = "SUBWINDOW",

			Minimized = false,
			IsBypassLibraryMinimized = Config.TemplateOptions.IsBypassLibraryMinimized or false,

			UpdateEvent = New("BindableEvent") :: BindableEvent,
			Instance = nil,

			Config = Config,
		}

		Window.Instance = New("Frame", {
			Name = "CustomWindow_" .. Config.Title,
			ThemeData = {
				BackgroundColor3 = "WindowBackground",
			},
			Position = UDim2.fromOffset(
				services.Camera.ViewportSize.X / 2 - 160,
				services.Camera.ViewportSize.Y / 2 - 225
			),
			Size = Config.TemplateOptions.Size or UDim2.fromOffset(500, 500),

			LayoutOrder = #Library.Windows,
			ZIndex = 0,
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
					Rotation = -140,
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

			-- Topbar
			New("Frame", {
				Name = "Topbar",
				Active = false,
				BackgroundTransparency = 1,
				Position = UDim2.fromOffset(14, 12),
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
				}),
			}),

			-- Resize
			New("Frame", {
				Name = "Resize",
				Active = true,
				AnchorPoint = Vector2.new(1, 1),
				BackgroundTransparency = 1,
				Position = UDim2.fromScale(1, 1),
				Size = UDim2.fromOffset(18, 18),
				ZIndex = 1,
			}),
		})

		Window.Config = binder.Wrap(Window.Config, {
			Title = function(Value)
				Window.Instance.Topbar.LeftSide.TextLabel.Text = Value
			end,
		})
		local oldref = Window.Config.TemplateOptions
		Window.Config.TemplateOptions = binder.Wrap(Window.Config.TemplateOptions, {
			Size = function(Value)
				Window.Instance.Size = Value or UDim2.fromOffset(500, 500)
			end,
		})
		Window = binder.Wrap(Window, {}, nil, {
			"Type",
		})

		utilities:MakeDraggable(Window.Instance.Topbar, Window.Instance)
		-- check if allow resize on inputbegan
		-- on resize, update the size property
		pcall(function()
			local Resizing, ResizePos, StartSize

			Creator:AddSignal(Window.Instance.Resize.InputEnded, function(Input: InputObject)
				if Resizing == true or Input.UserInputType == Enum.UserInputType.Touch then
					Resizing = false
				end
			end)

			Creator:AddSignal(Window.Instance.Resize.InputBegan, function(Input: InputObject)
				if
					(
						Input.UserInputType == Enum.UserInputType.MouseButton1
						or Input.UserInputType == Enum.UserInputType.Touch
					) and Window.Config.TemplateOptions.AllowResize
				then
					Resizing = true
					ResizePos = Input.Position
					StartSize = Vector2.new(Window.Instance.Size.X.Offset, Window.Instance.Size.Y.Offset)
				end
			end)

			Creator:AddSignal(services.UserInputService.InputChanged, function(Input: InputObject)
				if
					(
						Input.UserInputType == Enum.UserInputType.MouseMovement
						or Input.UserInputType == Enum.UserInputType.Touch
					) and Resizing
				then
					local Delta = Input.Position - ResizePos
					local TargetSize = Vector2.new(StartSize.X + Delta.X, StartSize.Y + Delta.Y)
					local TargetSizeClamped =
						Vector2.new(math.clamp(TargetSize.X, 470, 2048), math.clamp(TargetSize.Y, 380, 2048))
					Window.Instance.Size = UDim2.fromOffset(TargetSizeClamped.X, TargetSizeClamped.Y)
					oldref.Size = Window.Instance.Size
				end
			end)
		end)

		local debounce = false
		function Window:Toggle()
			if debounce then
				return
			end
			if not Window.Minimized then
				Window.Minimized = true
				debounce = true
				utilities:Hide(Window.Instance)
				task.wait(1)
				debounce = false
			else
				Window.Minimized = false
				debounce = true
				utilities:Unhide(Window.Instance)
				task.wait(1)
				debounce = false
			end
		end

		Creator:AddSignal(Window.Instance:GetPropertyChangedSignal("ZIndex"), function()
			-- updating ZIndex cus fuck you roblox Shadows don't work on Sibling ZIndex. fuck u fuck u fuck u roblox
			Window.Instance.DropShadowHolder.antumbraShadow.ZIndex = Window.Instance.ZIndex - 1
			Window.Instance.DropShadowHolder.penumbraShadow.ZIndex = Window.Instance.ZIndex - 1
			Window.Instance.DropShadowHolder.umbraShadow.ZIndex = Window.Instance.ZIndex - 1
			Window.Instance.Topbar.ZIndex = Window.Instance.ZIndex + 1
			Window.Instance.Topbar.LeftSide.TextLabel.ZIndex = Window.Instance.ZIndex + 1
			Window.Instance.Resize.ZIndex = Window.Instance.ZIndex + 1
		end)

		local strokeRotation = services.TweenService:Create(
			Window.Instance.UIStroke.Accent,
			TweenInfo.new(5, Enum.EasingStyle.Quint, Enum.EasingDirection.InOut, -1, false, 0),
			{ Rotation = 360 }
		)
		Creator:AddSignal(services.UserInputService.InputBegan, function(input: InputObject, _)
			if input.UserInputType == Enum.UserInputType.MouseButton1 then
				if utilities:MouseIsOverFrame(Window.Instance, Vector2.new(services.Mouse.X, services.Mouse.Y)) then
					if Library.ActiveWindow ~= Window then
						local passthrough = true
						for _, window in pairs(Library.Windows) do
							if
								utilities:MouseIsOverFrame(
									window.Instance,
									Vector2.new(services.Mouse.X, services.Mouse.Y)
								)
							then
								passthrough = false
							end
						end
						if passthrough then
							Library.ActiveWindow = Window
							strokeRotation:Play()
							Window.Instance.ZIndex = 100
						end
					end
				else
					strokeRotation:Pause()
					Window.Instance.ZIndex = Window.Instance.LayoutOrder * 6
				end
			end
		end)
		if Library.ActiveWindow == nil then
			Library.ActiveWindow = Window
		end

		if Config.Template == Enums.SubWindowTypes.GridPicker then
			Window.SelectedItem = nil

			New("ScrollingFrame", {
				Parent = Window.Instance,
				Name = "Holder",
				BackgroundTransparency = 1,
				Position = UDim2.fromOffset(20, 50),
				Size = UDim2.new(1, -40, 1, -70),
			}, {
				New("UIGridLayout", {
					CellPadding = UDim2.fromOffset(8, 8),
					CellSize = UDim2.fromOffset(108, 108),
				}),
				New("UIPadding", {
					PaddingLeft = UDim.new(0, 1),
					PaddingTop = UDim.new(0, 1),
					PaddingRight = UDim.new(0, 1),
					PaddingBottom = UDim.new(0, 1),
				}),
			})

			Creator:AddSignal(Window.Instance:GetPropertyChangedSignal("ZIndex"), function()
				for _, griditem in pairs(Window.Instance.Holder:GetChildren()) do
					if not griditem:IsA("Frame") then
						continue
					end

					griditem.ZIndex = Window.Instance.ZIndex + 1
					griditem.Interact.ZIndex = Window.Instance.ZIndex + 2
				end
			end)

			Window = binder.Wrap(Window, {
				SelectedItem = function(Item)
					Creator:AddThemeObject(Item.instance, { BackgroundColor3 = "ElementBackground" }, Library)
					for _, otheritem in pairs(Window.Config.TemplateOptions.Items) do
						if otheritem == Item then
							continue
						end
						Creator:AddThemeObject(otheritem.instance, { BackgroundColor3 = "GroupboxBackground" }, Library)
					end
					utilities:SafeCallback(Window.Config.TemplateOptions.Callback or function() end, Item.ID)
				end,
			})

			for _, item in pairs(Window.Config.TemplateOptions.Items) do
				item.instance = New("Frame", {
					Parent = Window.Instance.Holder,
					Name = "Item",
					ThemeData = {
						BackgroundColor3 = "GroupboxBackground",
					},
					ZIndex = 1,
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
					New("ImageButton", {
						Name = "Interact",
						Position = UDim2.fromOffset(1, 1),
						Size = UDim2.new(1, -2, 1, -2),
						ZIndex = 2,
						Image = typeof(item.Image) == "number" and "rbxassetid://" .. item.Image or item.Image,
					}),
				})
				item.instance.Interact.MouseButton1Click:Connect(function()
					Window.SelectedItem = item
				end)
			end
		end

		return Window
	end
end
