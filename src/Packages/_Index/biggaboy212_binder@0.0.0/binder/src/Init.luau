local binder = {}

function binder.Apply(properties: { [string]: any }, object: any, excludes: { [number]: string }?): any
	for property, value in pairs(properties) do
		if excludes and table.find(excludes, property) then
			continue
		end

		pcall(function()
			object[property] = value
		end)
	end

	return object
end

function binder.Wrap(
	object: { [string]: any },
	bindings: { [string]: (any) -> () } | (any) -> (),
	instance: Instance?,
	readOnlys: { [number]: any }?
): any
	local proxy = {}

	setmetatable(proxy, {
		__index = function(_, key)
			if object[key] ~= nil then
				return object[key]
			elseif instance then
				local ok, value = pcall(function()
					return instance[key]
				end)

				if ok then
					return value
				end
			end

			return
		end,

		__newindex = function(_, key, value)
			local handler = bindings[key]

			if handler then
				handler(value)
			end
			if instance then
				local ok, _ = pcall(function()
					instance[key] = value
				end)

				if not ok and not (readOnlys and table.find(readOnlys, key)) then
					object[key] = value
				end
			else
				if not (readOnlys and table.find(readOnlys, key)) then
					object[key] = value
				end
			end
		end,
	})

	return proxy
end

return binder
