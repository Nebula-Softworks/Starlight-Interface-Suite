local Lighting = game:GetService("Lighting")
local isStudio = game:GetService("RunService"):IsStudio()
local Camera = workspace.CurrentCamera

local function init()
	local flag = false
	if getgenv then
		if getgenv().NoAnticheat == nil or getgenv().NoAnticheat == true then
			flag = true
		end
		if getgenv().SecureMode then
			flag = false
		end
	else
		if isStudio then
			flag = true
		end
	end
	if not flag then
		return
	end

	local universalDof
	for i, v in pairs(Lighting:GetChildren()) do
		if v:IsA("DepthOfFieldEffect") and v.Name ~= "starlightBlur" then
			universalDof = v
		end
	end

	if universalDof == nil then
		universalDof = Instance.new("DepthOfFieldEffect")
		universalDof.FarIntensity = 0
		universalDof.NearIntensity = 0
		universalDof.FocusDistance = 500
		universalDof.InFocusRadius = 500
		universalDof.Enabled = true
	end

	local partRoot = Camera:FindFirstChild("Starlight Blur Elements") or Instance.new("Folder", Camera)
	partRoot.Name = "Starlight Blur Elements"

	local blurSize = Vector2.new(5, 2)
	local partSize = 0.01
	local partTransparency = 0.99

	local blurObject = Lighting:FindFirstChild("starlightBlur") ~= nil and Lighting:FindFirstChild("starlightBlur")
		or universalDof:Clone()
	blurObject.NearIntensity = 0
	blurObject.FocusDistance = universalDof.FocusDistance
	blurObject.InFocusRadius = universalDof.InFocusRadius
	blurObject.FarIntensity = universalDof.FarIntensity
	blurObject.Parent = Lighting
	blurObject.Name = "starlightBlur"

	universalDof:GetPropertyChangedSignal("FarIntensity"):Connect(function()
		blurObject.FarIntensity = universalDof.FarIntensity
	end)
	universalDof:GetPropertyChangedSignal("InFocusRadius"):Connect(function()
		blurObject.InFocusRadius = universalDof.InFocusRadius
	end)
	universalDof:GetPropertyChangedSignal("FocusDistance"):Connect(function()
		blurObject.FocusDistance = universalDof.FocusDistance
	end)
	universalDof:GetPropertyChangedSignal("Enabled"):Connect(function()
		if universalDof.Enabled == false then
			blurObject.FarIntensity = 0
			blurObject.FocusDistance = 500
			blurObject.InFocusRadius = 500
		else
			blurObject.FarIntensity = universalDof.FarIntensity
			blurObject.InFocusRadius = universalDof.InFocusRadius
			blurObject.FocusDistance = universalDof.FocusDistance
		end
	end)

	local function enable()
		blurObject.NearIntensity = 1
	end

	local function disable()
		blurObject.NearIntensity = 0
	end
	enable()
end

local function FullBlur()
	local flag = false
	if getgenv then
		if getgenv().NoAnticheat == nil or getgenv().NoAnticheat == true then
			flag = true
		end
		if getgenv().SecureMode then
			flag = false
		end
	else
		if isStudio then
			flag = true
		end
	end
	if not flag then
		return
	end

	local universalBlur
	for i, v in pairs(Lighting:GetChildren()) do
		if v:IsA("BlurEffect") and v.Name ~= "starlightBlur" then
			universalBlur = v
		end
	end

	if universalBlur == nil then
		universalBlur = Instance.new("BlurEffect")
		universalBlur.Size = 30
		universalBlur.Enabled = true
	end

	local blurObject = Lighting:FindFirstChild("starlightBlur") ~= nil and Lighting:FindFirstChild("starlightBlur")
		or universalBlur:Clone()
	blurObject.Size = 0
	blurObject.Parent = Lighting
	blurObject.Name = "starlightBlur"

	local function enable()
		blurObject.Size = 30
	end
	local function disable()
		blurObject.Size = 0
	end
	enable()

	return {
		Enable = enable,
		Disable = disable,
	}
end

return {
	Init = init,
	CreateBlur = FullBlur,
	AcrylicBlur = require("@self/AcrylicBlur"),
	CreateAcrylic = require("@self/CreateAcrylic"),
	AcrylicPaint = require("@self/AcrylicPaint"),
}
