local services = require("../Utilities/Services")
local Creator = require("../Utilities/Creator")

local TabModule = {
	Window = nil,
	Library = nil,
	CurrentTab = nil,
	TabCount = 0,
}

function TabModule.Init(Window, Library)
	TabModule.Library = Library
	TabModule.Window = Window
	return TabModule
end

function TabModule:GetCurrentTabXPos()
	return TabModule.Window.Instance.TabBar.AbsolutePosition.X
		- TabModule.CurrentTab.Instances.Navigator.AbsolutePosition.X
end
local New = function(Class, Properties, Children)
	Creator:New(Class, Properties, Children, TabModule.Library)
end

function TabModule:New(Title: string)
	TabModule.TabCount += 1
	local Tab = {
		Title = Title,
		Instances = {
			Navigator = nil,
			Page = nil,
		},
		Boxes = {},
		TabIndex = TabModule.TabCount,
	}

	Tab.Instances.Navigator = New("TextButton", {
		Name = "Tab_" .. Title,
		AutomaticSize = Enum.AutomaticSize.X,
		BackgroundTransparency = 1,
		Size = UDim2.fromOffset(0, 26),
		LayoutOrder = Tab.TabIndex,
		Parent = TabModule.Window.Instance.TabBar.Tabs,
		ZIndex = TabModule.Window.Instance.ZIndex + 1,
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
		New("TextLabel", {
			AnchorPoint = Vector2.new(0, 0.5),
			AutomaticSize = Enum.AutomaticSize.X,
			Position = UDim2.fromScale(0, 0.5),
			Size = UDim2.fromScale(0, 1),
			ZIndex = TabModule.Window.Instance.ZIndex + 2,
			Text = Title,
			TextXAlignment = Enum.TextXAlignment.Center,
			TextTransparency = 1,
			ThemeData = {
				TextColor3 = "Accent",
			},
		}),
		New("TextLabel", {
			Name = "Grey",
			AnchorPoint = Vector2.new(0, 0.5),
			AutomaticSize = Enum.AutomaticSize.X,
			Position = UDim2.fromScale(0, 0.5),
			Size = UDim2.fromScale(0, 1),
			ZIndex = TabModule.Window.Instance.ZIndex + 1,
			Text = Title,
			TextXAlignment = Enum.TextXAlignment.Center,
			TextTransparency = 0.3,
			ThemeData = {
				TextColor3 = "PrimaryText",
			},
		}),
	})

	Tab.Instances.Page = New("Frame", {
		Name = "Tab_" .. Title,
		Parent = TabModule.Window.Instance.Content,
		BackgroundTransparency = 1,
		LayoutOrder = Tab.TabIndex,
		Size = UDim2.fromScale(1, 1),
		ZIndex = TabModule.Window.Instance.ZIndex + 2,
		ClipsDescendants = true,
	}, {
		New("UIPadding", {
			Name = "HeaderBoxSpacing",
			PaddingTop = UDim.new(0, 0),
		}),
		New("Frame", {
			Name = "HeaderBox",
			Position = UDim2.fromOffset(2, 0),
			Size = UDim2.new(1, -4, 0, 0),
			ZIndex = TabModule.Window.Instance.ZIndex + 2,
			ThemeData = {
				BackgroundColor3 = "GroupboxBackground",
			},
		}, {
			New("UICorner", {
				CornerRadius = UDim.new(0, 6),
			}),
			New("UIStroke", {
				Transparency = 0.5,
				ThemeData = {
					Color = "Stroke",
				},
			}),
			New("TextLabel", {
				Name = "Header",
				Position = UDim2.fromOffset(8, 8),
				Size = UDim2.new(1, -16, 0, 21),
				ZIndex = TabModule.Window.Instance.ZIndex + 3,
				Text = "",
				TextSize = 14,
				TextTransparency = 0.12,
				TextYAlignment = Enum.TextYAlignment.Top,
				ThemeData = {
					TextColor3 = "Header",
				},
			}),
			New("TextLabel", {
				Name = "Paragraph",
				Position = UDim2.fromOffset(8, 24),
				Size = UDim2.new(1, -16, 0, 21),
				ZIndex = TabModule.Window.Instance.ZIndex + 3,
				Text = "",
				TextSize = 12,
				TextTransparency = 0.12,
				TextYAlignment = Enum.TextYAlignment.Top,
				TextWrapped = true,
				ThemeData = {
					TextColor3 = "Primary",
				},
			}),
		}),
		New("Folder", {
			Name = "Columns",
		}, {
			New("UIListLayout", {
				Padding = UDim.new(0, 10),
				FillDirection = Enum.FillDirection.Horizontal,
				HorizontalAlignment = Enum.HorizontalAlignment.Center,
				HorizontalFlex = Enum.UIFlexAlignment.Fill,
			}),
			New("ScrollingFrame", {
				Name = "Left",
				LayoutOrder = 0,
				BackgroundTransparency = 1,
				Size = UDim2.fromScale(0.5, 1),
				ZIndex = TabModule.Window.Instance.ZIndex + 2,
			}, {
				New("UIListLayout", {
					Padding = UDim.new(0, 8),
					HorizontalFlex = Enum.UIFlexAlignment.Fill,
				}),
				New("UIPadding", {
					PaddingTop = UDim.new(0, 1),
				}),
			}),
			New("ScrollingFrame", {
				Name = "Right",
				LayoutOrder = 0,
				BackgroundTransparency = 1,
				Size = UDim2.fromScale(0.5, 1),
				ZIndex = TabModule.Window.Instance.ZIndex + 2,
			}, {
				New("UIListLayout", {
					Padding = UDim.new(0, 8),
					HorizontalFlex = Enum.UIFlexAlignment.Fill,
				}),
				New("UIPadding", {
					PaddingTop = UDim.new(0, 1),
				}),
			}),
		}),
	})

	Creator:AddSignal(Tab.Instances.Navigator.MouseButton1Click, function()
		TabModule:SelectTab(Tab)
	end)

	function Tab:SetTitle(newTitle: string)
		Tab.Instances.Navigator.TextLabel.Text = newTitle
		Tab.Instances.Navigator.Grey.Text = newTitle
		Tab.Instances.Navigator.Name = "Tab_" .. newTitle
		Tab.Instances.Page.Name = "Tab_" .. newTitle
	end

	function Tab:SetHeaderBox(Header: string, Content: string, Color: Color3)
		if not Color then
			Creator:AddThemeObject(
				Tab.Instances.Page.HeaderBox,
				{ BackgroundColor3 = "GroupboxBackground" },
				TabModule.Library
			)
			Creator:AddThemeObject(Tab.Instances.Page.HeaderBox.UIStroke, { Color = "Stroke" }, TabModule.Library)
			Creator:AddThemeObject(Tab.Instances.Page.HeaderBox.Header, { TextColor3 = "Header" }, TabModule.Library)
			Creator:AddThemeObject(
				Tab.Instances.Page.HeaderBox.Paragraph,
				{ TextColor3 = "PrimaryText" },
				TabModule.Library
			)
		else
			Creator.ThemeRegistry[Tab.Instances.Page.HeaderBox] = nil
			Creator.ThemeRegistry[Tab.Instances.Page.HeaderBox.UIStroke] = nil
			Creator.ThemeRegistry[Tab.Instances.Page.HeaderBox.Header] = nil
			Creator.ThemeRegistry[Tab.Instances.Page.HeaderBox.Paragraph] = nil

			Tab.Instances.Page.HeaderBox.BackgroundColor3 = Color
			Tab.Instances.Page.HeaderBox.UIStroke.Color = Color
			Tab.Instances.Page.HeaderBox.Header.TextColor3 = Color
			Tab.Instances.Page.HeaderBox.Paragraph.TextColor3 = Color
		end

		Tab.Instances.Page.HeaderBox.Header.Text = Header
		Tab.Instances.Page.HeaderBox.Paragraph.Text = Content
		Tab.Instances.Page.HeaderBox.Paragraph.Size = UDim2.new(1, -16, 0, math.huge)
		local bounds = Tab.Instances.Page.HeaderBox.Paragraph.TextBounds.Y
		Tab.Instances.Page.HeaderBox.Paragraph.Size = UDim2.new(1, -16, 0, bounds + 9)
		Tab.Instances.Page.HeaderBox.Size = UDim2.new(1, -4, 0, bounds + 39)
		Tab.Instances.Page.HeaderBox.Position = UDim2.fromOffset(2, -(bounds + 46))
		Tab.Instances.Page.HeaderBoxSpacing.PaddingTop = UDim.new(0, -(bounds + 47))
	end

	function Tab:CreateGroupbox() end

	function Tab:CreateTabbox() end

	return Tab
end

function TabModule:SelectTab(Tab)
	TabModule.CurrentTab = Tab
	services.TweenService:Create(
		Tab.Instances.Navigator.TextLabel,
		TweenInfo.new(0.4, Enum.EasingStyle.Exponential, Enum.EasingDirection.InOut),
		{ TextTransparency = 0 }
	)
	for _, OtherTab in pairs(TabModule.Window.Tabs) do
		if OtherTab == Tab then
			continue
		end

		services.TweenService:Create(
			OtherTab.Instances.Navigator.TextLabel,
			TweenInfo.new(0.4, Enum.EasingStyle.Exponential, Enum.EasingDirection.InOut),
			{ TextTransparency = 1 }
		)
	end
	services.TweenService:Create(
		TabModule.Window.Instance.TabBar.ActiveIndicator,
		TweenInfo.new(0.4, Enum.EasingStyle.Exponential, Enum.EasingDirection.InOut),
		{ Position = UDim2.fromOffset(TabModule:GetCurrentTabXPos(), 1) }
	)
	TabModule.Window.Instance.Content.UIPageLayout:JumpTo(Tab.Instances.Page)
end

return TabModule
