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
	elseif not isStudio then
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
		return nil
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
