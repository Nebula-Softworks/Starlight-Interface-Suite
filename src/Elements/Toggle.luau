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
		Disabled: boolean?,
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

	Toggle.OnChecked = binder.Wrap(Toggle.OnChecked, {}, nil, { "Connect", "Once", "Fire" })
	Toggle = binder.Wrap(Toggle, {}, nil, { "Type" })
	Toggle.Config = binder.Wrap(Toggle.Config, {
		CurrentValue = function(value)
			Toggle.OnChecked:Fire(value)
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
			BackgroundTransparency = 0.9, --default, 0 for enabled, 1 for locked/disabled
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

	function Toggle:CreateInputBind(...)
		-- return Elements.Keybind(Toggle, ...)
	end

	function Toggle:CreateColorPicker(...)
		-- return Elements.ColorPicker(Toggle, ...)
	end

	return Toggle
end
