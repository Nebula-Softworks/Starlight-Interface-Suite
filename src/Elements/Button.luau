return function(
	Config: {

		Name: string,
		Tooltip: string?,
		Callback: () -> any,

		ConfigFlag: any?,
		IgnoreConfig: boolean?,
	},
	Container,
	Library
)
	local Button = {
		Type = "BUTTON",
		-- Instance = ...
	}

	-- instance
	-- hover etc and theme handling
	-- callback and tooltip
	-- zindex
	-- binder properties

	-- Sub-button functionality
	function Button:CreateButton(Config: {

		Name: string,
		Tooltip: string?,
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
