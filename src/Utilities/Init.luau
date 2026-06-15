local module = {}
local services = require("@self/Services")

function module:RecursiveCreatePath(Path: string, IsFile: boolean?)
	if not isfolder or not makefolder then
		return
	end

	local Segments = Path:split("/")
	local TraversedPath = ""

	if IsFile then
		table.remove(Segments, #Segments)
	end

	for _, Segment in ipairs(Segments) do
		if not isfolder(TraversedPath .. Segment) then
			makefolder(TraversedPath .. Segment)
		end

		TraversedPath = TraversedPath .. Segment .. "/"
	end

	return TraversedPath
end

local requestFunc = (syn and syn.request) or (fluxus and fluxus.request) or (http and http.request) or request

function module:Request(...)
	requestFunc(...)
end

function module:WaitForEvent(Event, Timeout, Condition)
	local Bindable = Instance.new("BindableEvent")
	local Connection = Event:Once(function(...)
		if not Condition or typeof(Condition) == "function" and Condition(...) then
			Bindable:Fire(true)
		else
			Bindable:Fire(false)
		end
	end)
	task.delay(Timeout, function()
		Connection:Disconnect()
		Bindable:Fire(false)
	end)

	local Result = Bindable.Event:Wait()
	Bindable:Destroy()

	return Result
end

function module:IsMouseInput(Input: InputObject, IncludeM2: boolean?)
	return Input.UserInputType == Enum.UserInputType.MouseButton1
		or (IncludeM2 == true and Input.UserInputType == Enum.UserInputType.MouseButton2)
		or Input.UserInputType == Enum.UserInputType.Touch
end
function module:IsClickInput(Input: InputObject, IncludeM2: boolean?)
	return module:IsMouseInput(Input, IncludeM2) and Input.UserInputState == Enum.UserInputState.Begin
end
function module:IsHoverInput(Input: InputObject)
	return (Input.UserInputType == Enum.UserInputType.MouseMovement or Input.UserInputType == Enum.UserInputType.Touch)
		and Input.UserInputState == Enum.UserInputState.Change
end
function module:IsDragInput(Input: InputObject, IncludeM2: boolean?)
	return module:IsMouseInput(Input, IncludeM2)
		and (Input.UserInputState == Enum.UserInputState.Begin or Input.UserInputState == Enum.UserInputState.Change)
end

-- deprecated {use="#array", reason="i was fucking high or sm when i made this :sob:"}]
function module:GetTableSize(Table: { [any]: any })
	local Size = 0

	for _, _ in Table do
		Size += 1
	end

	return Size
end

function module:deepCopy(tbl)
	if type(tbl) ~= "table" then
		return tbl
	end
	local copy = {}
	for k, v in pairs(tbl) do
		copy[k] = module:deepCopy(v)
	end
	return copy
end
function module:Trim(Text: string)
	return Text:match("^%s*(.-)%s*$")
end
function module:Round(Value, Rounding)
	assert(Rounding >= 0, "Invalid rounding number.")

	if Rounding == 0 then
		return math.floor(Value)
	end

	return tonumber(string.format("%." .. Rounding .. "f", Value))
end

function module:GetPlayers(ExcludeLocalPlayer: boolean?)
	local Players = services.Players

	local PlayerList = Players:GetPlayers()

	if ExcludeLocalPlayer then
		local Idx = table.find(PlayerList, services.LocalPlayer)
		if Idx then
			table.remove(PlayerList, Idx)
		end
	end

	table.sort(PlayerList, function(Player1, Player2)
		return Player1.Name:lower() < Player2.Name:lower()
	end)

	return PlayerList
end
function module:GetTeams()
	local TeamList = services.Teams:GetTeams()

	table.sort(TeamList, function(Team1, Team2)
		return Team1.Name:lower() < Team2.Name:lower()
	end)

	return TeamList
end

