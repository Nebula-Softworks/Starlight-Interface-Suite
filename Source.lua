--[[

Starlight Interface Suite
by Nebula Softworks


Main Credits

Hunter (Nebula Softworks) | Designing And Programming | Main Developer
JustHey (Nebula Softworks) | Configurations, Programming, Bug Fixing | Co Developer
Pookie Pepelss (Nebula Softworks) | Bug And Feature Testing | Lead Tester
Throit | Color Picker Scripting
Inori | Configuration and Layout Concept  


Extra Credits

Sirius | Build Warnings
Latte Softworks and qweery | Lucide Icons And Material Icons
Deity/dp4pv/x64x70/btg/j24 | Certain Scripting and Testing 
The Nebula Softworks Community | Bug Testers And Suggestions For The Project


NOTES:
Starlight is a custom interface suite built from the ground up, meaning scripted and designed from scratch unlike Luna. If any other UIs look like Starlight,
It is pure coincidence (Coming back after writing this, allusive looks like starlight a hella ton, and i didnt even know that lib existed :sob: so yea). 
If you see our logo used anywhere else, please report it to us as I made this logo from scratch and i cannot fucking tolerate other shit
stealing my logos and claiming it as their own, like bloody hell cryptic stole Luna's logo and called it their own, fk you reaper. Besides the credits provided, everything
else was scripted by Me and JustHey from SCRATCH, meaning our brains only and no online references with a minor exception of Luna's Original Code.
The nature of Starlight is a GUI Model based library (and not drawing), meaning the interface is designed in studio as a Roblox game asset, before being published to roblox
and coded via a script. Sirius' Rayfield uses this too, BUT ITS NOT A COPY. Im putting this here because Luna did this as well and while alot of parts were taken from
Rayfield so I could tolerate some of that bs, this was not and I am not tolerating that skidding bs. I dont get how using the same type of library nature is considered skidding.
It Just Happens to be the same. If you're wondering why the model's interface is called Starlight V2, its because i was working on a previous discontinued UI library project in the past and
it was also called Starlight. Some members of the Nebula Softworks Community should know about that, and it was discontinued due to my lack of motivation
and the fact the design was way too complicated to script as a UI library with reusable components. (it was based on apple settings)

For those intending to read the source through, I sincerely apologise for some of the parts which are extremely unorganised/weird/hard to understand.
Main example is the way returning for elements function. Like wtf? Starlight.Window.TabSections[Name].Tabs[TabIndex].Groupboxes[GroupIndex].Elements[Index].NestedElements[NestedIndex] = NestedElement ??!!?!?!
For that instance, it is so we can return everything in a whole table, with everything accessible and linked back to the main library table (and to make accessible outside of creation).
However, once again I apologise. I have added the meanings of some unorthodox/stylised comments below.
I kind of gave up/forgot to comment within the Elements too, so another apology :sob:

PLEASE ALSO NOTE THAT UNLIKE OTHER LIBS (temporarily), STARLIGHT'S INDEXING SYSTEM IS BASED ON NAMES!!
This means please do not use the same name for elements twice as the names are core to the library's system.
 

COMMENT MEANINGS:
A Section is something used to easily identify what a section of code is used for/means
Subsections help to oraganize within subsections, and are smaller, breaking down the code even more

Asterisks in Table Examples mean that the parameter is not required
However, if there are 4 asterisks, it means that requirement of the parameter depends on another parameter
Ellipsis means that unlimited parameters of the template provided are accepted within the table

If you see --!nocheck and a few nil variables below before this, that is for the studio environment. It js means I forgot to remove them before publishing the release.

KNOWN BUGS:
1. Slider Textbox Not Accepting Periods (and therefore, decimals)
|- currently finding a way to fix because the old code from Luna does not work, so I completely revamped it and I'm finding a way to allow it while not breaking the code


Starlight Interface Suite
by Nebula Softworks

]]

--// SECTION : Core Variables

local Release = "Prerelease Alpha 2"

local Starlight = {
	Folder = "Starlight Interface Suite",
	InterfaceBuild = "APR2", -- Alpha Pre Release 2

	Options = {},
	CurrentTheme = "Default",
	BlurEnabled = false, -- disable till further notice
	DialogOpen = false,

	WindowKeybind = "K",
	Minimized = false,
	Maximized = false,

	Window = nil,
	Instance = nil,
	OnDestroy = nil
}

--// ENDSECTION


--// SECTION : Services And Variables

-- Services
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local HttpService = game:GetService("HttpService")
local RunService = game:GetService("RunService")
local Localization = game:GetService("LocalizationService")
local Lighting = game:GetService("Lighting")
local Players = game:GetService("Players")
local TextService = game:GetService("TextService")
local Teams = game:GetService("Teams")
local Player = Players.LocalPlayer
local Camera = workspace.CurrentCamera
local CoreGui = game:GetService("CoreGui")

local isStudio = RunService:IsStudio() or false
local website = "github.com/Nebula-Softworks"

local Request = (syn and syn.request) or (fluxus and fluxus.request) or (http and http.request) or http_request or request

local function tweenInfo(style : string?, direction : string?, time : number?) 
	style = style or "Exponential"
	direction = direction or "Out"
	time = time or 0.5
	return TweenInfo.new(time, Enum.EasingStyle[style], Enum.EasingDirection[direction])
end

local NebulaIcons = isStudio and require(game:GetService("ReplicatedStorage").NebulaIcons)

--// ENDSECTION


--// SECTION : Functions

-- Removes item from a provided table via the value of the item
-- and tablre is not a typo, table was already taken by roblox's core scripting
local function RemoveTable(tablre : table, value)
	for i,v in pairs(tablre) do
		if v == value then
			table.remove(tablre, i)
		end
	end
end

-- Returns a table with RGB Values of the provided Color
local function UnpackColor(Color : Color3)
	return {R = Color.R * 255, G = Color.G * 255, B = Color.B * 255}
end    

-- Returns a color with the RGB Values of the provided table
local function PackColor(Color : table)
	return Color3.fromRGB(Color.R, Color.G, Color.B)
end

-- A QOL Function made to make tweening easier and simpler
function Tween(object : Instance, goal : table, callback, tweenin)
	local tween = TweenService:Create(object,tweenin or tweenInfo(), goal)
	tween.Completed:Connect(callback or function() end)
	tween:Play()
end

