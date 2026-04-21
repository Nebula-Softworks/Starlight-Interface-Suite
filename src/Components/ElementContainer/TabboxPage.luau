local Components = require("../../Components")
local Creator = require("../../Utilities/Creator")
local services = require("../../Utilities/Services")

return function(Title: string, Tabbox, Library)
	local New = function(Class, Properties, Children)
		Creator:New(Class, Properties, Children, Library)
	end

	local Tab = setmetatable({
		Instances = {},
		Config = { Title = Title },
		ElementContainer = nil,
		Elements = {},
		Library = Library,
	}, Components.ElementContainer)

	Tab.Instances.Navigator = New("TextButton", {
		Name = "Tab_" .. Title,
		Parent = Tabbox.Instance.Header,
		AutomaticSize = Enum.AutomaticSize.X,
		Size = UDim2.fromOffset(0, 22),
		ZIndex = Library.Windows.MainWindow.Instance.ZIndex + 4,
		FontFace = Font.new("rbxasset://fonts/families/Inter.json", Enum.FontWeight.Bold),
		Text = Title,
		TextTransparency = 0.1,
		ThemeData = {
			BackgroundColor3 = "Accent",
			TextColor3 = "Accent",
		},
	}, {
		New("UICorner", {
			CornerRadius = UDim.new(0, 4),
		}),
		New("UIPadding", {
			PaddingLeft = UDim.new(0, 6),
			PaddingRight = UDim.new(0, 6),
		}),
		New("UIStroke", {
			Thickness = 1.5,
			Transparency = 0.78,
			ThemeData = {
				Color = "Accent",
			},
		}),
	})
	Tab.Instances.Page = New("Frame", {
		Name = "Tab_" .. Title,
		Parent = Tabbox.Instance.PART_Content,
		AutomaticSize = Enum.AutomaticSize.Y,
		BackgroundTransparency = 1,
		Size = UDim2.fromScale(1, 0),
	}, {
		New("UIListLayout", {
			Padding = UDim.new(0, 5),
			HorizontalFlex = Enum.UIFlexAlignment.Fill,
		}),
		New("UIPadding", {
			PaddingTop = UDim.new(0, 6),
			PaddingBottom = UDim.new(0, 6),
			PaddingLeft = UDim.new(0, 10),
			PaddingRight = UDim.new(0, 2),
		}),
	})
	Tab.ElementContainer = Tab.Instances.Page

	function Tab:Select()
		Tabbox.Instance.PART_Content.UIPageLayout:JumpTo(Tab.Instances.Page)
		Tabbox.SelectedTab = Tab
		Creator:AddThemeObject(Tab.Instances.Navigator, { TextColor3 = "Accent" }, Library)
		services.TweenService:Create(
			Tab.Instances.Navigator,
			TweenInfo.new(0.4, Enum.EasingStyle.Exponential),
			{ BackgroundTransparency = 0.8 }
		)
		for _, OtherTab in pairs(Tabbox.Tabs) do
			if OtherTab == Tab then
				continue
			end
			Creator:AddThemeObject(OtherTab.Instances.Navigator, { TextColor3 = "PrimaryText" }, Library)
			services.TweenService:Create(
				Tab.Instances.Navigator,
				TweenInfo.new(0.4, Enum.EasingStyle.Exponential),
				{ BackgroundTransparency = 1 }
			)
		end
		Tabbox:UpdateSize()
	end
	Creator:AddSignal(Tab.Instances.Navigator.MouseButton1Click, Tab.Select)

	function Tab:Set(newTitle)
		Tab.Config = { Title = newTitle }
		Tab.Instances.Page.Name = "Tab_" .. newTitle
		Tab.Instances.Navigator.Name = "Tab_" .. newTitle
		Tab.Instances.Navigator.Text = newTitle
	end

	-- user method
	---- select change themetag instead of having grey label
	---- update sizing method inside
	-- bind click to select

	return Tab
end
