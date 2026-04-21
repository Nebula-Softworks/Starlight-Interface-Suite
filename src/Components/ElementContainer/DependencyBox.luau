local Components = require("../../Components")
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
		-- not recommended
		-- instead, you should honestly just call UpdateVisibility manually in like ur toggle callback or sm
		task.spawn(function()
			while task.wait(0.2) do
				DependencyBox:UpdateVisbility()
			end
		end)
	end

	return DependencyBox
end
