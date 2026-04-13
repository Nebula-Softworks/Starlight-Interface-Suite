local function cast(service: string): any
	return (cloneref and cloneref(game:GetService(service))) or game:GetService(service)
end

return setmetatable({
	PlayerGui = cast("Players").LocalPlayer:WaitForChild("PlayerGui"),
	Mouse = cast("Players").LocalPlayer:GetMouse(),
	LocalPlayer = cast("Players").LocalPlayer,
	Camera = cast("Workspace").CurrentCamera,
}, {
	__index = function(table, key)
		return cast(key)
	end,
})
