-- so we only have to run require("..whateverpath../Elements") to access all of them rather then require("Elements/Button"), require("Elements/Toggle") for all etc

return setmetatable({}, {
	__index = function(table, key)
		return require(`@self/{key}`)
	end,
})
