local module = {
	addons_list = setmetatable({}, {
		__index = function(table, key)
			return loadstring(
				game:HttpGet(
					`https://raw.githubusercontent.com/Nebula-Softworks/Starlight-Interface-Suite/master/addons/{key}`
				)
			)()
		end,
	}),
}

function module:LoadAddon(addonName: string)
	return self.addons_list[addonName](getgenv().Starlight)
end

return module
