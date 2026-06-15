local binder = require("@packages/binder")
local Creator = require("../Acrylic/Creator")
local utilities = require("../Utilities")
local services = require("../Utilities/Services")

return function(
	Config: {
		Name: string,
		DoubleClick: boolean?,
		Callback: () -> any,

		ConfigFlag: any?,
		IgnoreConfig: boolean?,
	},
	Container,
	Library
)
	local New = function(Class, Properties, Children)
		Creator:New(Class, Properties, Children, Library)
	end

	local waitedForClick = true
	local activeOnceConnections = {} :: {
		[number]: {
			Connected: boolean,
			Disconnect: () -> nil,
			Callback: (any) -> any,
		},
	}
	local activeConnections = {} :: {
		[number]: {
			Connected: boolean,
			Disconnect: () -> nil,
			Callback: (any) -> any,
		},
	}

	local Button = {
		Type = "BUTTON",
		Clicked = {
			Wait = function(self)
				waitedForClick = false
				repeat
					task.wait()
				until waitedForClick
			end,
			Once = function(self, callback: () -> any)
				local connection = {
					Connected = true,
				}
				connection.Disconnect = function(self)
					if not connection.Connected then
						return
					end
					connection.Connected = false
					table.remove(activeOnceConnections, table.find(activeOnceConnections, connection))
				end
				connection.Callback = function(...)
					local result = callback(...)
					connection:Disconnect()
					return result
				end
				table.insert(activeOnceConnections, connection)
				return connection
			end,
			Connect = function(self, callback: () -> any)
				local connection = {
					Connected = true,
					Callback = callback,
				}
				connection.Disconnect = function(self)
					if not connection.Connected then
						return
					end
					connection.Connected = false
					table.remove(activeOnceConnections, table.find(activeOnceConnections, connection))
				end
				table.insert(activeConnections, connection)
				return connection
			end,
		},

		Config = Config,
	}
	function Button.Clicked:Fire(...)
		waitedForClick = true
		local hasError = false

		for _, connection in pairs(activeConnections) do
			if connection.Connected then
				if not utilities:SafeCallback(connection.Callback, ...) then
					hasError = true
				end
			end
		end
		for _, connection in ipairs(table.clone(activeOnceConnections)) do
			if connection.Connected then
				if not utilities:SafeCallback(connection.Callback, ...) then
					hasError = true
				end
			end
		end
		return hasError
	end
	Button.Clicked = binder.Wrap(Button.Clicked, {}, nil, { "Connect", "Once", "Fire" })
	Button = binder.Wrap(Button, {}, nil, { "Type" })

	Button.Instance = New("Frame", {
		Parent = Container.ElementContainer,
		Name = "Button " .. Button.Config.Name,

		BackgroundTransparency = 1,
		Size = UDim2.fromOffset(0, 28),
		ZIndex = Library.Windows.MainWindow.Instance.ZIndex + 3,
	}, {
		New("UIListLayout", {
			Padding = UDim.new(0, 4),
			FillDirection = Enum.FillDirection.Horizontal,
			HorizontalFlex = Enum.UIFlexAlignment.Fill,
		}),
		New("UIPadding", {
			PaddingLeft = UDim.new(0, -2),
			PaddingRight = UDim.new(0, 3),
		}),

		New("Frame", {
			Name = "Primary",
			AnchorPoint = Vector2.new(0, 0.5),
			ThemeData = {
				BackgroundColor3 = "ElementBackground",
			},
			Size = UDim2.new(1, 0, 0, 28),
			ZIndex = Library.Windows.MainWindow.Instance.ZIndex + 3,
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

			New("TextButton", {
				Name = "Interact",
				ZIndex = Library.Windows.MainWindow.Instance.ZIndex + 5,
			}),

			New("TextLabel", {
				Name = "Text",
				Size = UDim2.new(1, 0, 0, 28),
				ZIndex = Library.Windows.MainWindow.Instance.ZIndex + 4,
				FontFace = Font.new("rbxasset://fonts/families/Inter.json", Enum.FontWeight.Bold),
				TextSize = 12,
				TextXAlignment = Enum.TextXAlignment.Center,
				Text = Button.Config.Name,
				ThemeData = {
					TextColor3 = "PrimaryText",
				},
			}),

			New("Frame", {
				Name = "Error",
				BackgroundTransparency = 1, -- 0.7,
				Position = UDim2.fromOffset(-8, -6),
				Size = UDim2.fromScale(1, 1),
				ZIndex = Library.Windows.MainWindow.Instance.ZIndex + 4,
				ThemeData = {
					BackgroundColor3 = "Bad",
				},
			}, {
				New("UICorner", {
					CornerRadius = UDim.new(0, 4),
				}),
			}),

			New("Folder", {
				Name = "HoverFX",
			}, {
				New("Frame", {
					Name = "Brighten",
					BackgroundTransparency = 1, -- 0.95,
					Position = UDim2.fromOffset(-8, -6),
					Size = UDim2.fromScale(1, 1),
					ZIndex = Library.Windows.MainWindow.Instance.ZIndex + 4,
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
					ZIndex = Library.Windows.MainWindow.Instance.ZIndex + 4,
					ThemeData = {
						BackgroundColor3 = "Accent",
					},
				}),
			}),
		}),
	})
	local isHover = false
	Creator:AddSignal((Button.Instance.Primary :: Frame).MouseEnter, function()
		isHover = true
		services.TweenService:Create(
			Button.Instance.Primary.HoverFX.Brighten,
			TweenInfo.new(0.4, Enum.EasingStyle.Quart, Enum.EasingDirection.Out),
			{
				BackgroundTransparency = 0.95,
			}
		)
		services.TweenService:Create(
			Button.Instance.Primary.UIStroke,
			TweenInfo.new(0.4, Enum.EasingStyle.Quart, Enum.EasingDirection.Out),
			{
				Transparency = 0,
			}
		)
		services.TweenService:Create(
			Button.Instance.Primary.HoverFX.Underline,
			TweenInfo.new(0.4, Enum.EasingStyle.Quart, Enum.EasingDirection.Out),
			{
				Size = UDim2.new(1, 0, 0, 2),
			}
		)
	end)
	Creator:AddSignal((Button.Instance.Primary :: Frame).MouseLeave, function()
		isHover = false
		services.TweenService:Create(
			Button.Instance.Primary.HoverFX.Brighten,
			TweenInfo.new(0.4, Enum.EasingStyle.Quart, Enum.EasingDirection.Out),
			{
				BackgroundTransparency = 1,
			}
		)
		services.TweenService:Create(
			Button.Instance.Primary.UIStroke,
			TweenInfo.new(0.4, Enum.EasingStyle.Quart, Enum.EasingDirection.Out),
			{
				Transparency = 0.5,
			}
		)
		services.TweenService:Create(
			Button.Instance.Primary.HoverFX.Underline,
			TweenInfo.new(0.4, Enum.EasingStyle.Quart, Enum.EasingDirection.Out),
			{
				Size = UDim2.fromOffset(0, 2),
			}
		)
	end)

	local hasBeenClickedOnce = false

	Creator:AddSignal((Button.Instance.Primary.Interact :: TextButton).MouseButton1Click, function()
		if Button.Config.DoubleClick and not hasBeenClickedOnce then
			hasBeenClickedOnce = true
			Button.Instance.Primary.Text.Text = "Are you sure?"
			task.delay(1.5, function()
				if hasBeenClickedOnce then
					hasBeenClickedOnce = false
					Button.Instance.Primary.Text.Text = Button.Config.Name
				end
			end)
			return
		end

		if Button.Config.DoubleClick then
			hasBeenClickedOnce = false
		end

		local hasError = Button.Clicked:Fire()
		if hasError then
			Button.Instance.Primary.Text.Text = "Callback Error"
			services.TweenService:Create(
				Button.Instance.Primary.Error,
				TweenInfo.new(0.2, Enum.EasingStyle.Quart, Enum.EasingDirection.Out),
				{ BackgroundTransparency = 0.7 }
			)
			task.delay(1.5, function()
				Button.Instance.Primary.Text.Text = Button.Config.Name
				services.TweenService:Create(
					Button.Instance.Primary.Error,
					TweenInfo.new(0.2, Enum.EasingStyle.Quart, Enum.EasingDirection.Out),
					{ BackgroundTransparency = 1 }
				)
			end)
		end
	end)
	Creator:AddSignal((Button.Instance.Primary.Interact :: TextButton).MouseButton1Down, function()
		services.TweenService:Create(
			Button.Instance.Primary.HoverFX.Brighten,
			TweenInfo.new(0.4, Enum.EasingStyle.Quart, Enum.EasingDirection.Out),
			{
				BackgroundTransparency = 0.9,
			}
		)
	end)
	Creator:AddSignal((Button.Instance.Primary.Interact :: TextButton).MouseButton1Up, function()
		services.TweenService:Create(
			Button.Instance.Primary.HoverFX.Brighten,
			TweenInfo.new(0.4, Enum.EasingStyle.Quart, Enum.EasingDirection.Out),
			{
				BackgroundTransparency = isHover and 0.95 or 1,
			}
		)
	end)

	Creator:AddSignal(Library.Windows.MainWindow.Instance:GetPropertyChangedSignal("ZIndex"), function()
		-- updating ZIndex cus fuck you roblox Shadows don't work on Sibling ZIndex. fuck u fuck u fuck u roblox
		Button.Instance.ZIndex = Library.Windows.MainWindow.Instance.ZIndex + 3
		Button.Instance.Primary.ZIndex = Library.Windows.MainWindow.Instance.ZIndex + 3
		Button.Instance.Primary.Text.ZIndex = Library.Windows.MainWindow.Instance.ZIndex + 4
		Button.Instance.Primary.Error.ZIndex = Library.Windows.MainWindow.Instance.ZIndex + 4
		Button.Instance.Primary.HoverFX.Brighten.ZIndex = Library.Windows.MainWindow.Instance.ZIndex + 4
		Button.Instance.Primary.HoverFX.Underline.ZIndex = Library.Windows.MainWindow.Instance.ZIndex + 4
		Button.Instance.Primary.Interact.ZIndex = Library.Windows.MainWindow.Instance.ZIndex + 5
	end)

	Button.Config = binder.Wrap(Button.Config, {
		Name = function(value)
			Button.Instance.Primary.Text.Text = value
		end,
	})

	-- Sub-button functionality
	function Button:CreateButton(Config: {
		Name: string,
		DoubleClick: boolean?,
		Callback: () -> any,

		ConfigFlag: any?,
		IgnoreConfig: boolean?,
	})
		local Button = {
			Type = "SUBBUTTON",
			-- Instance = ...
		}

		-- instance
		-- hover etc and theme handling
		-- callback and tooltip
		-- zindex
		-- binder properties

		return Button
	end

	return Button
end