function module:ParentUI(GUI: ScreenGui)
	local isStudio = services.RunService:IsStudio()
	local CoreGui = isStudio and services.PlayerGui or services.CoreGui

	pcall(function()
		GUI.OnTopOfCoreBlur = true
	end)
	if gethui then
		GUI.Parent = gethui()
	elseif syn and syn.protect_gui then
		syn.protect_gui(GUI)

		GUI.Parent = CoreGui
	elseif not isStudio and CoreGui:FindFirstChild("RobloxGui") then
		GUI.Parent = CoreGui:FindFirstChild("RobloxGui")
	else
		GUI.Parent = CoreGui
	end
end

function module:SafeCallback(Func: (...any) -> ...any, ...: any)
	if not (Func and typeof(Func) == "function") then
		return
	end

	local Success, Response = pcall(Func, ...)
	if not Success then
		task.spawn(error, "Starlight Interface Suite - Callback Error Occured")
		warn("Function Errored: " .. tostring(Func))
		print("Response: " .. Response)
		return false
	else
		return Response
	end
end

function module:MakeDraggable(Bar, Window: Frame)
	local UserInputService = services.UserInputService
	local TweenService: TweenService = services.TweenService

	pcall(function()
		local Dragging, DragInput, MousePos, FramePos

		Bar.InputBegan:Connect(function(Input)
			if
				Input.UserInputType == Enum.UserInputType.MouseButton1
				or Input.UserInputType == Enum.UserInputType.Touch
			then
				Dragging = true
				MousePos = Input.Position
				FramePos = Window.Position

				Input.Changed:Connect(function()
					if Input.UserInputState == Enum.UserInputState.End then
						Dragging = false
					end
				end)
			end
		end)

		Bar.InputChanged:Connect(function(Input)
			if
				Input.UserInputType == Enum.UserInputType.MouseMovement
				or Input.UserInputType == Enum.UserInputType.Touch
			then
				DragInput = Input
			end
		end)

		UserInputService.InputChanged:Connect(function(Input)
			if Input == DragInput and Dragging then
				local Delta = Input.Position - MousePos

				local newMainPosition = UDim2.new(
					FramePos.X.Scale,
					FramePos.X.Offset + Delta.X,
					FramePos.Y.Scale,
					FramePos.Y.Offset + Delta.Y
				)
				TweenService:Create(
					Window,
					TweenInfo.new(0.35, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out),
					{ Position = newMainPosition }
				)
			end
		end)
	end)
end

local function Tween(object: Instance, goal: { [string]: any }, callback, tweenin)
	local tween = services.TweenService:Create(object, tweenin or Tween.Info(), goal)
	tween.Completed:Connect(callback or function() end)
	tween:Play()
