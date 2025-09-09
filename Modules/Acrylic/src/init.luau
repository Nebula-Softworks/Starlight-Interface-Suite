local Lighting = game:GetService("Lighting")
local isStudio = game:GetService("RunService"):IsStudio()
local Camera = workspace.CurrentCamera

local function init()
	if not (getgenv and ((getgenv().NoAnticheat == nil and true or getgenv().NoAnticheat) or not getgenv().SecureMode) or isStudio) then return end
	
	local universalDof
	for i,v in pairs(Lighting:GetChildren()) do
		if v:IsA("DepthOfFieldEffect")
			and v.Name ~= "starlightBlur" then
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

	local blurSize         = Vector2.new(5, 2)
	local partSize         = 0.01
	local partTransparency = 0.99

	local blurObject          = Lighting:FindFirstChild("starlightBlur") ~= nil and Lighting:FindFirstChild("starlightBlur") or universalDof:Clone()
	blurObject.NearIntensity  = 0
	blurObject.FocusDistance  = universalDof.FocusDistance
	blurObject.InFocusRadius = universalDof.InFocusRadius
	blurObject.FarIntensity = universalDof.FarIntensity
	blurObject.Parent         = Lighting
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

return {
	Init = init,
	AcrylicBlur = require(script.AcrylicBlur),
	CreateAcrylic = require(script.CreateAcrylic),
    AcrylicPaint = require(script.AcrylicPaint),
}