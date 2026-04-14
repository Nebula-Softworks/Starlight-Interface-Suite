local Creator = require("./Creator")
local _isStudio = game:GetService("RunService"):IsStudio()

local function createAcrylic()
	local flag = false
	if getgenv then
		if getgenv().NoAnticheat == nil or getgenv().NoAnticheat == true then
			flag = true
		end
		if getgenv().SecureMode then
			flag = false
		end
	end
	if game:GetService("RunService"):IsStudio() then
		flag = true
	end
	if not flag then
		return
	end

	local Part = Creator.New("Part", {
		Name = "Body",
		Color = Color3.new(0, 0, 0),
		Material = Enum.Material.Glass,
		Size = Vector3.new(1.04, 1.12, 0),
		Anchored = true,
		CanCollide = false,
		Locked = true,
		CastShadow = false,
		Transparency = 0.98,
	}, {
		Creator.New("SpecialMesh", {
			MeshType = Enum.MeshType.Brick,
			Offset = Vector3.new(0, 0, -0.000001),
		}),
	})

	return Part
end

return createAcrylic
