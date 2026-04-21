local Components = require("../Components")
local Creator = require("../Utilities/Creator")
local Enums = require("../Utilities/Enums")

return function(
	TabboxConfig: {
		Tabs: {
			[any]: string,
		},
		SelectedTab: number | string,
		Column: Enums.GroupboxColumn,
	},
	_Tab,
	Parent,
	Library
)
	local New = function(Class, Properties, Children)
		Creator:New(Class, Properties, Children, Library)
	end

	if typeof(TabboxConfig).SelectedTab == string then
		TabboxConfig.SelectedTab = table.find(TabboxConfig.Tabs, TabboxConfig.SelectedTab)
	end

	local Tabbox = {
		Column = TabboxConfig.Column,
		Instance = nil,
		Config = TabboxConfig,
		SelectedTab = nil,
		Tabs = {},
	}

	Groupbox.Instance = New("Frame", {
		Name = "Tabbox",
		AutomaticSize = Enum.AutomaticSize.Y,
		BackgroundTransparency = 1,
		ZIndex = Library.Windows.MainWindow.Instance.ZIndex + 2,
		Parent = Parent,
	}, {
		New("UICorner", {
			CornerRadius = UDim.new(0, 6),
		}),
		New("Frame", {
			Name = "Header",
			BackgroundTransparency = 1,
			Position = UDim2.fromOffset(6, 6),
			Size = UDim2.fromOffset(200, 24),
		}, {
			New("UIListLayout", {
				Padding = UDim.new(0, 10),
				FillDirection = Enum.FillDirection.Horizontal,
				VerticalAlignment = Enum.VerticalAlignment.Center,
			}),
			New("UIPadding", {
				PaddingLeft = UDim.new(0, 2),
				PaddingTop = UDim.new(0, 1),
			}),
		}),
		New("Frame", {
			Name = "PART_Backdrop",
			Position = UDim2.fromOffset(1, 1),
			Size = UDim2.new(1, -2, 1, -2),
			ZIndex = Library.Windows.MainWindow.Instance.ZIndex + 2,
			ThemeData = {
				BackgroundColor3 = "WindowBackground",
			},
		}, {
			New("UICorner", {
				CornerRadius = UDim.new(0, 6),
			}),
			New("UIStroke", {
				ThemeData = {
					Color = "ElementBackground",
				},
			}),
			New("Frame", {
				Name = "Inner",
				AnchorPoint = Vector2.new(0.5, 0.5),
				Position = UDim2.fromScale(0.5, 0.5),
				Size = UDim2.new(1, -2, 1, -2),
				ZIndex = Library.Windows.MainWindow.Instance.ZIndex + 3,
				ThemeData = {
					BackgroundColor3 = "GroupboxBackground",
				},
			}, {
				New("UICorner", {
					CornerRadius = UDim.new(0, 6),
				}),
			}),
		}),
		New("Frame", {
			Name = "PART_Content",
			AutomaticSize = Enum.AutomaticSize.Y,
			Position = UDim2.fromOffset(0, 36),
			Size = UDim2.new(1, 0, 0, 16),
		}, {
			New("UICorner", {
				CornerRadius = UDim.new(0, 8),
			}),
			New("UIPadding", {
				PaddingBottom = UDim.new(0, 8),
				PaddingLeft = UDim.new(0, 5),
				PaddingRight = UDim.new(0, 5),
			}),
			New("UIPageLayout", {
				Circular = true,
				EasingStyle = Enum.EasingStyle.Exponential,
				TweenTime = 0.2,
				Padding = UDim.new(0, 20),
			}),
		}),
	})

	Creator:AddSignal(Library.Windows.MainWindow.Instance:GetPropertyChangedSignal("ZIndex"), function()
		-- updating ZIndex cus fuck you roblox Shadows don't work on Sibling ZIndex. fuck u fuck u fuck u roblox
		Tabbox.Instance.ZIndex = Library.Windows.MainWindow.Instance.ZIndex + 2
		Tabbox.Instance.Header.ZIndex = Library.Windows.MainWindow.Instance.ZIndex + 2
		for _, Tab in pairs(Tabbox.Instance.Header:GetChildren()) do
			if not Tab:IsA("TextButton") then
				continue
			end

			Tab.ZIndex = Library.Windows.MainWindow.Instance.ZIndex + 4
		end
		Tabbox.Instance.PART_Backdrop.ZIndex = Library.Windows.MainWindow.Instance.ZIndex + 2
		Tabbox.Instance.PART_Backdrop.Inner.ZIndex = Library.Windows.MainWindow.Instance.ZIndex + 2
	end)

	function Tabbox:UpdateSize()
		Tabbox.Instance.PART_Backdrop.Inner.Visible = false
		Tabbox.Instance.PART_Backdrop.Inner.Size = UDim2.fromOffset(
			Tabbox.Instance.PART_Backdrop.AbsoluteSize.X - 2,
			Tabbox.Instance.PART_Backdrop.AbsoluteSize.Y - 2
		)
		Tabbox.Instance.PART_Backdrop.Inner.Visible = true
	end
	Creator:AddSignal(Tabbox.Instance.PART_Content:GetPropertyChangedSignal("AbsoluteSize"), Tabbox.UpdateSize)
	Tabbox:UpdateSize()

	function Tabbox:CreateTab(TabTitle, exists)
		local tab = Components.ElementContainer.TabboxPage(TabTitle, Tabbox, Library)
		if Tabbox.SelectedTab == nil then
			tab:Select()
		end
		table.insert(Tabbox.Tabs, (not exists) and tab or nil)
		return tab
	end
	for _, Tab in ipairs(Tabbox.Tabs) do
		Tabbox:CreateTab(Tab, true)
	end

	-- finish creation
	-- do zindex
	-- do tabs
	-- do zindex
	-- commit

	return Tabbox
end
