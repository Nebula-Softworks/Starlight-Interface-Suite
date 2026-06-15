local services = require("../Utilities/Services")
local Creator = require("../Utilities/Creator")
local utilities = require("../Utilities")
local Enums = require("../Utilities/Enums")
local KeyServices = require("../Utilities/KeyServices")
local ConfigLibrary = require("../Config")

return function(
	Config: {
		Title: string,
		Subtitle: string,
		SaveKey: boolean,

		GetKey: {
			Mode: Enums.GetKeyType,
			Parameter: string, -- if Discord, then put invite code (no link, just like in creating mainwindow). Else if Link, put the full url - attempts to call OpenBrowserWindow and setclipboard.
		},

		ServiceProvider: Enums.KeyService,
		ServiceParameters: {
			--Platoboost
			ServiceId: number | string,
			Secret: string,
		} | {
			-- Pelican
			ServiceId: string,
		} | {
			--Luarmor
			ServiceId: string,
		} | {
			-- Junkie
			ServiceId: string,
			identifier: string,
			Provider: string,
		},
	},
	Library
)
	local New = function(Class, Properties, Children)
		Creator:New(Class, Properties, Children, Library)
	end

	task.spawn(function()
		utilities:RecursiveCreatePath(`{Library.FileSystem.Folder}/{ConfigLibrary.RootFolder}/KeySystem`, false)

		local KeyWindow = New("Frame", {
			Name = "KeyWindow",
			Parent = Library.Instance,
			Position = UDim2.fromOffset(
				services.Camera.ViewportSize.X / 2 - 250,
				services.Camera.ViewportSize.Y / 2 - 71
			),
			Size = UDim2.fromOffset(500, 142),
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
					Text = Config.Title or "Key System",
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
					Name = "Input",
					BackgroundTransparency = 0.65,
					Size = UDim2.new(1, 0, 0, 40),
					ZIndex = 21,
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
					New("UIPadding", {
						PaddingBottom = UDim.new(0, 6),
						PaddingLeft = UDim.new(0, 8),
						PaddingRight = UDim.new(0, 10),
						PaddingTop = UDim.new(0, 6),
					}),
					New("TextBox", {
						Name = "Header",
						ClearTextOnFocus = false,
						AnchorPoint = Vector2.new(0, 0.5),
						Position = UDim2.fromScale(0, 0.5),
						Size = UDim2.new(1, -18, 0, 20),
						ZIndex = 22,
						PlaceholderText = Config.Subtitle,
						ThemeData = {
							PlaceholderColor3 = "SecondaryText",
							TextColor3 = "PrimaryText",
						},
					}, {
						New("UIPadding", {
							PaddingLeft = UDim.new(0, 4),
						}),
					}),
					New("Folder", {
						Name = "HoverFX",
					}, {
						New("Frame", {
							Name = "Brighten",
							BackgroundTransparency = 1, -- 0.95,
							Position = UDim2.fromOffset(-8, -6),
							Size = UDim2.new(1, 18, 1, 14),
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
							Size = UDim2.new(1, 18, 0, 2),
							ZIndex = 21,
							ThemeData = {
								BackgroundColor3 = "Accent",
							},
						}),
					}),
				}),

				New("Frame", {
					Name = "GetKey",
					ThemeData = {
						BackgroundColor3 = "ElementBackground",
					},
					Position = UDim2.fromOffset(0, 0),
					Size = UDim2.new(0.492, 0, 0, 28),
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
						Text = "Get Key",
						TextXAlignment = Enum.TextXAlignment.Center,
						ThemeData = {
							TextColor3 = "PrimaryText",
						},
					}),
				}),

				New("Frame", {
					Name = "VerifyKey",
					AnchorPoint = Vector2.new(1, 0),
					ThemeData = {
						BackgroundColor3 = "ElementBackground",
					},
					Position = UDim2.fromOffset(1, 0),
					Size = UDim2.new(0.492, 0, 0, 28),
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
						Text = "Submit",
						TextXAlignment = Enum.TextXAlignment.Center,
						ThemeData = {
							TextColor3 = "PrimaryText",
						},
					}),
				}),
			}),
		})

		utilities:MakeDraggable(KeyWindow.Topbar, KeyWindow)

		Creator:AddSignal((KeyWindow.Holder.GetKey :: Frame).MouseEnter, function()
			services.TweenService
				:Create(
					KeyWindow.Holder.GetKey.HoverFX.Brighten,
					TweenInfo.new(0.4, Enum.EasingStyle.Quart, Enum.EasingDirection.Out),
					{
						BackgroundTransparency = 0.95,
					}
				)
				:Play()
			services.TweenService
				:Create(
					KeyWindow.Holder.GetKey.HoverFX.Underline,
					TweenInfo.new(0.4, Enum.EasingStyle.Quart, Enum.EasingDirection.Out),
					{
						Size = UDim2.new(1, 0, 0, 2),
					}
				)
				:Play()
		end)
		Creator:AddSignal((KeyWindow.Holder.GetKey :: Frame).MouseLeave, function()
			services.TweenService
				:Create(
					KeyWindow.Holder.GetKey.HoverFX.Brighten,
					TweenInfo.new(0.4, Enum.EasingStyle.Quart, Enum.EasingDirection.Out),
					{
						BackgroundTransparency = 1,
					}
				)
				:Play()
			services.TweenService
				:Create(
					KeyWindow.Holder.GetKey.HoverFX.Underline,
					TweenInfo.new(0.4, Enum.EasingStyle.Quart, Enum.EasingDirection.Out),
					{
						Size = UDim2.fromOffset(0, 2),
					}
				)
				:Play()
		end)

		Creator:AddSignal((KeyWindow.Holder.VerifyKey :: Frame).MouseEnter, function()
			services.TweenService
				:Create(
					KeyWindow.Holder.VerifyKey.HoverFX.Brighten,
					TweenInfo.new(0.4, Enum.EasingStyle.Quart, Enum.EasingDirection.Out),
					{
						BackgroundTransparency = 0.95,
					}
				)
				:Play()
			services.TweenService
				:Create(
					KeyWindow.Holder.VerifyKey.HoverFX.Underline,
					TweenInfo.new(0.4, Enum.EasingStyle.Quart, Enum.EasingDirection.Out),
					{
						Size = UDim2.new(1, 0, 0, 2),
					}
				)
				:Play()
		end)
		Creator:AddSignal((KeyWindow.Holder.VerifyKey :: Frame).MouseLeave, function()
			services.TweenService
				:Create(
					KeyWindow.Holder.VerifyKey.HoverFX.Brighten,
					TweenInfo.new(0.4, Enum.EasingStyle.Quart, Enum.EasingDirection.Out),
					{
						BackgroundTransparency = 1,
					}
				)
				:Play()
			services.TweenService
				:Create(
					KeyWindow.Holder.VerifyKey.HoverFX.Underline,
					TweenInfo.new(0.4, Enum.EasingStyle.Quart, Enum.EasingDirection.Out),
					{
						Size = UDim2.fromOffset(0, 2),
					}
				)
				:Play()
		end)

		Creator:AddSignal((KeyWindow.Holder.Input :: Frame).MouseEnter, function()
			services.TweenService
				:Create(
					KeyWindow.Holder.Input.HoverFX.Brighten,
					TweenInfo.new(0.4, Enum.EasingStyle.Quart, Enum.EasingDirection.Out),
					{
						BackgroundTransparency = 0.95,
					}
				)
				:Play()
		end)
		Creator:AddSignal((KeyWindow.Holder.Input :: Frame).MouseLeave, function()
			services.TweenService
				:Create(
					KeyWindow.Holder.Input.HoverFX.Brighten,
					TweenInfo.new(0.4, Enum.EasingStyle.Quart, Enum.EasingDirection.Out),
					{
						BackgroundTransparency = 1,
					}
				)
				:Play()
		end)
		Creator:AddSignal((KeyWindow.Holder.Input :: Frame).Focused, function()
			services.TweenService
				:Create(
					KeyWindow.Holder.Input.HoverFX.Underline,
					TweenInfo.new(0.4, Enum.EasingStyle.Quart, Enum.EasingDirection.Out),
					{
						Size = UDim2.new(1, 18, 0, 2),
					}
				)
				:Play()
		end)
		Creator:AddSignal((KeyWindow.Holder.Input :: Frame).FocusLost, function()
			services.TweenService
				:Create(
					KeyWindow.Holder.Input.HoverFX.Underline,
					TweenInfo.new(0.4, Enum.EasingStyle.Quart, Enum.EasingDirection.Out),
					{
						Size = UDim2.fromOffset(0, 2),
					}
				)
				:Play()
		end)

		Creator:AddSignal(KeyWindow.Holder.GetKey.Interact.MouseButton1Click, function()
			if Config.GetKey.Mode == Enums.GetKeyTypes.Discord then
				pcall(function()
					utilities:Request({
						Url = "http://127.0.0.1:6463/rpc?v=1",
						Method = "POST",
						Headers = {
							["Content-Type"] = "application/json",
							Origin = "https://discord.com",
						},
						Body = services.HttpService:JSONEncode({
							cmd = "INVITE_BROWSER",
							nonce = services.HttpService:GenerateGUID(false),
							args = { code = Config.GetKey.Parameter },
						}),
					})
				end)
			else
				setclipboard(Config.GetKey.Parameter)
				services.BrowserService:OpenBrowserWindow(Config.GetKey.Parameter)
			end
		end)

		local KeyService = KeyServices:GetService(Config.ServiceProvider)
		Creator:AddSignal(KeyWindow.Holder.VerifyKey.Interact.MouseButton1Click, function()
			local result, _message = KeyService(Config.ServiceParameters, KeyWindow.Holder.Input.Header.Text)
			if result then
				Library.IsKeyDone = true
			end
		end)

		return KeyWindow
	end)
end