end
local TransparencyValues = setmetatable({
	["TEMPLATE"] = {
		BackgroundTransparency = nil,
		TextTransparency = nil,
		Transparency = nil,
		ImageTransparency = nil,
	},
}, {
	__index = function()
		return
	end,
})
function module:Hide(Interface, JustHide: boolean?)
	JustHide = JustHide or false

	TransparencyValues[Interface] = TransparencyValues[Interface] or {}
	table.clear(TransparencyValues[Interface])

	for _, v in pairs(Interface:GetDescendants()) do
		if
			v.ClassName ~= "Folder"
			and v.ClassName ~= "UICorner"
			and v.ClassName ~= "StringValue"
			and v.ClassName ~= "Color3Value"
			and v.ClassName ~= "UIListLayout"
			and v.ClassName ~= "UITextSizeConstraint"
			and v.ClassName ~= "UIPadding"
			and v.ClassName ~= "UIPageLayout"
			and v.ClassName ~= "UISizeConstraint"
			and v.ClassName ~= "UIAspectRatioConstraint"
		then
			if JustHide == false then
				TransparencyValues[Interface][v] = {}

				if v.ClassName == "Frame" then
					TransparencyValues[Interface][v].BackgroundTransparency = v.BackgroundTransparency
				end

				if v.ClassName == "TextLabel" or v.ClassName == "TextBox" or v.ClassName == "TextButton" then
					TransparencyValues[Interface][v].BackgroundTransparency = v.BackgroundTransparency
					TransparencyValues[Interface][v].TextTransparency = v.TextTransparency
				end

				if v.ClassName == "ImageLabel" or v.ClassName == "ImageButton" then
					TransparencyValues[Interface][v].BackgroundTransparency = v.BackgroundTransparency
					TransparencyValues[Interface][v].ImageTransparency = v.ImageTransparency
				end
				if v.ClassName == "UIStroke" or v.ClassName == "UIGradient" then
					TransparencyValues[Interface][v].Transparency = v.Transparency
				end
			end
			if v.ClassName == "Frame" then
				Tween(v, { BackgroundTransparency = 1 })
			end

			if v.ClassName == "TextLabel" or v.ClassName == "TextBox" or v.ClassName == "TextButton" then
				Tween(v, { BackgroundTransparency = 1 })
				Tween(v, { TextTransparency = 1 })
			end

			if v.ClassName == "ImageLabel" or v.ClassName == "ImageButton" then
				Tween(v, { BackgroundTransparency = 1 })
				Tween(v, { ImageTransparency = 1 })
			end

			if v.ClassName == "UIStroke" or Interface.ClassName == "UIGradient" then
				Tween(v, { Transparency = 1 })
			end
		end
	end

	if Interface.ClassName ~= "ScreenGui" then
		if JustHide == false then
			TransparencyValues[Interface][Interface] = {}

			if Interface.ClassName == "Frame" then
				TransparencyValues[Interface][Interface].BackgroundTransparency = Interface.BackgroundTransparency
			end

			if
				Interface.ClassName == "TextLabel"
				or Interface.ClassName == "TextBox"
				or Interface.ClassName == "TextButton"
			then
				TransparencyValues[Interface][Interface].BackgroundTransparency = Interface.BackgroundTransparency
				TransparencyValues[Interface][Interface].TextTransparency = Interface.TextTransparency
			end

			if Interface.ClassName == "ImageLabel" or Interface.ClassName == "ImageButton" then
				TransparencyValues[Interface][Interface].BackgroundTransparency = Interface.BackgroundTransparency
				TransparencyValues[Interface][Interface].ImageTransparency = Interface.ImageTransparency
			end

			if Interface.ClassName == "UIStroke" or Interface.ClassName == "UIGradient" then
				TransparencyValues[Interface][Interface].Transparency = Interface.Transparency
			end
		end

		if Interface.ClassName == "Frame" then
			Tween(Interface, { BackgroundTransparency = 1 })
		end

		if
			Interface.ClassName == "TextLabel"
			or Interface.ClassName == "TextBox"
			or Interface.ClassName == "TextButton"
		then
			Tween(Interface, { BackgroundTransparency = 1 })
			Tween(Interface, { TextTransparency = 1 })
		end

		if Interface.ClassName == "ImageLabel" or Interface.ClassName == "ImageButton" then
			Tween(Interface, { BackgroundTransparency = 1 })
			Tween(Interface, { ImageTransparency = 1 })
		end

		if Interface.ClassName == "UIStroke" or Interface.ClassName == "UIGradient" then
			Tween(Interface, { Transparency = 1 })
		end
	end

	pcall(function()
		services.VirtualInputManager:SendMouseButtonEvent(0, 0, 0, true, game, 0)

		services.VirtualInputManager:SendMouseButtonEvent(0, 0, 0, false, game, 0)
	end)

	task.wait(0.18)
	if Interface.ClassName == "ScreenGui" then
		Interface.Enabled = false
	else
		Interface.Visible = false
	end
end

