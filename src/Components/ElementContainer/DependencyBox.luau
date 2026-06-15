local Components = require("../../Components")
local binder = require("@packages/binder")
local Creator = require("../../Utilities/Creator")

return function(state: { [any]: boolean }, autoUpdate, Library)
	local New = function(Class, Properties, Children)
		Creator:New(Class, Properties, Children, Library)
	end

	local DependencyBox = setmetatable({
		Instance = nil,
		Config = {},
		ElementContainer = nil,
		Elements = {},

		Library = Library,
	}, Components.ElementContainer)

	DependencyBox.Instance = New("Frame", {
		Name = "DependencyBox",
		AutomaticSize = Enum.AutomaticSize.Y,
		BackgroundTransparency = 1,
	}, {
		New("UIListLayout", {
			Padding = UDim.new(0, 5),
			HorizontalFlex = Enum.UIFlexAlignment.Fill,
		}),
	})

	function DependencyBox:UpdateVisbility()
		DependencyBox.Instance.Visible = state.Value
	end
	DependencyBox:UpdateVisbility()

	if autoUpdate then
		state = binder.Wrap(state, {
			Value = function()
				DependencyBox:UpdateVisbility()
			end,
		})
	end

	return DependencyBox
end
