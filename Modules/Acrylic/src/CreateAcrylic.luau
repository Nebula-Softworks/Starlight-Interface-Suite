local Creator = require(script.Parent.Creator)
local isStudio = game:GetService("RunService"):IsStudio()

local function createAcrylic()

	if not (getgenv and ((getgenv().NoAnticheat == nil and true or getgenv().NoAnticheat) or not getgenv().SecureMode) or isStudio) then return end
	
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
		})
	})

	return Part
end

return createAcrylic
