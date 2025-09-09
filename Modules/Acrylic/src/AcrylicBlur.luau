local Creator = require(script.Parent.Creator)
local createAcrylic = require(script.Parent.CreateAcrylic)
local viewportPointToWorld, getOffset = unpack(require(script.Parent.Utils))

local BlurFolder = game:GetService("Workspace").CurrentCamera:FindFirstChild("Starlight Blur Elements") and game:GetService("Workspace").CurrentCamera["Starlight Blur Elements"] or Instance.new("Folder", game:GetService("Workspace").CurrentCamera)
BlurFolder.Name = "Starlight Blur Elements"

local function createAcrylicBlur(distance)
	
	if (getgenv and ((getgenv().NoAnticheat == nil and true or getgenv().NoAnticheat) or not getgenv().SecureMode) or isStudio) then return end
	local cleanups = {}

	distance = distance or 0.001
	local positions = {
		topLeft = Vector2.new(),
		topRight = Vector2.new(),
		bottomRight = Vector2.new(),
	}
	local model = createAcrylic()
	local mesh = model:FindFirstChildWhichIsA("SpecialMesh")

	model.Parent = BlurFolder

	local function updatePositions(size, position)
		positions.topLeft = position
		positions.topRight = position + Vector2.new(size.X, 0)
		positions.bottomRight = position + size
	end

	local function render()
		local camera = game:GetService("Workspace").CurrentCamera
		local cameraTransform = if camera then camera.CFrame else CFrame.identity

		local topLeft = positions.topLeft
		local topRight = positions.topRight
		local bottomRight = positions.bottomRight

		local topLeft3D = viewportPointToWorld(topLeft, distance)
		local topRight3D = viewportPointToWorld(topRight, distance)
		local bottomRight3D = viewportPointToWorld(bottomRight, distance)

		local width = (topRight3D - topLeft3D).Magnitude
		local height = (topRight3D - bottomRight3D).Magnitude

		model.CFrame =
			CFrame.fromMatrix((topLeft3D + bottomRight3D) / 2, cameraTransform.XVector, cameraTransform.YVector, cameraTransform.ZVector)

		if mesh then
			mesh.Scale = Vector3.new(width, height, 0)
		end
	end

	local function onChange(rbx)
		local offset = getOffset()
		local size = rbx.AbsoluteSize - Vector2.new(offset, offset)
		local position = rbx.AbsolutePosition + Vector2.new(offset / 2, offset / 2)

		updatePositions(size, position)
		task.spawn(render)
	end

	local function renderOnChange()
		local camera = game:GetService("Workspace").CurrentCamera
		if not camera then
			return
		end

		cleanups[#cleanups + 1] = camera:GetPropertyChangedSignal("CFrame"):Connect(render)
		cleanups[#cleanups + 1] = camera:GetPropertyChangedSignal("ViewportSize"):Connect(render)
		cleanups[#cleanups + 1] = camera:GetPropertyChangedSignal("FieldOfView"):Connect(render)
		task.spawn(render)
	end

	model.Destroying:Connect(function()
		for _, item in cleanups do
			pcall(function()
				item:Disconnect()
			end)
		end
	end)

	renderOnChange()

	return onChange, model
end

return function(distance)
	local Blur = {}
	local onChange, model = createAcrylicBlur(distance)

	local comp = Creator.New("Frame", {
		BackgroundTransparency = 1,
		Size = UDim2.fromScale(1, 1),
	})

	Creator.AddSignal(comp:GetPropertyChangedSignal("AbsolutePosition"), function()
		pcall(onChange, comp)
	end)

	Creator.AddSignal(comp:GetPropertyChangedSignal("AbsoluteSize"), function()
		pcall(onChange, comp)
	end)

	Blur.AddParent = function(Parent)
		Creator.AddSignal(Parent:GetPropertyChangedSignal("Visible"), function()
			Blur.SetVisibility(Parent.Visible)
		end)
		model.Color = Parent.BackgroundColor3
		Creator.AddSignal(Parent:GetPropertyChangedSignal("BackgroundColor3"), function()
			model.Color = Parent.BackgroundColor3
		end)
	end

	Blur.SetVisibility = function(Value)
		pcall(function()
			model.Transparency = Value and 0.98 or 1
		end)
	end

	Blur.Frame = comp
	Blur.Model = model

	return Blur
end