-- Creates the BlurBehind Effect for the transparent theme
local function BlurModule(Frame : Frame)
	local RunService = RunService
	local camera = workspace.CurrentCamera
	local MTREL = "Glass"
	local binds = {}
	local root = Instance.new('Folder', camera)
	root.Name = 'StarlightBlur'

	local gTokenMH = 99999999
	local gToken = math.random(1, gTokenMH)

	local DepthOfField = Instance.new('DepthOfFieldEffect', Lighting)
	DepthOfField.FarIntensity = 0
	DepthOfField.FocusDistance = 51.6
	DepthOfField.InFocusRadius = 50
	DepthOfField.NearIntensity = 6
	DepthOfField.Name = "DPT_"..gToken

	local frame = Instance.new('Frame')
	frame.Parent = Frame
	frame.Size = UDim2.new(0.95, 0, 0.95, 0)
	frame.Position = UDim2.new(0.5, 0, 0.5, 0)
	frame.AnchorPoint = Vector2.new(0.5, 0.5)
	frame.BackgroundTransparency = 1

	local GenUid; do -- Generate unique names for RenderStepped bindings
		local id = 0
		function GenUid()
			id = id + 1
			return 'neon::'..tostring(id)
		end
	end

	do
		local function IsNotNaN(x)
			return x == x
		end
		local continue = IsNotNaN(camera:ScreenPointToRay(0,0).Origin.x)
		while not continue do
			RunService.RenderStepped:wait()
			continue = IsNotNaN(camera:ScreenPointToRay(0,0).Origin.x)
		end
	end

	local DrawQuad; do

		local acos, max, pi, sqrt = math.acos, math.max, math.pi, math.sqrt
		local sz = 0.22
		local function DrawTriangle(v1, v2, v3, p0, p1) -- I think Stravant wrote this function

			local s1 = (v1 - v2).magnitude
			local s2 = (v2 - v3).magnitude
			local s3 = (v3 - v1).magnitude
			local smax = max(s1, s2, s3)
			local A, B, C
			if s1 == smax then
				A, B, C = v1, v2, v3
			elseif s2 == smax then
				A, B, C = v2, v3, v1
			elseif s3 == smax then
				A, B, C = v3, v1, v2
			end

			local para = ( (B-A).x*(C-A).x + (B-A).y*(C-A).y + (B-A).z*(C-A).z ) / (A-B).magnitude
			local perp = sqrt((C-A).magnitude^2 - para*para)
			local dif_para = (A - B).magnitude - para

			local st = CFrame.new(B, A)
			local za = CFrame.Angles(pi/2,0,0)

			local cf0 = st

			local Top_Look = (cf0 * za).lookVector
			local Mid_Point = A + CFrame.new(A, B).lookVector * para
			local Needed_Look = CFrame.new(Mid_Point, C).lookVector
			local dot = Top_Look.x*Needed_Look.x + Top_Look.y*Needed_Look.y + Top_Look.z*Needed_Look.z

			local ac = CFrame.Angles(0, 0, acos(dot))

			cf0 = cf0 * ac
			if ((cf0 * za).lookVector - Needed_Look).magnitude > 0.01 then
				cf0 = cf0 * CFrame.Angles(0, 0, -2*acos(dot))
			end
			cf0 = cf0 * CFrame.new(0, perp/2, -(dif_para + para/2))

			local cf1 = st * ac * CFrame.Angles(0, pi, 0)
			if ((cf1 * za).lookVector - Needed_Look).magnitude > 0.01 then
				cf1 = cf1 * CFrame.Angles(0, 0, 2*acos(dot))
			end
			cf1 = cf1 * CFrame.new(0, perp/2, dif_para/2)

			if not p0 then
				p0 = Instance.new('Part')
				p0.TopSurface = 0
				p0.BottomSurface = 0
				p0.Anchored = true
				p0.CanCollide = false
				p0.CastShadow = false
				p0.Material = MTREL
				p0.Size = Vector3.new(sz, sz, sz)
				local mesh = Instance.new('SpecialMesh', p0)
				mesh.MeshType = 2
				mesh.Name = 'WedgeMesh'
			end
			p0.WedgeMesh.Scale = Vector3.new(0, perp/sz, para/sz)
			p0.CFrame = cf0

			if not p1 then
				p1 = p0:clone()
			end
			p1.WedgeMesh.Scale = Vector3.new(0, perp/sz, dif_para/sz)
			p1.CFrame = cf1

			return p0, p1
		end

		function DrawQuad(v1, v2, v3, v4, parts)
			parts[1], parts[2] = DrawTriangle(v1, v2, v3, parts[1], parts[2])
			parts[3], parts[4] = DrawTriangle(v3, v2, v4, parts[3], parts[4])
		end
	end

	if binds[frame] then
		return binds[frame].parts
	end

	local uid = GenUid()
	local parts = {}
	local f = Instance.new('Folder', root)
	f.Name = frame.Name

	local parents = {}
	do
		local function add(child)
			if child:IsA'GuiObject' then
				parents[#parents + 1] = child
				add(child.Parent)
			end
		end
		add(frame)
	end

	local function UpdateOrientation(fetchProps)
		local properties = {
			Transparency = 0.98;
			BrickColor = BrickColor.new('Institutional white');
		}
		local zIndex = 1 - 0.05*frame.ZIndex

		local tl, br = frame.AbsolutePosition, frame.AbsolutePosition + frame.AbsoluteSize
		local tr, bl = Vector2.new(br.x, tl.y), Vector2.new(tl.x, br.y)
		do
			local rot = 0;
			for _, v in ipairs(parents) do
				rot = rot + v.Rotation
			end
			if rot ~= 0 and rot%180 ~= 0 then
				local mid = tl:lerp(br, 0.5)
				local s, c = math.sin(math.rad(rot)), math.cos(math.rad(rot))
				local vec = tl
				tl = Vector2.new(c*(tl.x - mid.x) - s*(tl.y - mid.y), s*(tl.x - mid.x) + c*(tl.y - mid.y)) + mid
				tr = Vector2.new(c*(tr.x - mid.x) - s*(tr.y - mid.y), s*(tr.x - mid.x) + c*(tr.y - mid.y)) + mid
				bl = Vector2.new(c*(bl.x - mid.x) - s*(bl.y - mid.y), s*(bl.x - mid.x) + c*(bl.y - mid.y)) + mid
				br = Vector2.new(c*(br.x - mid.x) - s*(br.y - mid.y), s*(br.x - mid.x) + c*(br.y - mid.y)) + mid
			end
		end
		DrawQuad(
			camera:ScreenPointToRay(tl.x, tl.y, zIndex).Origin, 
			camera:ScreenPointToRay(tr.x, tr.y, zIndex).Origin, 
			camera:ScreenPointToRay(bl.x, bl.y, zIndex).Origin, 
			camera:ScreenPointToRay(br.x, br.y, zIndex).Origin, 
			parts
		)
		if fetchProps then
			for _, pt in pairs(parts) do
				pt.Parent = f
			end
			for propName, propValue in pairs(properties) do
				for _, pt in pairs(parts) do
					pt[propName] = propValue
				end
			end
		end

	end

	UpdateOrientation(true)
	RunService:BindToRenderStep(uid, 2000, UpdateOrientation)
end

-- Unpacks A Table, Returning it as string containing a list of the values
local function UnpackTable(array : table)

	local val = ""
	for _,v in pairs(array) do
		val = val .. v .. ", "
	end

	val = string.sub(val, 1,  #val-2)
	return val
	
end

--// SUBSECTION : Window Functions

-- this is a way to allow for tweening cus roblox doesnt have opacity yet and my lazy ass is not gonna be able to set each and every value without crashing out - also this makes it extremely future/change proof
-- Table for Transparency Values Of All Instances
local TransparencyValues = {
	["TEMPLATE"] = {
		BackgroundTransparency = nil,
		TextTransparency = nil,
		Transparency = nil,
		ImageTransparency = nil,
	}
}

local oldSizeX, oldSizeY, oldPosX, oldPosY

-- Hides the given MainWindow
local function Hide(Interface : ScreenGui, JustHide : boolean?, Notify : boolean?, Bind : string?)

	JustHide = JustHide or false

	-- Clear Table
	table.clear(TransparencyValues)

	for i,v in pairs(Interface:GetDescendants()) do
		if  v.ClassName ~= "Folder" 
			or v.ClassName ~= "UICorner" 
			or v.ClassName ~= "StringValue"
			or v.ClassName ~= "Color3Value" 
			or v.ClassName ~= "UIListLayout" 
			or v.ClassName ~= "UITextSizeConstraint" 
			or v.ClassName ~= "UIPadding"
			or v.ClassName ~= "UIPageLayout"
			or v.ClassName ~= "UISizeConstraint"
			or v.ClassName ~= "UIAspectRatioConstraint"
		then
			-- Create And Set Subtables
			if JustHide == false then

				v:SetAttribute("InstanceID", HttpService:GenerateGUID(false)) -- we are doing this cus roblox fucking removed/disabled the UniqueId feature, and stuff might have the same name

				TransparencyValues[v:GetAttribute("InstanceID")] = { }

				if v.ClassName == "Frame" then
					TransparencyValues[v:GetAttribute("InstanceID")].BackgroundTransparency = v.BackgroundTransparency
				end

				if v.ClassName == "TextLabel" or v.ClassName == "TextBox" or v.ClassName == "TextButton" then
					TransparencyValues[v:GetAttribute("InstanceID")].BackgroundTransparency = v.BackgroundTransparency
					TransparencyValues[v:GetAttribute("InstanceID")].TextTransparency = v.TextTransparency
				end

				if v.ClassName == "ImageLabel" or v.ClassName == "ImageButton" then
					TransparencyValues[v:GetAttribute("InstanceID")].BackgroundTransparency = v.BackgroundTransparency
					TransparencyValues[v:GetAttribute("InstanceID")].ImageTransparency = v.ImageTransparency
				end

				-- do this cus roblox gui stuff have a although deprecated class, its still accesible by scripts
				-- and sets text and transparency values which is smth we dont want
				if v.ClassName == "UIStroke" or v.ClassName == "UIGradient" then
					TransparencyValues[v:GetAttribute("InstanceID")].Transparency = v.Transparency
				end

				Starlight.Minimized = true
			end


			-- Actually Hide The Stuff
			if v.ClassName == "Frame" then
				Tween(v, {BackgroundTransparency = 1})
			end

			if v.ClassName == "TextLabel" or v.ClassName == "TextBox" or v.ClassName == "TextButton" then
				Tween(v, {BackgroundTransparency = 1})
				Tween(v, {TextTransparency = 1})
			end

			if v.ClassName == "ImageLabel" or v.ClassName == "ImageButton" then
				Tween(v, {BackgroundTransparency = 1})
				Tween(v, {ImageTransparency = 1})
			end

			if v.ClassName == "UIStroke" then
				Tween(v, {Transparency = 1})
			end
		end
	end
end

-- Unhides the given window which has been hidden by hide
local function Unhide(Interface : ScreenGui)
	for i,v in pairs(Interface:GetDescendants()) do
		if  v.ClassName ~= "Folder" 
			or v.ClassName ~= "UICorner" 
			or v.ClassName ~= "StringValue"
			or v.ClassName ~= "Color3Value" 
			or v.ClassName ~= "UIListLayout" 
			or v.ClassName ~= "UITextSizeConstraint" 
			or v.ClassName ~= "UIPadding"
			or v.ClassName ~= "UIPageLayout"
			or v.ClassName ~= "UISizeConstraint"
			or v.ClassName ~= "UIAspectRatioConstraint"
		then

			if v.ClassName == "Frame" then
				Tween(v, {BackgroundTransparency = TransparencyValues[v:GetAttribute("InstanceID")].BackgroundTransparency})
			end

			if v.ClassName == "TextLabel" or v.ClassName == "TextBox" or v.ClassName == "TextButton" then
				Tween(v, {BackgroundTransparency = TransparencyValues[v:GetAttribute("InstanceID")].BackgroundTransparency})
				Tween(v, {TextTransparency = TransparencyValues[v:GetAttribute("InstanceID")].TextTransparency})
			end

			if v.ClassName == "ImageLabel" or v.ClassName == "ImageButton" then
				Tween(v, {BackgroundTransparency = TransparencyValues[v:GetAttribute("InstanceID")].BackgroundTransparency})
				Tween(v, {ImageTransparency = TransparencyValues[v:GetAttribute("InstanceID")].ImageTransparency})
			end

			if v.ClassName == "UIStroke" then
				Tween(v, {Transparency = TransparencyValues[v:GetAttribute("InstanceID")].Transparency})
			end
		end
	end

	Starlight.Minimized = false
end

-- Maximizes the window
local function Maximize(Window : Frame)
	oldSizeX = Window.Size.X.Offset
	oldSizeY = Window.Size.Y.Offset
	oldPosX = Window.Position.X.Offset
	oldPosY = Window.Position.Y.Offset

	Window.UICorner.CornerRadius = UDim.new(0, 0)

	Tween(Window, {Size = UDim2.fromScale(1,1)}, nil, tweenInfo(nil, nil, 0.38))
	Tween(Window, {Position = UDim2.fromOffset(0,0)}, nil, tweenInfo(nil, nil, 0.38))

	Starlight.Maximized = true
end

-- Unmaximizes the window and sets it to its previous size
local function Unmaximize(Window : Frame, Dragging : boolean?)
	Dragging = Dragging or false
	
	Window.UICorner.CornerRadius = UDim.new(0, 8)

	Tween(Window, {Size = UDim2.fromOffset(oldSizeX, oldSizeY)})
	if not Dragging then
		Tween(Window, {Position = UDim2.fromOffset(oldPosX, oldPosY)})
	end

	Starlight.Maximized = false
end

-- A Function to make an object movable via dragging another object
-- Taken From Luna Interface Suite, A Nebula Softworks Product
local function makeDraggable(Bar, Window : Frame, enableTaptic, tapticOffset)
	pcall(function()
		local Dragging, DragInput, MousePos, FramePos

		local dragBar = Window.Parent.Drag
		local dragInteract = dragBar.Interact
		local dragBarCosmetic = dragBar.DragCosmetic

		local function connectFunctions()
			if dragBar and enableTaptic then
				dragBar.MouseEnter:Connect(function()
					if not Dragging then
						TweenService:Create(dragBarCosmetic, TweenInfo.new(0.25, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {BackgroundTransparency = 0.5, Size = UDim2.new(0, 120, 0, 4)}):Play()
					end
				end)

				dragBar.MouseLeave:Connect(function()
					if not Dragging then
						TweenService:Create(dragBarCosmetic, TweenInfo.new(0.25, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {BackgroundTransparency = 0.7, Size = UDim2.new(0, 100, 0, 4)}):Play()
					end
				end)
			end
		end

		connectFunctions()

		Bar.InputBegan:Connect(function(Input)
			if Input.UserInputType == Enum.UserInputType.MouseButton1 or Input.UserInputType == Enum.UserInputType.Touch then
				Dragging = true
				MousePos = Input.Position
				FramePos = Window.Position

				if enableTaptic then
					TweenService:Create(dragBarCosmetic, TweenInfo.new(0.35, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {Size = UDim2.new(0, 110, 0, 4), BackgroundTransparency = 0}):Play()
				end

				Input.Changed:Connect(function()
					if Input.UserInputState == Enum.UserInputState.End then
						Dragging = false
						connectFunctions()

						if enableTaptic then
							TweenService:Create(dragBarCosmetic, TweenInfo.new(0.35, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {Size = UDim2.new(0, 100, 0, 4), BackgroundTransparency = 0.7}):Play()
						end
					end
				end)
			end
		end)

		Bar.InputChanged:Connect(function(Input)
			if Input.UserInputType == Enum.UserInputType.MouseMovement or Input.UserInputType == Enum.UserInputType.Touch then
				DragInput = Input
			end
		end)

		UserInputService.InputChanged:Connect(function(Input)
			if Input == DragInput and Dragging then
				if Starlight.Maximized then
					Unmaximize(Window, true)
				end
				local Delta = Input.Position - MousePos

				local newMainPosition = UDim2.new(FramePos.X.Scale, FramePos.X.Offset + Delta.X, FramePos.Y.Scale, FramePos.Y.Offset + Delta.Y)
				TweenService:Create(Window, TweenInfo.new(0.35, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out), {Position = newMainPosition}):Play()

				local newDragBarPosition = UDim2.new(FramePos.X.Scale, FramePos.X.Offset + Delta.X + (Window.Size.X.Offset/2), FramePos.Y.Scale, FramePos.Y.Offset + (Window.Size.Y.Offset/2) + Delta.Y + (tapticOffset or 295))
				dragBar.Position = newDragBarPosition
			end
		end)

	end)
end

--// ENDSUBSECTION

--// ENDSECTION


--// SECTION : Interface Management

-- Interface Model
local StarlightUI : ScreenGui = isStudio and script.Parent:WaitForChild("Starlight V2") or game:GetObjects("rbxassetid://115378917859034")[1]
local buildAttempts = 0
local correctBuild = false
local warned

StarlightUI.Name = (((getgenv and getgenv().InterfaceName) or StarlightUI.Name) or "Starlight Interface Suite")
Starlight.Instance = StarlightUI

repeat

	if StarlightUI:FindFirstChild('Build') and StarlightUI.Build.Value == Starlight.InterfaceBuild then
		correctBuild = true
		break
	end

	correctBuild = false

	if not warned then
		-- notification-fy this once notifs are done
		warn('Starlight | Build Mismatch')
		print('Starlight may run into issues as it seems you are running an incompatible interface version ('.. (StarlightUI:FindFirstChild('Build') and StarlightUI.Build.Value or 'No Build') ..'). of Starlight\n\nThis version of Starlight is intended for interface build '..Starlight.InterfaceBuild..'.')
		warned = true
	end

	if StarlightUI and not isStudio then StarlightUI:Destroy() end
	StarlightUI = isStudio and script.Parent:WaitForChild("Starlight V2") or game:GetObjects("rbxassetid://115378917859034")[1]

	buildAttempts += 1

until buildAttempts >= 2

-- Sets The Interface Into Roblox's GUI
if gethui then
	StarlightUI.Parent = gethui()

elseif syn and syn.protect_gui then 
	syn.protect_gui(StarlightUI)

	StarlightUI.Parent = CoreGui

elseif not isStudio and CoreGui:FindFirstChild("RobloxGui") then
	StarlightUI.Parent = CoreGui:FindFirstChild("RobloxGui")

elseif not isStudio then
	StarlightUI.Parent = CoreGui
end

-- hides all old interfaces
if gethui then
	for _, Interface in ipairs(gethui():GetChildren()) do
		if Interface.Name == StarlightUI.Name and Interface ~= StarlightUI then
			Hide(Interface, true)
			task.wait()
			Interface:Destroy()
		end
	end
elseif not isStudio then
	for _, Interface in ipairs(CoreGui:GetChildren()) do
		if Interface.Name == StarlightUI.Name and Interface ~= StarlightUI then
			Hide(Interface, true)
			task.wait()
			Interface:Destroy()
		end
	end
end

-- sets the starting variables
StarlightUI.Enabled = false
StarlightUI.MainWindow.Visible = false
StarlightUI.MainWindow.AnchorPoint = Vector2.zero
StarlightUI.MainWindow.Position = UDim2.fromOffset(
	Camera.ViewportSize.X / 2 - StarlightUI.MainWindow.Size.X.Offset / 2,
	Camera.ViewportSize.Y / 2 - StarlightUI.MainWindow.Size.Y.Offset / 2
)

--// SUBSECTION : Interface Variables

local mainWindow : Frame = StarlightUI.MainWindow
local Resources = StarlightUI.Resources
local navigation : Frame = mainWindow.Sidebar.Navigation
local tabs : Frame = mainWindow.Content.ContentMain.Elements
local Resizing = false -- Not Implemented as of Alpha Release 2
local ResizePos = false -- Not Implemented as of Alpha Release 2

--// ENDSUBSECTION 

--// ENDSECTION


--// SECTION : Library Functions

-- Sets what to do un destruction
function Starlight:OnDestroy(func)
	Starlight.DestroyFunction = func
end

-- Destroys The Interface
function Starlight:Destroy()
	StarlightUI:Destroy()
	pcall(Starlight.DestroyFunction)
end

-- Create the Window
function Starlight:CreateWindow(WindowSettings)

	-- The Options Table
	--[[
	
	WindowSettings = {
		Name = string,
		Subtitle = string,
		Icon = number (asset id), **
		
		LoadingEnabled = bool,
		LoadingSettings = {
			Style = number,
			Title = string,
			Subtitle = string,
			Logo = number (asset id), **
		},
		
		BuildWarnings = bool, **
		InterfaceAdvertisingPrompts = bool, **
		NotifyOnCallbackError = bool,
		
		ConfigurationSettings = {
			Enabled = bool,
			RootFolder = string, **
			FolderName = string, ****
		},
		
		DefaultSize = UDim2, **
		
		KeySystem = {
			Enabled = bool,
			Title = string, ****
			Subtitle = string, ****
			Note = string, ****
			
			SaveKey = bool, ****
			KeyFile = string, ****
			
			KeyObtainLink = string, ****
			Discord = string, ****
			
			HttpKey = bool, ****
			Keys = {string, string...}, ****
		},
		
		Discord = { -- u can still have it in the home tab, this is just auto join
			Enabled = bool,
			RememberJoins = bool, ****
			Link = string ****
		},
	}
	
	]]--

	--WindowSettings.LoadingEnabled = true
	WindowSettings.NotifyOnCallbackError = WindowSettings.NotifyOnCallbackError or true

	Starlight.Window = {
		Instance = mainWindow,
		TabSections = {},
		CurrentTab = nil,
		Settings = nil,
		CurrentSize = mainWindow.Size,

		Values = {
			Title = WindowSettings.Name,
			Subtitle = WindowSettings.Subtitle,
			Icon = WindowSettings.Icon or nil,

			BuildWarnings = WindowSettings.BuildWarnings,
			InterfaceAdvertisingPrompts = WindowSettings.InterfaceAdvertisingPrompts,

			AnalyticsWebHook = WindowSettings.AnalyticsWebHook,

			ConfigurationSettings = {
				Enabled = WindowSettings.ConfigurationSettings.Enabled,
				RootFolder = WindowSettings.ConfigurationSettings.RootFolder,
				FolderName = WindowSettings.ConfigurationSettings.FolderName,
			},

			Monetization = WindowSettings.Monetization
		}
	}

	--// SUBSECTION : User Functions (Like Creating Elements)

	local FirstTab = true

	function Starlight.Window:CreateTabSection(Name :string, Visible)

		Visible = Visible or (Name ~= nil and true or false)
		Name = Name or "Empty Section"

		local TabSection = {
			Tabs = {},
			Name = Name
		}

		TabSection.Instance = navigation.NavigationSectionTemplate:Clone()
		TabSection.Instance.TabButtonTemplate:Destroy()
		TabSection.Instance.Visible = true

		TabSection.Instance.Header.Text = Name
		TabSection.Instance.Name = "TAB_SECTION_"..Name
		TabSection.Instance.Header.Visible = Visible

		--// SUBSECTION : User Functions

		function TabSection:Set(NewName)
			Name = NewName
			TabSection.Instance.Header.Text = Name
			TabSection.Instance.Name = "TAB_SECTION_"..Name
			Starlight.Window.TabSections[Name] = TabSection
		end

		-- uhh not currently added
		--[[function TabSection:CreateHomeTab(HomeTabSettings)

		end]]

		function TabSection:CreateTab(TabSettings, TabIndex)
			-- Tab Settings Table
			--[[
			
			TabSettings = {
				Name = string,
				Columns = number, (ranged from 1-3)
				Icon = number/string, **
			}
			
			]]

			TabSettings.Icon = TabSettings.Icon or NebulaIcons:GetIcon("view_in_ar")
			local Tab = {
				Instances = {},
				Values = TabSettings,
				Groupboxes = {},
				Index = TabIndex,

				Active = false,
				Hover = false,
			}

			Tab.Instances.Button = navigation.NavigationSectionTemplate.TabButtonTemplate:Clone()
			Tab.Instances.Button.Visible = true

			Tab.Instances.Button.Header.Text = TabSettings.Name
			Tab.Instances.Button.Name = "TAB_" .. TabIndex
			Tab.Instances.Button.Icon.Image = "rbxassetid://" .. Tab.Values.Icon

			Tab.Instances.Page = tabs["Tab_TEMPLATE"]:Clone()
			for i,v in pairs(Tab.Instances.Page:GetChildren()) do
				if v.ClassName == "ScrollingFrame" then
					v:Destroy()
				end
			end
			Tab.Instances.Page.Visible = true
			Tab.Instances.Page.Name = "TAB_" .. TabIndex

			Tab.Instances.Page.LayoutOrder = #tabs:GetChildren() - 2
			Tab.Instances.Page.Parent = tabs

			local function Activate() -- so i dont have to rewrite shit again

				Tween(Tab.Instances.Button, {BackgroundTransparency = 0.65})
				Tween(Tab.Instances.Button.Icon, {ImageColor3 = Color3.new(1,1,1)})
				Tween(Tab.Instances.Button.Header, {TextColor3 = Color3.new(1,1,1)})
				Tab.Instances.Button.Icon.Accent.Enabled = true
				Tab.Instances.Button.Header.Accent.Enabled = true

				tabs.UIPageLayout:JumpTo(Tab.Instances.Page)

				for i,v in pairs(Starlight.Window.TabSections) do
					for _, tab in pairs(v.Tabs) do
						tab.Active = false
					end
				end

				for _, OtherTabSection in pairs(navigation:GetChildren()) do
					for _, OtherTab in pairs(OtherTabSection:GetChildren()) do
						if OtherTab.ClassName == "Frame" and OtherTab ~= Tab.Instances.Button then
							Tween(OtherTab, {BackgroundTransparency = 1})
							Tween(OtherTab.Icon, {ImageColor3 = Color3.fromRGB(165,165,165)})
							Tween(OtherTab.Header, {TextColor3 = Color3.fromRGB(165,165,165)})
							OtherTab.Icon.Accent.Enabled = false
							OtherTab.Header.Accent.Enabled = false
						end
					end
				end

				Tab.Active = true
				Starlight.Window.CurrentTab = Tab

			end

			Tab.Instances.Button.Interact["MouseButton1Click"]:Connect(Activate)

			Tab.Instances.Button.MouseEnter:Connect(function()
				Tab.Hover = true
				Tween(Tab.Instances.Button.Icon, {ImageColor3 = Color3.new(1,1,1)})
				Tween(Tab.Instances.Button.Header, {TextColor3 = Color3.new(1,1,1)})
			end)

			Tab.Instances.Button.MouseLeave:Connect(function()
				Tab.Hover = false
				if not Tab.Active then
					Tween(Tab.Instances.Button.Icon, {ImageColor3 = Color3.fromRGB(165,165,165)})
					Tween(Tab.Instances.Button.Header, {TextColor3 = Color3.fromRGB(165,165,165)})
				end
			end)

			if FirstTab then
				Activate()
			end

			FirstTab = false

			for i=1, TabSettings.Columns do
				local column = tabs["Tab_TEMPLATE"].ScrollingCollumnTemplate:Clone()
				column.Parent = Tab.Instances.Page
				column.LayoutOrder = i
				column.Name = "Column_" .. i
				for i,v in column:GetChildren() do
					if v.ClassName ~= "UIListLayout" then
						v:Destroy()
					end
				end
			end

			--// SUBSECTION : User Functions

			function Tab:Set(NewTabSettings)
				TabSettings = NewTabSettings
				Tab.Values = TabSettings
				Tab.Instances.Button.Header.Text = TabSettings.Name
				Tab.Instances.Button.Name = "TAB_" .. TabIndex
				Tab.Instances.Page.Name = "TAB_" .. TabIndex
				Tab.Instances.Button.Icon.Image = NebulaIcons:GetIcon(TabSettings.Icon, TabSettings.ImageSource)
				Starlight.Window.TabSections[Name].Tabs[TabIndex].Values = Tab.Values
			end

			function Tab:Destroy()
				Tab.Instances.Button:Destroy()
				Tab.Instances.Page:Destroy()
			end

			-- deprecated as its kinda useless, groupbox seperate ur stuff already and dividers are in groupboxes. like rlly, these being in the actual tabs are useless
			--[[function Tab:CreateDivider(Column) -- will be changed in next update to be other items where its linked back to the library
				local Divider = {}

				Divider.Instance = tabs["Tab_TEMPLATE"].ScrollingCollumnTemplate.Divider:Clone()
				Divider.Instance.Parent = Tab.Instances.Page["Column_" .. Column]

				function Divider:Destroy()
					Divider.Instance:Destroy()
				end

				return Divider
			end]]

			function Tab:CreateGroupbox(GroupboxSettings, GroupIndex)
				--[[
				GroupboxSettings = {
					Name = string,
					Icon = number/string, **
					Column = number,**
					Style = number, **
				}
				]]

				GroupboxSettings.Icon = GroupboxSettings.Icon or NebulaIcons:GetIcon("view_in_ar")
				GroupboxSettings.Column = GroupboxSettings.Column or 1
				GroupboxSettings.Style = GroupboxSettings.Style or 1

				local Groupbox = {
					Values = GroupboxSettings,
					Elements = {},
					ParentingItem = nil,
					Index = GroupIndex
				}

				Groupbox.Instance = nil
				if GroupboxSettings.Style == 1 then
					Groupbox.Instance = tabs["Tab_TEMPLATE"].ScrollingCollumnTemplate["Groupbox_Style1"]:Clone()
					for i,v in pairs(Groupbox.Instance:GetChildren()) do
						if v.ClassName == "Frame" then v:Destroy() end
					end
				else
					Groupbox.Instance = tabs["Tab_TEMPLATE"].ScrollingCollumnTemplate2["Groupbox_Style2"]:Clone()
				end

				local GroupboxTemplateInstance = tabs["Tab_TEMPLATE"].ScrollingCollumnTemplate["Groupbox_Style1"]

				Groupbox.ParentingItem = GroupboxSettings.Style == 2 and
					Groupbox.Instance.PART_Content 
					or Groupbox.Instance

				Groupbox.Instance.Header.Text = GroupboxSettings.Name
				Groupbox.Instance.Header.Icon.Image = "rbxassetid://" .. GroupboxSettings.Icon
				Groupbox.Instance.Name = "GROUPBOX_" .. GroupIndex

				if GroupboxSettings.Style == 2 then
					Groupbox.Instance["PART_Content"]:GetPropertyChangedSignal("AbsoluteSize"):Connect(function()
						Groupbox.Instance["PART_Backdrop"].Size = UDim2.new(1,0,0, Groupbox.Instance["PART_Content"].AbsoluteSize.Y)
					end)
				end

				function Groupbox:Set(NewGroupboxSettings)

					local oldInstance = Groupbox.Instance

					if NewGroupboxSettings.Style == 1 then
						Groupbox.Instance = tabs["Tab_TEMPLATE"].ScrollingCollumnTemplate["Groupbox_Style1"]:Clone()
						for i,v in pairs(Groupbox.Instance:GetChildren()) do
							if v.ClassName == "Frame" then v:Destroy() end
						end
					else
						Groupbox.Instance = tabs["Tab_TEMPLATE"].ScrollingCollumnTemplate2["Groupbox_Style2"]:Clone()
					end

					Groupbox.Instance.Parent = Tab.Instances.Page["Column_" .. NewGroupboxSettings.Column]

					Groupbox.ParentingItem = NewGroupboxSettings.Style == 2 and
						Groupbox.Instance.PART_Content 
						or Groupbox.Instance

					if GroupboxSettings.Style == 1 then
						for _, element in pairs(oldInstance:GetChildren())do
							if element.ClassName ~= "Frame" then
								element:Destroy()
							end
							element.Parent = Groupbox.ParentingItem
						end
					elseif GroupboxSettings.Style == 2 then
						for _, element in pairs(oldInstance.PART_Content:GetChildren())do
							if element.ClassName ~= "Frame" then
								element:Destroy()
							end
							element.Parent = Groupbox.ParentingItem
						end
					end
					oldInstance:Destroy()

					Groupbox.Instance.Header.Text = NewGroupboxSettings.Name
					Groupbox.Instance.Header.Icon.Image = "rbxassetid://" .. NewGroupboxSettings.Icon
					Groupbox.Instance.Name = "GROUPBOX_" .. GroupIndex

					Starlight.Window.TabSections[Name].Tabs[TabIndex].Groupboxes[GroupIndex].Values = NewGroupboxSettings
				end

				--// SUBSECTION : Legacy User Functions

				--[[

				function Groupbox:CreatePrimaryButton(ElementSettings) -- these will be merged in the next update where we allow style changing.

					--[[
					ElementSettings = {
						Name = string,
						Icon = number, **
						ImageSource = string, **
						
						Callback = function(nil),
					}
					

					ElementSettings.ImageSource = ElementSettings.ImageSource or "Material"

					local Element = {
						Values = ElementSettings
					}

					Element.Instance = GroupboxTemplateInstance["Button_TEMPLATE_Style1"]:Clone()
					Element.Instance.Visible = true
					Element.Instance["PART_Backdrop"].DropShadowHolder.DropShadow.ImageTransparency = 1
					Element.Instance.Parent = Groupbox.ParentingItem

					Element.Instance.Name = "BUTTON_" .. ElementSettings.Name
					Element.Instance["PART_Backdrop"].Header.Text = ElementSettings.Name
					Element.Instance["PART_Backdrop"].Header.Icon.Visible = ElementSettings.Icon ~= nil
					if Element.Instance["PART_Backdrop"].Header.Icon.Visible == false then
						Element.Instance["PART_Backdrop"].Header.UIPadding.PaddingLeft = UDim.new(0,6)
					else
						Element.Instance["PART_Backdrop"].Header.UIPadding.PaddingLeft = UDim.new(0,32)
					end
					Element.Instance["PART_Backdrop"].Header.Icon.Image = ElementSettings.Icon ~= nil and "rbxassetid://" .. Element.Values.Icon or ""

					function Element:Set(NewElementSettings)
						for i,v in pairs(ElementSettings) do
							if NewElementSettings[i] == nil then
								NewElementSettings[i] = v
							end
						end

						ElementSettings = NewElementSettings

						Element.Values = ElementSettings
						Starlight.Window.TabSections[Name].Tabs[TabIndex].Groupboxes[GroupIndex].Elements[ElementSettings.Name] = ElementSettings

						Element.Instance.Name = "BUTTON_" .. ElementSettings.Name
						Element.Instance["PART_Backdrop"].Header.Text = ElementSettings.Name
						Element.Instance["PART_Backdrop"].Header.Icon.Visible = ElementSettings.Icon ~= nil
						if Element.Instance["PART_Backdrop"].Header.Icon.Visible == false then
							Element.Instance["PART_Backdrop"].Header.UIPadding.PaddingLeft = UDim.new(0,6)
						else
							Element.Instance["PART_Backdrop"].Header.UIPadding.PaddingLeft = UDim.new(0,32)
						end
						Element.Instance["PART_Backdrop"].Header.Icon.Image = ElementSettings.Icon ~= nil and "rbxassetid://" .. Element.Values.Icon or ""
						Starlight.Window.TabSections[Name].Tabs[TabIndex].Groupboxes[GroupIndex].Elements[ElementSettings.Name].Values = ElementSettings
					end

					function Element:Destroy()
						Element.Instance:Destroy()
					end

					Element.Instance.MouseEnter:Connect(function()
						Tween(Element.Instance["PART_Backdrop"].DropShadowHolder.DropShadow, {ImageTransparency = 0.73})
					end)

					Element.Instance.MouseLeave:Connect(function()
						Tween(Element.Instance["PART_Backdrop"].DropShadowHolder.DropShadow, {ImageTransparency = 1})

						if Element.Instance["PART_Backdrop"].AccentBrighter.Enabled == true then
							Element.Instance["PART_Backdrop"].AccentBrighter.Enabled = false
							Element.Instance["PART_Backdrop"].Accent.Enabled = true
						end
					end)

					Element.Instance.Interact.MouseButton1Click:Connect(function()
						local Success,Response = pcall(Element.Values.Callback)

						if not Success then
							Element.Instance["PART_Backdrop"].Header.Text = "Callback Error"
							warn("Starlight Interface Suite | "..ElementSettings.Name.." Callback Error")
							print(tostring(Response))
							wait(0.5)
							Element.Instance["PART_Backdrop"].Header.Text = ElementSettings.Name
						end
					end)

					Element.Instance.Interact.MouseButton1Down:Connect(function()
						Element.Instance["PART_Backdrop"].AccentBrighter.Enabled = true
						Element.Instance["PART_Backdrop"].Accent.Enabled = false
					end)

					Element.Instance.Interact.MouseButton1Up:Connect(function()
						Element.Instance["PART_Backdrop"].AccentBrighter.Enabled = false
						Element.Instance["PART_Backdrop"].Accent.Enabled = true
					end)

					if GroupboxSettings.Style == 2 then
						Groupbox.Instance["PART_Backdrop"].Size = UDim2.new(1,0,0, Groupbox.Instance["PART_Backdrop"].AbsoluteSize.Y)
					end

					Starlight.Window.TabSections[Name].Tabs[TabIndex].Groupboxes[GroupIndex].Elements[ElementSettings.Name] = Element
					return Starlight.Window.TabSections[Name].Tabs[TabIndex].Groupboxes[GroupIndex].Elements[ElementSettings.Name]
				end

				function Groupbox:CreateSecondaryButton(ElementSettings) -- these will be merged in the next update where we allow style changing.
					ElementSettings.ImageSource = ElementSettings.ImageSource or "Material"

					local Element = {
						Values = ElementSettings
					}

					Element.Instance = GroupboxTemplateInstance["Button_TEMPLATE_Style2"]:Clone()
					Element.Instance.Visible = true
					Element.Instance.Parent = Groupbox.ParentingItem

					Element.Instance.Name = "BUTTON_" .. ElementSettings.Name
					Element.Instance["PART_Backdrop"].Header.Text = ElementSettings.Name
					Element.Instance["PART_Backdrop"].Header.Icon.Visible = ElementSettings.Icon ~= nil
					if Element.Instance["PART_Backdrop"].Header.Icon.Visible == false then
						Element.Instance["PART_Backdrop"].Header.UIPadding.PaddingLeft = UDim.new(0,6)
					else
						Element.Instance["PART_Backdrop"].Header.UIPadding.PaddingLeft = UDim.new(0,32)
					end
					Element.Instance["PART_Backdrop"].Header.Icon.Image = ElementSettings.Icon ~= nil and "rbxassetid://" .. Element.Values.Icon or ""

					function Element:Set(NewElementSettings)
						for i,v in pairs(ElementSettings) do
							if NewElementSettings[i] == nil then
								NewElementSettings[i] = v
							end
						end

						ElementSettings = NewElementSettings

						Element.Values = ElementSettings
						Starlight.Window.TabSections[Name].Tabs[TabIndex].Groupboxes[GroupIndex].Elements[ElementSettings.Name] = ElementSettings

						Element.Instance.Name = "BUTTON_" .. ElementSettings.Name
						Element.Instance["PART_Backdrop"].Header.Text = ElementSettings.Name
						Element.Instance["PART_Backdrop"].Header.Icon.Visible = ElementSettings.Icon ~= nil
						if Element.Instance["PART_Backdrop"].Header.Icon.Visible == false then
							Element.Instance["PART_Backdrop"].Header.UIPadding.PaddingLeft = UDim.new(0,6)
						else
							Element.Instance["PART_Backdrop"].Header.UIPadding.PaddingLeft = UDim.new(0,32)
						end
						Element.Instance["PART_Backdrop"].Header.Icon.Image = ElementSettings.Icon ~= nil and "rbxassetid://" .. Element.Values.Icon or ""
						Starlight.Window.TabSections[Name].Tabs[TabIndex].Groupboxes[GroupIndex].Elements[ElementSettings.Name].Values = ElementSettings
					end

					function Element:Destroy()
						Element.Instance:Destroy()
					end

					Element.Instance.MouseEnter:Connect(function()
						Tween(Element.Instance["PART_Backdrop"], {BackgroundColor3 = Color3.fromRGB(31, 33, 38)})
					end)

					Element.Instance.MouseLeave:Connect(function()
						Tween(Element.Instance["PART_Backdrop"], {BackgroundColor3 = Color3.fromRGB(27, 29, 34)})
					end)

					Element.Instance.Interact.MouseButton1Click:Connect(function()
						local Success,Response = pcall(ElementSettings.Callback)

						if not Success then
							Element.Instance["PART_Backdrop"].Header.Text = "Callback Error"
							warn("Starlight Interface Suite | "..ElementSettings.Name.." Callback Error")
							print(tostring(Response))
							wait(0.5)
							Element.Instance["PART_Backdrop"].Header.Text = ElementSettings.Name
						end
					end)

					Starlight.Window.TabSections[Name].Tabs[TabIndex].Groupboxes[GroupIndex].Elements[ElementSettings.Name] = Element
					return Starlight.Window.TabSections[Name].Tabs[TabIndex].Groupboxes[GroupIndex].Elements[ElementSettings.Name]
				end

				function Groupbox:CreateCheckbox(ElementSettings) -- will be merged with switch in next update via styles. adding a checkbox icon soon

					--[[
					ElementSettings = {
						Name = string,
						Icon = number, **
						ImageSource = string, **
						InitialCallback = bool, **
						CurrentValue = bool, **
						
						Callback = function(bool),
					}
					

					ElementSettings.ImageSource = ElementSettings.ImageSource or "Material"
					ElementSettings.InitialCallback = ElementSettings.InitialCallback or true
					ElementSettings.CurrentValue = ElementSettings.CurrentValue or false

					local Element = {
						Values = ElementSettings,
					}

					Element.Instance = GroupboxTemplateInstance.Checkbox_TEMPLATE_Disabled:Clone()
					Element.Instance.Visible = true
					Element.Instance.Parent = Groupbox.ParentingItem

					Element.Instance.Name = "CHECKBOX_" .. ElementSettings.Name
					Element.Instance.Header.Text = ElementSettings.Name
					Element.Instance.Header.Icon.Visible = ElementSettings.Icon ~= nil
					if Element.Instance.Header.Icon.Visible == false then
						Element.Instance.Header.UIPadding.PaddingLeft = UDim.new(0,6)
					else
						Element.Instance.Header.UIPadding.PaddingLeft = UDim.new(0,32)
					end
					Element.Instance.Header.Icon.Image = ElementSettings.Icon ~= nil and "rbxassetid://" .. Element.Values.Icon or ""

					local function Set(bool)
						if bool then
							Tween(Element.Instance.Checkbox, {BackgroundTransparency = 0})
						else
							Tween(Element.Instance.Checkbox, {BackgroundTransparency = 0.9})
						end

						Element.Values.CurrentValue = bool
					end

					--starting
					do
						Set(Element.Values.CurrentValue)
						if ElementSettings.InitialCallback then
							local Success,Response = pcall(function()
								ElementSettings.Callback(Element.Values.CurrentValue)
							end)

							if not Success then
								Element.Instance.Header.Text = "Callback Error"
								warn("Starlight Interface Suite | "..ElementSettings.Name.." Callback Error")
								print(tostring(Response))
								wait(0.5)
								Element.Instance.Header.Text = ElementSettings.Name
							end
						end
					end

					Element.Instance.Checkbox.MouseEnter:Connect(function()
						Element.Instance.Checkbox.AccentBrighter.Enabled = true
						Element.Instance.Checkbox.Accent.Enabled = false
					end)

					Element.Instance.Checkbox.MouseLeave:Connect(function()
						Element.Instance.Checkbox.AccentBrighter.Enabled = false
						Element.Instance.Checkbox.Accent.Enabled = true
					end)

					Element.Instance.Checkbox.Interact.MouseButton1Click:Connect(function()
						Element.Values.CurrentValue = not Element.Values.CurrentValue
						Set(Element.Values.CurrentValue)

						local Success,Response = pcall(function()
							Element.Values.Callback(Element.Values.CurrentValue)
						end)

						if not Success then
							Element.Instance.Header.Text = "Callback Error"
							warn("Starlight Interface Suite | "..ElementSettings.Name.." Callback Error")
							print(tostring(Response))
							wait(0.5)
							Element.Instance.Header.Text = ElementSettings.Name
						end
					end)

					function Element:Set(NewElementSettings)
						for i,v in pairs(ElementSettings) do
							if NewElementSettings[i] == nil then
								NewElementSettings[i] = v
							end
						end

						ElementSettings = NewElementSettings

						Element.Values = ElementSettings

						Element.Instance.Name = "CHECKBOX_" .. ElementSettings.Name
						Element.Instance.Header.Text = ElementSettings.Name
						Element.Instance.Header.Icon.Visible = ElementSettings.Icon ~= nil
						if Element.Instance.Header.Icon.Visible == false then
							Element.Instance.Header.UIPadding.PaddingLeft = UDim.new(0,6)
						else
							Element.Instance.Header.UIPadding.PaddingLeft = UDim.new(0,32)
						end
						Element.Instance.Header.Icon.Image = ElementSettings.Icon ~= nil and "rbxassetid://" .. Element.Values.Icon or ""

						Starlight.Window.TabSections[Name].Tabs[TabIndex].Groupboxes[GroupIndex].Elements[ElementSettings.Name].Values = ElementSettings
					end

					function Element:Destroy()
						Element.Instance:Destroy()
					end

					Starlight.Window.TabSections[Name].Tabs[TabIndex].Groupboxes[GroupIndex].Elements[ElementSettings.Name] = Element
					return Starlight.Window.TabSections[Name].Tabs[TabIndex].Groupboxes[GroupIndex].Elements[ElementSettings.Name]
				end

				function Groupbox:CreateSwitch(ElementSettings)

					--[[
					ElementSettings = {
						Name = string,
						Icon = number, **
						ImageSource = string, **
						InitialCallback = bool, **
						CurrentValue = bool, **
						
						Callback = function(bool),
					}
					

					ElementSettings.ImageSource = ElementSettings.ImageSource or "Material"
					ElementSettings.InitialCallback = ElementSettings.InitialCallback or true
					ElementSettings.CurrentValue = ElementSettings.CurrentValue or false

					local Element = {
						Values = ElementSettings,
					}

					Element.Instance = GroupboxTemplateInstance.Switch_TEMPLATE_Disabled:Clone()
					Element.Instance.Visible = true
					Element.Instance.Parent = Groupbox.ParentingItem

					Element.Instance.Name = "SWITCH_" .. ElementSettings.Name
					Element.Instance.Header.Text = ElementSettings.Name
					Element.Instance.Header.Icon.Visible = ElementSettings.Icon ~= nil
					if Element.Instance.Header.Icon.Visible == false then
						Element.Instance.Header.UIPadding.PaddingLeft = UDim.new(0,6)
					else
						Element.Instance.Header.UIPadding.PaddingLeft = UDim.new(0,32)
					end
					Element.Instance.Header.Icon.Image = ElementSettings.Icon ~= nil and "rbxassetid://" .. Element.Values.Icon or ""

					local function Set(bool)
						if bool then
							Tween(Element.Instance.Switch, {BackgroundTransparency = 0, BackgroundColor3 = Color3.fromRGB(255,255,255)})
							Tween(Element.Instance.Switch.Knob, {Position = UDim2.new(0,20,.5,0), BackgroundColor3 = Color3.fromRGB(255,255,255), BackgroundTransparency = 0})
							Tween(Element.Instance.Switch.UIStroke, {Color = Color3.fromRGB(255,255,255)})
							Tween(Element.Instance.Switch.DropShadowHolder.DropShadow, {ImageTransparency = 0})
							Element.Instance.Switch.Accent.Enabled = true
							Element.Instance.Switch.UIStroke.Accent.Enabled = true
						else
							Tween(Element.Instance.Switch, {BackgroundTransparency = 1, BackgroundColor3 = Color3.fromRGB(165,165,165)})
							Tween(Element.Instance.Switch.Knob, {Position = UDim2.new(0,0,.5,0), BackgroundColor3 = Color3.fromRGB(165,165,165), BackgroundTransparency = 0.5})
							Tween(Element.Instance.Switch.UIStroke, {Color = Color3.fromRGB(165,165,165)})
							Tween(Element.Instance.Switch.DropShadowHolder.DropShadow, {ImageTransparency = 1})
							Element.Instance.Switch.Accent.Enabled = false
							Element.Instance.Switch.UIStroke.Accent.Enabled = false
						end

						Element.Values.CurrentValue = bool
					end

					--starting
					do
						Set(Element.Values.CurrentValue)
						if ElementSettings.InitialCallback then
							local Success,Response = pcall(function()
								ElementSettings.Callback(Element.Values.CurrentValue)
							end)

							if not Success then
								Element.Instance.Header.Text = "Callback Error"
								warn("Starlight Interface Suite | "..ElementSettings.Name.." Callback Error")
								print(tostring(Response))
								wait(0.5)
								Element.Instance.Header.Text = ElementSettings.Name
							end
						end
					end

					Element.Instance.Switch.Interact.MouseButton1Click:Connect(function()
						Element.Values.CurrentValue = not Element.Values.CurrentValue
						Set(Element.Values.CurrentValue)

						local Success,Response = pcall(function()
							ElementSettings.Callback(Element.Values.CurrentValue)
						end)

						if not Success then
							Element.Instance.Header.Text = "Callback Error"
							warn("Starlight Interface Suite | "..ElementSettings.Name.." Callback Error")
							print(tostring(Response))
							wait(0.5)
							Element.Instance.Header.Text = ElementSettings.Name
						end
					end)

					function Element:Set(NewElementSettings)
						for i,v in pairs(ElementSettings) do
							if NewElementSettings[i] == nil then
								NewElementSettings[i] = v
							end
						end

						ElementSettings = NewElementSettings

						Element.Values = ElementSettings

						Element.Instance.Name = "SWITCH_" .. ElementSettings.Name
						Element.Instance.Header.Text = ElementSettings.Name
						Element.Instance.Header.Icon.Visible = ElementSettings.Icon ~= nil
						if Element.Instance.Header.Icon.Visible == false then
							Element.Instance.Header.UIPadding.PaddingLeft = UDim.new(0,6)
						else
							Element.Instance.Header.UIPadding.PaddingLeft = UDim.new(0,32)
						end
						Element.Instance.Header.Icon.Image = ElementSettings.Icon ~= nil and "rbxassetid://" .. Element.Values.Icon or ""

						Starlight.Window.TabSections[Name].Tabs[TabIndex].Groupboxes[GroupIndex].Elements[ElementSettings.Name].Values = ElementSettings
					end

					function Element:Destroy()
						Element.Instance:Destroy()
					end

					Starlight.Window.TabSections[Name].Tabs[TabIndex].Groupboxes[GroupIndex].Elements[ElementSettings.Name] = Element
					return Starlight.Window.TabSections[Name].Tabs[TabIndex].Groupboxes[GroupIndex].Elements[ElementSettings.Name]
				end


				-- coded by justhey the goat
				function Groupbox:CreateDropdown(ElementSettings)
					
					ElementSettings = {
						Name = string,
						Icon = number, **
						ImageSource = string, **
						Options = table, {string ...}
						CurrentOption = table/string, {string ...} **
						MultipleOptions = bool, **
						Special = number, ** -- 0/nil for none, 1 for Player, 2 for Teams, more hopefully coming soon
						
						Callback = function(table)
					}
					

					ElementSettings.ImageSource = ElementSettings.ImageSource or "Material"
					ElementSettings.CurrentOption = ElementSettings.CurrentOption or ({ElementSettings.Options[1]})
					ElementSettings.MultipleOptions = ElementSettings.MultipleOptions or false
					ElementSettings.Special = ElementSettings.Special or 0

					local Element = {
						Values = ElementSettings,
						Instances = {},
						State = false
					}

					Element.Instances.Element = GroupboxTemplateInstance.Dropdown_TEMPLATE:Clone()
					Element.Instances.Element.Parent = Groupbox.ParentingItem
					Element.Instances.Element.Visible = true

					Element.Instances.Element.Name = "DROPDOWN_" .. ElementSettings.Name
					Element.Instances.Element.Header.Text = ElementSettings.Name


					Element.Instances.Popup = mainWindow["Popup Overlay"].Dropdown_TEMPLATE:Clone()
					Element.Instances.Popup.Parent = mainWindow["Popup Overlay"]
					Element.Instances.Popup.Header.Text = ElementSettings.Name


					--// Interaction System \\--
					Element.Instances.Element.Icon.MouseButton1Click:Connect(function()
						mainWindow["Popup Overlay"].Visible = true
						Element.Instances.Popup.Visible = true

						UserInputService.InputBegan:Connect(function(i, g)
							if g or i.UserInputType ~= Enum.UserInputType.MouseButton1 then return end
							local p, pos, size = i.Position, Element.Instances.Popup.AbsolutePosition, Element.Instances.Popup.AbsoluteSize
							if not (p.X >= pos.X and p.X <= pos.X + size.X and p.Y >= pos.Y and p.Y <= pos.Y + size.Y) then
								mainWindow["Popup Overlay"].Visible = false
								Element.Instances.Popup.Visible = false
							end
						end)
					end)

					local function ActivateColorSingle(name)
						for _, Option in pairs(Element.Instances.Popup.Content:GetChildren()) do
							if Option.ClassName == "Frame" and not string.find(Option.Name, "Option_Template") then
								Tween(Option, {BackgroundTransparency = 1})
								Tween(Option.Header, {TextColor3 = Color3.fromRGB(100, 100, 100)})
								Option.Header.Accent.Enabled = false
								Option.Icon.Accent.Enabled = false
							end
						end


						Tween(Element.Instances.Popup.Content[name], {BackgroundTransparency = 0.8})
						Tween(Element.Instances.Popup.Content[name].Header, {TextColor3 = Color3.fromRGB(255,255,255)})
						Element.Instances.Popup.Content[name].Header.Accent.Enabled = true
						Element.Instances.Popup.Content[name].Icon.Accent.Enabled = true

					end

					local function CB(Sel, Func)
						local Success, Response = pcall(function()
							ElementSettings.Callback(Sel)
						end)

						if Success and Func then
							Func()
						end
					end

					local function Refresh()
						for i,v in pairs(ElementSettings.Options) do
							local Option = Element.Instances.Popup.Content.Option_TEMPLATE:Clone()
							local OptionHover = false

							Option.Header.Text = v
							Option.Name = v

							Option.Interact.MouseButton1Click:Connect(function()
								local Selected
								if ElementSettings.MultipleOptions then
									if table.find(ElementSettings.CurrentOption, v) then
										RemoveTable(ElementSettings.CurrentOption, v)

										if not OptionHover then
											Tween(Option.Header, {TextColor3 = Color3.fromRGB(100, 100, 100)})
										end
										Option.BackgroundTransparency = 1
										Option.Header.Accent.Enabled = false
										Option.Icon.Accent.Enabled = false
									else
										table.insert(ElementSettings.CurrentOption, v)
										Tween(Option.Header, {TextColor3 = Color3.fromRGB(255, 255, 255)})
										Option.BackgroundTransparency = 0.8
										Option.Header.Accent.Enabled = true
										Option.Icon.Accent.Enabled = true
									end
									Selected = ElementSettings.CurrentOption

								else
									ElementSettings.CurrentOption = {v}
									Selected = v

									ActivateColorSingle(v)
								end



								CB(Selected, function()
									if ElementSettings.MultipleOptions then
										if not ElementSettings.CurrentOption and type(ElementSettings.CurrentOption) == "table" then
											ElementSettings.CurrentOption = {}
										end
									end
								end)
							end)


							Option.Visible = true
							Option.Parent = Element.Instances.Popup.Content

							Option.Interact.MouseEnter:Connect(function()
								OptionHover = true
								if Option.Header.Accent.Enabled then
									return
								else
									Tween(Option.Header, {TextColor3 = Color3.fromRGB(200,200,200)})
								end
							end)

							Option.Interact.MouseLeave:Connect(function()
								OptionHover = false
								if Option.Header.Accent.Enabled then
									return
								else
									Tween(Option.Header, {TextColor3 = Color3.fromRGB(100,100,100)})
								end
							end)	

						end
					end

					Refresh()

					if ElementSettings.CurrentOption then
						if type(ElementSettings.CurrentOption) == "string" then
							ElementSettings.CurrentOption = {ElementSettings.CurrentOption}
						end
						if not ElementSettings.MultipleOptions and type(ElementSettings.CurrentOption) == "table" then
							ElementSettings.CurrentOption = {ElementSettings.CurrentOption[1]}
						end
					else
						ElementSettings.CurrentOption = {}
					end

					local Selected, ind = nil,0
					for i,v in pairs(ElementSettings.CurrentOption) do
						ind = ind + 1
					end
					if ind == 1 then Selected = ElementSettings.CurrentOption[1] else Selected = ElementSettings.CurrentOption end
					CB(Selected)
					if type(Selected) == "string" then 
						Tween(Element.Instances.Popup.Content[Selected], {BackgroundTransparency = 0.8})
						Tween(Element.Instances.Popup.Content[Selected].Header, {TextColor3 = Color3.fromRGB(255,255,255)})
						Element.Instances.Popup.Content[Selected].Header.Accent.Enabled = true
						Element.Instances.Popup.Content[Selected].Icon.Accent.Enabled = true
					else
						for i,v in pairs(Selected) do
							Tween(Element.Instances.Popup.Content[Selected], {BackgroundTransparency = 0.8})
							Tween(Element.Instances.Popup.Content[Selected].Header, {TextColor3 = Color3.fromRGB(255,255,255)})
							Element.Instances.Popup.Content[Selected].Header.Accent.Enabled = true
							Element.Instances.Popup.Content[Selected].Icon.Accent.Enabled = true
						end
					end

					if ElementSettings.MultipleOptions then
						if not ElementSettings.CurrentOption and type(ElementSettings.CurrentOption) == "table" then
							ElementSettings.CurrentOption = {}
						end
					end

					function Element:Destroy()
						Element.Instance:Destroy()
					end

					Starlight.Window.TabSections[Name].Tabs[TabIndex].Groupboxes[GroupIndex].Elements[ElementSettings.Name] = Element
					return Starlight.Window.TabSections[Name].Tabs[TabIndex].Groupboxes[GroupIndex].Elements[ElementSettings.Name]
				end

				function Groupbox:CreateBind(ElementSettings) -- will be merged with toggles and labels soon
	
					ElementSettings = {
						Name = string,
						Icon = number, **
						ImageSource = string, **
						HoldToInteract = bool, **
						CurrentValue = string, 
						SyncToggleState = bool, ** -- required to be made on toggle to use, coming soon
						
						-- if creating on a parent toggle, do not create the callback here. create it in the parent toggle, it will sync automatically
						Callback = function(bool), -- Returns bool whether the bind is active or not. If HoldToInteract is true, it is recommended to put your script in a while boolean do loop
						ChangedCallback = function(string), ** -- Returns the new keybind as a string (See the documentation list for all keybinds to string)
					}
					

					ElementSettings.ImageSource = ElementSettings.ImageSource or "Material"
					ElementSettings.HoldToInteract = ElementSettings.HoldToInteract or false
					ElementSettings.SyncToggleState = ElementSettings.SyncToggleState or true
					ElementSettings.ChangedCallback = ElementSettings.ChangedCallback or function() end

					local Element = {
						Values = ElementSettings,
					}

					Element.Instance = GroupboxTemplateInstance.Bind_TEMPLATE:Clone()
					Element.Instance.Visible = true
					Element.Instance.Parent = Groupbox.ParentingItem

					Element.Instance.Name = "BIND_" .. ElementSettings.Name
					Element.Instance.Header.Text = ElementSettings.Name
					Element.Instance.Header.Icon.Visible = ElementSettings.Icon ~= nil
					if Element.Instance.Header.Icon.Visible == false then
						Element.Instance.Header.UIPadding.PaddingLeft = UDim.new(0,6)
					else
						Element.Instance.Header.UIPadding.PaddingLeft = UDim.new(0,32)
					end
					Element.Instance.Header.Icon.Image = ElementSettings.Icon ~= nil and "rbxassetid://" .. Element.Values.Icon or ""

					local CheckingForKey = false
					local Active = false

					Element.Instance.Bind.Text = ElementSettings.CurrentValue

					Element.Instance.Bind.Focused:Connect(function()
						task.wait()
						CheckingForKey = true
					end)

					Element.Instance.Bind.FocusLost:Connect(function()
						CheckingForKey = false
						if Element.Instance.Bind.Text == (nil or "") then
							Element.Instance.Bind.Text = ElementSettings.CurrentValue
						end
					end)

					UserInputService.InputBegan:Connect(function(input, processed)

						if CheckingForKey then

							if input.UserInputType == Enum.UserInputType.Keyboard then
								if input.KeyCode ~= Enum.KeyCode.Unknown and input.KeyCode ~= Enum.KeyCode[Starlight.WindowKeybind] then
									local SplitMessage = string.split(tostring(input.KeyCode), ".")
									local NewKeyNoEnum = SplitMessage[3]
									Element.Instance.Bind.Text = tostring(NewKeyNoEnum)
									Element.Values.CurrentValue = tostring(NewKeyNoEnum)
									local Success,Response = pcall(function()
										Element.Values.ChangedCallback(Element.Values.CurrentValue)
									end)

									if not Success then
										Element.Instance.Header.Text = "Callback Error"
										warn("Starlight Interface Suite | "..ElementSettings.Name.." Callback Error")
										print(tostring(Response))
										wait(0.5)
										Element.Instance.Header.Text = ElementSettings.Name
									end
									Element.Instance.Bind:ReleaseFocus()
								end
							else
								if input.UserInputType == Enum.UserInputType.MouseButton1 then
									Element.Instance.Bind.Text = "MB1"
									Element.Values.CurrentValue = "MB1"
									Element.Instance.Bind:ReleaseFocus()
									local Success,Response = pcall(function()
										Element.Values.ChangedCallback(Element.Values.CurrentValue)
									end)

									if not Success then
										Element.Instance.Header.Text = "Callback Error"
										warn("Starlight Interface Suite | "..ElementSettings.Name.." Callback Error")
										print(tostring(Response))
										wait(0.5)
										Element.Instance.Header.Text = ElementSettings.Name
									end
								elseif input.UserInputType == Enum.UserInputType.MouseButton2 then
									Element.Instance.Bind.Text = "MB2"
									Element.Values.CurrentValue = "MB2"
									Element.Instance.Bind:ReleaseFocus()
									local Success,Response = pcall(function()
										Element.Values.ChangedCallback(Element.Values.CurrentValue)
									end)

									if not Success then
										Element.Instance.Header.Text = "Callback Error"
										warn("Starlight Interface Suite | "..ElementSettings.Name.." Callback Error")
										print(tostring(Response))
										wait(0.5)
										Element.Instance.Header.Text = ElementSettings.Name
									end
								end
							end

						elseif Element.Values.CurrentValue ~= nil and not processed then 

							if Element.Values.CurrentValue == "MB1" then
								if input.UserInputType ~= Enum.UserInputType.MouseButton1 then
									return
								end
							elseif Element.Values.CurrentValue == "MB2" then	
								if input.UserInputType ~= Enum.UserInputType.MouseButton2 then
									return
								end
							else
								if input.KeyCode ~= Enum.KeyCode[Element.Values.CurrentValue] then
									return
								end
							end

							local Held = true
							local Connection
							Connection = input.Changed:Connect(function(prop)
								if prop == "UserInputState" then
									Connection:Disconnect()
									Held = false
								end
							end)

							if not Element.Values.HoldToInteract then
								Active = not Active
								local Success,Response = pcall(function()
									Element.Values.Callback(Active)
								end)

								if not Success then
									Element.Instance.Header.Text = "Callback Error"
									warn("Starlight Interface Suite | "..ElementSettings.Name.." Callback Error")
									print(tostring(Response))
									wait(0.5)
									Element.Instance.Header.Text = ElementSettings.Name
								end
							else
								wait(0.1)
								if Held then
									local Loop; Loop = RunService.Stepped:Connect(function()
										if not Held then
											local Success,Response = pcall(function()
												Element.Values.Callback(Active)
											end)

											if not Success then
												Element.Instance.Header.Text = "Callback Error"
												warn("Starlight Interface Suite | "..ElementSettings.Name.." Callback Error")
												print(tostring(Response))
												wait(0.5)
												Element.Instance.Header.Text = ElementSettings.Name
											end
											Loop:Disconnect()
										else
											local Success,Response = pcall(function()
												Element.Values.Callback(Active)
											end)

											if not Success then
												Element.Instance.Header.Text = "Callback Error"
												warn("Starlight Interface Suite | "..ElementSettings.Name.." Callback Error")
												print(tostring(Response))
												wait(0.5)
												Element.Instance.Header.Text = ElementSettings.Name
											end
										end
									end)	
								end
							end
						end
					end)

					function Element:Set(NewElementSettings)
						for i,v in pairs(ElementSettings) do
							if NewElementSettings[i] == nil then
								NewElementSettings[i] = v
							end
						end

						ElementSettings = NewElementSettings

						Element.Values = ElementSettings

						Element.Instance.Name = "BIND_" .. ElementSettings.Name
						Element.Instance.Header.Text = ElementSettings.Name
						Element.Instance.Header.Icon.Visible = ElementSettings.Icon ~= nil
						if Element.Instance.Header.Icon.Visible == false then
							Element.Instance.Header.UIPadding.PaddingLeft = UDim.new(0,6)
						else
							Element.Instance.Header.UIPadding.PaddingLeft = UDim.new(0,32)
						end
						Element.Instance.Header.Icon.Image = ElementSettings.Icon ~= nil and "rbxassetid://" .. Element.Values.Icon or ""

						Element.Instance.Bind.Text = ElementSettings.CurrentValue

						Starlight.Window.TabSections[Name].Tabs[TabIndex].Groupboxes[GroupIndex].Elements[ElementSettings.Name].Values = ElementSettings
					end

					function Element:Destroy()
						Element.Instance:Destroy()
					end

					Starlight.Window.TabSections[Name].Tabs[TabIndex].Groupboxes[GroupIndex].Elements[ElementSettings.Name] = Element
					return Starlight.Window.TabSections[Name].Tabs[TabIndex].Groupboxes[GroupIndex].Elements[ElementSettings.Name]
				end
				

				]]

				function Groupbox:CreateButton(ElementSettings, Index)

					--[[
					ElementSettings = {
						Name = string,
						Icon = number, **
						
						Style = number, **
						
						Callback = function(nil),
					}
					]]

					ElementSettings.Style = ElementSettings.Style or 2

					local Element = {
						Values = ElementSettings,
						Class = "Button"
					}

					local Instances = {
						Style1 = GroupboxTemplateInstance["Button_TEMPLATE_Style1"]:Clone(),
						Style2 = GroupboxTemplateInstance["Button_TEMPLATE_Style2"]:Clone()
					}

					for _, ElementInstance in pairs(Instances) do

						ElementInstance.Visible = ElementInstance.Name == "Button_TEMPLATE_Style" .. Element.Values.Style
						ElementInstance.Parent = Groupbox.ParentingItem

						ElementInstance.Name = "BUTTON_" .. Index
						ElementInstance["PART_Backdrop"].Header.Text = Element.Values.Name
						ElementInstance["PART_Backdrop"].Header.Icon.Visible = Element.Values.Icon ~= nil
						if ElementInstance["PART_Backdrop"].Header.Icon.Visible == false then
							ElementInstance["PART_Backdrop"].Header.UIPadding.PaddingLeft = UDim.new(0,6)
						else
							ElementInstance["PART_Backdrop"].Header.UIPadding.PaddingLeft = UDim.new(0,32)
						end
						ElementInstance["PART_Backdrop"].Header.Icon.Image = Element.Values.Icon ~= nil and "rbxassetid://" .. Element.Values.Icon or ""

						if Element.Values.Style == 1 then
							ElementInstance.MouseEnter:Connect(function()
								Tween(ElementInstance["PART_Backdrop"].DropShadowHolder.DropShadow, {ImageTransparency = 0.73})
							end)

							ElementInstance.MouseLeave:Connect(function()
								Tween(ElementInstance["PART_Backdrop"].DropShadowHolder.DropShadow, {ImageTransparency = 1})

								if ElementInstance["PART_Backdrop"].AccentBrighter.Enabled == true then
									ElementInstance["PART_Backdrop"].AccentBrighter.Enabled = false
									ElementInstance["PART_Backdrop"].Accent.Enabled = true
								end
							end)

							ElementInstance.Interact.MouseButton1Down:Connect(function()
								ElementInstance["PART_Backdrop"].AccentBrighter.Enabled = true
								ElementInstance["PART_Backdrop"].Accent.Enabled = false
							end)

							ElementInstance.Interact.MouseButton1Up:Connect(function()
								ElementInstance["PART_Backdrop"].AccentBrighter.Enabled = false
								ElementInstance["PART_Backdrop"].Accent.Enabled = true
							end)
						else
							ElementInstance.MouseEnter:Connect(function()
								Tween(ElementInstance["PART_Backdrop"], {BackgroundColor3 = Color3.fromRGB(31, 33, 38)})
							end)

							ElementInstance.MouseLeave:Connect(function()
								Tween(ElementInstance["PART_Backdrop"], {BackgroundColor3 = Color3.fromRGB(27, 29, 34)})
							end)
						end

						ElementInstance.Interact.MouseButton1Click:Connect(function()
							local Success,Response = pcall(Element.Values.Callback)

							if not Success then
								ElementInstance["PART_Backdrop"].Header.Text = "Callback Error"
								warn("Starlight Interface Suite | "..ElementSettings.Name.." Callback Error")
								print(tostring(Response))
								wait(0.5)
								ElementInstance["PART_Backdrop"].Header.Text = ElementSettings.Name
							end
						end)

						Element.Instance = ElementInstance.Visible and ElementInstance or Element.Instance

					end

					function Element:Set(NewElementSettings , NewIndex)
						NewIndex = NewIndex or Index

						for i,v in pairs(Element.Values) do
							if NewElementSettings[i] == nil then
								NewElementSettings[i] = v
							end
						end

						ElementSettings = NewElementSettings
						Index = NewIndex
						Element.Values = ElementSettings

						for _, ElementInstance in pairs(Instances) do

							ElementInstance.Visible = ElementInstance.Name == "Button_TEMPLATE_Style" .. Element.Values.Style
							ElementInstance.Parent = Groupbox.ParentingItem

							ElementInstance.Name = "BUTTON_" .. NewIndex
							ElementInstance["PART_Backdrop"].Header.Text = Element.Values.Name
							ElementInstance["PART_Backdrop"].Header.Icon.Visible = Element.Values.Icon ~= nil
							if ElementInstance["PART_Backdrop"].Header.Icon.Visible == false then
								ElementInstance["PART_Backdrop"].Header.UIPadding.PaddingLeft = UDim.new(0,6)
							else
								ElementInstance["PART_Backdrop"].Header.UIPadding.PaddingLeft = UDim.new(0,32)
							end
							ElementInstance["PART_Backdrop"].Header.Icon.Image = Element.Values.Icon ~= nil and "rbxassetid://" .. Element.Values.Icon or ""

							ElementInstance.MouseEnter:Connect(function()
								Tween(ElementInstance["PART_Backdrop"].DropShadowHolder.DropShadow, {ImageTransparency = 0.73})
							end)

							ElementInstance.MouseLeave:Connect(function()
								Tween(ElementInstance["PART_Backdrop"].DropShadowHolder.DropShadow, {ImageTransparency = 1})

								if ElementInstance["PART_Backdrop"].AccentBrighter.Enabled == true then
									ElementInstance["PART_Backdrop"].AccentBrighter.Enabled = false
									ElementInstance["PART_Backdrop"].Accent.Enabled = true
								end
							end)

							ElementInstance.Interact.MouseButton1Click:Connect(function()
								local Success,Response = pcall(Element.Values.Callback)

								if not Success then
									ElementInstance["PART_Backdrop"].Header.Text = "Callback Error"
									warn("Starlight Interface Suite | "..Element.Values.Name.." Callback Error")
									print(tostring(Response))
									wait(0.5)
									ElementInstance["PART_Backdrop"].Header.Text = Element.Values.Name
								end
							end)

							ElementInstance.Interact.MouseButton1Down:Connect(function()
								ElementInstance["PART_Backdrop"].AccentBrighter.Enabled = true
								ElementInstance["PART_Backdrop"].Accent.Enabled = false
							end)

							ElementInstance.Interact.MouseButton1Up:Connect(function()
								ElementInstance["PART_Backdrop"].AccentBrighter.Enabled = false
								ElementInstance["PART_Backdrop"].Accent.Enabled = true
							end)

							Element.Instance = ElementInstance.Visible and ElementInstance or Element.Instance

						end

						Starlight.Window.TabSections[Name].Tabs[TabIndex].Groupboxes[GroupIndex].Elements["BUTTON_" .. Index].Values = Element.Values

					end

					function Element:Destroy()
						for _, ElementInstance in pairs(Instances) do
							ElementInstance:Destroy()
						end
					end

					function Element:Lock(Reason : string?)

						for _, ElementInstance in pairs(Instances) do
							ElementInstance.Lock_Overlay.Visible = true
							ElementInstance.Interactable = false
							ElementInstance.Lock_Overlay.Header.Text = Reason or ""
						end

					end

					function Element:Unlock()

						for _, ElementInstance in pairs(Instances) do
							ElementInstance.Lock_Overlay.Visible = false
							ElementInstance.Interactable = true
							ElementInstance.Lock_Overlay.Header.Text = ""
						end

					end

					Starlight.Window.TabSections[Name].Tabs[TabIndex].Groupboxes[GroupIndex].Elements["BUTTON_" .. Index] = Element
					return Starlight.Window.TabSections[Name].Tabs[TabIndex].Groupboxes[GroupIndex].Elements["BUTTON_" .. Index]
				end

				function Groupbox:CreateToggle(ElementSettings, Index)

					--[[
					ElementSettings = {
						Name = string,
						Icon = number, **

						CurrentValue = bool,
						CheckboxIcon = number, **
						
						Style = number, **
						
						Callback = function(bool),
					}
					]]

					ElementSettings.Style = ElementSettings.Style or 1
					local connection = nil
					local connection2 = nil

					local Element = {
						Values = ElementSettings,
						Class = "Toggle",
						NestedElements = {}
					}

					local Instances = {
						Style1 = GroupboxTemplateInstance["Checkbox_TEMPLATE_Disabled"]:Clone(),
						Style2 = GroupboxTemplateInstance["Switch_TEMPLATE_Disabled"]:Clone()
					}

					local function checkForBind()
						for i,v in pairs(Element.NestedElements)do
							if string.sub(v.Instance.Name, 1, #"BIND_") == "BIND_" then
								return v
							end
						end
					end

					for _, ElementInstance in pairs(Instances) do

						local flag = nil

						if ElementInstance.Name == "Checkbox_TEMPLATE_Disabled" and Element.Values.Style == 1 then
							ElementInstance.Visible = true
						end
						if ElementInstance.Name == "Switch_TEMPLATE_Disabled" and Element.Values.Style == 2 then
							ElementInstance.Visible = true
						end

						ElementInstance.Parent = Groupbox.ParentingItem

						ElementInstance.Name = "TOGGLE_" .. Index
						ElementInstance.Header.Text = Element.Values.Name
						ElementInstance.Header.Icon.Visible = Element.Values.Icon ~= nil

						if ElementInstance.Header.Icon.Visible == false then
							ElementInstance.Header.UIPadding.PaddingLeft = UDim.new(0,6)
						else
							ElementInstance.Header.UIPadding.PaddingLeft = UDim.new(0,32)
						end
						ElementInstance.Header.Icon.Image = Element.Values.Icon ~= nil and "rbxassetid://" .. Element.Values.Icon or ""

						if ElementInstance:FindFirstChild("Checkbox") then

							if Element.Values.Style == 2 then ElementInstance.Visible = false end

							ElementInstance.Checkbox.Icon.Visible = true
							ElementInstance.Checkbox.Icon.Image = Element.Values.CheckboxIcon ~= nil and "rbxassetid://" .. Element.Values.CheckboxIcon or ""

							local function Set(bool)
								if bool then
									Tween(ElementInstance.Checkbox, {BackgroundTransparency = 0})
									Tween(ElementInstance.Checkbox.Icon, {ImageTransparency = 0})
								else
									Tween(ElementInstance.Checkbox, {BackgroundTransparency = 0.9})
									Tween(ElementInstance.Checkbox.Icon, {ImageTransparency = 1})
								end

								Element.Values.CurrentValue = bool
								local bind = checkForBind()
								if bind ~= nil and bind.Values.SyncToggleState then
									bind.Active = bool
								end
							end

							do
								Set(Element.Values.CurrentValue)
									local Success,Response = pcall(function()
										Element.Values.Callback(Element.Values.CurrentValue)
									end)

									if not Success then
										ElementInstance.Header.Text = "Callback Error"
										warn("Starlight Interface Suite | "..Element.Values.Name.." Callback Error")
										print(tostring(Response))
										wait(0.5)
										ElementInstance.Header.Text = Element.Values.Name
									end
							end

							ElementInstance.Checkbox.MouseEnter:Connect(function()
								ElementInstance.Checkbox.AccentBrighter.Enabled = true
								ElementInstance.Checkbox.Accent.Enabled = false
							end)

							ElementInstance.Checkbox.MouseLeave:Connect(function()
								ElementInstance.Checkbox.AccentBrighter.Enabled = false
								ElementInstance.Checkbox.Accent.Enabled = true
							end)

							connection = ElementInstance.Checkbox.Interact.MouseButton1Click:Connect(function()
								Element.Values.CurrentValue = not Element.Values.CurrentValue
								Set(Element.Values.CurrentValue)

								local Success,Response = pcall(function()
									Element.Values.Callback(Element.Values.CurrentValue)
								end)

								if not Success then
									ElementInstance.Header.Text = "Callback Error"
									warn("Starlight Interface Suite | "..Element.Values.Name.." Callback Error")
									print(tostring(Response))
									wait(0.5)
									ElementInstance.Header.Text = Element.Values.Name
								end
							end)

						elseif ElementInstance.Switch then

							if Element.Values.Style == 1 then ElementInstance.Visible = false end

							local function Set(bool)
								if bool then
									Tween(ElementInstance.Switch, {BackgroundTransparency = 0, BackgroundColor3 = Color3.fromRGB(255,255,255)})
									Tween(ElementInstance.Switch.Knob, {Position = UDim2.new(0,20,.5,0), BackgroundColor3 = Color3.fromRGB(255,255,255), BackgroundTransparency = 0})
									Tween(ElementInstance.Switch.UIStroke, {Color = Color3.fromRGB(255,255,255)})
									Tween(ElementInstance.Switch.DropShadowHolder.DropShadow, {ImageTransparency = 0})
									ElementInstance.Switch.Accent.Enabled = true
									ElementInstance.Switch.UIStroke.Accent.Enabled = true
								else
									Tween(ElementInstance.Switch, {BackgroundTransparency = 1, BackgroundColor3 = Color3.fromRGB(165,165,165)})
									Tween(ElementInstance.Switch.Knob, {Position = UDim2.new(0,0,.5,0), BackgroundColor3 = Color3.fromRGB(165,165,165), BackgroundTransparency = 0.5})
									Tween(ElementInstance.Switch.UIStroke, {Color = Color3.fromRGB(165,165,165)})
									Tween(ElementInstance.Switch.DropShadowHolder.DropShadow, {ImageTransparency = 1})
									ElementInstance.Switch.Accent.Enabled = false
									ElementInstance.Switch.UIStroke.Accent.Enabled = false
								end

								Element.Values.CurrentValue = bool

								local bind = checkForBind()
								if bind ~= nil and bind.Values.SyncToggleState then
									bind.Active = bool
								end
							end

							do
								Set(Element.Values.CurrentValue)
									local Success,Response = pcall(function()
										Element.Values.Callback(Element.Values.CurrentValue)
									end)

									if not Success then
										ElementInstance.Header.Text = "Callback Error"
										warn("Starlight Interface Suite | "..Element.Values.Name.." Callback Error")
										print(tostring(Response))
										wait(0.5)
										ElementInstance.Header.Text = Element.Values.Name
									end
							end

							connection2 = ElementInstance.Switch.Interact.MouseButton1Click:Connect(function()
								Element.Values.CurrentValue = not Element.Values.CurrentValue
								Set(Element.Values.CurrentValue)

								local Success,Response = pcall(function()
									ElementSettings.Callback(Element.Values.CurrentValue)
								end)

								if not Success then
									ElementInstance.Header.Text = "Callback Error"
									warn("Starlight Interface Suite | "..Element.Values.Name.." Callback Error")
									print(tostring(Response))
									wait(0.5)
									ElementInstance.Header.Text = Element.Values.Name
								end
							end)
						end

						Element.Instance = ElementInstance.Visible and ElementInstance or Element.Instance

					end

					function Element:Set(NewElementSettings , NewIndex)
						NewIndex = NewIndex or Index

						for i,v in pairs(Element.Values) do
							if NewElementSettings[i] == nil then
								NewElementSettings[i] = v
							end
						end

						ElementSettings = NewElementSettings
						Index = NewIndex
						Element.Values = ElementSettings
						local Success,Response = pcall(function()
							Element.Values.Callback(Element.Values.CurrentValue)
						end)

						for _, ElementInstance in pairs(Instances) do

							ElementInstance.Parent = Groupbox.ParentingItem

							ElementInstance.Name = "TOGGLE_" .. NewIndex
							ElementInstance.Header.Text = Element.Values.Name
							ElementInstance.Header.Icon.Visible = Element.Values.Icon ~= nil

							if ElementInstance.Header.Icon.Visible == false then
								ElementInstance.Header.UIPadding.PaddingLeft = UDim.new(0,6)
							else
								ElementInstance.Header.UIPadding.PaddingLeft = UDim.new(0,32)
							end
							ElementInstance.Header.Icon.Image = Element.Values.Icon ~= nil and "rbxassetid://" .. Element.Values.Icon or ""

							if ElementInstance:FindFirstChild("Checkbox") then

								if Element.Values.Style == 2 then ElementInstance.Visible = false end

								ElementInstance.Checkbox.Icon.Visible = true
								ElementInstance.Checkbox.Icon.Image = Element.Values.CheckboxIcon ~= nil and "rbxassetid://" .. Element.Values.CheckboxIcon or ""

								local function Set(bool)
									if bool then
										Tween(ElementInstance.Checkbox, {BackgroundTransparency = 0})
										Tween(ElementInstance.Checkbox.Icon, {ImageTransparency = 0})
									else
										Tween(ElementInstance.Checkbox, {BackgroundTransparency = 0.9})
										Tween(ElementInstance.Checkbox.Icon, {ImageTransparency = 1})
									end

									Element.Values.CurrentValue = bool

									local bind = checkForBind()
									if bind ~= nil and bind.Values.SyncToggleState then
										bind.Active = bool
									end
								end

								do
									Set(Element.Values.CurrentValue)

										if not Success then
											ElementInstance.Header.Text = "Callback Error"
											warn("Starlight Interface Suite | "..Element.Values.Name.." Callback Error")
											print(tostring(Response))
											wait(0.5)
											ElementInstance.Header.Text = Element.Values.Name
										end
								end

								connection:Disconnect()
								connection = ElementInstance.Checkbox.Interact.MouseButton1Click:Connect(function()
									Element.Values.CurrentValue = not Element.Values.CurrentValue
									Set(Element.Values.CurrentValue)

									local Success,Response = pcall(function()
										Element.Values.Callback(Element.Values.CurrentValue)
									end)

									if not Success then
										ElementInstance.Header.Text = "Callback Error"
										warn("Starlight Interface Suite | "..Element.Values.Name.." Callback Error")
										print(tostring(Response))
										wait(0.5)
										ElementInstance.Header.Text = Element.Values.Name
									end
								end)

							elseif ElementInstance.Switch then

								if Element.Values.Style == 1 then ElementInstance.Visible = false end

								local function Set(bool)
									if bool then
										Tween(ElementInstance.Switch, {BackgroundTransparency = 0, BackgroundColor3 = Color3.fromRGB(255,255,255)})
										Tween(ElementInstance.Switch.Knob, {Position = UDim2.new(0,20,.5,0), BackgroundColor3 = Color3.fromRGB(255,255,255), BackgroundTransparency = 0})
										Tween(ElementInstance.Switch.UIStroke, {Color = Color3.fromRGB(255,255,255)})
										Tween(ElementInstance.Switch.DropShadowHolder.DropShadow, {ImageTransparency = 0})
										ElementInstance.Switch.Accent.Enabled = true
										ElementInstance.Switch.UIStroke.Accent.Enabled = true
									else
										Tween(ElementInstance.Switch, {BackgroundTransparency = 1, BackgroundColor3 = Color3.fromRGB(165,165,165)})
										Tween(ElementInstance.Switch.Knob, {Position = UDim2.new(0,0,.5,0), BackgroundColor3 = Color3.fromRGB(165,165,165), BackgroundTransparency = 0.5})
										Tween(ElementInstance.Switch.UIStroke, {Color = Color3.fromRGB(165,165,165)})
										Tween(ElementInstance.Switch.DropShadowHolder.DropShadow, {ImageTransparency = 1})
										ElementInstance.Switch.Accent.Enabled = false
										ElementInstance.Switch.UIStroke.Accent.Enabled = false
									end

									Element.Values.CurrentValue = bool

									local bind = checkForBind()
									if bind ~= nil and bind.Values.SyncToggleState then
										bind.Active = bool
									end
								end

								do
									Set(Element.Values.CurrentValue)
									
										if not Success then
											ElementInstance.Header.Text = "Callback Error"
											warn("Starlight Interface Suite | "..Element.Values.Name.." Callback Error")
											print(tostring(Response))
											wait(0.5)
											ElementInstance.Header.Text = Element.Values.Name
										end
								end

								connection2:Disconnect()
								connection2 = ElementInstance.Switch.Interact.MouseButton1Click:Connect(function()
									Element.Values.CurrentValue = not Element.Values.CurrentValue
									Set(Element.Values.CurrentValue)

									local Success,Response = pcall(function()
										ElementSettings.Callback(Element.Values.CurrentValue)
									end)

									if not Success then
										ElementInstance.Header.Text = "Callback Error"
										warn("Starlight Interface Suite | "..Element.Values.Name.." Callback Error")
										print(tostring(Response))
										wait(0.5)
										ElementInstance.Header.Text = Element.Values.Name
									end
								end)
							end

							Element.Instance = ElementInstance.Visible and ElementInstance or Element.Instance

						end

						Starlight.Window.TabSections[Name].Tabs[TabIndex].Groupboxes[GroupIndex].Elements[Index].Values = Element.Values

					end

					function Element:Destroy()
						for _, ElementInstance in pairs(Instances) do
							ElementInstance:Destroy()
						end
					end

					function Element:Lock(Reason : string?)

						for _, ElementInstance in pairs(Instances) do
							ElementInstance.Lock_Overlay.Visible = true
							ElementInstance.Interactable = false
							ElementInstance.Lock_Overlay.Header.Text = Reason or ""
						end

					end

					function Element:Unlock()

						for _, ElementInstance in pairs(Instances) do
							ElementInstance.Lock_Overlay.Visible = false
							ElementInstance.Interactable = true
							ElementInstance.Lock_Overlay.Header.Text = ""
						end

					end
					
					function Element:AddBind(NestedSettings, NestedIndex)
						local Inheritor = Groupbox:CreateLabel({Name = ""}, HttpService:GenerateGUID())
						local NestedElement = Inheritor:AddBind(NestedSettings, NestedIndex, Element, Index)
						
						local module = {}
						function module:Set(NewNestedSettings, NewNestedIndex)
							NestedElement:Set(NewNestedSettings, NewNestedIndex)
						end
						
						Inheritor:Destroy()
						return module
					end
					
					function Element:AddColorPicker(NestedSettings, NestedIndex)
						
					end
					
					function Element:AddDropdown(NestedSettings, NestedIndex)
						local Inheritor = Groupbox:CreateLabel({Name = ""}, HttpService:GenerateGUID())
						local NestedElement = Inheritor:AddDropdown(NestedSettings, NestedIndex, Element, Index)

						local module = {}
						function module:Set(NewNestedSettings, NewNestedIndex)
							NestedElement:Set(NewNestedSettings, NewNestedIndex)
						end

						Inheritor:Destroy()
						return module
					end

					Starlight.Window.TabSections[Name].Tabs[TabIndex].Groupboxes[GroupIndex].Elements[Index] = Element
					return Starlight.Window.TabSections[Name].Tabs[TabIndex].Groupboxes[GroupIndex].Elements[Index]
				end

				function Groupbox:CreateDivider()
					local Divider = {
						ID = HttpService:GenerateGUID(false),
						Class = "Divider"
					}

					Divider.Instance = GroupboxTemplateInstance.Divider:Clone()
					Divider.Instance.Parent = Groupbox.ParentingItem

					function Divider:Destroy()
						Divider.Instance:Destroy()
					end

					Starlight.Window.TabSections[Name].Tabs[TabIndex].Groupboxes[GroupIndex].Elements["Divider_" .. Divider.ID] = Divider
					return Starlight.Window.TabSections[Name].Tabs[TabIndex].Groupboxes[GroupIndex].Elements["Divider_" .. Divider.ID]
				end

				-- uhm so i crashed out here cus the textbox kept making it crash
				-- SOOO, i got gpt to help :skull:
				-- pls dont attack me :sob: i spent five hours tryna make it work and i js couldnt take it anymore
				-- it only helped with logic-ing the steps, i still coded it muaself hehe (but thats why its so damn messy)
				function Groupbox:CreateSlider(ElementSettings, Index)

					--[[
					ElementSettings = {
						Name = string,
						Icon = number, **
						
						CurrentValue = number, **
						Range = table{number, number}, 
						Increment = number, **
						HideMax = bool, **
						
						Callback = function(number),
					}
					]]

					ElementSettings.CurrentValue = ElementSettings.CurrentValue or 0
					ElementSettings.Increment = ElementSettings.Increment or 1
					ElementSettings.HideMax = ElementSettings.HideMax or false

					local Element = {
						Values = ElementSettings,
						Class = "Slider",
						SLDragging = false
					}
					local isTyping = false
					local ignoreNext = false

					Element.Instance = GroupboxTemplateInstance.Slider_TEMPLATE:Clone()
					Element.Instance.Visible = true
					Element.Instance.Parent = Groupbox.ParentingItem

					Element.Instance.Name = "SLIDER_" .. Index
					Element.Instance.Header.Text = Element.Values.Name
					Element.Instance.Header.Icon.Visible = Element.Values.Icon ~= nil
					if Element.Instance.Header.Icon.Visible == false then
						Element.Instance.Header.UIPadding.PaddingLeft = UDim.new(0,6)
					else
						Element.Instance.Header.UIPadding.PaddingLeft = UDim.new(0,32)
					end
					Element.Instance.Header.Icon.Image = Element.Values.Icon ~= nil and "rbxassetid://" .. Element.Values.Icon or ""

					local function Set(Value : number, BLEHHHHHIMTIREDOFNAMINGVARIABLESJSFORSPECIFICFUNCTIONS : boolean?)
						if Value then
							Element.Values.CurrentValue = Value

							Tween(
								Element.Instance.PART_Backdrop.PART_Progress,

								{Size = UDim2.new(0, Element.Instance.PART_Backdrop.AbsoluteSize.X * 
									((Value + Element.Values.Range[1]) / (Element.Values.Range[2] - Element.Values.Range[1])) > 5
									and Element.Instance.PART_Backdrop.AbsoluteSize.X * (Value / (Element.Values.Range[2] - Element.Values.Range[1])) or 5,
									1, 0)},
								nil,
								tweenInfo(nil,nil,0.2)
							)

							if BLEHHHHHIMTIREDOFNAMINGVARIABLESJSFORSPECIFICFUNCTIONS then
								local maxVal = tostring(Element.Values.Range[2])
								local maxSuffix = not Element.Values.HideMax and ("/" .. maxVal) or ""
								Element.Instance.Value.Text = tostring(Value) .. maxSuffix
								Element.Instance.Value.CursorPosition = not Element.Values.HideMax and tostring(Element.Instance.Value.Text):find("/") or (tonumber(#Element.Instance.Value.Text) + 1)
							elseif not isTyping then
								local maxVal = tostring(Element.Values.Range[2])
								local maxSuffix = not Element.Values.HideMax and "/<font color=\"rgb(165,165,165)\">" .. maxVal .. "</font>" or ""
								Element.Instance.Value.Text = tostring(Value) .. maxSuffix
							end

							local Success,Response = pcall(function()
								Element.Values.Callback(Value)
							end)

							if not Success then
								Element.Instance.Header.Text = "Callback Error"
								warn("Starlight Interface Suite | "..Element.Values.Name.." Callback Error")
								print(tostring(Response))
								wait(0.5)
								Element.Instance.Header.Text = Element.Values.Name
							end
						end				


					end

					Element.Instance.PART_Backdrop.Interact.InputBegan:Connect(function(Input)
						if Input.UserInputType == Enum.UserInputType.MouseButton1 or Input.UserInputType == Enum.UserInputType.Touch then 
							Element.SLDragging = true 
						end 
					end)

					Element.Instance.PART_Backdrop.Interact.InputEnded:Connect(function(Input) 
						if Input.UserInputType == Enum.UserInputType.MouseButton1 or Input.UserInputType == Enum.UserInputType.Touch then 
							Element.SLDragging = false 
						end 
					end)

					local Current = Element.Instance.PART_Backdrop.PART_Progress.AbsolutePosition.X + Element.Instance.PART_Backdrop.PART_Progress.AbsoluteSize.X
					local Start = Current
					local Location
					local Loop; Loop = RunService.Stepped:Connect(function()
						if Element.SLDragging then
							Location = UserInputService:GetMouseLocation().X
							Current = Current + 0.025 * (Location - Start)

							if Location < Element.Instance.PART_Backdrop.AbsolutePosition.X then
								Location = Element.Instance.PART_Backdrop.AbsolutePosition.X
							elseif Location > Element.Instance.PART_Backdrop.AbsolutePosition.X + Element.Instance.PART_Backdrop.AbsoluteSize.X then
								Location = Element.Instance.PART_Backdrop.AbsolutePosition.X + Element.Instance.PART_Backdrop.AbsoluteSize.X
							end

							if Current < Element.Instance.PART_Backdrop.AbsolutePosition.X + 5 then
								Current = Element.Instance.PART_Backdrop.AbsolutePosition.X + 5
							elseif Current > Element.Instance.PART_Backdrop.AbsolutePosition.X + Element.Instance.PART_Backdrop.AbsoluteSize.X then
								Current = Element.Instance.PART_Backdrop.AbsolutePosition.X + Element.Instance.PART_Backdrop.AbsoluteSize.X
							end

							if Current <= Location and (Location - Start) < 0 then
								Start = Location
							elseif Current >= Location and (Location - Start) > 0 then
								Start = Location
							end

							Tween(
								Element.Instance.PART_Backdrop.PART_Progress,

								{Size = UDim2.new(0, Location - Element.Instance.PART_Backdrop.AbsolutePosition.X, 1, 0)},

								nil,
								tweenInfo(nil,nil,0.2)
							)

							local NewValue = Element.Values.Range[1] + (Location - Element.Instance.PART_Backdrop.AbsolutePosition.X) / Element.Instance.PART_Backdrop.AbsoluteSize.X * (Element.Values.Range[2] - Element.Values.Range[1])

							NewValue = math.floor(NewValue / Element.Values.Increment + 0.5) * (Element.Values.Increment * 10000000) / 10000000

							Element.Instance.Value.Text = tostring(NewValue) .. ((not Element.Values.HideMax and not isTyping) and "/<font color=\"rgb(165,165,165)\">".. Element.Values.Range[2] .."</font>" or (not isTyping and ""))

							if Element.Values.CurrentValue ~= NewValue then
								local Success,Response = pcall(function()
									Element.Values.Callback(NewValue)
								end)

								if not Success then
									Element.Instance.Header.Text = "Callback Error"
									warn("Starlight Interface Suite | "..Element.Values.Name.." Callback Error")
									print(tostring(Response))
									wait(0.5)
									Element.Instance.Header.Text = Element.Values.Name
								end

								Element.Values.CurrentValue = NewValue
							end
						end
					end)

					function Element:Destroy()
						Element.Instance:Destroy()
					end

					function Element:Set(NewElementSettings , NewIndex)
						NewIndex = NewIndex or Index

						for i,v in pairs(Element.Values) do
							if NewElementSettings[i] == nil then
								NewElementSettings[i] = v
							end
						end

						ElementSettings = NewElementSettings
						Index = NewIndex
						Element.Values = ElementSettings

						Element.Instance.Name = "SLIDER_" .. NewIndex
						Element.Instance.Header.Text = Element.Values.Name
						Element.Instance.Header.Icon.Visible = Element.Values.Icon ~= nil
						if Element.Instance.Header.Icon.Visible == false then
							Element.Instance.Header.UIPadding.PaddingLeft = UDim.new(0,6)
						else
							Element.Instance.Header.UIPadding.PaddingLeft = UDim.new(0,32)
						end
						Element.Instance.Header.Icon.Image = Element.Values.Icon ~= nil and "rbxassetid://" .. Element.Values.Icon or ""


						Set(Element.Values.CurrentValue)

						Starlight.Window.TabSections[Name].Tabs[TabIndex].Groupboxes[GroupIndex].Elements[ElementSettings.Name].Values = Element.Values

					end
					
					function Element:Lock(Reason)
						Element.Instance.Lock_Overlay.Visible = true
						Element.Instance.Interactable = false
						Element.Instance.Lock_Overlay.Header.Text = Reason or ""
					end
					
					function Element:Unlock()
						Element.Instance.Lock_Overlay.Visible = false
						Element.Instance.Interactable = true
						Element.Instance.Lock_Overlay.Header.Text = ""
					end

					Set(Element.Values.CurrentValue)

					local isTyping = false

					local maxSuffix = not Element.Values.HideMax and "/<font color=\"rgb(165,165,165)\">" .. Element.Values.Range[2] .. "</font>" or ""

					Element.Instance.Value.Focused:Connect(function()
						isTyping = true
						ignoreNext = true

						if Element.Values.HideMax then
							Element.Instance.Value.Text = ""
						else
							Element.Instance.Value.Text = "/" .. Element.Values.Range[2]
						end

					end)

					Element.Instance.Value:GetPropertyChangedSignal("Text"):Connect(function()
						if not isTyping then return end
						task.defer(function()
							local text = Element.Instance.Value.Text or ""

							-- Extract the part before the first slash (if any)
							local numberPart = text:match("^(.-)/") or text

							local num = tonumber(numberPart)

							-- Only update the *value*, not the .Text
							if num then
								if num < Element.Values.Range[1] then
									num = Element.Values.Range[1]
								elseif num > Element.Values.Range[2] then
									num = Element.Values.Range[2]
								end
								Set(num, true)
							end
						end)
					end)

					Element.Instance.Value.FocusLost:Connect(function()
						isTyping = false

						local text = Element.Instance.Value.Text or ""
						local stripped = text:gsub("<->", ""):match("[0-9.]*") or ""
						local num = tonumber(stripped) or 0

						num = math.clamp(num, Element.Values.Range[1], Element.Values.Range[2])

						ignoreNext = true
						if Element.Values.HideMax then
							Element.Instance.Value.Text = tostring(num)
						else
							Element.Instance.Value.Text = tostring(num) .. "/<font color=\"rgb(165,165,165)\">" .. tostring(Element.Values.Range[2]) .. "</font>"
						end
					end)

					Element.Instance.PART_Backdrop.MouseEnter:Connect(function()
						Tween(Element.Instance.PART_Backdrop.PART_Progress.DropShadowHolder.DropShadow, {ImageTransparency = 0.1})
					end)
					Element.Instance.PART_Backdrop.MouseLeave:Connect(function()
						Tween(Element.Instance.PART_Backdrop.PART_Progress.DropShadowHolder.DropShadow, {ImageTransparency = 0.9})
					end)

					Starlight.Window.TabSections[Name].Tabs[TabIndex].Groupboxes[GroupIndex].Elements[ElementSettings.Name] = Element
					return Starlight.Window.TabSections[Name].Tabs[TabIndex].Groupboxes[GroupIndex].Elements[ElementSettings.Name]
				end

				function Groupbox:CreateInput(ElementSettings, Index)
					--[[
					ElementSettings = {
						Name = string,
						Icon = number, **
						
						CurrentValue = string, **
						PlaceholderText = string, **
						RemoveTextAfterFocusLost = bool, **
						Numeric = bool, **
						Enter = bool, **
						MaxCharacters = number, **
						RemoveTextOnFocus = bool, **
						
						Callback = function(string),
					}
					]]

					ElementSettings.CurrentValue = ElementSettings.CurrentValue or ""
					ElementSettings.PlaceholderText = ElementSettings.PlaceholderText or ""
					ElementSettings.RemoveTextAfterFocusLost = ElementSettings.RemoveTextAfterFocusLost or false
					ElementSettings.Numeric = ElementSettings.Numeric or false
					ElementSettings.Enter = ElementSettings.Enter or false
					ElementSettings.MaxCharacters = ElementSettings.MaxCharacters or 0
					ElementSettings.RemoveTextOnFocus = ElementSettings.RemoveTextOnFocus or true

					local Element = {
						Values = ElementSettings,
						Class = "Input"
					}

					Element.Instance = GroupboxTemplateInstance.Input_TEMPLATE:Clone()
					Element.Instance.Visible = true
					Element.Instance.Parent = Groupbox.ParentingItem

					Element.Instance.PART_Input.FocusLost:Connect(function(Enter)

						if Element.Values.Enter and Enter then
							local Success,Response = pcall(function()
								Element.Values.Callback(Element.Values.CurrentValue)
							end)

							if not Success then
								Element.Instance.Header.Text = "Callback Error"
								warn("Starlight Interface Suite | "..ElementSettings.Name.." Callback Error")
								print(tostring(Response))
								wait(0.5)
								Element.Instance.Header.Text = ElementSettings.Name
							end
						end

						if Element.Values.RemoveTextAfterFocusLost then
							Element.Instance.PART_Input.Text = ""
							Element.Values.CurrentValue = ""
						end

					end)

					if Element.Values.Numeric then
						Element.Instance.PART_Input:GetPropertyChangedSignal("Text"):Connect(function()
							local text = Element.Instance.PART_Input.Text
							if not tonumber(text) and text ~= "." then
								Element.Instance.PART_Input.Text = text:match("[0-9.]*") or ""
							end
						end)
					end

					Element.Instance.PART_Input:GetPropertyChangedSignal("Text"):Connect(function()
						if tonumber(Element.Values.MaxCharacters) ~= 0 then
							if (#Element.Instance.PART_Input.Text - 1) == Element.Values.MaxCharacters then
								Element.Instance.PART_Input.Text = Element.Instance.PART_Input.Text:sub(1, Element.Values.MaxCharacters)
							end
						end
						if not Element.Values.Enter then
							local Success,Response = pcall(function()
								Element.Values.Callback(Element.Values.CurrentValue)
							end)

							if not Success then
								Element.Instance.Header.Text = "Callback Error"
								warn("Starlight Interface Suite | "..ElementSettings.Name.." Callback Error")
								print(tostring(Response))
								wait(0.5)
								Element.Instance.Header.Text = ElementSettings.Name
							end
						end

						Tween(Element.Instance.PART_Input, {Size = UDim2.new(0, Element.Instance.PART_Input.TextBounds.X + 30, 0, Element.Instance.PART_Input.Size.Y.Offset)})

						Element.Values.CurrentValue = Element.Instance.PART_Input.Text				
					end)

					Element.Instance.Name = "INPUT_" .. Index
					Element.Instance.Header.Text = Element.Values.Name
					Element.Instance.Header.Icon.Visible = Element.Values.Icon ~= nil
					if Element.Instance.Header.Icon.Visible == false then
						Element.Instance.Header.UIPadding.PaddingLeft = UDim.new(0,6)
					else
						Element.Instance.Header.UIPadding.PaddingLeft = UDim.new(0,32)
					end
					Element.Instance.Header.Icon.Image = Element.Values.Icon ~= nil and "rbxassetid://" .. Element.Values.Icon or ""
					Element.Instance.PART_Input.PlaceholderText = Element.Values.PlaceholderText
					Element.Instance.PART_Input.Text = Element.Values.CurrentValue

					Tween(Element.Instance.PART_Input, {Size = UDim2.new(0, Element.Instance.PART_Input.TextBounds.X + 30, 0, Element.Instance.PART_Input.Size.Y.Offset)})

					function Element:Set(NewElementSettings, NewIndex)
						NewIndex = NewIndex or Index
						
						for i,v in pairs(ElementSettings) do
							if NewElementSettings[i] == nil then
								NewElementSettings[i] = v
							end
						end

						ElementSettings = NewElementSettings

						Element.Values = ElementSettings

						Element.Instance.Name = "INPUT_" .. NewIndex
						Element.Instance.Header.Text = Element.Values.Name
						Element.Instance.Header.Icon.Visible = Element.Values.Icon ~= nil
						if Element.Instance.Header.Icon.Visible == false then
							Element.Instance.Header.UIPadding.PaddingLeft = UDim.new(0,6)
						else
							Element.Instance.Header.UIPadding.PaddingLeft = UDim.new(0,32)
						end
						Element.Instance.Header.Icon.Image = Element.Values.Icon ~= nil and "rbxassetid://" .. Element.Values.Icon or ""
						Element.Instance.PART_Input.PlaceholderText = Element.Values.PlaceholderText
						Element.Instance.PART_Input.Text = Element.Values.CurrentValue
						Tween(Element.Instance.PART_Input, {Size = UDim2.new(0, Element.Instance.PART_Input.TextBounds.X + 30, 0, Element.Instance.PART_Input.Size.Y.Offset)})

						Starlight.Window.TabSections[Name].Tabs[TabIndex].Groupboxes[GroupIndex].Elements[Index].Values = Element.Values
					end

					function Element:Destroy()
						Element.Instance:Destroy()
					end

					function Element:Lock(Reason)
						Element.Instance.Lock_Overlay.Visible = true
						Element.Instance.Interactable = false
						Element.Instance.Lock_Overlay.Header.Text = Reason or ""
					end

					function Element:Unlock()
						Element.Instance.Lock_Overlay.Visible = false
						Element.Instance.Interactable = true
						Element.Instance.Lock_Overlay.Header.Text = ""
					end

					Starlight.Window.TabSections[Name].Tabs[TabIndex].Groupboxes[GroupIndex].Elements[Index] = Element
					return Starlight.Window.TabSections[Name].Tabs[TabIndex].Groupboxes[GroupIndex].Elements[Index]
				end

				function Groupbox:CreateLabel(ElementSettings, Index)
					--[[
					ElementSettings = {
						Name = string,
						Icon = number, **
					}
					]]


					local Element = {
						Values = ElementSettings,
						Class = "Label",
						NestedElements = {},
					}

					Element.Instance = GroupboxTemplateInstance.Label_TEMPLATE:Clone()
					Element.Instance.Visible = true
					Element.Instance.Parent = Groupbox.ParentingItem

					Element.Instance.Name = "LABEL_" .. Index
					Element.Instance.Header.Text = Element.Values.Name
					Element.Instance.Header.Icon.Visible = Element.Values.Icon ~= nil
					if Element.Instance.Header.Icon.Visible == false then
						Element.Instance.Header.UIPadding.PaddingLeft = UDim.new(0,6)
					else
						Element.Instance.Header.UIPadding.PaddingLeft = UDim.new(0,32)
					end
					Element.Instance.Header.Icon.Image = Element.Values.Icon ~= nil and "rbxassetid://" .. Element.Values.Icon or ""

					function Element:Set(NewElementSettings , NewIndex)
						NewIndex = NewIndex or Index
						
						for i,v in pairs(Element.Values) do
							if NewElementSettings[i] == nil then
								NewElementSettings[i] = v
							end
						end

						ElementSettings = NewElementSettings
						Index = NewIndex

						Element.Values = ElementSettings

						Element.Instance.Name = "LABEL_" .. NewIndex
						Element.Instance.Header.Text = Element.Values.Name
						Element.Instance.Header.Icon.Visible = Element.Values.Icon ~= nil
						if Element.Instance.Header.Icon.Visible == false then
							Element.Instance.Header.UIPadding.PaddingLeft = UDim.new(0,6)
						else
							Element.Instance.Header.UIPadding.PaddingLeft = UDim.new(0,32)
						end
						Element.Instance.Header.Icon.Image = Element.Values.Icon ~= nil and "rbxassetid://" .. Element.Values.Icon or ""

						Starlight.Window.TabSections[Name].Tabs[TabIndex].Groupboxes[GroupIndex].Elements[Index].Values = Element.Values
					end

					function Element:Destroy()
						Element.Instance:Destroy()
					end

					function Element:Lock(Reason)
						Element.Instance.Lock_Overlay.Visible = true
						Element.Instance.Interactable = false
						Element.Instance.Lock_Overlay.Header.Text = Reason or ""
					end

					function Element:Unlock()
						Element.Instance.Lock_Overlay.Visible = false
						Element.Instance.Interactable = true
						Element.Instance.Lock_Overlay.Header.Text = ""
					end
					
					
					--// SUBSECTION : User Elements

					function Element:AddBind(NestedSettings, NestedIndex, Parent, ParentIndex)
						
						local isToggle = false
						if Parent ~= Element then isToggle = true end
						Parent = Parent or Element
						
						ParentIndex = ParentIndex or Index
						
						--[[
						NestedSettings = {
							HoldToInteract = bool, **
							CurrentValue = string, 
							SyncToggleState = bool, **
							
							Callback = function(bool), ****
							OnChangedCallback = function(string), **
						}
						]]
						
						NestedSettings.HoldToInteract = NestedSettings.HoldToInteract or false
						NestedSettings.SyncToggleState = NestedSettings.SyncToggleState or true
						NestedSettings.OnChangedCallback = NestedSettings.OnChangedCallback or function() end
						if isToggle then
							NestedSettings.Callback = NestedSettings.Callback or function() end
						end
						NestedSettings.CurrentValue = string.upper(NestedSettings.CurrentValue)
						
						local NestedElement = {
							Values = NestedSettings,
							Active = false,
							Class = "Bind"
						}
						
						NestedElement.Instance = Element.Instance.ElementContainer.Bind:Clone()
						NestedElement.Instance.Visible = true
						NestedElement.Instance.Parent = Parent.Instance.ElementContainer
						
						NestedElement.Instance.Name = "BIND_" .. NestedIndex
						
						local CheckingForKey = false
						
						NestedElement.Instance:GetPropertyChangedSignal("Text"):Connect(function()
							task.wait()
							
							if NestedElement.Instance.Text == "" then
								Tween(NestedElement.Instance, {Size = UDim2.new(0, NestedElement.Instance.TextBounds.X + 30, 0, 25)})			
							else
								Tween(NestedElement.Instance, {Size = UDim2.new(0, NestedElement.Instance.TextBounds.X + 16, 0, 25)})
							end
	
						end)
						
						NestedElement.Instance.Text = NestedElement.Values.CurrentValue

						NestedElement.Instance.Focused:Connect(function()
							task.wait()
							CheckingForKey = true
						end)

						NestedElement.Instance.FocusLost:Connect(function(enter)
							if not enter then
								CheckingForKey = false
								if NestedElement.Instance.Text == (nil or "") then
									NestedElement.Instance.Text = NestedElement.Values.CurrentValue
								end
							end
						end)
						
						local connection = UserInputService.InputBegan:Connect(function(input, processed)

							if CheckingForKey then

								if input.UserInputType == Enum.UserInputType.Keyboard then
									if input.KeyCode ~= Enum.KeyCode.Unknown and input.KeyCode ~= Enum.KeyCode[Starlight.WindowKeybind] then
										local SplitMessage = string.split(tostring(input.KeyCode), ".")
										local NewKeyNoEnum = SplitMessage[3]
										NestedElement.Instance.Text = tostring(NewKeyNoEnum)
										NestedElement.Values.CurrentValue = tostring(NewKeyNoEnum)
										local Success,Response = pcall(function()
											NestedElement.Values.OnChangedCallback(NestedElement.Values.CurrentValue)
										end)

										if not Success then
											Parent.Instance.Header.Text = "Callback Error"
											warn("Starlight Interface Suite | "..Parent.Values.Name.." Callback Error")
											print(tostring(Response))
											wait(0.5)
											Parent.Instance.Header.Text = Parent.Values.Name
										end
										NestedElement.Instance:ReleaseFocus()
									end
								else
									if input.UserInputType == Enum.UserInputType.MouseButton1 then
										NestedElement.Instance.Text = "MB1"
										NestedElement.Values.CurrentValue = "MB1"
										NestedElement.Instance:ReleaseFocus()
										local Success,Response = pcall(function()
											NestedElement.Values.OnChangedCallback(NestedElement.Values.CurrentValue)
										end)

										if not Success then
											Parent.Instance.Header.Text = "Callback Error"
											warn("Starlight Interface Suite | "..Parent.Values.Name.." Callback Error")
											print(tostring(Response))
											wait(0.5)
											Parent.Instance.Header.Text = Parent.Values.Name
										end
									elseif input.UserInputType == Enum.UserInputType.MouseButton2 then
										NestedElement.Instance.Text = "MB2"
										NestedElement.Values.CurrentValue = "MB2"
										NestedElement.Instance:ReleaseFocus()
										local Success,Response = pcall(function()
											NestedElement.Values.OnChangedCallback(NestedElement.Values.CurrentValue)
										end)

										if not Success then
											Parent.Instance.Header.Text = "Callback Error"
											warn("Starlight Interface Suite | "..Parent.Values.Name.." Callback Error")
											print(tostring(Response))
											wait(0.5)
											Parent.Instance.Header.Text = Parent.Values.Name
										end
									end
								end
								CheckingForKey = false

							elseif NestedElement.Values.CurrentValue ~= nil and not processed then 

								if NestedElement.Values.CurrentValue == "MB1" then
									if input.UserInputType ~= Enum.UserInputType.MouseButton1 then
										return
									end
								elseif NestedElement.Values.CurrentValue == "MB2" then	
									if input.UserInputType ~= Enum.UserInputType.MouseButton2 then
										return
									end
								else
									if input.KeyCode ~= Enum.KeyCode[NestedElement.Values.CurrentValue] then
										return
									end
								end

								local Held = true
								local Connection
								Connection = input.Changed:Connect(function(prop)
									if prop == "UserInputState" then
										Connection:Disconnect()
										Held = false
									end
								end)

								if not NestedElement.Values.HoldToInteract then
									NestedElement.Active = not NestedElement.Active
									local Success,Response = pcall(function()
										NestedElement.Values.Callback(NestedElement.Active)
										if isToggle and NestedElement.Values.SyncToggleState then
											Parent:Set({ CurrentValue = NestedElement.Active })
										elseif isToggle then
											Parent.Values.Callback(NestedElement.Active)
										end
									end)

									if not Success then
										Parent.Instance.Header.Text = "Callback Error"
										warn("Starlight Interface Suite | "..Parent.Values.Name.." Callback Error")
										print(tostring(Response))
										wait(0.5)
										Parent.Instance.Header.Text = Parent.Values.Name
									end
								else
									wait(0.1)
									if Held then
										local Loop; Loop = RunService.Stepped:Connect(function()
											if not Held then
												NestedElement.Active = false
												local Success,Response = pcall(function()
													NestedElement.Values.Callback(false)
													if isToggle and NestedElement.Values.SyncToggleState then
														if Parent.Values.CurrentValue ~= false then Parent:Set({ CurrentValue = false }) end
													elseif isToggle then
														Parent.Values.Callback(false)
													end
												end)

												if not Success then
													Parent.Instance.Header.Text = "Callback Error"
													warn("Starlight Interface Suite | "..Parent.Values.Name.." Callback Error")
													print(tostring(Response))
													wait(0.5)
													Parent.Instance.Header.Text = Parent.Values.Name
												end
												Loop:Disconnect()
											else
												NestedElement.Active = true
												local Success,Response = pcall(function()
													NestedElement.Values.Callback(true)
													if isToggle and NestedElement.Values.SyncToggleState then
														if Parent.Values.CurrentValue ~= true then Parent:Set({ CurrentValue = true }) end
													elseif isToggle then
														Parent.Values.Callback(true)
													end
												end)

												if not Success then
													Parent.Instance.Header.Text = "Callback Error"
													warn("Starlight Interface Suite | "..Parent.Values.Name.." Callback Error")
													print(tostring(Response))
													wait(0.5)
													Parent.Instance.Header.Text = Parent.Values.Name
												end
											end
										end)	
									end
								end
							end
						end)
						
						function NestedElement:Destroy()
							NestedElement.Instance:Destroy()
							connection:Disconnect()
						end
						
						function NestedElement:Set(NewNestedSettings, NewNestedIndex)

							NewNestedIndex = NewNestedIndex or NestedIndex

							for i,v in pairs(NestedElement.Values) do
								if NewNestedSettings[i] == nil then
									NewNestedSettings[i] = v
								end
							end

							NestedSettings = NewNestedSettings
							NestedIndex = NewNestedIndex

							NestedElement.Values = NestedSettings

							NestedElement.Instances[1].Name = "BIND_" .. NestedIndex
							NestedElement.Instances[2].Name = "BIND_" .. NestedIndex
							
							NestedElement.Instance.Text = NestedElement.Values.CurrentValue
							Starlight.Window.TabSections[Name].Tabs[TabIndex].Groupboxes[GroupIndex].Elements[ParentIndex].NestedElements[NestedIndex].Values = NestedElement.Values
						end
						
						Starlight.Window.TabSections[Name].Tabs[TabIndex].Groupboxes[GroupIndex].Elements[ParentIndex].NestedElements[NestedIndex] = NestedElement
						return Starlight.Window.TabSections[Name].Tabs[TabIndex].Groupboxes[GroupIndex].Elements[ParentIndex].NestedElements[NestedIndex]
					end

					function Element:AddColorPicker(NestedSettings, NestedIndex, Parent, ParentIndex)
						
					end
					
					function Element:AddDropdown(NestedSettings, NestedIndex, Parent, ParentIndex)
						
						Parent = Parent or Element
						ParentIndex = ParentIndex or Index
						
						--[[
						NestedSettings = {
							Options = table,
							CurrentOption = table/string,
							MultipleOptions = bool,**
							Special = number (1,2), **
							
							Callback = function(table),
						}
						]]
						
						NestedSettings.MultipleOptions = NestedSettings.MultipleOptions or false
						NestedSettings.Special = NestedSettings.Special or 0
						
						local NestedElement = {
							Values = NestedSettings,
							Class = "Dropdown",
							Instances = {}
						}
						
						NestedElement.Instances[1] = Element.Instance.Dropdown:Clone()
						NestedElement.Instances[1].Visible = true
						NestedElement.Instances[1].Parent = Parent.Instance
						Parent.Instance.Size = UDim2.fromOffset(0, 70)
						
						NestedElement.Instances[2] = StarlightUI.DropdownOverlay.Dropdown_TEMPLATE:Clone()
						NestedElement.Instances[2].Parent = StarlightUI.DropdownOverlay
						
						NestedElement.Instances[1].Name = "DROPDOWN_" .. NestedIndex
						NestedElement.Instances[2].Name = "DROPDOWN_" .. NestedIndex
						
						for _, option in pairs(NestedElement.Instances[2].List:GetChildren()) do
							if option.ClassName == "TextButton" then
								option:Destroy()
							end
						end
						
						-- propert/method checking for me since theres autofill like this
						--local bleh :TextLabel = nil
						--bleh:GetPropertyChangedSignal("Text"):Connect()
						
						-- It is done this way instead of GetPropertyChangedSignal because for some reason, that does not support read-only properties while this does
						NestedElement.Instances[1].Changed:Connect(function(property)
							RunService.RenderStepped:Wait()
							if property == "AbsolutePosition" then
								NestedElement.Instances[2].Position = UDim2.fromOffset(math.ceil(NestedElement.Instances[1].AbsolutePosition.X), math.ceil(NestedElement.Instances[1].AbsolutePosition.Y)+ (135/2) + 30)
								
								Tween(NestedElement.Instances[2], {Size = UDim2.fromOffset(NestedElement.Instances[2].Size.X.Offset, 0)}, function()
									NestedElement.Instances[2].Visible = false
									Tween(NestedElement.Instances[1].Icon, {Rotation = 0})
								end, tweenInfo(nil, nil, 0.18))
							elseif property == "AbsoluteSize" then
								NestedElement.Instances[2].Size = UDim2.fromOffset(math.ceil(NestedElement.Instances[1].AbsoluteSize.X), NestedElement.Instances[2].Size.Y.Offset)
								task.wait()
								NestedElement.Instances[1].Header.Text = NestedElement:truncate()
							end
						end)
						
						NestedElement.Instances[1].Interact.MouseButton1Click:Connect(function()
							if NestedElement.Instances[2].Visible then
								Tween(NestedElement.Instances[2], {Size = UDim2.fromOffset(NestedElement.Instances[2].Size.X.Offset, 0)}, function()
									NestedElement.Instances[2].Visible = false
									Tween(NestedElement.Instances[1].Icon, {Rotation = 0})
								end, tweenInfo(nil, nil, 0.18))
							else
								NestedElement.Instances[2].Visible = true
								Tween(NestedElement.Instances[2], {Size = UDim2.fromOffset(NestedElement.Instances[2].Size.X.Offset, 120)})
								Tween(NestedElement.Instances[1].Icon, {Rotation = 180})
							end
						end)
						
						if NestedElement.Values.CurrentOption then
							if typeof(NestedElement.Values.CurrentOption) == "string" then
								NestedElement.Values.CurrentOption = {NestedElement.Values.CurrentOption}
							end
							if not NestedElement.Values.MultipleOptions and typeof(NestedElement.Values.CurrentOption) == "table" then
								NestedElement.Values.CurrentOption = {NestedElement.Values.CurrentOption[1]}
							end
							if typeof(NestedElement.Values.CurrentOption) == "number" then
								NestedElement.Values.CurrentOption = {NestedElement.Values.Options[NestedElement.Values.CurrentOption]}
							end
						else
							NestedElement.Values.CurrentOption = {}
						end
						
						--// SUBSECTION : display updation and methods
						
						function NestedElement:truncate()
							if TextService:GetTextSize(NestedElement.Instances[1].Header.Text, NestedElement.Instances[1].Header.TextSize, 
								NestedElement.Instances[1].Header.Font, Vector2.new(math.huge, math.huge)).X <= NestedElement.Instances[1].Header.AbsoluteSize.X then
								return NestedElement.Instances[1].Header.Text
							end
							
							local result = NestedElement.Instances[1].Header.Text
							while TextService:GetTextSize(result .. "...", NestedElement.Instances[1].Header.TextSize, 
								NestedElement.Instances[1].Header.Font, Vector2.new(math.huge, math.huge)).X > NestedElement.Instances[1].Header.AbsoluteSize.X-9 and #result > 0 do
								result = string.sub(result, 1, -2)
							end
							
							return result .. "..."
						end
						
						NestedElement.Instances[1].Header:GetPropertyChangedSignal("Text"):Connect(function()
							NestedElement.Instances[1].Header.Text = NestedElement:truncate()
						end)
						
						--// ENDSUBSECTION
						
						local function Activate(option)
							option.TextColor3 = Color3.new(1,1,1)
							--print("debug - activated option")
						end
						
						local function Deactivate(option)
							option.TextColor3 = Color3.fromRGB(165,165,165)
							--print("debug - deactivated option")
						end
						
						local function ToggleOption(option)
							if not NestedElement.Values.MultipleOptions then
								--print("debug - fired not multi options")
								for i,v in pairs(NestedElement.Instances[2].List:GetChildren()) do
									if v.ClassName == "TextButton" then 
										Deactivate(v)
										--print("debug - fired deactivate option loop inside")
									end
									--print("debug - fired deactivate option loop")
								end
								task.wait()
								Activate(option)
								
								local Success,Response = pcall(function()
									NestedElement.Values.CurrentOption = {option.Text}
									NestedElement.Values.Callback(NestedElement.Values.CurrentOption)
									NestedElement.Instances[1].Header.Text = UnpackTable(NestedElement.Values.CurrentOption)
								end)

								if not Success then
									Parent.Instance.Header.Text = "Callback Error"
									warn("Starlight Interface Suite | "..Parent.Values.Name.." Callback Error")
									print(tostring(Response))
									wait(0.5)
									Parent.Instance.Header.Text = Parent.Values.Name
								end
							else
								if option.TextColor3 == Color3.fromRGB(165,165,165) then
									-- activate
									Activate(option)
									local Success,Response = pcall(function()
										table.insert(NestedElement.Values.CurrentOption, option.Text)
										NestedElement.Values.Callback(NestedElement.Values.CurrentOption)
										NestedElement.Instances[1].Header.Text = UnpackTable(NestedElement.Values.CurrentOption)
									end)
								else
									-- deactivate
									Deactivate(option)
									local Success,Response = pcall(function()
										RemoveTable(NestedElement.Values.CurrentOption, option.Text)
										NestedElement.Values.Callback(NestedElement.Values.CurrentOption)
										NestedElement.Instances[1].Header.Text = UnpackTable(NestedElement.Values.CurrentOption)
									end)
								end
							end
						end
						
						local function Refresh()
							if NestedElement.Values.Special == 1 then
								NestedElement.Values.Options = {}
								for i,v in pairs(Players:GetChildren()) do
									table.insert(NestedElement.Values.Options, v.Name)
								end
							end
							if NestedElement.Values.Special == 2 then
								NestedElement.Values.Options = {}
								for i,v in pairs(Teams:GetChildren()) do
									table.insert(NestedElement.Values.Options, v.Name)
								end
							end
							
							-- ipairs so it actually lines up correctly
							for _, option in ipairs(NestedElement.Values.Options) do
								local optioninstance = StarlightUI.DropdownOverlay.Dropdown_TEMPLATE.List.Option_TEMPLATE:Clone()
								optioninstance.Parent = NestedElement.Instances[2].List
								optioninstance.Name = "OPTION_" .. option
								optioninstance.Text = option
								
								optioninstance.MouseButton1Click:Connect(function()
									ToggleOption(optioninstance)
									--print("debug - click")
								end)
							end
						end
						
						Refresh()
						NestedElement.Instances[2].Position = UDim2.fromOffset(math.ceil(NestedElement.Instances[1].AbsolutePosition.X), math.ceil(NestedElement.Instances[1].AbsolutePosition.Y)+ (135/2) + 30)
						
						local preoptions = NestedElement.Values.CurrentOption
						NestedElement.Values.CurrentOption = {}
						for i,v in pairs(preoptions) do
							--print("debug - loop current options")
							for _,optioninstance in pairs(NestedElement.Instances[2].List:GetChildren()) do
								--print("debug - loop option instances")
								if optioninstance.Name == "OPTION_" .. v then
									--print("debug - fired name check")
									ToggleOption(optioninstance)
								end
							end
						end
						
						
						function NestedElement:Destroy()
							NestedElement.Instance:Destroy()
							Parent.Instance.Size = UDim2.fromOffset(0, 36)
						end
						
						function NestedElement:Set(NewNestedSettings, NewNestedIndex)
							NewNestedIndex = NewNestedIndex or NestedIndex

							for i,v in pairs(NestedElement.Values) do
								if NewNestedSettings[i] == nil then
									NewNestedSettings[i] = v
								end
							end

							NestedSettings = NewNestedSettings
							NestedIndex = NewNestedIndex

							NestedElement.Values = NestedSettings

							NestedElement.Instances[1].Name = "DROPDOWN_" .. NestedIndex
							NestedElement.Instances[2].Name = "DROPDOWN_" .. NestedIndex
							
							Refresh()
							local preoptions = NestedElement.Values.CurrentOption
							NestedElement.Values.CurrentOption = {}
							for i,v in pairs(preoptions) do
								--print("debug - loop current options")
								for _,optioninstance in pairs(NestedElement.Instances[2].List:GetChildren()) do
									--print("debug - loop option instances")
									if optioninstance.Name == "OPTION_" .. v then
										--print("debug - fired name check")
										ToggleOption(optioninstance)
									end
								end
							end
							
							Starlight.Window.TabSections[Name].Tabs[TabIndex].Groupboxes[GroupIndex].Elements[ParentIndex].NestedElements[NestedIndex].Values = NestedElement.Values
						end

						Starlight.Window.TabSections[Name].Tabs[TabIndex].Groupboxes[GroupIndex].Elements[ParentIndex].NestedElements[NestedIndex] = NestedElement
						return Starlight.Window.TabSections[Name].Tabs[TabIndex].Groupboxes[GroupIndex].Elements[ParentIndex].NestedElements[NestedIndex]
						
					end

					--// ENDSUBSECTION
					

					Starlight.Window.TabSections[Name].Tabs[TabIndex].Groupboxes[GroupIndex].Elements[Index] = Element
					return Starlight.Window.TabSections[Name].Tabs[TabIndex].Groupboxes[GroupIndex].Elements[Index]
				end

				function Groupbox:CreateParagraph(ElementSettings, Index)
					--[[
					ElementSettings = {
						Name = string,
						Icon = number, **
						ImageSource = string, **
						Content = string,
					}
					]]

					ElementSettings.ImageSource = ElementSettings.ImageSource or "Material"

					local Element = {
						Values = ElementSettings,
						Class = "Paragraph"
					}

					Element.Instance = GroupboxTemplateInstance.Paragraph_TEMPLATE:Clone()
					Element.Instance.Visible = true
					Element.Instance.Parent = Groupbox.ParentingItem

					Element.Instance.Name = "PARAGRAPH_" .. Index
					Element.Instance.Header.Text = Element.Values.Name
					Element.Instance.Header.Icon.Visible = Element.Values.Icon ~= nil
					if Element.Instance.Header.Icon.Visible == false then
						Element.Instance.Header.UIPadding.PaddingLeft = UDim.new(0,6)
						Element.Instance.Content.UIPadding.PaddingLeft = UDim.new(0,6)
					else
						Element.Instance.Header.UIPadding.PaddingLeft = UDim.new(0,32)
						Element.Instance.Content.UIPadding.PaddingLeft = UDim.new(0,32)
					end
					Element.Instance.Header.Icon.Image = Element.Values.Icon ~= nil and "rbxassetid://" .. Element.Values.Icon or ""
					Element.Instance.Content.Text = Element.Values.Content

					function Element:Set(NewElementSettings , NewIndex)
						NewIndex = NewIndex or Index
						
						for i,v in pairs(Element.Values) do
							if NewElementSettings[i] == nil then
								NewElementSettings[i] = v
							end
						end

						ElementSettings = NewElementSettings
						Index = NewIndex

						Element.Values = ElementSettings

						Element.Instance.Name = "PARAGRAPH_" .. NewIndex
						Element.Instance.Header.Text = Element.Values.Name
						Element.Instance.Header.Icon.Visible = Element.Values.Icon ~= nil
						if Element.Instance.Header.Icon.Visible == false then
							Element.Instance.Header.UIPadding.PaddingLeft = UDim.new(0,6)
							Element.Instance.Content.UIPadding.PaddingLeft = UDim.new(0,6)
						else
							Element.Instance.Header.UIPadding.PaddingLeft = UDim.new(0,32)
							Element.Instance.Content.UIPadding.PaddingLeft = UDim.new(0,32)
						end
						Element.Instance.Header.Icon.Image = Element.Values.Icon ~= nil and "rbxassetid://" .. Element.Values.Icon or ""
						Element.Instance.Content.Text = Element.Values.Content

						Starlight.Window.TabSections[Name].Tabs[TabIndex].Groupboxes[GroupIndex].Elements[NewIndex].Values = ElementSettings
					end

					function Element:Lock(Reason)
						Element.Instance.Lock_Overlay.Visible = true
						Element.Instance.Interactable = false
						Element.Instance.Lock_Overlay.Header.Text = Reason or ""
					end

					function Element:Unlock()
						Element.Instance.Lock_Overlay.Visible = false
						Element.Instance.Interactable = true
						Element.Instance.Lock_Overlay.Header.Text = ""
					end

					function Element:Destroy()
						Element.Instance:Destroy()
					end

					Starlight.Window.TabSections[Name].Tabs[TabIndex].Groupboxes[GroupIndex].Elements[Index] = Element
					return Starlight.Window.TabSections[Name].Tabs[TabIndex].Groupboxes[GroupIndex].Elements[Index]
				end

				--// ENDSUBSECTION

				Groupbox.Instance.Parent = Tab.Instances.Page["Column_" .. GroupboxSettings.Column]
				Starlight.Window.TabSections[Name].Tabs[TabIndex].Groupboxes[GroupIndex] = Groupbox
				return Starlight.Window.TabSections[Name].Tabs[TabIndex].Groupboxes[GroupIndex]
			end

			--function Tab:CreateTabbox(TabboxSettings) -- coming soon

			--end

			--// ENDSUBSECTION

			Tab.Instances.Button.Parent = Starlight.Window.TabSections[Name].Instance
			Starlight.Window.TabSections[Name].Tabs[TabIndex] = Tab
			return Starlight.Window.TabSections[Name].Tabs[TabIndex]
		end

		TabSection.Instance.Parent = navigation
		Starlight.Window.TabSections[Name] = TabSection
		return Starlight.Window.TabSections[Name]

		--// ENDSUBSECTION

	end

	--// ENDSUBSECTION

	--// SUBSECTION : Initial Code
	do
		mainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.Visible = false
		local loadingScreenLogoChanged = false

		Hide(StarlightUI)

		mainWindow.Size = WindowSettings.DefaultSize ~= nil and WindowSettings.DefaultSize or mainWindow.Size

		mainWindow.Sidebar.Icon.Image = WindowSettings.Icon ~= nil and "rbxassetid://" .. WindowSettings.Icon or ""
		mainWindow.Sidebar.Header.Text = WindowSettings.Name
		mainWindow.Content.Topbar.Headers.Subheader.Text = WindowSettings.Subtitle
		
		mainWindow.Visible = true
		mainWindow.Size = WindowSettings.LoadingEnabled and UDim2.fromOffset(mainWindow.Size.X.Offset - 65, mainWindow.Size.Y.Offset - 55) or mainWindow.Size
		StarlightUI.MainWindow.Position = UDim2.fromOffset(
			Camera.ViewportSize.X / 2 - StarlightUI.MainWindow.Size.X.Offset / 2,
			Camera.ViewportSize.Y / 2 - StarlightUI.MainWindow.Size.Y.Offset / 2
		)
		StarlightUI.Drag.Position = WindowSettings.LoadingEnabled and UDim2.new(0.5,0,0.5,270) or UDim2.new(0.5,0,0.5,290)

		mainWindow["Loading Screen"].Version.Text = WindowSettings.LoadingSettings.Title == "Starlight Interface Suite" and Release or "Starlight Interface Suite " .. Release
		mainWindow["Loading Screen"].Frame.SubFrame.Title.Text = WindowSettings.LoadingSettings.Title or ""
		mainWindow["Loading Screen"].Frame.SubFrame.Subtitle.Text = WindowSettings.LoadingSettings.Subtitle or ""
		if WindowSettings.LoadingSettings.Logo then
			mainWindow["Loading Screen"].Frame.ImageLabel.Image = "rbxassetid://" .. WindowSettings.LoadingSettings.Logo
			loadingScreenLogoChanged = true
		end

		mainWindow.Sidebar.Player.PlayerIcon.Image = Players:GetUserThumbnailAsync(Player.UserId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size48x48)
		mainWindow.Sidebar.Player.Header.Text = Player.DisplayName
		mainWindow.Sidebar.Player.subheader.Text = Player.Name

		--[[if Starlight.BlurEnabled then
			mainWindow.Sidebar.BackgroundTransparency = 1
			mainWindow.Sidebar.CornerRepair.BackgroundTransparency = 1

			mainWindow.Content.Topbar.BackgroundTransparency = 1
			mainWindow.Content.Topbar.CornerRepairHorizontal.BackgroundTransparency = 1
			mainWindow.Content.Topbar.CornerRepairVertical.BackgroundTransparency = 1

			mainWindow.BackgroundTransparency = 1

			mainWindow.Content.ContentMain.CornerRepairHorizontal.BackgroundTransparency = 0.8
			mainWindow.Content.ContentMain.CornerRepairVertical.BackgroundTransparency = 0.8
			mainWindow.Content.ContentMain.BackgroundTransaprency = 0.8

			BlurModule(mainWindow)
		end]]

		mainWindow["Loading Screen"].Visible = true
		task.wait(1)
		Unhide(StarlightUI)

		makeDraggable(mainWindow.Content.Topbar, mainWindow)
		makeDraggable(mainWindow.Sidebar, mainWindow)
		if StarlightUI.Drag then makeDraggable(StarlightUI.Drag.Interact, mainWindow, true, 295, StarlightUI.Drag) end

		if WindowSettings.LoadingEnabled then

			-- like this cus uhh tween method dont got all the properties
			if not loadingScreenLogoChanged then
				TweenService:Create(mainWindow["Loading Screen"].Frame.ImageLabel, TweenInfo.new(1.7, Enum.EasingStyle.Back, Enum.EasingDirection.Out, 2, false, 0.2), {Rotation = 450}):Play()
			end

			task.wait(3)

			Hide(mainWindow["Loading Screen"], true, false, false)

			task.wait()

			Tween(mainWindow, {
				Size = UDim2.fromOffset(mainWindow.Size.X.Offset + 65, mainWindow.Size.Y.Offset + 55),
				Position = UDim2.fromOffset(
					Camera.ViewportSize.X / 2 - (mainWindow.Size.X.Offset + 65) / 2,
					Camera.ViewportSize.Y / 2 - (mainWindow.Size.Y.Offset + 55) / 2
				)
			})
			Tween(StarlightUI.Drag, {
				Position = UDim2.new(0.5, 0, 0.5, 290)
			})
		end
		
		mainWindow["Loading Screen"].Visible = false
		if not WindowSettings.LoadingEnabled then task.wait(1) end
	end
	--// ENDSUBSECTION

	--// SUBSECTION : Window Functionability
	do
		mainWindow.Content.Topbar.NotificationCenterIcon["MouseEnter"]:Connect(function()
			Tween(mainWindow.Content.Topbar.NotificationCenterIcon, {ImageColor3 = Resources[Starlight.CurrentTheme]['Fore_Medium'].Value})
		end)
		mainWindow.Content.Topbar.NotificationCenterIcon["MouseLeave"]:Connect(function()
			Tween(mainWindow.Content.Topbar.NotificationCenterIcon, {ImageColor3 = Resources[Starlight.CurrentTheme]['Fore_Dark'].Value})
		end)

		mainWindow.Content.Topbar.Search["MouseEnter"]:Connect(function()
			Tween(mainWindow.Content.Topbar.Search, {ImageColor3 = Resources[Starlight.CurrentTheme]['Fore_Medium'].Value})
		end)
		mainWindow.Content.Topbar.Search["MouseLeave"]:Connect(function()
			Tween(mainWindow.Content.Topbar.Search, {ImageColor3 = Resources[Starlight.CurrentTheme]['Fore_Dark'].Value})
		end)

		for _, Button in ipairs(mainWindow.Content.Topbar.Controls:GetChildren()) do
			Button["MouseEnter"]:Connect(function()
				Tween(Button, {BackgroundColor3 = Button.Value.Value})
			end)

			Button["MouseLeave"]:Connect(function()
				Tween(Button, {BackgroundColor3 = Color3.fromRGB(65,65,65)})
			end)
		end

		mainWindow.Content.Topbar.Controls.Close["MouseButton1Click"]:Connect(function()
			Starlight:Destroy()
			--[[ 
			Starlight.Window:PromptPopup({
				Name = "Are you sure?",
				Content = "Are you sure you wish to exit the Interface?",
				Actions = {
					Primary = {
						Name = "Cancel",
						Callback = function() end
					},
					{
						Name = "Yes",
						Callback = function()
							Starlight:Destroy()
						end
					}
				}
			})
			]]
		end)
		mainWindow.Content.Topbar.Controls.Maximize["MouseButton1Click"]:Connect(function()
			if Starlight.Maximized then
				Unmaximize(mainWindow)
			else
				Maximize(mainWindow)
			end
		end)
		mainWindow.Content.Topbar.Controls.Minimize["MouseButton1Click"]:Connect(function()
			Hide(StarlightUI, false, true, Starlight.WindowKeybind)
		end)

		UserInputService.InputBegan:Connect(function(input, gpe)
			if gpe then return end
			if Starlight.Minimized == false then return end
			if input.KeyCode == Enum.KeyCode[Starlight.WindowKeybind] then
				Unhide(StarlightUI)
			end
		end)
	end
	--// ENDSUBSECTION

	-- Return the window
	return Starlight.Window

end

StarlightUI.Enabled = true

--// ENDSECTION


--// SECTION : Testing

--// SUBSECTION : Example Script

--// ENDSUBSECTION

--// SUBSECTION : Debugging Script

--[[
]-]

local win = Starlight:CreateWindow({
	Name = "",
	Subtitle = "Alpha Release 2",
	Icon = 92936499827985,

	LoadingEnabled = false,
	LoadingSettings = {
		Title = "Starlight Interface Suite",
		Subtitle = "by Nebula Softworks",
		Logo = nil, -- Available for Style 1 only. replace the loading circle with an image of your choice
	},

	BuildWarnings = true,
	InterfaceAdvertisingPrompts = true,

	ConfigurationSettings = {
		Enabled = false,
		RootFolder = nil,
		FolderName = nil,
	},

	DefaultSize = nil,

	KeySystem = {
		Enabled = false,
		Title = "Starlight Key System",
		Subtitle = "Enter Your Key To Use The Script",
		Note = "This Key System Only supports strings",

		SaveKey = false,
		KeyFile = "Key",

		KeyObtainLink = "",
		Discord = false,

		HttpKey = false,
		Keys = {"Key"}, -- put the link to a raw content page containing your key.
	},

	Discord = { -- u can still have it in the home tab, this is just auto join
		Enabled = false,
		RememberJoins = true,
		Link = "1234"
	},

})

local ts = win:CreateTabSection()
local ts2 = win:CreateTabSection("Tab Section Example")

local t = ts:CreateTab({
	Name = "hi",
	Columns = 2
}, "hi")
local t2 = ts2:CreateTab({
	Name = "hi2",
	Columns = 1
}, "hi2")
local t3 = ts2:CreateTab({
	Name = "hi3",
	Columns = 2
}, "hi3")

local g = t:CreateGroupbox({
	Name = "Groupbox Example",
	Column = 2
}, "g")
local g2 = t:CreateGroupbox({
	Name = "Groupbox Example",
	Style =2
}, "g2")
t2:CreateGroupbox({
	Name = "Groupbox Example",
	Icon = NebulaIcons:GetIcon("home_filled"),
}, "noindex")

g:CreateButton({
	Name = "Button 2",
	Callback = "",
	Style = 1,
}, "btn2")

local hi = g2:CreateButton({
	Name = "Button",
	Icon = NebulaIcons:GetIcon("view_in_ar"),
	Callback = function()
		print("hi")
	end,
	Style = 1,
}, "btn")

g2:CreateButton({
	Name = "Flat Button",
	Icon = NebulaIcons:GetIcon("locate", "Lucide"),
	Callback = function()
		hi:Lock("wsp")
		wait(5)
		hi:Unlock()
		wait(3)
		hi:Lock()
	end,
}, "btn3")

g2:CreateToggle({
	Name = "Toggle",
	CheckboxIcon = NebulaIcons:GetIcon("check"),
	Callback = function()

	end,
}, "tggle")
g:CreateToggle({
	Name = "Toggle without Icon",
	Callback = function()

	end,
}, "tggle2")

g:CreateToggle({
	Name = "Toggle - Switch Style",
	Style = 2,
	Callback = function()

	end,
}, "tggle2")

g2:CreateSlider({
	Name = "Slider",
	Range = {0,100},
	Increment = 0.5,
	Callback = function() end
}, "sldr")

g2:CreateSlider({
	Name = "Slider",
	Range = {0,100},
	HideMax = true,
	Callback = function(v) print(v) end
}, "sldr2")

--g:CreateBind({
--	Name = "bind",
--	CurrentValue = "Q",
--	Callback = function() end
--})
g:CreateInput({
	Name = "dynamic input",
	Callback = function() end
}, "inpt")
g2:CreateInput({
	Name = "numeric input",
	Numeric = true,
	PlaceholderText = "Numbers Only Hehe",
	Callback = function() end
}, "nmrcinpt")

local hello = g2:CreateLabel({
	Name = "Label"
}, "lblbnd")

hello:AddBind({
	CurrentValue = "Q",
	HoldToInteract = true,
	Callback = function(v)
		print(v)
	end,
}, "bnd")

local bind = g2:CreateToggle({
	Name = "Toggle Bind",
	CurrentValue = false,
	Callback = function(v)
		print(v)
	end,
}, "bndprnt")
bind:AddBind({
	CurrentValue = "C",
	SyncToggleState = true
}, "bnd2")

--g2:CreateDropdown({
--	Name = "Hello",
--	Options = {"1","2","3"},
--	CurrentOption = {"1"},
--	MultipleOptions = true,
--	Callback = function(v)
--		for i,v in v do
--			print(v)
--		end
--	end,
--})

local dropdown = g:CreateLabel({Name = "Dropdown"}, "lbldrpdwn"):AddDropdown({
	Options = {"hi","heeh","huh"},
	CurrentOption = {"wsp"},
	Callback = function(v)
		print(v)
	end,
}, 'drpdwn')

local dropdown2 = g:CreateLabel({Name = "Dropdown MultiOptions"}, "lbldrpdwn2"):AddDropdown({
	Options = {"smthhhhh veryyyyyyyyyyyy loooooooonggggggg","heeh","huh"},
	CurrentOption = {"wsp", "huh"},
	MultipleOptions = true,
	Callback = function(v)
		print(v)
	end,
}, 'drpdwn2')

local dropdown3 = g2:CreateToggle({Name = "Dropdown On Toggle",CurrentValue = false,Callback = function() end, Style=2}, "tggldrpdwn"):AddDropdown({
	Options = {"hi","heeh","huh"},
	CurrentOption = {"wsp", "huh"},
	MultipleOptions = true,
	Special = 1,
	Callback = function(v)
		print(v)
	end,
}, 'drpdwn3')

g:CreateLabel({
	Name = "Label w Icon",
	Icon = NebulaIcons:GetIcon("aperture", "Lucide"),
}, "lbl")
g2:CreateParagraph({
	Name = "paragraph",
	Content = "Hello!! Im A Paragraph, and i can store bunch of text"
}, "prgrph")
g:CreateParagraph({
	Name = "paragraph 2",
	Icon = NebulaIcons:GetIcon("filter_list_alt"),
	Content = [[Hello!! Im A Paragraph, and i can store bunch of text. 
I also grow bigger or smaller depending on how much text is in my body! 
Like this, i am a much bigger paragraph than the other one! i also support multi lines ]-]
}, "prgrph2")
]]

--// ENDSUBSECTION

--// ENDSECTION

return Starlight