function module:Unhide(Interface)
	if Interface.ClassName == "ScreenGui" then
		Interface.Enabled = true
	else
		Interface.Visible = true
	end

	for _, v in pairs(Interface:GetDescendants()) do
		if
			v.ClassName ~= "Folder"
			and v.ClassName ~= "UICorner"
			and v.ClassName ~= "StringValue"
			and v.ClassName ~= "Color3Value"
			and v.ClassName ~= "UIListLayout"
			and v.ClassName ~= "UITextSizeConstraint"
			and v.ClassName ~= "UIPadding"
			and v.ClassName ~= "UIPageLayout"
			and v.ClassName ~= "UISizeConstraint"
			and v.ClassName ~= "UIAspectRatioConstraint"
		then
			pcall(function()
				if (v.ClassName == "Frame") and TransparencyValues[Interface][v].BackgroundTransparency ~= nil then
					Tween(v, {
						BackgroundTransparency = TransparencyValues[Interface][v].BackgroundTransparency,
					})
				end

				if
					(v.ClassName == "TextLabel" or v.ClassName == "TextBox" or v.ClassName == "TextButton")
					and TransparencyValues[Interface][v].BackgroundTransparency ~= nil
					and TransparencyValues[Interface][v].TextTransparency ~= nil
				then
					Tween(v, {
						BackgroundTransparency = TransparencyValues[Interface][v].BackgroundTransparency,
					})
					Tween(v, {
						TextTransparency = TransparencyValues[Interface][v].TextTransparency,
					})
				end

				if
					(v.ClassName == "ImageLabel" or v.ClassName == "ImageButton")
					and TransparencyValues[Interface][v].BackgroundTransparency ~= nil
					and TransparencyValues[Interface][v].ImageTransparency
				then
					Tween(v, {
						BackgroundTransparency = TransparencyValues[Interface][v].BackgroundTransparency,
					})
					Tween(v, {
						ImageTransparency = TransparencyValues[Interface][v].ImageTransparency,
					})
				end

				if
					(v.ClassName == "UIStroke" or Interface.ClassName == "UIGradient")
					and TransparencyValues[Interface][v].Transparency
				then
					Tween(v, { Transparency = TransparencyValues[Interface][v].Transparency })
				end
			end)
		end
	end

	pcall(function()
		if Interface.ClassName ~= "ScreenGui" then
			if
				(Interface.ClassName == "Frame")
				and TransparencyValues[Interface][Interface].BackgroundTransparency ~= nil
			then
				Tween(Interface, {
					BackgroundTransparency = TransparencyValues[Interface][Interface].BackgroundTransparency,
				})
			end

			if
				(
					Interface.ClassName == "TextLabel"
					or Interface.ClassName == "TextBox"
					or Interface.ClassName == "TextButton"
				)
				and TransparencyValues[Interface][Interface].BackgroundTransparency ~= nil
				and TransparencyValues[Interface][Interface].TextTransparency ~= nil
			then
				Tween(Interface, {
					BackgroundTransparency = TransparencyValues[Interface][Interface].BackgroundTransparency,
				})
				Tween(Interface, {
					TextTransparency = TransparencyValues[Interface][Interface].TextTransparency,
				})
			end

			if
				(Interface.ClassName == "ImageLabel" or Interface.ClassName == "ImageButton")
				and TransparencyValues[Interface][Interface].BackgroundTransparency ~= nil
				and TransparencyValues[Interface][Interface].ImageTransparency
			then
				Tween(Interface, {
					BackgroundTransparency = TransparencyValues[Interface][Interface].BackgroundTransparency,
				})
				Tween(Interface, {
					ImageTransparency = TransparencyValues[Interface][Interface:GetAttribute("InstanceID")].ImageTransparency,
				})
			end

			if
				(Interface.ClassName == "UIStroke" or Interface.ClassName == "UIGradient")
				and TransparencyValues[Interface][Interface].Transparency
			then
				Tween(Interface, {
					Transparency = TransparencyValues[Interface][Interface].Transparency,
				})
			end
		end
	end)
end

function module:MouseIsOverFrame(Frame: GuiObject, Mouse: Vector2): boolean
	local AbsPos, AbsSize = Frame.AbsolutePosition, Frame.AbsoluteSize
	return Mouse.X >= AbsPos.X
		and Mouse.X <= AbsPos.X + AbsSize.X
		and Mouse.Y >= AbsPos.Y
		and Mouse.Y <= AbsPos.Y + AbsSize.Y
end

function module:GiveSignal(Library, Connection: RBXScriptConnection | RBXScriptSignal)
	local ConnectionType = typeof(Connection)
	if Connection and (ConnectionType == "RBXScriptConnection" or ConnectionType == "RBXScriptSignal") then
		table.insert(Library.Signals, Connection)
	end

	return Connection
end

function module:IsMobile()
	local DevicePlatform = services.UserInputService:GetPlatform()
	return (DevicePlatform == Enum.Platform.Android or DevicePlatform == Enum.Platform.IOS)
end

return module
