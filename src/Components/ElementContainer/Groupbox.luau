local Components = require("../../Components")
local Creator = require("../../Utilities/Creator")
local imageparser = require("../../Utilities/ImageParser")
local Enums = require("../../Utilities/Enums")

return function(
	GroupboxConfig: {
		Title: string,
		Icon: string? | number?,
		Column: Enums.GroupboxColumn,
	},
	_Tab,
	Parent,
	Library
)
	local New = function(Class, Properties, Children)
		Creator:New(Class, Properties, Children, Library)
	end

	local Groupbox = setmetatable({
		Column = GroupboxConfig.Column,
		Instance = nil,
		Config = GroupboxConfig,
		ElementContainer = nil,
		Elements = {},
	}, Components.ElementContainer)

	if not imageparser.GetAsset(GroupboxConfig.Icon) then
		imageparser.AddAsset(
			GroupboxConfig.Icon,
			typeof(GroupboxConfig.Icon) == "number" and GroupboxConfig.Icon or nil,
			typeof(GroupboxConfig.Icon) ~= "number" and GroupboxConfig.Icon or nil
		)
	end

	Groupbox.Instance = New("Frame", {
		Name = "Groupbox_" .. GroupboxConfig.Title,
		AutomaticSize = Enum.AutomaticSize.Y,
		BackgroundTransparency = 1,
		ZIndex = Library.Windows.MainWindow.Instance.ZIndex + 2,
		Parent = Parent,
	}, {
		New("UICorner", {
			CornerRadius = UDim.new(0, 6),
		}),

		New("TextLabel", {
			Name = "Header",
			Position = UDim2.fromOffset(6, 6),
			Size = UDim2.fromOffset(200, 20),
			ZIndex = Library.Windows.MainWindow.Instance.ZIndex + 4,
			FontFace = Font.new("rbxasset://fonts/families/Inter.json", Enum.FontWeight.Bold),
			Text = GroupboxConfig.Title,
			TextTransparency = 0.1,
			TextYAlignment = Enum.TextYAlignment.Top,
			ThemeData = {
				TextColor3 = "PrimaryText",
			},
		}, {
			New("UIPadding", {
				PaddingTop = UDim.new(0, 7),
				PaddingLeft = UDim.new(0, (GroupboxConfig.Icon == nil) and 6 or 29),
			}),
			New("ImageLabel", {
				Name = "Icon",
				Position = UDim2.fromOffset(-26, -4),
				Size = UDim2.fromOffset(20, 20),
				ZIndex = Library.Windows.MainWindow.Instance.ZIndex + 4,
				Image = imageparser.GetAsset(GroupboxConfig.Icon),
				ScaleType = Enum.ScaleType.Crop,
				ImageTransparency = 0.1,
				ThemeData = {
					ImageColor3 = "PrimaryText",
				},
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
	})
	Groupbox.ElementContainer = New("Frame", {
		Name = "PART_Content",
		Parent = Groupbox.Instance,
		AutomaticSize = Enum.AutomaticSize.Y,
		BackgroundTransparency = 1,
		Position = UDim2.fromOffset(0, 6),
		Size = UDim2.new(1, 0, 0, 6),
	}, {
		New("UICorner", {
			CornerRadius = UDim.new(0, 8),
		}),
		New("UIPadding", {
			PaddingBottom = UDim.new(0, 14),
			PaddingLeft = UDim.new(0, 15),
			PaddingRight = UDim.new(0, 7),
			PaddingTop = UDim.new(0, 4),
		}),
		New("UIListLayout", {
			Padding = UDim.new(0, 5),
			HorizontalFlex = Enum.UIFlexAlignment.Fill,
		}),
	})

	function Groupbox:Set(NewGroupboxConfig: {
		Title: string,
		Icon: string? | number?,
		Column: number,
	})
		if NewGroupboxConfig.Column ~= GroupboxConfig.Column then
			task.spawn(error, "Starlight Interface Suite | Cannot change a Column after creation")
		end
		if not imageparser.GetAsset(NewGroupboxConfig.Icon) then
			imageparser.AddAsset(
				NewGroupboxConfig.Icon,
				typeof(NewGroupboxConfig.Icon) == "number" and NewGroupboxConfig.Icon or nil,
				typeof(NewGroupboxConfig.Icon) ~= "number" and NewGroupboxConfig.Icon or nil
			)
		end
		Groupbox.Instance.Header.Text = NewGroupboxConfig.Title
		Groupbox.Instance.Header.Icon.Image = imageparser.GetAsset(NewGroupboxConfig.Icon)
		Groupbox.Instance.Header.UIPadding.PaddingLeft = UDim.new(0, (NewGroupboxConfig.Icon == nil) and 6 or 29)
		Groupbox.Config = NewGroupboxConfig
	end
	-- ELEMENT FUNCTIONS ARE IN SRC/COMPONENTS/ELEMENTCONTAINER/INIT.LUAU IF THATS WHAT YOU ARE LOOKING FOR

	Creator:AddSignal(Library.Windows.MainWindow.Instance:GetPropertyChangedSignal("ZIndex"), function()
		-- updating ZIndex cus fuck you roblox Shadows don't work on Sibling ZIndex. fuck u fuck u fuck u roblox
		Groupbox.Instance.ZIndex = Library.Windows.MainWindow.Instance.ZIndex + 2
		Groupbox.Instance.Header.ZIndex = Library.Windows.MainWindow.Instance.ZIndex + 4
		Groupbox.Instance.Header.Icon.ZIndex = Library.Windows.MainWindow.Instance.ZIndex + 4
		Groupbox.Instance.PART_Backdrop.ZIndex = Library.Windows.MainWindow.Instance.ZIndex + 2
		Groupbox.Instance.PART_Backdrop.Inner.ZIndex = Library.Windows.MainWindow.Instance.ZIndex + 2
	end)

	local function UpdateSize()
		Groupbox.Instance.PART_Backdrop.Inner.Visible = false
		Groupbox.Instance.PART_Backdrop.Inner.Size = UDim2.fromOffset(
			Groupbox.Instance.PART_Backdrop.AbsoluteSize.X - 2,
			Groupbox.Instance.PART_Backdrop.AbsoluteSize.Y - 2
		)
		Groupbox.Instance.PART_Backdrop.Inner.Visible = true
	end
	Creator:AddSignal(Groupbox.Instance.PART_Content:GetPropertyChangedSignal("AbsoluteSize"), UpdateSize)
	UpdateSize()

	return Groupbox
end
