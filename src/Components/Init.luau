return setmetatable({}, {
	__index = function(table, key)
		return require(`@self/{key}`)
	end,
})
