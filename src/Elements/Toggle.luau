local binder = require("@packages/binder")
local Creator = require("../Acrylic/Creator")
local utilities = require("../Utilities")
local services = require("../Utilities/Services")
local Elements = require("./Init")

return function(
	Config: {
		Name: string,
		CurrentValue: boolean?,
		Tooltip: string?,
		Enabled: boolean?,
		Callback: (value: boolean) -> any,

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

	local Toggle = {
		Type = "TOGGLE",
		InputBinds = {},
		ColorPickers = {},

		OnChecked = {
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
	function Toggle.OnChecked:Fire(...)
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

	local isHover = false

	Toggle.OnChecked = binder.Wrap(Toggle.OnChecked, {}, nil, { "Connect", "Once", "Fire" })
	Toggle = binder.Wrap(Toggle, {}, nil, { "Type" })
	local currentCallbackConnection = nil
	Toggle.Config = binder.Wrap(Toggle.Config, {
		CurrentValue = function(value)
			Toggle.OnChecked:Fire(value)
			services.TweenService
				:Create(
					Toggle.Instance.Checkbox,
					TweenInfo.new(0.4, Enum.EasingStyle.Quart, Enum.EasingDirection.Out),
					{ BackgroundTransparency = 0 }
				)
				:Play()
		end,
		Enabled = function(value)
			Toggle.Instance.Interactable = value
			if not value then
				Toggle.Instance.TextTransparency = 0.5
				Toggle.Instance.Checkbox.UIStroke.Transparency = 0.75
				Toggle.Instance.Checkbox.DropShadowHolder.DropShadow.ImageTransparency = 0.75
				Toggle.Instance.Checkbox.BackgroundTransparency = 1
			else
				Toggle.Instance.TextTransparency = 0
				Toggle.Instance.Checkbox.UIStroke.Transparency = 0.5
				Toggle.Instance.Checkbox.DropShadowHolder.DropShadow.ImageTransparency = 0.5
				Toggle.Instance.Checkbox.BackgroundTransparency = isHover and 0.8 or 0.9
			end
		end,
		Name = function(value)
			Toggle.Instance.Text = value
		end,
		Callback = function(value)
			if currentCallbackConnection then
				currentCallbackConnection:Disconnect()
			end
			Toggle.OnChecked:Connect(value)
		end,
	})
	binder.Apply(Config, Toggle.Config)

	Toggle.Instance = New("TextLabel", {
		Parent = Container.ElementContainer,
		Name = "Toggle_" .. Toggle.Config.Name,

		Size = UDim2.fromOffset(100, 20),
		ZIndex = Library.Windows.MainWindow.Instance.ZIndex + 3,
		FontFace = Font.new("rbxasset://fonts/families/Inter.json", Enum.FontWeight.Bold),
		ThemeData = {
			BackgroundColor3 = "Bad", -- error handling
			TextColor3 = "PrimaryText",
		},
		Text = Toggle.Config.Name,
	}, {
		New("UIPadding", {
			PaddingLeft = UDim.new(0, 23),
			PaddingRight = UDim.new(0, 4),
		}),

		New("Frame", {
			Name = "Checkbox",
			AnchorPoint = Vector2.new(0, 0.5),
			ThemeData = {
				BackgroundColor3 = "Accent",
			},
			BackgroundTransparency = 0.9,
			Position = UDim2.new(0, -24, 0.5, 0),
			Size = UDim2.fromOffset(16, 16),
			ZIndex = Library.Windows.MainWindow.Instance.ZIndex + 4,
		}, {
			New("UICorner", {
				CornerRadius = UDim.new(0, 4),
			}),
			New("UIStroke", {
				ThemeData = {
					Color = "Accent",
				},
				Transparency = 0.5,
			}),
			New("Frame", {
				Name = "DropShadowHolder",
				BackgroundTransparency = 1,
				Size = UDim2.fromScale(1, 1),
			}, {
				New("Glow", {
					Size = UDim2.new(1, 18, 1, 18),
					ZIndex = Library.Windows.MainWindow.Instance.ZIndex + 3,
					ThemeData = {
						ImageColor3 = "Accent",
					},
				}),
			}),
			New("TextButton", {
				Name = "Interact",
				ZIndex = Library.Windows.MainWindow.Instance.ZIndex + 5,
				Size = UDim2.fromScale(1, 1),
			}),
		}),
	})

	Creator:AddSignal(Toggle.Instance.MouseEnter, function()
		isHover = true
		if Toggle.CurrentValue then
			return
		end
		Toggle.Instance.Checkbox.BackgroundTransparency = 0.8
	end)
	Creator:AddSignal(Toggle.Instance.MouseLeave, function()
		isHover = false
		if Toggle.CurrentValue then
			return
		end
		Toggle.Instance.Checkbox.BackgroundTransparency = 0.9
	end)

	Creator:AddSignal((Toggle.Instance.Checkbox.Interact :: TextButton).MouseButton1Click, function()
		local hasError = Toggle.OnChecked:Fire()
		if hasError then
			Toggle.Instance.Text = "Callback Error"
			services.TweenService
				:Create(
					Toggle.Instance,
					TweenInfo.new(0.2, Enum.EasingStyle.Quart, Enum.EasingDirection.Out),
					{ BackgroundTransparency = 0.7 }
				)
				:Play()
			task.delay(1.5, function()
				Toggle.Instance.Text = Toggle.Config.Name
				services.TweenService
					:Create(
						Toggle.Instance,
						TweenInfo.new(0.2, Enum.EasingStyle.Quart, Enum.EasingDirection.Out),
						{ BackgroundTransparency = 1 }
					)
					:Play()
			end)
		end
	end)

	-- tooltip

	Creator:AddSignal(Library.Windows.MainWindow.Instance:GetPropertyChangedSignal("ZIndex"), function()
		-- updating ZIndex cus fuck you roblox Shadows don't work on Sibling ZIndex. fuck u fuck u fuck u roblox
		Toggle.Instance.ZIndex = Library.Windows.MainWindow.Instance.ZIndex + 3
		Toggle.Instance.Checkbox.ZIndex = Library.Windows.MainWindow.Instance.ZIndex + 4
		Toggle.Instance.Checkbox.DropShadowHolder.DropShadow.ZIndex = Library.Windows.MainWindow.Instance.ZIndex + 3
		Toggle.Instance.Checkbox.Interact.ZIndex = Library.Windows.MainWindow.Instance.ZIndex + 4
	end)

	-- sub elements
	function Toggle:CreateInputBind(...)
		-- return Elements.Keybind(Toggle, ...)
	end

	function Toggle:CreateColorPicker(...)
		-- return Elements.ColorPicker(Toggle, ...)
	end

	return Toggle
end
