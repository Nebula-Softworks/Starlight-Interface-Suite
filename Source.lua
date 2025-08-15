--[[

███████╗████████╗ █████╗ ██████╗ ██╗     ██╗ ██████╗ ██╗  ██╗████████╗    ██╗███╗   ██╗████████╗███████╗██████╗ ███████╗ █████╗  ██████╗███████╗    ███████╗██╗   ██╗██╗████████╗███████╗
██╔════╝╚══██╔══╝██╔══██╗██╔══██╗██║     ██║██╔════╝ ██║  ██║╚══██╔══╝    ██║████╗  ██║╚══██╔══╝██╔════╝██╔══██╗██╔════╝██╔══██╗██╔════╝██╔════╝    ██╔════╝██║   ██║██║╚══██╔══╝██╔════╝
███████╗   ██║   ███████║██████╔╝██║     ██║██║  ███╗███████║   ██║       ██║██╔██╗ ██║   ██║   ██████╗ ██████╔╝█████╗  ███████║██║     ██████╗     ███████╗██║   ██║██║   ██║   ██████╗  
╚════██║   ██║   ██╔══██║██╔══██╗██║     ██║██║   ██║██╔══██║   ██║       ██║██║╚██╗██║   ██║   ██╔═══╝ ██╔══██╗██╔══╝  ██╔══██║██║     ██╔═══╝     ╚════██║██║   ██║██║   ██║   ██╔═══╝  
███████║   ██║   ██║  ██║██║  ██║███████╗██║╚██████╔╝██║  ██║   ██║       ██║██║ ╚████║   ██║   ███████╗██║  ██║██║     ██║  ██║╚██████╗███████╗    ███████║╚██████╔╝██║   ██║   ███████╗
╚══════╝   ╚═╝   ╚═╝  ╚═╝╚═╝  ╚═╝╚══════╝╚═╝ ╚═════╝ ╚═╝  ╚═╝   ╚═╝       ╚═╝╚═╝  ╚═══╝   ╚═╝   ╚══════╝╚═╝  ╚═╝╚═╝     ╚═╝  ╚═╝ ╚═════╝╚══════╝    ╚══════╝ ╚═════╝ ╚═╝   ╚═╝   ╚══════╝
by    d8b   db d88888b d8888b. db    db db       .d8b.       .d8888.  .d88b.  d88888b d888888b db   d8b   db  .d88b.  d8888b. db   dD .d8888. 
      888o  88 88'     88  `8D 88    88 88      d8' `8b      88'  YP .8P  Y8. 88'     `~~88~~' 88   I8I   88 .8P  Y8. 88  `8D 88 ,8P' 88'  YP 
      88V8o 88 88ooooo 88oooY' 88    88 88      88ooo88      `8bo.   88    88 88ooo      88    88   I8I   88 88    88 88oobY' 88,8P   `8bo.   
      88 V8o88 88~~~~~ 88~~~b. 88    88 88      88~~~88        `Y8b. 88    88 88~~~      88    Y8   I8I   88 88    88 88`8b   88`8b     `Y8b. 
      88  V888 88.     88   8D 88b  d88 88booo. 88   88      db   8D `8b  d8' 88         88    `8b d8'8b d8' `8b  d8' 88 `88. 88 `88. db   8D 
      VP   V8P Y88888P Y8888P' ~Y8888P' Y88888P YP   YP      `8888Y'  `Y88P'  YP         YP     `8b8' `8d8'   `Y88P'  88   YD YP   YD `8888Y' 
                                                                                                                                        
                                                                                                                                        

Main Credits

Hunter (Nebula Softworks) | Designing And Programming | Main Developer
JustHey (Nebula Softworks) | Configurations, Programming, Bug Fixing | Co Developer
Pookie Pepelss (Nebula Softworks) | Bug And Feature Testing | Lead Tester
Inori | Configuration and Layout Concept  


Extra Credits

Sirius | Build Warnings
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
 

COMMENT MEANINGS:
A Section is something used to easily identify what a section of code is used for/means
Subsections help to oraganize within subsections, and are smaller, breaking down the code even more

Asterisks in Table Examples mean that the parameter is not required
However, if there are 4 asterisks, it means that requirement of the parameter depends on another parameter
Ellipsis means that unlimited parameters of the template provided are accepted within the table

If you see --!nocheck and a few nil variables above before this, that is for the studio environment. It js means I forgot to remove them before publishing the release.


Starlight Interface Suite
by Nebula Softworks

]]

--// SECTION : Core Variables

local Release = "Prerelease Beta 3b" 
local debugV = false                 

local Starlight = {

	Folder = "Starlight Interface Suite",

	InterfaceBuild = "B3BA", -- Beta 3 Build A

	CurrentTheme = "Default",
	BlurEnabled = nil, -- disabled till further notice
	DialogOpen = false,

	WindowKeybind = "K",
	Minimized = false,
	Maximized = false,
	NotificationsOpen = false,

	Window = nil,
	Notifications = nil,
	Instance = nil,
	OnDestroy = nil,

	Themes = {},
	ConfigSystem = {
		FileExtension = ".starlight",

		AutoloadPath = nil,
	}

}

--// ENDSECTION


--// SECTION : Services And Variables

-- Services
local Lighting = game:GetService("Lighting") 
local Players = game:GetService("Players")
local Teams = game:GetService("Teams")
local RunService = game:GetService("RunService") 
local UserInputService = game:GetService("UserInputService") 
local TweenService = game:GetService("TweenService") 
local HttpService = game:GetService("HttpService")
local Localization = game:GetService("LocalizationService")
local CollectionService = game:GetService("CollectionService")
local TextService = game:GetService("TextService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local GuiService = game:GetService("GuiService")
local CoreGui = game:GetService("CoreGui")
local StarterGui = game:GetService("StarterGui")

local Player = Players.LocalPlayer
local Camera = workspace.CurrentCamera
local Mouse = Player:GetMouse()
local GuiInset, _ = GuiService:GetGuiInset()
GuiInset = GuiInset.Y-20

local isStudio = RunService:IsStudio() or false
local website = "nebulasoftworks.xyz"

local Request = (syn and syn.request) or (fluxus and fluxus.request) or (http and http.request) or http_request or request

--//SUBSECTION : Classes
local String = {}
local Table = {}
local Color = {}

local Tween = {}
setmetatable(Tween, {
	__call = function(self, object : Instance, goal : table, callback, tweenin)
		local tween = TweenService:Create(object,tweenin or Tween.Info(), goal)
		tween.Completed:Connect(callback or function() end)
		tween:Play()
	end,
})

--//ENDSUBSECTION

function Tween.Info(style : string?, direction : string?, time : number?) 
	style = style or "Exponential"
	direction = direction or "Out"
	time = time or 0.5
	return TweenInfo.new(time, Enum.EasingStyle[style], Enum.EasingDirection[direction])
end

local NebulaIcons = isStudio and require(ReplicatedStorage.NebulaIcons)

local connections = {}

--// ENDSECTION


--// SECTION : Functions

-- Class Parsing System for Configurations
-- really weirdly scripted, ask justhey why its like this
-- and then i modified it for starlight and it became even more redundant

-- used so we index system allows for universal linking without breaking
local function GetNestedValue(tbl, path)
	local current = tbl
	for segment in string.gmatch(path, "[^%.]+") do
		if typeof(current) ~= "table" then
			return nil
		end
		current = current[segment]
	end
	return current
end


local ClassParser = {
	Save = function(Idx, Data)
		return {
			type = "Toggle", 
			idx = Idx, 
			data = Data
		}
	end,
	Load = function(Idx, Data, Path)
		if GetNestedValue(Starlight.Window.TabSections, Idx) then
			for key, value in pairs(Data) do
				GetNestedValue(Starlight.Window.TabSections, Idx):Set({ [key] = value })
			end
		end
	end,
}

-- Removes item from a provided table via the value of the item
-- and tablre is not a typo, table was already taken by roblox's core scripting
function Table.Remove(tablre : table, value)
	for i,v in pairs(tablre) do
		if v == value then
			table.remove(tablre, i)
		end
	end
end

-- Returns a table with RGB Values of the provided Color
function Color.Unpack(Color : Color3)
	return {R = Color.R * 255, G = Color.G * 255, B = Color.B * 255}
end    

-- Returns a color with the RGB Values of the provided table
function Color.Pack(Color : table)
	return Color3.fromRGB(Color.R, Color.G, Color.B)
end

-- Creates the BlurBehind Effect for the transparent theme
local function BlurModule(Frame : Frame)

	local universalDof;
	for i,v in pairs(Lighting:GetChildren()) do
		
		if v:IsA("DepthOfFieldEffect")
			and not string.find(v.Name, "starlightBlur_", nil) then
			
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

	Frame:SetAttribute("BlurIntensity", 1)

	local blurObject          = universalDof:Clone()
	blurObject.NearIntensity  = Frame:GetAttribute("BlurIntensity")
	blurObject.FocusDistance  = universalDof.FocusDistance
	blurObject.InFocusRadius = universalDof.InFocusRadius
	blurObject.FarIntensity = universalDof.FarIntensity
	blurObject.Parent         = Lighting
	blurObject.Name = "starlightBlur_" .. Frame.Name .. HttpService:GenerateGUID(false)
	
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

	local PartsList         = {}
	local BlursList         = {}
	local BlurObjects       = {}
	local BlurredGui        = {}

	BlurredGui.__index      = BlurredGui

	local function rayPlaneIntersect(planePos, planeNormal, rayOrigin, rayDirection)
		local n = planeNormal
		local d = rayDirection
		local v = rayOrigin - planePos

		local num = n.x*v.x + n.y*v.y + n.z*v.z
		local den = n.x*d.x + n.y*d.y + n.z*d.z
		local a = -num / den

		return rayOrigin + a * rayDirection, a
	end

	local function rebuildPartsList()
		PartsList = {}
		BlursList = {}
		for blurObj, part in pairs(BlurObjects) do
			table.insert(PartsList, part)
			table.insert(BlursList, blurObj)
		end
	end

	function BlurredGui.new(frame, shape)
		local blurPart        = Instance.new("Part")
		blurPart.Size         = Vector3.new(1, 1, 1) * 0.01
		blurPart.Anchored     = true
		blurPart.CanCollide   = false
		blurPart.CanTouch     = false
		blurPart.Material     = Enum.Material.Glass
		blurPart.Transparency = partTransparency
		blurPart.Parent       = partRoot
		blurPart.Color = Color3.new(1,1,1)

		local mesh
		if (shape == "Rectangle") then
			mesh        = Instance.new("BlockMesh")
			mesh.Parent = blurPart
		elseif (shape == "Oval") then
			mesh          = Instance.new("SpecialMesh")
			mesh.MeshType = Enum.MeshType.Sphere
			mesh.Parent   = blurPart
		end

		local ignoreInset = false
		local currentObj  = frame

		while true do
			currentObj = currentObj.Parent

			if (currentObj and currentObj:IsA("ScreenGui")) then
				ignoreInset = currentObj.IgnoreGuiInset
				break
			elseif (currentObj == nil) then
				break
			end
		end

		local new = setmetatable({
			Frame          = frame;
			Part           = blurPart;
			Mesh           = mesh;
			IgnoreGuiInset = ignoreInset;
		}, BlurredGui)

		BlurObjects[new] = blurPart
		rebuildPartsList()

		game:GetService("RunService"):BindToRenderStep("...", Enum.RenderPriority.Camera.Value + 1, function()
			blurPart.CFrame = Camera.CFrame
			BlurredGui.updateAll()
		end)
		return new
	end

	local function updateGui(blurObj)
		if (not blurObj.Frame.Visible) then
			blurObj.Part.Transparency = 1
			return
		end

		local frame  = blurObj.Frame
		local part   = blurObj.Part
		local mesh   = blurObj.Mesh

		part.Transparency = partTransparency

		local corner0 = frame.AbsolutePosition + blurSize
		local corner1 = corner0 + frame.AbsoluteSize - blurSize*2
		local ray0, ray1
			ray0 = Camera:ScreenPointToRay(corner0.X, corner0.Y, 1)
			ray1 = Camera:ScreenPointToRay(corner1.X, corner1.Y, 1)

		local planeOrigin = Camera.CFrame.Position + Camera.CFrame.LookVector * (0.05 - Camera.NearPlaneZ)
		local planeNormal = Camera.CFrame.LookVector
		local pos0 = rayPlaneIntersect(planeOrigin, planeNormal, ray0.Origin, ray0.Direction)
		local pos1 = rayPlaneIntersect(planeOrigin, planeNormal, ray1.Origin, ray1.Direction)

		local pos0 = Camera.CFrame:PointToObjectSpace(pos0)
		local pos1 = Camera.CFrame:PointToObjectSpace(pos1)

		local size   = pos1 - pos0
		local center = (pos0 + pos1)/2

		mesh.Offset = center
		mesh.Scale  = size / partSize
	end

	function BlurredGui.updateAll()
		blurObject.NearIntensity = tonumber(Frame:GetAttribute("BlurIntensity"))

		for i = 1, #BlursList do
			updateGui(BlursList[i])
		end

		local cframes = table.create(#BlursList, workspace.CurrentCamera.CFrame)
		workspace:BulkMoveTo(PartsList, cframes, Enum.BulkMoveMode.FireCFrameChanged)

		--blurObject.FocusDistance = 0.25 - Camera.NearPlaneZ
	end

	function BlurredGui:Destroy()
		self.Part:Destroy()
		BlurObjects[self] = nil
		rebuildPartsList()
	end

	BlurredGui.new(Frame, "Rectangle")

	BlurredGui.updateAll()
	return BlurredGui
end

-- Unpacks A Table, Returning it as string containing a list of the values
function Table.Unpack(array : table)

	local val = ""
	for _,v in pairs(array) do
		val = val .. v .. ", "
	end

	val = string.sub(val, 1,  #val-2)
	return val

end

function String.IsEmptyOrNull(str : string)
	if str == nil then return true end
	if type(str) ~= "string" then return false end
	if str == "" or str:match("^%s*$") then return true end
	return false
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
-- sometimes it breaks for no reason, so just throw nothing if it does to prevent errors
setmetatable(TransparencyValues, {
	__index = function()
		return
	end
})

local oldSizeX, oldSizeY, oldPosX, oldPosY

-- Hides the given MainWindow
local function Hide(Interface , JustHide : boolean?, Notify : boolean?, Bind : string?)

	JustHide = JustHide or false

	TransparencyValues[Interface.Name] = TransparencyValues[Interface.Name] or {}
	-- Clear Table
	table.clear(TransparencyValues[Interface.Name])

	for i,v in pairs(Interface:GetDescendants()) do
		if  v.ClassName ~= "Folder" 
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
			-- Create And Set Subtables
			if JustHide == false then

				v:SetAttribute("InstanceID", HttpService:GenerateGUID(false)) -- we are doing this cus roblox fucking removed/disabled the UniqueId feature, and stuff might have the same name

				TransparencyValues[Interface.Name][v:GetAttribute("InstanceID")] = { }

				if v.ClassName == "Frame" then
					TransparencyValues[Interface.Name][v:GetAttribute("InstanceID")].BackgroundTransparency = v.BackgroundTransparency
				end

				if v.ClassName == "TextLabel" or v.ClassName == "TextBox" or v.ClassName == "TextButton" then
					TransparencyValues[Interface.Name][v:GetAttribute("InstanceID")].BackgroundTransparency = v.BackgroundTransparency
					TransparencyValues[Interface.Name][v:GetAttribute("InstanceID")].TextTransparency = v.TextTransparency
				end

				if v.ClassName == "ImageLabel" or v.ClassName == "ImageButton" then
					TransparencyValues[Interface.Name][v:GetAttribute("InstanceID")].BackgroundTransparency = v.BackgroundTransparency
					TransparencyValues[Interface.Name][v:GetAttribute("InstanceID")].ImageTransparency = v.ImageTransparency
				end

				-- do this cus roblox gui stuff have a although deprecated class, its still accesible by scripts
				-- and sets text and transparency values which is smth we dont want
				if v.ClassName == "UIStroke" or v.ClassName == "UIGradient" then
					TransparencyValues[Interface.Name][v:GetAttribute("InstanceID")].Transparency = v.Transparency
				end
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

			if v.ClassName == "UIStroke" or Interface.ClassName == "UIGradient" then
				Tween(v, {Transparency = 1})
			end
		end
	end
	
	if Interface.ClassName ~= "ScreenGui" then
		if JustHide == false then

			Interface:SetAttribute("InstanceID", HttpService:GenerateGUID(false)) -- we are doing this cus roblox fucking removed/disabled the UniqueId feature, and stuff might have the same name

			TransparencyValues[Interface.Name][Interface:GetAttribute("InstanceID")] = { }

			if Interface.ClassName == "Frame" then
				TransparencyValues[Interface.Name][Interface:GetAttribute("InstanceID")].BackgroundTransparency = Interface.BackgroundTransparency
			end

			if Interface.ClassName == "TextLabel" or Interface.ClassName == "TextBox" or Interface.ClassName == "TextButton" then
				TransparencyValues[Interface.Name][Interface:GetAttribute("InstanceID")].BackgroundTransparency = Interface.BackgroundTransparency
				TransparencyValues[Interface.Name][Interface:GetAttribute("InstanceID")].TextTransparency = Interface.TextTransparency
			end

			if Interface.ClassName == "ImageLabel" or Interface.ClassName == "ImageButton" then
				TransparencyValues[Interface.Name][Interface:GetAttribute("InstanceID")].BackgroundTransparency = Interface.BackgroundTransparency
				TransparencyValues[Interface.Name][Interface:GetAttribute("InstanceID")].ImageTransparency =Interface.ImageTransparency
			end

			-- do this cus roblox gui stuff have a although deprecated class, its still accesible by scripts
			-- and sets text and transparency values which is smth we dont want
			if Interface.ClassName == "UIStroke" or Interface.ClassName == "UIGradient" then
				TransparencyValues[Interface.Name][Interface:GetAttribute("InstanceID")].Transparency = Interface.Transparency
			end
		end


		-- Actually Hide The Stuff
		if Interface.ClassName == "Frame" then
			Tween(Interface, {BackgroundTransparency = 1})
		end

		if Interface.ClassName == "TextLabel" or Interface.ClassName == "TextBox" or Interface.ClassName == "TextButton" then
			Tween(Interface, {BackgroundTransparency = 1})
			Tween(Interface, {TextTransparency = 1})
		end

		if Interface.ClassName == "ImageLabel" or Interface.ClassName == "ImageButton" then
			Tween(Interface, {BackgroundTransparency = 1})
			Tween(Interface, {ImageTransparency = 1})
		end

		if Interface.ClassName == "UIStroke" or Interface.ClassName == "UIGradient" then
			Tween(Interface, {Transparency = 1})
		end
	end

	task.wait(.18)
	if Interface.ClassName == "ScreenGui" then
		Interface.Enabled = false
	else
		Interface.Visible = false
	end

	if Notify then
		Starlight:Notification({
			Title = "Interface Hidden",
			Icon = 87575513726659,
			Content = "The Interface Has Been Hidden. You May Reopen It By Pressing The " .. Bind .. " Key.  " 
		}) 
	end

	Starlight.Minimized = true
end

-- Unhides the given window which has been hidden by hide
local function Unhide(Interface)
	if Interface.ClassName == "ScreenGui" then
		Interface.Enabled = true
	else
		Interface.Visible = true
	end
	
	
	for i,v in pairs(Interface:GetDescendants()) do
		if  v.ClassName ~= "Folder" 
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
				if (v.ClassName == "Frame") and TransparencyValues[Interface.Name][v:GetAttribute("InstanceID")].BackgroundTransparency ~= nil then
					Tween(v, {BackgroundTransparency = TransparencyValues[Interface.Name][v:GetAttribute("InstanceID")].BackgroundTransparency})
				end

				if (v.ClassName == "TextLabel" or v.ClassName == "TextBox" or v.ClassName == "TextButton") and TransparencyValues[Interface.Name][v:GetAttribute("InstanceID")].BackgroundTransparency ~= nil  and TransparencyValues[Interface.Name][v:GetAttribute("InstanceID")].TextTransparency ~= nil then
					Tween(v, {BackgroundTransparency = TransparencyValues[Interface.Name][v:GetAttribute("InstanceID")].BackgroundTransparency})
					Tween(v, {TextTransparency = TransparencyValues[Interface.Name][v:GetAttribute("InstanceID")].TextTransparency})
				end

				if (v.ClassName == "ImageLabel" or v.ClassName == "ImageButton") and TransparencyValues[Interface.Name][v:GetAttribute("InstanceID")].BackgroundTransparency ~= nil and TransparencyValues[Interface.Name][v:GetAttribute("InstanceID")].ImageTransparency then
					Tween(v, {BackgroundTransparency = TransparencyValues[Interface.Name][v:GetAttribute("InstanceID")].BackgroundTransparency})
					Tween(v, {ImageTransparency = TransparencyValues[Interface.Name][v:GetAttribute("InstanceID")].ImageTransparency})
				end

				if (v.ClassName == "UIStroke" or Interface.ClassName == "UIGradient") and TransparencyValues[Interface.Name][v:GetAttribute("InstanceID")].Transparency then
					Tween(v, {Transparency = TransparencyValues[Interface.Name][v:GetAttribute("InstanceID")].Transparency})
				end
			end)

		end
	end
	
	pcall(function()
		if Interface.ClassName ~= "ScreenGui" then
			if (Interface.ClassName == "Frame") and TransparencyValues[Interface.Name][Interface:GetAttribute("InstanceID")].BackgroundTransparency ~= nil then
				Tween(Interface, {BackgroundTransparency = TransparencyValues[Interface.Name][Interface:GetAttribute("InstanceID")].BackgroundTransparency})
			end

			if (Interface.ClassName == "TextLabel" or Interface.ClassName == "TextBox" or Interface.ClassName == "TextButton") and TransparencyValues[Interface.Name][Interface:GetAttribute("InstanceID")].BackgroundTransparency ~= nil  and TransparencyValues[Interface.Name][Interface:GetAttribute("InstanceID")].TextTransparency ~= nil then
				Tween(Interface, {BackgroundTransparency = TransparencyValues[Interface.Name][Interface:GetAttribute("InstanceID")].BackgroundTransparency})
				Tween(Interface, {TextTransparency = TransparencyValues[Interface.Name][Interface:GetAttribute("InstanceID")].TextTransparency})
			end

			if (Interface.ClassName == "ImageLabel" or Interface.ClassName == "ImageButton") and TransparencyValues[Interface.Name][Interface:GetAttribute("InstanceID")].BackgroundTransparency ~= nil and TransparencyValues[Interface.Name][Interface:GetAttribute("InstanceID")].ImageTransparency then
				Tween(Interface, {BackgroundTransparency = TransparencyValues[Interface.Name][Interface:GetAttribute("InstanceID")].BackgroundTransparency})
				Tween(Interface, {ImageTransparency = TransparencyValues[Interface.Name][Interface:GetAttribute("InstanceID")].ImageTransparency})
			end

			if (Interface.ClassName == "UIStroke" or Interface.ClassName == "UIGradient") and TransparencyValues[Interface.Name][Interface:GetAttribute("InstanceID")].Transparency then
				Tween(Interface, {Transparency = TransparencyValues[Interface.Name][Interface:GetAttribute("InstanceID")].Transparency})
			end
		end
	end)

	Starlight.Minimized = false
end

-- Maximizes the window
local function Maximize(Window : Frame)
	oldSizeX = Window.Size.X.Offset
	oldSizeY = Window.Size.Y.Offset
	oldPosX = Window.Position.X.Offset
	oldPosY = Window.Position.Y.Offset

	Tween(Window, {Size = UDim2.new(1,-2,1,-2)}, nil, Tween.Info(nil, nil, 0.38))
	Tween(Window, {Position = UDim2.fromOffset(1,1)}, nil, Tween.Info(nil, nil, 0.38))

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

-- Add a tooltip to the element
local function AddToolTip(InfoStr, HoverInstance)
	local label = Instance.new("TextLabel")
	label.Text = InfoStr or ""
	label.AnchorPoint = Vector2.new(0,0.5)
	label.Position = UDim2.new(0,4,0.5, 0)
	label.TextSize = 15
	label.TextXAlignment = Enum.TextXAlignment.Left
	label.FontFace = Font.fromId(12187365364, Enum.FontWeight.Regular) 
	label.TextWrapped = false
	label.BackgroundTransparency= 1
	label.TextColor3 = Color3.new(1,1,1)

	local tooltip = Instance.new("Frame")
	tooltip.BackgroundColor3 = Color3.fromRGB(27, 29, 33)
	tooltip.ZIndex = 300
	tooltip.Parent = Starlight.Instance.Tooltips
	tooltip.Name = HoverInstance.Name

	label.ZIndex = tooltip.ZIndex + 1
	label.Parent = tooltip
	label.Size = UDim2.fromOffset(label.TextBounds.X, label.TextBounds.Y)
	tooltip.Size = UDim2.fromOffset(label.TextBounds.X + 8, label.TextBounds.Y + 6)

	tooltip.Visible = false

	local corner = Instance.new("UICorner")
	corner.CornerRadius = UDim.new(0,3)
	corner.Parent = tooltip

	local stroke = Instance.new("UIStroke")
	stroke.Color = Color3.fromRGB(65,66,77)
	stroke.Parent = tooltip

	local hoverTime = 0
	local IsHovering = false
	local lastMousePos = nil
	local threshold = .44

	local function updateTooltipPos()
		tooltip.Position = UDim2.fromOffset(Mouse.X + 15, Mouse.Y + 20)
	end

	if HoverInstance then
		HoverInstance.MouseEnter:Connect(function()
			IsHovering = true
			lastMousePos = Vector2.new(Mouse.X, Mouse.Y)
			hoverTime = 0
		end)

		HoverInstance.MouseLeave:Connect(function()
			IsHovering = false
			tooltip.Visible = false
		end)

		RunService.RenderStepped:Connect(function(dt)
			if not IsHovering then return end

			local currentPos = Vector2.new(Mouse.X, Mouse.Y)
			if (currentPos - lastMousePos).magnitude > 0 then
				tooltip.Visible = false
				hoverTime = 0
				lastMousePos = currentPos
			else
				hoverTime += dt
				if hoverTime >= threshold then
					updateTooltipPos()
					if not String.IsEmptyOrNull(label.Text) then
						RunService.RenderStepped:Wait()
						tooltip.Visible = true
					end
				end
			end
		end)
	end

	updateTooltipPos()

	return label
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
						Tween(dragBarCosmetic, {BackgroundTransparency = 0.5, Size = UDim2.new(0, 120, 0, 4)}, nil, TweenInfo.new(0.25, Enum.EasingStyle.Back, Enum.EasingDirection.Out))
					end
				end)

				dragBar.MouseLeave:Connect(function()
					if not Dragging then
						Tween(dragBarCosmetic, {BackgroundTransparency = 0.7, Size = UDim2.new(0, 100, 0, 4)}, nil, TweenInfo.new(0.25, Enum.EasingStyle.Back, Enum.EasingDirection.Out))
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
					Tween(dragBarCosmetic, {Size = UDim2.new(0, 110, 0, 4), BackgroundTransparency = 0}, nil, TweenInfo.new(0.35, Enum.EasingStyle.Back, Enum.EasingDirection.Out))
				end

				Input.Changed:Connect(function()
					if Input.UserInputState == Enum.UserInputState.End then
						Dragging = false
						connectFunctions()

						if enableTaptic then
							Tween(dragBarCosmetic, {Size = UDim2.new(0, 100, 0, 4), BackgroundTransparency = 0.7}, nil, TweenInfo.new(0.35, Enum.EasingStyle.Back, Enum.EasingDirection.Out))
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
				Tween(Window, {Position = newMainPosition}, nil, TweenInfo.new(0.35, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out))

				local newDragBarPosition = UDim2.new(FramePos.X.Scale, FramePos.X.Offset + Delta.X + (Window.Size.X.Offset/2), FramePos.Y.Scale, Window.Position.Y.Offset + Window.Size.Y.Offset +10)
				Tween(dragBar, {Position = newDragBarPosition}, nil, TweenInfo.new(0.35, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out))
			end
		end)

	end)
end

--// ENDSUBSECTION

--// ENDSECTION


--// SECTION : Interface Management

-- Interface Model
local modelId = debugV and 136653172778765 or 115378917859034

local StarlightUI : ScreenGui = isStudio and script.Parent:WaitForChild("Starlight V2") or game:GetObjects("rbxassetid://" .. modelId)[1]
local buildAttempts = 0
local correctBuild = false
local warned

repeat

	if StarlightUI:FindFirstChild('Build') and StarlightUI.Build.Value == Starlight.InterfaceBuild then
		correctBuild = true
		break
	end

	correctBuild = false

	if not warned then
		warn('Starlight | Build Mismatch')
		warn('Starlight may run into issues as it seems you are running an incompatible interface version ('.. (StarlightUI:FindFirstChild('Build') and StarlightUI.Build.Value or 'No Build') ..'). of Starlight\n\nThis version of Starlight is intended for interface build '..Starlight.InterfaceBuild..'.')
		pcall(function()
			Starlight:Notification({
				Title = "Starlight - Build Mistmatch",
				Content = 'Starlight may run into issues as it seems you are running an incompatible interface version ('.. (StarlightUI:FindFirstChild('Build') and StarlightUI.Build.Value or 'No Build') ..'). of Starlight\n\nThis version of Starlight is intended for interface build '..Starlight.InterfaceBuild..'.',
				Icon = 129398364168201
			})
		end)
		warned = true
	end

	if StarlightUI and not isStudio then StarlightUI:Destroy() end
	StarlightUI = isStudio and script.Parent:WaitForChild("Starlight V2") or game:GetObjects("rbxassetid://" .. modelId)[1]

	buildAttempts += 1

until buildAttempts >= 2
if correctBuild and warned then
	print('Starlight | Correct Build Found')
	print('Starlight has managed to load the intended build ('.. (StarlightUI:FindFirstChild('Build').Value) ..') for this version of the library ('.. Release ..'). You may ignore the warning above')
	pcall(function()
		Starlight:Notification({
			Title = "Starlight - Correct Build Found",
			Content = 'Starlight has managed to load the intended build ('.. (StarlightUI:FindFirstChild('Build').Value) ..') for this version of the library ('.. Release ..'). You may ignore the warning above',
			Icon = 126864552069475
		})
	end)
end

StarlightUI.Name = (((getgenv and getgenv().InterfaceName) or StarlightUI.Name) or "Starlight Interface Suite")
Starlight.Instance = StarlightUI
StarlightUI.Enabled = false
if not isStudio then
	pcall(function()
		StarlightUI.OnTopOfCoreBlur = true
	end)
end

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
			--task.wait()
			Interface:Destroy()
		end
	end
elseif not isStudio and CoreGui:FindFirstChild("RobloxGui") then
	for _, Interface in ipairs(CoreGui:FindFirstChild("RobloxGui"):GetChildren()) do
		if Interface.Name == StarlightUI.Name and Interface ~= StarlightUI then
			Hide(Interface, true)
			--task.wait()
			Interface:Destroy()
		end
	end
elseif not isStudio then
	for _, Interface in ipairs(CoreGui:GetChildren()) do
		if Interface.Name == StarlightUI.Name and Interface ~= StarlightUI then
			Hide(Interface, true)
			--task.wait()
			Interface:Destroy()
		end
	end
end

-- sets the starting variables
StarlightUI.MainWindow.Visible = false
StarlightUI.MainWindow.AnchorPoint = Vector2.zero
StarlightUI.MainWindow.Position = UDim2.fromOffset(
	Camera.ViewportSize.X / 2 - StarlightUI.MainWindow.Size.X.Offset / 2,
	((Camera.ViewportSize.Y / 2 - GuiInset) - StarlightUI.MainWindow.Size.Y.Offset / 2) - (GuiInset/2)
)
StarlightUI:WaitForChild("Drag").Position = UDim2.new(
	.5,0,0,
	((Camera.ViewportSize.Y / 2 - GuiInset) - StarlightUI.MainWindow.Size.Y.Offset / 2) - (GuiInset/2) + StarlightUI.MainWindow.Size.Y.Offset + 10
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
	task.wait()
	StarlightUI:Destroy()
	pcall(Starlight.DestroyFunction)
	for i,v in pairs(connections) do
		v:Disconnect()
	end
end

function Starlight:Notification(data)

	--[[
	NotificationSettings = {
		Title = string,
		Content = string,
		Icon = number, **
		Duration = number, **
	}
	]]

	task.spawn(function()

		local creationTime = tick()

		-- Notification Object Creation
		local newNotification = Resources.Elements.NotificationTemplate:Clone()
		newNotification.Name = data.Title
		newNotification.Parent = StarlightUI.Notifications
		newNotification.LayoutOrder = #StarlightUI.Notifications:GetChildren()
		newNotification.Visible = false
		BlurModule(newNotification)

		task.spawn(function()
			while task.wait(1) do
				local elapsed = tick() - creationTime

				pcall(function()
					if elapsed <= 3 then
						newNotification.Time.Text = "now"
					elseif elapsed < 60 then
						newNotification.Time.Text = math.floor(elapsed) .. "s ago"
					elseif elapsed < 3600 then
						newNotification.Time.Text = math.floor(elapsed/60) .. "m ago"
					else
						newNotification.Time.Text = math.floor(elapsed/3600) .. "h ago"
					end
				end)
			end
		end)

		-- Set Data
		newNotification.Title.Text = data.Title
		newNotification.Description.Text = data.Content 
		newNotification.Icon.Image = "rbxassetid://" .. data.Icon or ""

		-- Set initial transparency values
		Hide(newNotification, false, false, false)

		task.wait()

		-- Calculate textbounds and set initial values
		newNotification.Size = UDim2.new(1, 0, 0, -StarlightUI.Notifications:FindFirstChild("UIListLayout").Padding.Offset)

		newNotification.Visible = true

		newNotification.Description.Size = UDim2.new(1, -65, 0, math.huge)
		local bounds = newNotification.Description.TextBounds.Y
		newNotification.Description.Size = UDim2.new(1,-65,0, bounds)
		newNotification.Size = UDim2.new(1, 0, 0, -StarlightUI.Notifications:FindFirstChild("UIListLayout").Padding.Offset)
		task.wait()
		TweenService:Create(newNotification, TweenInfo.new(0.6, Enum.EasingStyle.Exponential), {Size = UDim2.new(1, 0, 0, bounds + 50)}):Play()

		task.wait(0.15)
		TweenService:Create(newNotification, TweenInfo.new(0.4, Enum.EasingStyle.Exponential), {BackgroundTransparency = 0.38}):Play()
		TweenService:Create(newNotification.Shadow.antumbraShadow, TweenInfo.new(0.4, Enum.EasingStyle.Exponential), {ImageTransparency = 0.94}):Play()
		TweenService:Create(newNotification.Shadow.penumbraShadow, TweenInfo.new(0.4, Enum.EasingStyle.Exponential), {ImageTransparency = 0.55}):Play()
		TweenService:Create(newNotification.Shadow.umbraShadow, TweenInfo.new(0.4, Enum.EasingStyle.Exponential), {ImageTransparency = 0.4}):Play()
		TweenService:Create(newNotification.Title, TweenInfo.new(0.3, Enum.EasingStyle.Exponential), {TextTransparency = 0}):Play()

		task.wait(0.05)

		TweenService:Create(newNotification.Icon, TweenInfo.new(0.3, Enum.EasingStyle.Exponential), {ImageTransparency = 0}):Play()

		task.wait(0.05)
		TweenService:Create(newNotification.Description, TweenInfo.new(0.3, Enum.EasingStyle.Exponential), {TextTransparency = 0.35}):Play()
		TweenService:Create(newNotification.Time, TweenInfo.new(0.3, Enum.EasingStyle.Exponential), {TextTransparency = 0.35}):Play()
		TweenService:Create(newNotification.UIStroke, TweenInfo.new(0.4, Enum.EasingStyle.Exponential), {Transparency = 0.95}):Play()

		local waitDuration = math.min(math.max((#newNotification.Description.Text * 0.1) + 2.5, 3), 10)
		task.wait(data.Duration or waitDuration)

		pcall(function()
			if not Starlight.NotificationsOpen then
				newNotification.Icon.Visible = false
				TweenService:Create(newNotification, TweenInfo.new(0.4, Enum.EasingStyle.Exponential), {BackgroundTransparency = 1}):Play()
				TweenService:Create(newNotification.UIStroke, TweenInfo.new(0.4, Enum.EasingStyle.Exponential), {Transparency = 1}):Play()
				TweenService:Create(newNotification.Shadow.antumbraShadow, TweenInfo.new(0.4, Enum.EasingStyle.Exponential), {ImageTransparency = 1}):Play()
				TweenService:Create(newNotification.Shadow.penumbraShadow, TweenInfo.new(0.4, Enum.EasingStyle.Exponential), {ImageTransparency = 1}):Play()
				TweenService:Create(newNotification.Shadow.umbraShadow, TweenInfo.new(0.4, Enum.EasingStyle.Exponential), {ImageTransparency = 1}):Play()
				TweenService:Create(newNotification.Title, TweenInfo.new(0.3, Enum.EasingStyle.Exponential), {TextTransparency = 1}):Play()
				TweenService:Create(newNotification.Description, TweenInfo.new(0.3, Enum.EasingStyle.Exponential), {TextTransparency = 1}):Play()
				TweenService:Create(newNotification.Time, TweenInfo.new(0.3, Enum.EasingStyle.Exponential), {TextTransparency = 1}):Play()

				TweenService:Create(newNotification, TweenInfo.new(1, Enum.EasingStyle.Exponential), {Size = UDim2.new(1, -90, 0, 0)}):Play()

				Tween(newNotification, {Size = UDim2.new(1, -90, 0, -StarlightUI.Notifications:FindFirstChild("UIListLayout").Padding.Offset)}, function()
					newNotification.Visible = false
				end, TweenInfo.new(1, Enum.EasingStyle.Exponential))
			end

			CollectionService:AddTag(newNotification, "__starlight_ExpiredNotification")
		end)

	end)

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

	local root = WindowSettings.ConfigurationSettings.RootFolder
	local folder = WindowSettings.ConfigurationSettings.FolderName
	local folderpath = root ~= nil and root .. "/" .. folder or folder
	
	WindowSettings.NotifyOnCallbackError = WindowSettings.NotifyOnCallbackError == nil and true
	Starlight.ConfigSystem.AutoloadPath = `{Starlight.Folder}/Configurations/{folderpath}/`

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


	--// SUBSECTION : Initial Code
	do
		mainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.Visible = false
		local loadingScreenLogoChanged = false

		--Hide(StarlightUI)

		mainWindow.Size = WindowSettings.DefaultSize ~= nil and WindowSettings.DefaultSize or mainWindow.Size

		mainWindow.Sidebar.Icon.Image = WindowSettings.Icon ~= nil and "rbxassetid://" .. WindowSettings.Icon or ""
		mainWindow.Sidebar.Header.Text = WindowSettings.Name or ""
		mainWindow.Content.Topbar.Headers.Subheader.Text = WindowSettings.Subtitle or ""

		mainWindow.Visible = true
		StarlightUI.Drag.Visible = true
		mainWindow.Size = WindowSettings.LoadingEnabled and UDim2.fromOffset(mainWindow.Size.X.Offset - 65, mainWindow.Size.Y.Offset - 55) or mainWindow.Size
		StarlightUI.MainWindow.Position = UDim2.fromOffset(
			Camera.ViewportSize.X / 2 - StarlightUI.MainWindow.Size.X.Offset / 2,
			((Camera.ViewportSize.Y / 2 - GuiInset) - StarlightUI.MainWindow.Size.Y.Offset / 2) - (GuiInset/2)
		)
		StarlightUI.Drag.Position = UDim2.new(0.5, 0, 0, ((Camera.ViewportSize.Y / 2 - GuiInset) - StarlightUI.MainWindow.Size.Y.Offset / 2) - (GuiInset/2) + mainWindow.Size.Y.Offset + 10)

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
		--Unhide(StarlightUI)

		makeDraggable(mainWindow.Content.Topbar, mainWindow)
		makeDraggable(mainWindow.Sidebar, mainWindow)
		if StarlightUI.Drag then makeDraggable(StarlightUI.Drag.Interact, mainWindow, true, nil, StarlightUI.Drag) end

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
					Camera.ViewportSize.X / 2 - StarlightUI.MainWindow.Size.X.Offset / 2 - 65/2,
					((Camera.ViewportSize.Y / 2 - GuiInset) - StarlightUI.MainWindow.Size.Y.Offset / 2) - (GuiInset/2) - 55/2
				)
			})
			Tween(StarlightUI.Drag, {
				Position = UDim2.new(0.5, 0, 0, ((Camera.ViewportSize.Y / 2 - GuiInset) - StarlightUI.MainWindow.Size.Y.Offset / 2) - (GuiInset/2) + mainWindow.Size.Y.Offset + 10)
			})
		end

		mainWindow["Loading Screen"].Visible = false
		--if not WindowSettings.LoadingEnabled then task.wait(.25) end
	end
	--// ENDSUBSECTION
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

			TabSettings.Icon = TabSettings.Icon or ""
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
			
			Tab.Instances.Button.Header.UIPadding.PaddingLeft = UDim.new(0, not String.IsEmptyOrNull(Tab.Values.Icon) and 36 or 8)
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
				Tab.Instances.Button.Icon.Image = "rbxassetid://" .. TabSettings.Icon
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

				GroupboxSettings.Icon = GroupboxSettings.Icon or ""
				GroupboxSettings.Column = GroupboxSettings.Column or 1
				GroupboxSettings.Style = GroupboxSettings.Style or 1

				local Groupbox = {
					Values = GroupboxSettings,
					Elements = {},
					ParentingItem = nil,
					Index = GroupIndex,
					ClassName = "Groupbox",
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
				Groupbox.Instance.Header.UIPadding.PaddingLeft = UDim.new(0, not String.IsEmptyOrNull(GroupboxSettings.Icon) and 32 or 6)
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

				--[=[

				function Groupbox:CreatePrimaryButton(ElementSettings) -- these will be merged in the next update where we allow style changing.

					--[[
					ElementSettings = {
						Name = string,
						Icon = number, **
						ImageSource = string, **
						
						Callback = function(nil),
					}
					-]]
					

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
					--]]

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
					]]

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
					
					-[[
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
					]]

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
	
					--[[
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
					]]
					

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
				

				]=]

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
						Class = "Button",
					}

					local Instances = {
						Style1 = GroupboxTemplateInstance["Button_TEMPLATE_Style1"]:Clone(),
						Style2 = GroupboxTemplateInstance["Button_TEMPLATE_Style2"]:Clone()
					}

					local tooltip

					for _, ElementInstance in pairs(Instances) do

						ElementInstance.Visible = ElementInstance.Name == "Button_TEMPLATE_Style" .. Element.Values.Style
						ElementInstance.Parent = Groupbox.ParentingItem

						ElementInstance.Name = "BUTTON_" .. Index
						ElementInstance["PART_Backdrop"].Header.Text = Element.Values.Name
						ElementInstance["PART_Backdrop"].Header.Icon.Visible = not String.IsEmptyOrNull(Element.Values.Icon)
						if ElementInstance["PART_Backdrop"].Header.Icon.Visible == false then
							ElementInstance["PART_Backdrop"].Header.UIPadding.PaddingLeft = UDim.new(0,6)
						else
							ElementInstance["PART_Backdrop"].Header.UIPadding.PaddingLeft = UDim.new(0,32)
						end
						ElementInstance["PART_Backdrop"].Header.Icon.Image = not String.IsEmptyOrNull(Element.Values.Icon) and "rbxassetid://" .. Element.Values.Icon or ""

						if ElementInstance.PART_Backdrop:FindFirstChild("Accent") then
							local hover = nil

							ElementInstance.MouseEnter:Connect(function()
								Tween(ElementInstance["PART_Backdrop"].DropShadowHolder.DropShadow, {ImageTransparency = 0.73})
							end)

							ElementInstance.MouseLeave:Connect(function()
								Tween(ElementInstance["PART_Backdrop"].DropShadowHolder.DropShadow, {ImageTransparency = 1})
							end)

							ElementInstance.Interact.MouseButton1Down:Connect(function()
								Tween(ElementInstance["PART_Backdrop"]["PART_BackdropHover"], {BackgroundTransparency = 0})
								hover = true
							end)

							UserInputService.InputEnded:Connect(function(input, processed)
								if not hover then return end
								if input.UserInputType == Enum.UserInputType.MouseButton1 then
									task.wait()
									Tween(ElementInstance["PART_Backdrop"]["PART_BackdropHover"], {BackgroundTransparency = 1})
									hover = false
								end
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
								warn(`Starlight Interface Suite - Callback Error | {Element.Values.Name} ({Index})`)
								print(Response)
								if WindowSettings.NotifyOnCallbackError then
									Starlight:Notification({
										Title = Element.Values.Name.." Callback Error",
										Content = tostring(Response),
										Icon = 129398364168201
									})
								end
								wait(0.5)
								ElementInstance["PART_Backdrop"].Header.Text = ElementSettings.Name
							end
						end)

						tooltip = AddToolTip(Element.Values.Tooltip, ElementInstance)

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

							local flag
							if Element.Values.Style == 1 then
								flag = ElementInstance.PART_Backdrop.Accent ~= nil and true or false
							else
								flag = ElementInstance.PART_Backdrop.Accent == nil and true or false
							end
							ElementInstance.Visible = ElementInstance.Name == "Button_TEMPLATE_Style" .. Element.Values.Style
							ElementInstance.Parent = Groupbox.ParentingItem

							ElementInstance.Name = "BUTTON_" .. NewIndex
							ElementInstance["PART_Backdrop"].Header.Text = Element.Values.Name
							ElementInstance["PART_Backdrop"].Header.Icon.Visible = not String.IsEmptyOrNull(Element.Values.Icon)
							if ElementInstance["PART_Backdrop"].Header.Icon.Visible == false then
								ElementInstance["PART_Backdrop"].Header.UIPadding.PaddingLeft = UDim.new(0,6)
							else
								ElementInstance["PART_Backdrop"].Header.UIPadding.PaddingLeft = UDim.new(0,32)
							end
							ElementInstance["PART_Backdrop"].Header.Icon.Image = not String.IsEmptyOrNull(Element.Values.Icon) and "rbxassetid://" .. Element.Values.Icon or ""

							tooltip.Text = Element.Values.Tooltip

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
					ElementSettings.CurrentValue = ElementSettings.CurrentValue or false

					local Element = {
						Values = ElementSettings,
						Class = "Toggle",
						NestedElements = {},
						IgnoreConfig = ElementSettings.IgnoreConfig
					}

					local Instances = {
						Style1 = GroupboxTemplateInstance["Checkbox_TEMPLATE_Disabled"]:Clone(),
						Style2 = GroupboxTemplateInstance["Switch_TEMPLATE_Disabled"]:Clone()
					}

					local function checkForBind()
						for i,v in pairs(Element.NestedElements)do
							if v.Class == "Bind" then
								return v
							end
						end
						return nil
					end

					local tooltip

					local function Set(bool)

						if bool then
							Tween(Instances.Style1.Checkbox, {BackgroundTransparency = 0})
							Tween(Instances.Style1.Checkbox.Icon, {ImageTransparency = 0})
							Tween(Instances.Style2.Switch, {BackgroundTransparency = 0, BackgroundColor3 = Color3.fromRGB(255,255,255)})
							Tween(Instances.Style2.Switch.Knob, {Position = UDim2.new(0,20,.5,0), BackgroundColor3 = Color3.fromRGB(255,255,255), BackgroundTransparency = 0})
							Tween(Instances.Style2.Switch.UIStroke, {Color = Color3.fromRGB(255,255,255)})
							Tween(Instances.Style2.Switch.DropShadowHolder.DropShadow, {ImageTransparency = 0})
							Instances.Style2.Switch.Accent.Enabled = true
							Instances.Style2.Switch.UIStroke.Accent.Enabled = true
						else
							Tween(Instances.Style1.Checkbox, {BackgroundTransparency = 0.9})
							Tween(Instances.Style1.Checkbox.Icon, {ImageTransparency = 1})
							Tween(Instances.Style2.Switch, {BackgroundTransparency = 1, BackgroundColor3 = Color3.fromRGB(165,165,165)})
							Tween(Instances.Style2.Switch.Knob, {Position = UDim2.new(0,0,.5,0), BackgroundColor3 = Color3.fromRGB(165,165,165), BackgroundTransparency = 0.5})
							Tween(Instances.Style2.Switch.UIStroke, {Color = Color3.fromRGB(165,165,165)})
							Tween(Instances.Style2.Switch.DropShadowHolder.DropShadow, {ImageTransparency = 1})
							Instances.Style2.Switch.Accent.Enabled = false
							Instances.Style2.Switch.UIStroke.Accent.Enabled = false
						end

						Element.Values.CurrentValue = bool
						local bind = checkForBind()
						if bind ~= nil and bind.Values.SyncToggleState then
							bind.Active = bool
						end

					end

					for _, ElementInstance in pairs(Instances) do

						if ElementInstance.Name == "Checkbox_TEMPLATE_Disabled" and Element.Values.Style == 1 then
							ElementInstance.Visible = true
						end
						if ElementInstance.Name == "Switch_TEMPLATE_Disabled" and Element.Values.Style == 2 then
							ElementInstance.Visible = true
						end

						ElementInstance.Parent = Groupbox.ParentingItem

						ElementInstance.Name = "TOGGLE_" .. Index
						ElementInstance.Header.Text = Element.Values.Name
						ElementInstance.Header.Icon.Visible = not String.IsEmptyOrNull(Element.Values.Icon)

						if ElementInstance.Header.Icon.Visible == false then
							ElementInstance.Header.UIPadding.PaddingLeft = UDim.new(0,6)
						else
							ElementInstance.Header.UIPadding.PaddingLeft = UDim.new(0,32)
						end
						ElementInstance.Header.Icon.Image = not String.IsEmptyOrNull(Element.Values.Icon) and "rbxassetid://" .. Element.Values.Icon or ""

						if ElementInstance:FindFirstChild("Checkbox") then

							if Element.Values.Style == 2 then ElementInstance.Visible = false end

							ElementInstance.Checkbox.Icon.Visible = true
							ElementInstance.Checkbox.Icon.Image = Element.Values.CheckboxIcon ~= nil and "rbxassetid://" .. Element.Values.CheckboxIcon or ""

							do
								Set(Element.Values.CurrentValue)
								local Success,Response = pcall(function()
									Element.Values.Callback(Element.Values.CurrentValue)
								end)

								if not Success then
									ElementInstance.Header.Text = "Callback Error"
									warn(`Starlight Interface Suite - Callback Error | {Element.Values.Name} ({Index})`)
									print(Response)
									if WindowSettings.NotifyOnCallbackError then
										Starlight:Notification({
											Title = Element.Values.Name.." Callback Error",
											Content = tostring(Response),
											Icon = 129398364168201
										})
									end
									wait(0.5)
									ElementInstance.Header.Text = ElementSettings.Name
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

							ElementInstance.Checkbox.Interact.MouseButton1Click:Connect(function()
								Element.Values.CurrentValue = not Element.Values.CurrentValue
								Set(Element.Values.CurrentValue)

								local Success,Response = pcall(function()
									Element.Values.Callback(Element.Values.CurrentValue)
								end)

								if not Success then
									ElementInstance.Header.Text = "Callback Error"
									warn(`Starlight Interface Suite - Callback Error | {Element.Values.Name} ({Index})`)
									print(Response)
									if WindowSettings.NotifyOnCallbackError then
										Starlight:Notification({
											Title = Element.Values.Name.." Callback Error",
											Content = tostring(Response),
											Icon = 129398364168201
										})
									end
									wait(0.5)
									ElementInstance.Header.Text = ElementSettings.Name
								end
							end)

						elseif ElementInstance.Switch then

							if Element.Values.Style == 1 then ElementInstance.Visible = false end

							do
								Set(Element.Values.CurrentValue)
								local Success,Response = pcall(function()
									Element.Values.Callback(Element.Values.CurrentValue)
								end)

								if not Success then
									ElementInstance.Header.Text = "Callback Error"
									warn(`Starlight Interface Suite - Callback Error | {Element.Values.Name} ({Index})`)
									print(Response)
									if WindowSettings.NotifyOnCallbackError then
										Starlight:Notification({
											Title = Element.Values.Name.." Callback Error",
											Content = tostring(Response),
											Icon = 129398364168201
										})
									end
									wait(0.5)
									ElementInstance.Header.Text = ElementSettings.Name
								end
							end

							ElementInstance.Switch.Interact.MouseButton1Click:Connect(function()
								Element.Values.CurrentValue = not Element.Values.CurrentValue
								Set(Element.Values.CurrentValue)
								local Success,Response = pcall(function()
									Element.Values.Callback(Element.Values.CurrentValue)
								end)

								if not Success then
									ElementInstance.Header.Text = "Callback Error"
									warn(`Starlight Interface Suite - Callback Error | {Element.Values.Name} ({Index})`)
									print(Response)
									if WindowSettings.NotifyOnCallbackError then
										Starlight:Notification({
											Title = Element.Values.Name.." Callback Error",
											Content = tostring(Response),
											Icon = 129398364168201
										})
									end
									wait(0.5)
									ElementInstance.Header.Text = ElementSettings.Name
								end
							end)
						end

						tooltip = AddToolTip(Element.Values.Tooltip, ElementInstance)

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

						Set(Element.Values.CurrentValue)
						local Success,Response = pcall(function()
							Element.Values.Callback(Element.Values.CurrentValue)
						end)

						if not Success then
							for _, ElementInstance in pairs(Instances) do ElementInstance.Header.Text = "Callback Error" end
							warn(`Starlight Interface Suite - Callback Error | {Element.Values.Name} ({Index})`)
							print(Response)
							if WindowSettings.NotifyOnCallbackError then
								Starlight:Notification({
									Title = Element.Values.Name.." Callback Error",
									Content = tostring(Response),
									Icon = 129398364168201
								})
							end
							wait(0.5)
							for _, ElementInstance in pairs(Instances) do ElementInstance.Header.Text = ElementSettings.Name end
						end

						for _, ElementInstance in pairs(Instances) do

							ElementInstance.Name = "TOGGLE_" .. Index
							ElementInstance.Header.Text = Element.Values.Name 
							ElementInstance.Header.Icon.Visible = not String.IsEmptyOrNull(Element.Values.Icon)

							if ElementInstance.Header.Icon.Visible == false then
								ElementInstance.Header.UIPadding.PaddingLeft = UDim.new(0,6)
							else
								ElementInstance.Header.UIPadding.PaddingLeft = UDim.new(0,32)
							end
							ElementInstance.Header.Icon.Image = not String.IsEmptyOrNull(Element.Values.Icon) and "rbxassetid://" .. Element.Values.Icon or ""

							if ElementInstance:FindFirstChild("Checkbox") then

								if Element.Values.Style == 2 then ElementInstance.Visible = false end

								ElementInstance.Checkbox.Icon.Visible = true
								ElementInstance.Checkbox.Icon.Image = Element.Values.CheckboxIcon ~= nil and "rbxassetid://" .. Element.Values.CheckboxIcon or ""

								do
								end

							elseif ElementInstance.Switch then

								if Element.Values.Style == 1 then ElementInstance.Visible = false end

								
							end

							tooltip.Text = Element.Values.Tooltip or tooltip.Text

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

					ElementSettings.CurrentValue = ElementSettings.CurrentValue or ElementSettings.Range[1]
					ElementSettings.Increment = ElementSettings.Increment or 1
					ElementSettings.HideMax = ElementSettings.HideMax or false
					ElementSettings.Suffix = ElementSettings.Suffix and (ElementSettings.Suffix == "%" and `{ElementSettings.Suffix}` or ` {ElementSettings.Suffix}`) or ""

					local Element = {
						Values = ElementSettings,
						Class = "Slider",
						SLDragging = false,
						IgnoreConfig = ElementSettings.IgnoreConfig
					}
					local isTyping = false
					local ignoreNext = false

					local tooltip

					Element.Instance = GroupboxTemplateInstance.Slider_TEMPLATE:Clone()
					Element.Instance.Visible = true
					Element.Instance.Parent = Groupbox.ParentingItem

					Element.Instance.Name = "SLIDER_" .. Index
					Element.Instance.Header.Text = Element.Values.Name
					Element.Instance.Header.Icon.Visible = not String.IsEmptyOrNull(Element.Values.Icon)
					if Element.Instance.Header.Icon.Visible == false then
						Element.Instance.Header.UIPadding.PaddingLeft = UDim.new(0,6)
					else
						Element.Instance.Header.UIPadding.PaddingLeft = UDim.new(0,32)
					end
					Element.Instance.Header.Icon.Image = not String.IsEmptyOrNull(Element.Values.Icon) and "rbxassetid://" .. Element.Values.Icon or ""

					tooltip = AddToolTip(Element.Values.Tooltip, Element.Instance)

					local function Set(Value : number)
						if Value then
							Element.Values.CurrentValue = Value

							Tween(
								Element.Instance.PART_Backdrop.PART_Progress,

								{Size = UDim2.new((Value - Element.Values.Range[1]) / (Element.Values.Range[2] - Element.Values.Range[1]), 0, 1, 0)},
								nil,
								Tween.Info(nil,nil,0.2)
							)
							Element.Instance.Value.input.Text = tostring(Value)
							Element.Instance.Value.input.CursorPosition = #Element.Instance.Value.input.Text + 2


							local Success,Response = pcall(function()
								Element.Values.Callback(Value)
							end)

							if not Success then
								Element.Instance.Header.Text = "Callback Error"
								warn(`Starlight Interface Suite - Callback Error | {Element.Values.Name} ({Index})`)
								print(Response)
								if WindowSettings.NotifyOnCallbackError then
									Starlight:Notification({
										Title = Element.Values.Name.." Callback Error",
										Content = tostring(Response),
										Icon = 129398364168201
									})
								end
								wait(0.5)
								Element.Instance.Header.Text = ElementSettings.Name
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
					
					Element.Instance.PART_Backdrop.Interact.MouseButton1Down:Connect(function(X)

						local Current = Element.Instance.PART_Backdrop.PART_Progress.AbsolutePosition.X + Element.Instance.PART_Backdrop.PART_Progress.AbsoluteSize.X
						local Start = Current
						local Location = X
						local Loop; Loop = RunService.Stepped:Connect(function()
							if Element.SLDragging then
								Location = Mouse.X
								Current = Current + 0.025 * (Location - Start)

								if Location < Element.Instance.PART_Backdrop.AbsolutePosition.X then
									Location = Element.Instance.PART_Backdrop.AbsolutePosition.X
								elseif Location > Element.Instance.PART_Backdrop.AbsolutePosition.X + Element.Instance.PART_Backdrop.AbsoluteSize.X then
									Location = Element.Instance.PART_Backdrop.AbsolutePosition.X + Element.Instance.PART_Backdrop.AbsoluteSize.X
								end

								if Current < Element.Instance.PART_Backdrop.AbsolutePosition.X  then
									Current = Element.Instance.PART_Backdrop.AbsolutePosition.X 
								elseif Current > Element.Instance.PART_Backdrop.AbsolutePosition.X + Element.Instance.PART_Backdrop.AbsoluteSize.X then
									Current = Element.Instance.PART_Backdrop.AbsolutePosition.X + Element.Instance.PART_Backdrop.AbsoluteSize.X
								end

								if Current <= Location and (Location - Start) < 0 then
									Start = Location
								elseif Current >= Location and (Location - Start) > 0 then
									Start = Location
								end

								local percentage = (Location - Element.Instance.PART_Backdrop.AbsolutePosition.X) / Element.Instance.PART_Backdrop.AbsoluteSize.X
								Tween(
									Element.Instance.PART_Backdrop.PART_Progress,

									{Size = UDim2.new(percentage, 0, 1, 0)},

									nil,
									Tween.Info(nil,nil,0.2)
								)
								
								task.wait()

								local NewValue = ((Element.Values.Range[2] - Element.Values.Range[1]) * percentage) + Element.Values.Range[1]

								NewValue = math.floor(NewValue / Element.Values.Increment + 0.5) * (Element.Values.Increment * 10000000) / 10000000

								Element.Instance.Value.input.Text = tostring(NewValue)

								if Element.Values.CurrentValue ~= NewValue then
									local Success,Response = pcall(function()
										Element.Values.Callback(NewValue)
									end)

									if not Success then
										Element.Instance.Header.Text = "Callback Error"
										warn(`Starlight Interface Suite - Callback Error | {Element.Values.Name} ({Index})`)
										print(Response)
										if WindowSettings.NotifyOnCallbackError then
											Starlight:Notification({
												Title = Element.Values.Name.." Callback Error",
												Content = tostring(Response),
												Icon = 129398364168201
											})
										end
										wait(0.5)
										Element.Instance.Header.Text = ElementSettings.Name
									end

									Element.Values.CurrentValue = NewValue
								end
							else
								Tween(
									Element.Instance.PART_Backdrop.PART_Progress,

									{Size = UDim2.new((Location - Element.Instance.PART_Backdrop.AbsolutePosition.X) / Element.Instance.PART_Backdrop.AbsoluteSize.X, 0, 1, 0)},

									nil,
									Tween.Info(nil,nil,0.2)
								)
								Loop:Disconnect()
							end
						end)
					end)
					
					Element.Instance.PART_Backdrop.PART_Progress:GetPropertyChangedSignal("Size"):Connect(function()
						if Element.Instance.PART_Backdrop.PART_Progress.AbsoluteSize.X <= 0 then
							Element.Instance.PART_Backdrop.PART_Progress.DropShadowHolder.DropShadow.Size = UDim2.new(1,0,1,0)
							return
						end
						Element.Instance.PART_Backdrop.PART_Progress.DropShadowHolder.DropShadow.Size = UDim2.new(1,22,1,22)
					end)
					
					local input = Element.Instance.Value.input
					local updating = false
					local lastValid = input.Text or ""

					input:GetPropertyChangedSignal("Text"):Connect(function()
						if updating or Element.SLDragging then return end

						local tb = input
						local newText = tb.Text or ""
						if newText == lastValid then return end

						local sanitizedBuilder = {}
						local dotUsed = false
						local survivorsBeforeCursor = 0
						local cursorPos = tb.CursorPosition or (#newText + 1)

						for i = 1, #newText do
							local ch = newText:sub(i,i)
							if ch:match("%d") then
								table.insert(sanitizedBuilder, ch)
								if i < cursorPos then survivorsBeforeCursor = survivorsBeforeCursor + 1 end
							elseif ch == "." and not dotUsed then
								dotUsed = true
								table.insert(sanitizedBuilder, ".")
								if i < cursorPos then survivorsBeforeCursor = survivorsBeforeCursor + 1 end
							end
						end

						local sanitized = table.concat(sanitizedBuilder)

						if sanitized ~= newText then
							updating = true
							tb.Text = sanitized
							task.wait()
							tb.CursorPosition = math.clamp(survivorsBeforeCursor + 1, 1, #sanitized + 1)
							updating = false
							lastValid = sanitized
						else
							lastValid = newText
						end

						if sanitized == "" or sanitized == "." or sanitized:sub(-1) == "." then
							return
						end

						local num = tonumber(sanitized)
						if not num then
							return
						end

						local minv = (Element.Values and Element.Values.Range and Element.Values.Range[1]) or -math.huge
						local maxv = (Element.Values and Element.Values.Range and Element.Values.Range[2]) or math.huge

						if num < minv then
							num = minv
							updating = true
							tb.Text = tostring(num)
							task.wait()
							tb.CursorPosition = #tb.Text + 1
							updating = false
							lastValid = tb.Text
						elseif num > maxv then
							num = maxv
							updating = true
							tb.Text = tostring(num)
							task.wait()
							tb.CursorPosition = #tb.Text + 1
							updating = false
							lastValid = tb.Text
						end

						Set(num)
					end)


					Element.Instance.Value.input.FocusLost:Connect(function()
						if Element.Instance.Value.input.Text == "" or Element.Instance.Value.input.Text == "." or Element.Instance.Value.input.Text == "0." then
							Set(Element.Values.CurrentValue)
							task.wait()
							Element.Instance.Value.input:ReleaseFocus()
						end
					end)

					Element.Instance.MouseEnter:Connect(function()
						Tween(Element.Instance.PART_Backdrop.PART_Progress.DropShadowHolder.DropShadow, {ImageTransparency = 0.1})
					end)
					Element.Instance.MouseLeave:Connect(function()
						Tween(Element.Instance.PART_Backdrop.PART_Progress.DropShadowHolder.DropShadow, {ImageTransparency = 0.9})
					end)

					Set(Element.Values.CurrentValue)
					Element.Instance.Value.max.Text = `{Element.Values.Suffix}` .. (not Element.Values.HideMax and `/{Element.Values.Range[2]}` or "")

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

						Element.Instance.Name = "SLIDER_" .. Index
						Element.Instance.Header.Text = Element.Values.Name
						Element.Instance.Header.Icon.Visible = not String.IsEmptyOrNull(Element.Values.Icon)
						if Element.Instance.Header.Icon.Visible == false then
							Element.Instance.Header.UIPadding.PaddingLeft = UDim.new(0,6)
						else
							Element.Instance.Header.UIPadding.PaddingLeft = UDim.new(0,32)
						end
						Element.Instance.Header.Icon.Image = not String.IsEmptyOrNull(Element.Values.Icon) and "rbxassetid://" .. Element.Values.Icon or ""

						tooltip.Text = Element.Values.Tooltip or tooltip.Text

						Set(Element.Values.CurrentValue)
						Element.Instance.Value.max.Text = `{Element.Values.Suffix}` .. not Element.Values.HideMax and `/{Element.Values.Range[2]}` or ""

						Starlight.Window.TabSections[Name].Tabs[TabIndex].Groupboxes[GroupIndex].Elements[Index].Values = Element.Values

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
					ElementSettings.MaxCharacters = ElementSettings.MaxCharacters or -1
					ElementSettings.RemoveTextOnFocus = ElementSettings.RemoveTextOnFocus or true

					local Element = {
						Values = ElementSettings,
						Class = "Input",
						IgnoreConfig = ElementSettings.IgnoreConfig
					}

					local tooltip

					Element.Instance = GroupboxTemplateInstance.Input_TEMPLATE:Clone()
					Element.Instance.Visible = true
					Element.Instance.Parent = Groupbox.ParentingItem

					Element.Instance.PART_Backdrop.PART_Input.FocusLost:Connect(function(Enter)

						if Element.Values.Enter == true and not Enter then return end
						
						local Success,Response = pcall(function()
							Element.Values.Callback(Element.Values.CurrentValue)
						end)

						if not Success then
							Element.Instance.Header.Text = "Callback Error"
							warn(`Starlight Interface Suite - Callback Error | {Element.Values.Name} ({Index})`)
							print(Response)
							if WindowSettings.NotifyOnCallbackError then
								Starlight:Notification({
									Title = Element.Values.Name.." Callback Error",
									Content = tostring(Response),
									Icon = 129398364168201
								})
							end
							wait(0.5)
							Element.Instance.Header.Text = ElementSettings.Name
						end

						if Element.Values.RemoveTextAfterFocusLost then
							Element.Instance.PART_Backdrop.PART_Input.Text = ""
							Element.Values.CurrentValue = ""
						end

					end)
					
					Element.Instance.PART_Backdrop.Interact.MouseButton1Down:Connect(function()
						Element.Instance.PART_Backdrop.PART_Input:CaptureFocus()
					end)

					if Element.Values.Numeric then
						Element.Instance.PART_Backdrop.PART_Input:GetPropertyChangedSignal("Text"):Connect(function()
							local text = Element.Instance.PART_Backdrop.PART_Input.Text
							if not tonumber(text) and text ~= "." then
								Element.Instance.PART_Backdrop.PART_Input.Text = text:match("[0-9.]*") or ""
							end
						end)
					end

					Element.Instance.PART_Backdrop.PART_Input:GetPropertyChangedSignal("Text"):Connect(function()
						if Element.Values.MaxCharacters < 0 then
							if (#Element.Instance.PART_Backdrop.PART_Input.Text - 1) == Element.Values.MaxCharacters then
								Element.Instance.PART_Backdrop.PART_Input.Text = Element.Instance.PART_Backdrop.PART_Input.Text:sub(1, Element.Values.MaxCharacters)
							end
						end
						if not Element.Values.Enter then
							local Success,Response = pcall(function()
								Element.Values.Callback(Element.Values.CurrentValue)
							end)

							if not Success then
								Element.Instance.Header.Text = "Callback Error"
								warn(`Starlight Interface Suite - Callback Error | {Element.Values.Name} ({Index})`)
								print(Response)
								if WindowSettings.NotifyOnCallbackError then
									Starlight:Notification({
										Title = Element.Values.Name.." Callback Error",
										Content = tostring(Response),
										Icon = 129398364168201
									})
								end
								wait(0.5)
								Element.Instance.Header.Text = ElementSettings.Name
							end
						end

						Tween(Element.Instance.PART_Backdrop.PART_Input, {Size = UDim2.new(0, Element.Instance.PART_Backdrop.PART_Input.TextBounds.X,1,0)})
						Tween(Element.Instance.PART_Backdrop, {Size = UDim2.new(0, Element.Instance.PART_Backdrop.PART_Input.TextBounds.X + 30, 0, Element.Instance.PART_Backdrop.Size.Y.Offset)})

						Element.Values.CurrentValue = Element.Instance.PART_Backdrop.PART_Input.Text				
					end)

					Element.Instance.Name = "INPUT_" .. Index
					Element.Instance.Header.Text = Element.Values.Name
					Element.Instance.Header.Icon.Visible = not String.IsEmptyOrNull(Element.Values.Icon)
					if Element.Instance.Header.Icon.Visible == false then
						Element.Instance.Header.UIPadding.PaddingLeft = UDim.new(0,6)
					else
						Element.Instance.Header.UIPadding.PaddingLeft = UDim.new(0,32)
					end
					Element.Instance.Header.Icon.Image = not String.IsEmptyOrNull(Element.Values.Icon) and "rbxassetid://" .. Element.Values.Icon or ""
					task.delay(.2, function()
						Element.Instance.PART_Backdrop.PART_Input.PlaceholderText = Element.Values.PlaceholderText
						Element.Instance.PART_Backdrop.PART_Input.Text = Element.Values.CurrentValue
						Element.Instance.PART_Backdrop.PART_Input.Size = UDim2.new(0, Element.Instance.PART_Backdrop.PART_Input.TextBounds.X, 1,0)
						Element.Instance.PART_Backdrop.Size = UDim2.new(0, Element.Instance.PART_Backdrop.PART_Input.TextBounds.X + 30, 0, Element.Instance.PART_Backdrop.Size.Y.Offset)
					end)

					tooltip = AddToolTip(Element.Values.Tooltip, Element.Instance)

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
						Element.Instance.Header.Icon.Visible = not String.IsEmptyOrNull(Element.Values.Icon)
						if Element.Instance.Header.Icon.Visible == false then
							Element.Instance.Header.UIPadding.PaddingLeft = UDim.new(0,6)
						else
							Element.Instance.Header.UIPadding.PaddingLeft = UDim.new(0,32)
						end
						Element.Instance.Header.Icon.Image = not String.IsEmptyOrNull(Element.Values.Icon) and "rbxassetid://" .. Element.Values.Icon or ""
						Element.Instance.PART_Backdrop.PART_Input.PlaceholderText = Element.Values.PlaceholderText
						Element.Instance.PART_Backdrop.PART_Input.Text = Element.Values.CurrentValue
						Tween(Element.Instance.PART_Backdrop.PART_Input, {Size = UDim2.new(0, Element.Instance.PART_Backdrop.PART_Input.TextBounds.X, 1,0)})
						Tween(Element.Instance.PART_Backdrop, {Size = UDim2.new(0, Element.Instance.PART_Backdrop.PART_Input.TextBounds.X + 30, 0, Element.Instance.PART_Backdrop.Size.Y.Offset)})

						tooltip.Text = Element.Values.Tooltip

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

					local tooltip

					Element.Instance = GroupboxTemplateInstance.Label_TEMPLATE:Clone()
					Element.Instance.Visible = true
					Element.Instance.Parent = Groupbox.ParentingItem

					Element.Instance.Name = "LABEL_" .. Index
					Element.Instance.Header.Text = Element.Values.Name
					Element.Instance.Header.Icon.Visible = not String.IsEmptyOrNull(Element.Values.Icon)
					if Element.Instance.Header.Icon.Visible == false then
						Element.Instance.Header.UIPadding.PaddingLeft = UDim.new(0,6)
					else
						Element.Instance.Header.UIPadding.PaddingLeft = UDim.new(0,32)
					end
					Element.Instance.Header.Icon.Image = not String.IsEmptyOrNull(Element.Values.Icon) and "rbxassetid://" .. Element.Values.Icon or ""

					tooltip = AddToolTip(Element.Values.Tooltip, Element.Instance)

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
						Element.Instance.Header.Icon.Visible = not String.IsEmptyOrNull(Element.Values.Icon)
						if Element.Instance.Header.Icon.Visible == false then
							Element.Instance.Header.UIPadding.PaddingLeft = UDim.new(0,6)
						else
							Element.Instance.Header.UIPadding.PaddingLeft = UDim.new(0,32)
						end
						Element.Instance.Header.Icon.Image = not String.IsEmptyOrNull(Element.Values.Icon) and "rbxassetid://" .. Element.Values.Icon or ""

						tooltip.Text = Element.Values.Tooltip

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
						NestedSettings.CurrentValue = NestedSettings.CurrentValue and string.upper(NestedSettings.CurrentValue) or "No Bind"
						NestedSettings.WindowSetting = NestedSettings.WindowSetting or false

						local NestedElement = {
							Values = NestedSettings,
							Active = false,
							Class = "Bind",
							IgnoreConfig = NestedSettings.IgnoreConfig
						}

						NestedElement.Instance = Element.Instance.ElementContainer.Bind:Clone()
						NestedElement.Instance.Visible = true
						NestedElement.Instance.Parent = Parent.Instance.ElementContainer

						NestedElement.Instance.Name = "BIND_" .. NestedIndex

						local CheckingForKey = false

						NestedElement.Instance:GetPropertyChangedSignal("Text"):Connect(function()
							task.wait()

							if NestedElement.Instance.ContentText == "" then
								Tween(NestedElement.Instance, {Size = UDim2.new(0, NestedElement.Instance.TextBounds.X + 30, 0, 22)})			
							else
								Tween(NestedElement.Instance, {Size = UDim2.new(0, NestedElement.Instance.TextBounds.X + 14, 0, 22)})
							end

						end)

						task.delay(.2, function()
							NestedElement.Instance.Text = NestedElement.Values.CurrentValue == "No Bind" and `<font color="rgb(165,165,165)">No Bind</font>` or NestedElement.Values.CurrentValue
						end)

						NestedElement.Instance.Focused:Connect(function()
							task.wait()
							CheckingForKey = true
						end)

						NestedElement.Instance.FocusLost:Connect(function(enter)
							if not enter then
								CheckingForKey = false
								if String.IsEmptyOrNull(NestedElement.Instance.Text) then
									NestedElement.Values.CurrentValue = "No Bind"
									NestedElement.Instance.Text = `<font color="rgb(165,165,165)">No Bind</font>`
								end
							end
						end)

						connections[ParentIndex .. "_" .. Index] = UserInputService.InputBegan:Connect(function(input, processed)

							if CheckingForKey then

								if NestedElement.Values.WindowSetting then
									
									if input.KeyCode ~= Enum.KeyCode.Unknown then
										local SplitMessage = string.split(tostring(input.KeyCode), ".")
										local NewKeyNoEnum = SplitMessage[3]
										NestedElement.Instance.Text = string.upper(tostring(NewKeyNoEnum))
										NestedElement.Values.CurrentValue = tostring(NewKeyNoEnum)
										local Success,Response = pcall(function()
											NestedElement.Values.OnChangedCallback(NestedElement.Values.CurrentValue)
											Starlight.WindowKeybind = tostring(NewKeyNoEnum)
										end)

										if not Success then
											Parent.Instance.Header.Text = "Callback Error"
											warn(`Starlight Interface Suite - Callback Error | {Element.Values.Name} ({Index} {NestedIndex})`)
											print(Response)
											if WindowSettings.NotifyOnCallbackError then
												Starlight:Notification({
													Title = Element.Values.Name.." Callback Error",
													Content = tostring(Response),
													Icon = 129398364168201
												})
											end
											wait(0.5)
											Parent.Instance.Header.Text = ElementSettings.Name
										end
										NestedElement.Instance:ReleaseFocus()
									end
										
									

								elseif input.UserInputType == Enum.UserInputType.Keyboard then
									if input.KeyCode ~= Enum.KeyCode.Unknown and input.KeyCode ~= Enum.KeyCode[Starlight.WindowKeybind] then
										local SplitMessage = string.split(tostring(input.KeyCode), ".")
										local NewKeyNoEnum = SplitMessage[3]
										NestedElement.Instance.Text = string.upper(tostring(NewKeyNoEnum))
										NestedElement.Values.CurrentValue = tostring(NewKeyNoEnum)
										local Success,Response = pcall(function()
											NestedElement.Values.OnChangedCallback(NestedElement.Values.CurrentValue)
										end)

										if not Success then
											Parent.Instance.Header.Text = "Callback Error"
											warn(`Starlight Interface Suite - Callback Error | {Element.Values.Name} ({Index} {NestedIndex})`)
											print(Response)
											if WindowSettings.NotifyOnCallbackError then
												Starlight:Notification({
													Title = Element.Values.Name.." Callback Error",
													Content = tostring(Response),
													Icon = 129398364168201
												})
											end
											wait(0.5)
											Parent.Instance.Header.Text = ElementSettings.Name
										end
										NestedElement.Instance:ReleaseFocus()
									elseif input.KeyCode == Enum.KeyCode[Starlight.WindowKeybind] then
										NestedElement.Instance.Text = NestedElement.Values.CurrentValue == "No Bind" and `<font color="rgb(165,165,165)">No Bind</font>` or NestedElement.Values.CurrentValue
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
											warn(`Starlight Interface Suite - Callback Error | {Element.Values.Name} ({Index} {NestedIndex})`)
											print(Response)
											if WindowSettings.NotifyOnCallbackError then
												Starlight:Notification({
													Title = Element.Values.Name.." Callback Error",
													Content = tostring(Response),
													Icon = 129398364168201
												})
											end
											wait(0.5)
											Parent.Instance.Header.Text = ElementSettings.Name
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
											warn(`Starlight Interface Suite - Callback Error | {Element.Values.Name} ({Index} {NestedIndex})`)
											print(Response)
											if WindowSettings.NotifyOnCallbackError then
												Starlight:Notification({
													Title = Element.Values.Name.." Callback Error",
													Content = tostring(Response),
													Icon = 129398364168201
												})
											end
											wait(0.5)
											Parent.Instance.Header.Text = ElementSettings.Name
										end
									end
								end
								CheckingForKey = false

							elseif NestedElement.Values.CurrentValue ~= nil and NestedElement.Values.CurrentValue ~= "No Bind" and not processed then 

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

								if not NestedElement.Values.HoldToInteract then
									NestedElement.Active = not NestedElement.Active

									local success, response = pcall(function()
										NestedElement.Values.Callback(NestedElement.Active)
										if isToggle and NestedElement.Values.SyncToggleState then
											Parent:Set({ CurrentValue = NestedElement.Active })
										elseif isToggle then
											Parent.Values.Callback(NestedElement.Active)
										end
									end)

									if not success then
										Parent.Instance.Header.Text = "Callback Error"
										warn(`Starlight Interface Suite - Callback Error | {Element.Values.Name} ({Index} {NestedIndex})`)
										print(response)
										if WindowSettings.NotifyOnCallbackError then
											Starlight:Notification({
												Title = Element.Values.Name.." Callback Error",
												Content = tostring(response),
												Icon = 129398364168201
											})
										end
										wait(0.5)
										Parent.Instance.Header.Text = ElementSettings.Name
									end

								else
									local Held = true

									NestedElement.Active = true
									local success, response = pcall(function()
										NestedElement.Values.Callback(true)
										if isToggle and NestedElement.Values.SyncToggleState then
											if Parent.Values.CurrentValue ~= true then Parent:Set({ CurrentValue = true }) end
										elseif isToggle then
											Parent.Values.Callback(true)
										end
									end)

									if not success then
										Parent.Instance.Header.Text = "Callback Error"
										warn(`Starlight Interface Suite - Callback Error | {Element.Values.Name} ({Index} {NestedIndex})`)
										print(response)
										if WindowSettings.NotifyOnCallbackError then
											Starlight:Notification({
												Title = Element.Values.Name.." Callback Error",
												Content = tostring(response),
												Icon = 129398364168201
											})
										end
										wait(0.5)
										Parent.Instance.Header.Text = ElementSettings.Name
									end

									local connection
									connection = input.Changed:Connect(function(prop)
										if prop == "UserInputState" then
											connection:Disconnect()
											Held = false
											NestedElement.Active = false

											local success2, response2 = pcall(function()
												NestedElement.Values.Callback(false)
												if isToggle and NestedElement.Values.SyncToggleState then
													if Parent.Values.CurrentValue ~= false then Parent:Set({ CurrentValue = false }) end
												elseif isToggle then
													Parent.Values.Callback(false)
												end
											end)

											if not success2 then
												Parent.Instance.Header.Text = "Callback Error"
												warn(`Starlight Interface Suite - Callback Error | {Element.Values.Name} ({Index} {NestedIndex})`)
												print(response2)
												if WindowSettings.NotifyOnCallbackError then
													Starlight:Notification({
														Title = Element.Values.Name.." Callback Error",
														Content = tostring(response2),
														Icon = 129398364168201
													})
												end
												wait(0.5)
												Parent.Instance.Header.Text = ElementSettings.Name
											end
										end
									end)
								end

							end
						end)

						function NestedElement:Destroy()
							NestedElement.Instance:Destroy()
							connections[ParentIndex .. "_" .. Index]:Disconnect()
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

							NestedElement.Instance.Name = "BIND_" .. NestedIndex

							NestedElement.Instance.Text = NestedElement.Values.CurrentValue == "No Bind" and `<font color="rgb(165,165,165)">No Bind</font>` or NestedElement.Values.CurrentValue
							
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
							Instances = {},
							IgnoreConfig = NestedSettings.IgnoreConfig
						}

						NestedElement.Instances[1] = Element.Instance.Dropdown:Clone()
						NestedElement.Instances[1].Visible = true
						NestedElement.Instances[1].Parent = Parent.Instance
						Parent.Instance.Size = UDim2.fromOffset(0, Parent.Instance.Size.Y.Offset + 34)

						NestedElement.Instances[2] = StarlightUI.DropdownOverlay.Dropdown_TEMPLATE:Clone()
						NestedElement.Instances[2].Parent = StarlightUI.DropdownOverlay

						NestedElement.Instances[1].Name = "DROPDOWN_" .. NestedIndex
						NestedElement.Instances[2].Name = "DROPDOWN_" .. NestedIndex

						for _, option in pairs(NestedElement.Instances[2].List:GetChildren()) do
							if option.ClassName == "TextButton" then
								option:Destroy()
							end
						end

						NestedElement.Instances[1]:GetPropertyChangedSignal("AbsolutePosition"):Connect(function()
							NestedElement.Instances[2].Position = UDim2.fromOffset(math.ceil(NestedElement.Instances[1].AbsolutePosition.X), math.ceil(NestedElement.Instances[1].AbsolutePosition.Y) + 35)

							Tween(NestedElement.Instances[2], {Size = UDim2.fromOffset(NestedElement.Instances[2].Size.X.Offset, 0)}, function()
								Tween(NestedElement.Instances[1]:WaitForChild("Icon"), {Rotation = 0})
								NestedElement.Instances[2].Visible = false
							end, Tween.Info(nil, nil, 0.18))
						end)

						NestedElement.Instances[1]:GetPropertyChangedSignal("AbsoluteSize"):Connect(function()
							NestedElement.Instances[2].Size = UDim2.fromOffset(math.ceil(NestedElement.Instances[1].AbsoluteSize.X), NestedElement.Instances[2].Size.Y.Offset)
							task.wait()
							NestedElement.Instances[1].Header.Text = NestedElement:truncate()
						end)

						NestedElement.Instances[1].Interact.MouseButton1Click:Connect(function()
							if NestedElement.Instances[2].Visible then
								Tween(NestedElement.Instances[1]:WaitForChild("Icon"), {Rotation = 0})
								Tween(NestedElement.Instances[2], {Size = UDim2.fromOffset(NestedElement.Instances[2].Size.X.Offset, 0)}, function()
									NestedElement.Instances[2].Visible = false
								end, Tween.Info(nil, nil, 0.18))
							else
								NestedElement.Instances[2].Visible = true
								Tween(NestedElement.Instances[2], {Size = UDim2.fromOffset(NestedElement.Instances[2].Size.X.Offset, 120)})
								Tween(NestedElement.Instances[1]:WaitForChild("Icon"), {Rotation = 180})
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
							option:SetAttribute("Active", true)
						end

						local function Deactivate(option)
							option.TextColor3 = Color3.fromRGB(165,165,165)
							option:SetAttribute("Active", false)
						end

						local function ToggleOption(option)
							if not NestedElement.Values.MultipleOptions then
								for i,v in pairs(NestedElement.Instances[2].List:GetChildren()) do
									if v.ClassName == "TextButton" and v ~= option then 
										Deactivate(v)
										NestedElement.Values.CurrentOption = {}
									end
								end
							end
								
							if option:GetAttribute("Active") == false then
								Activate(option)
								local Success,Response = pcall(function()
									table.insert(NestedElement.Values.CurrentOption, option.Text)
									NestedElement.Values.Callback(NestedElement.Values.CurrentOption)
									NestedElement.Instances[1].Header.Text = Table.Unpack(NestedElement.Values.CurrentOption)
								end)

								if not Success then
									Parent.Instance.Header.Text = "Callback Error"
									warn(`Starlight Interface Suite - Callback Error | {Element.Values.Name} ({Index} {NestedIndex})`)
									print(Response)
									if WindowSettings.NotifyOnCallbackError then
										Starlight:Notification({
											Title = Element.Values.Name.." Callback Error",
											Content = tostring(Response),
											Icon = 129398364168201
										})
									end
									wait(0.5)
									Parent.Instance.Header.Text = ElementSettings.Name
								end
							else
								Deactivate(option)
								local Success,Response = pcall(function()
									Table.Remove(NestedElement.Values.CurrentOption, option.Text)
									NestedElement.Values.Callback(NestedElement.Values.CurrentOption)
									NestedElement.Instances[1].Header.Text = Table.Unpack(NestedElement.Values.CurrentOption)
								end)

								if not Success then
									Parent.Instance.Header.Text = "Callback Error"
									warn(`Starlight Interface Suite - Callback Error | {Element.Values.Name} ({Index} {NestedIndex})`)
									print(Response)
									if WindowSettings.NotifyOnCallbackError then
										Starlight:Notification({
											Title = Element.Values.Name.." Callback Error",
											Content = tostring(Response),
											Icon = 129398364168201
										})
									end
									wait(0.5)
									Parent.Instance.Header.Text = ElementSettings.Name
								end
							end
						end

						local function Refresh()
							for i,v in pairs(NestedElement.Instances[2].List:GetChildren()) do
								if v.ClassName == "TextButton" then 
									v:Destroy()
								end
							end

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
								optioninstance:SetAttribute("Active", false)

								optioninstance.MouseButton1Click:Connect(function()
									ToggleOption(optioninstance)
								end)
							end
						end

						Refresh()
						NestedElement.Instances[2].Size = UDim2.fromOffset(math.ceil(NestedElement.Instances[1].AbsoluteSize.X), NestedElement.Instances[2].Size.Y.Offset)
						NestedElement.Instances[2].Position = UDim2.fromOffset(math.ceil(NestedElement.Instances[1].AbsolutePosition.X), math.ceil(NestedElement.Instances[1].AbsolutePosition.Y)+ (135/2) + 30)

						local preoptions = NestedElement.Values.CurrentOption
						NestedElement.Values.CurrentOption = {}
						for i,v in pairs(preoptions) do
							for _,optioninstance in pairs(NestedElement.Instances[2].List:GetChildren()) do
								if optioninstance.Name == "OPTION_" .. v then
									ToggleOption(optioninstance)
								end
							end
						end
						NestedElement.Instances[1].Header.Text = Table.Unpack(NestedElement.Values.CurrentOption)


						function NestedElement:Destroy()
							NestedElement.Instance:Destroy()
							Parent.Instance.Size = UDim2.fromOffset(0, Parent.Instance.Size.Y.Offset - 34)
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
							
							if NestedElement.Values.CurrentOption then
								if typeof(NestedElement.Values.CurrentOption) == "string" then
									NestedElement.Values.CurrentOption = {NestedElement.Values.CurrentOption}
								end
								if not NestedElement.Values.MultipleOptions and typeof(NestedElement.Values.CurrentOption) == "table" then
									NestedElement.Values.CurrentOption = {NestedElement.Values.CurrentOption[1]}
								end
								if not NestedElement.Values.MultipleOptions and typeof(NestedElement.Values.CurrentOption) == "number" then
									NestedElement.Values.CurrentOption = {NestedElement.Values.Options[NestedElement.Values.CurrentOption]}
								end
							end


							NestedElement.Instances[1].Name = "DROPDOWN_" .. NestedIndex
							NestedElement.Instances[2].Name = "DROPDOWN_" .. NestedIndex

							Refresh()
							local preoptions = table.clone(NestedElement.Values.CurrentOption or {})
							NestedElement.Values.CurrentOption = {}
							task.wait()
							for i,v in pairs(preoptions) do
								for _,optioninstance in pairs(NestedElement.Instances[2].List:GetChildren()) do
									if optioninstance.Name == "OPTION_" .. v then
										ToggleOption(optioninstance)
									end
								end
							end
							NestedElement.Instances[1].Header.Text = Table.Unpack(NestedElement.Values.CurrentOption)

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
					Element.Instance.Header.Icon.Visible = not String.IsEmptyOrNull(Element.Values.Icon)
					if Element.Instance.Header.Icon.Visible == false then
						Element.Instance.Header.UIPadding.PaddingLeft = UDim.new(0,6)
						Element.Instance.Content.UIPadding.PaddingLeft = UDim.new(0,6)
					else
						Element.Instance.Header.UIPadding.PaddingLeft = UDim.new(0,32)
						Element.Instance.Content.UIPadding.PaddingLeft = UDim.new(0,32)
					end
					Element.Instance.Header.Icon.Image = not String.IsEmptyOrNull(Element.Values.Icon) and "rbxassetid://" .. Element.Values.Icon or ""
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
						Element.Instance.Header.Icon.Visible = not String.IsEmptyOrNull(Element.Values.Icon)
						if Element.Instance.Header.Icon.Visible == false then
							Element.Instance.Header.UIPadding.PaddingLeft = UDim.new(0,6)
							Element.Instance.Content.UIPadding.PaddingLeft = UDim.new(0,6)
						else
							Element.Instance.Header.UIPadding.PaddingLeft = UDim.new(0,32)
							Element.Instance.Content.UIPadding.PaddingLeft = UDim.new(0,32)
						end
						Element.Instance.Header.Icon.Image = not String.IsEmptyOrNull(Element.Values.Icon) and "rbxassetid://" .. Element.Values.Icon or ""
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

			function Tab:BuildConfigGroupbox(Column, Style)

				Starlight.ConfigSystem:BuildFolderTree(root ~= nil and true or false, root or "", folder)

				local instance = Tab:CreateGroupbox({
					Name = "Configurations",
					Icon = 6031280882,
					Column = Column,
					Style = Style or 1
				}, "__prebuiltConfigGroupbox")

				if isStudio then
					instance:CreateParagraph({
						Name = "Config System Unavailable.",
						Content = "Environment Invalid : isStudio."
					}, "__prebuiltConfigEnvironmentWarning")
					return "Config System Unavailable"
				end
				if not isfile or isfile == nil then
					instance:CreateParagraph({
						Name = "Config System Unavailable.",
						Content = "Environment Invalid : isFile UNC Function Not Found."
					}, "__prebuiltConfigEnvironmentWarning")
					return "Config System Unavailable"
				end

				local inputPath = nil
				local selectedConfig = nil

				instance:CreateInput({
					Name = "Config Name",
					Tooltip = "Insert a name for the config you want to create.",
					PlaceholderText = "Name",
					RemoveTextOnFocus = true,
					IgnoreConfig = true,
					Callback = function(val)
						inputPath = val
					end,
				}, "__prebuiltConfigNameInput")

				instance:CreateButton({
					Name = "Create Config",
					Icon = 6035053304,
					Tooltip = "Create a configuration to access any time with all your current settings.",
					Callback = function()
						if not inputPath or string.gsub(inputPath, " ", "") == "" then
							Starlight:Notification({
								Title = "Configuration Error",
								Icon = 129398364168201,
								Content = "Config name cannot be empty."
							})
							return
						end
						
						if isfile(`{Starlight.Folder}/Configurations/{folderpath}/{inputPath}{Starlight.ConfigSystem.FileExtension}`) then
							Starlight:Notification({
								Title = "Configuration Exists",
								Icon = 129398364168201,
								Content = "Configuration with the provided name exists already. Overwrite it with update config below."
							})
							return
						end

						local success, returned = Starlight.ConfigSystem:SaveConfig(inputPath, `{Starlight.Folder}/Configurations/{folderpath}/`)
						if not success then
							Starlight:Notification({
								Title = "Configuration Error",
								Icon = 6031071057,
								Content = "Unable to save config, return error: " .. returned
							})
						end

						Starlight:Notification({
							Title = "Configuration Created",
							Icon = 6026568227,
							Content = string.format("Created config %q", inputPath),
						})

						instance.Elements["__prebuiltConfigSelector_lbl"].NestedElements["__prebuiltConfigSelector_lbl"]:Set({ Options = Starlight.ConfigSystem:RefreshConfigList(`{Starlight.Folder}/Configurations/{folderpath}`) })
					end,
					Style = 1,
				}, "__prebuiltConfigCreator")

				instance:CreateDivider()

				local configSelection = instance:CreateLabel({
					Name = "Select Config",
					Tooltip = "Select a config for this section to work on.",
				}, "__prebuiltConfigSelector_lbl"):AddDropdown({
					Options = Starlight.ConfigSystem:RefreshConfigList(`{Starlight.Folder}/Configurations/{folderpath}`),
					CurrentOption = nil,
					MultipleOptions = false,
					Callback = function(val)
						selectedConfig = val[1]
					end,
				}, "__prebuiltConfigSelector_lbl")

				instance:CreateButton({
					Name = "Load Config",
					Icon = 10723433935,
					Tooltip = "Load the selected configuration and all its settings.",
					Callback = function()
						if selectedConfig == nil then
							Starlight:Notification({
								Title = "Null Selection",
								Icon = 129398364168201,
								Content = "Configuration Must Be Selected!"
							})
							return
						end

						local success, returned = Starlight.ConfigSystem:LoadConfig(selectedConfig, `{Starlight.Folder}/Configurations/{folderpath}/`)
						if not success then
							Starlight:Notification({
								Title = "Configuration Error",
								Icon = 6031071057,
								Content = "Unable to load config, return error: " .. returned
							})
							return
						end

						Starlight:Notification({
							Title = "Configuration Loaded",
							Icon = 6026568227,
							Content = string.format("Loaded config %q", selectedConfig),
						})
					end,
					Style = 1,
				}, "__prebuiltConfigLoader")

				instance:CreateButton({
					Name = "Update Config",
					Icon = 6031225810,
					Tooltip = "Overwrite and update the selected configuration and all its settings with your current ones.",
					Callback = function()
						if selectedConfig == nil then
							Starlight:Notification({
								Title = "Null Selection",
								Icon = 129398364168201,
								Content = "Configuration Must Be Selected!"
							})
							return
						end

						local success, returned = Starlight.ConfigSystem:SaveConfig(selectedConfig, `{Starlight.Folder}/Configurations/{folderpath}/`)
						if not success then
							Starlight:Notification({
								Title = "Configuration Error",
								Icon = 6031071057,
								Content = "Unable to overwrite config, return error: " .. returned
							})
							return
						end

						Starlight:Notification({
							Title = "Configuration Updated",
							Icon = 6026568227,
							Content = string.format("Overwrote config %q", selectedConfig),
						})
					end,
					Style = 2,
				}, "__prebuiltConfigUpdater")

				instance:CreateButton({
					Name = "Refresh Configuration List",
					Icon = 6035056483,
					Tooltip = "Manually refresh the list of configurations incase of any errors.",
					Callback = function()
						instance.Elements["__prebuiltConfigSelector_lbl"].NestedElements["__prebuiltConfigSelector_lbl"]:Set({ Options = Starlight.ConfigSystem:RefreshConfigList(`{Starlight.Folder}/Configurations/{folderpath}`) })
					end,
					Style = 2,
				}, "__prebuiltConfigRefresher")
				
				local loadlabel = instance:CreateParagraph({
					Name = "Current Autoload Config:",
						Content = isfile(`{Starlight.Folder}/Configurations/{folderpath}/autoload.txt`) and readfile(`{Starlight.Folder}/Configurations/{folderpath}/autoload.txt`) or "None",
				}, "__prebuiltConfigAutoloadLabel")

				instance:CreateButton({
					Name = "Autoload Configuration",
					Icon = 6023565901,
					Tooltip = "Set the selected configuration to load whenever you run the script automatically.",
					Callback = function()
						if selectedConfig == nil then
							Starlight:Notification({
								Title = "Null Selection",
								Icon = 129398364168201,
								Content = "Configuration Must Be Selected!"
							})
							return
						end
						local name = selectedConfig
						pcall(function()
							writefile(`{Starlight.Folder}/Configurations/{folderpath}/autoload.txt`, name)
						end)
						loadlabel:Set({ Content = name })

						Starlight:Notification({
							Title = "Configuration Updated",
							Icon = 6026568227,
							Content = string.format("Set %q to be automatically loaded on your future sessions.", selectedConfig),
						})
					end,
					Style = 1,
				}, "__prebuiltConfigLoader")

				instance:CreateDivider()

				local warning = instance:CreateLabel({
					Name = "! DANGER ZONE !"
				}, "__prebuiltConfigDangerWarning")
				warning.Instance.Header.TextXAlignment = Enum.TextXAlignment.Center
				warning.Instance.Header.Size = UDim2.new(1,0,0, warning.Instance.Header.Size.Y.Offset)
				warning.Instance.Header.UIPadding.PaddingLeft = UDim.new(0,0)

				instance:CreateButton({
					Name = "Delete Configuration",
					Icon = 115577765236264,
					Tooltip = "Deleting A Configuration is permanent and you have to redo it!",
					Callback = function()
						if selectedConfig == nil then
							Starlight:Notification({
								Title = "Null Selection",
								Icon = 129398364168201,
								Content = "Configuration Must Be Selected!"
							})
							return
						end
						if isfile(`{Starlight.Folder}/Configurations/{folderpath}/{selectedConfig}{Starlight.ConfigSystem.FileExtension}`) then
							delfile(`{Starlight.Folder}/Configurations/{folderpath}/{selectedConfig}{Starlight.ConfigSystem.FileExtension}`)
						end
						
						if loadlabel.Values.Content == selectedConfig then
							if isfile(`{Starlight.Folder}/Configurations/{folderpath}/autoload.txt`) then delfile(`{Starlight.Folder}/Configurations/{folderpath}/autoload.txt`) end
							loadlabel:Set({ Content = "None" })
						end
						
						instance.Elements["__prebuiltConfigSelector_lbl"].NestedElements["__prebuiltConfigSelector_lbl"]:Set({ 
							Options = Starlight.ConfigSystem:RefreshConfigList(`{Starlight.Folder}/Configurations/{folderpath}`),
							CurrentOption = "",
						})
						if selectedConfig then selectedConfig = nil end
						
						Starlight:Notification({
							Title = "Configuration Deleted",
							Icon = 6026568227,
							Content = string.format("Deleted Configuration %q", selectedConfig),
						})
						
					end,
					Style = 2,
				}, "__prebuiltConfigDeleter")

				instance:CreateButton({
					Name = "Clear Autoload",
					Icon = 6034767619,
					Tooltip = "Removes the autoloading of the current autoload config.",
					Callback = function()
						if isfile(`{Starlight.Folder}/Configurations/{folderpath}/autoload.txt`) then delfile(`{Starlight.Folder}/Configurations/{folderpath}/autoload.txt`) end
						loadlabel:Set({ Content = "None" })

						Starlight:Notification({
							Title = "Autoload Cleared",
							Icon = 6026568227,
							Content = string.format("Disabled current autoload.", selectedConfig),
						})
					end,
					Style = 2,
				}, "__prebuiltConfigDeleter")

			end


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

	--// SUBSECTION : Window Functionability
	do
		mainWindow.Content.Topbar.NotificationCenterIcon["MouseEnter"]:Connect(function()
			Tween(mainWindow.Content.Topbar.NotificationCenterIcon, {ImageColor3 = Resources.Themes[Starlight.CurrentTheme]['Fore_Medium'].Value})
		end)
		mainWindow.Content.Topbar.NotificationCenterIcon["MouseLeave"]:Connect(function()
			Tween(mainWindow.Content.Topbar.NotificationCenterIcon, {ImageColor3 = Resources.Themes[Starlight.CurrentTheme]['Fore_Dark'].Value})
		end)

		mainWindow.Content.Topbar.NotificationCenterIcon["MouseButton1Click"]:Connect(function()
			if Starlight.NotificationsOpen then
				for i,newNotification in pairs(CollectionService:GetTagged("__starlight_ExpiredNotification")) do

					newNotification.Icon.Visible = false
					TweenService:Create(newNotification, TweenInfo.new(0.4, Enum.EasingStyle.Exponential), {BackgroundTransparency = 1}):Play()
					TweenService:Create(newNotification.UIStroke, TweenInfo.new(0.4, Enum.EasingStyle.Exponential), {Transparency = 1}):Play()
					TweenService:Create(newNotification.Shadow.antumbraShadow, TweenInfo.new(0.4, Enum.EasingStyle.Exponential), {ImageTransparency = 1}):Play()
					TweenService:Create(newNotification.Shadow.penumbraShadow, TweenInfo.new(0.4, Enum.EasingStyle.Exponential), {ImageTransparency = 1}):Play()
					TweenService:Create(newNotification.Shadow.umbraShadow, TweenInfo.new(0.4, Enum.EasingStyle.Exponential), {ImageTransparency = 1}):Play()
					TweenService:Create(newNotification.Title, TweenInfo.new(0.3, Enum.EasingStyle.Exponential), {TextTransparency = 1}):Play()
					TweenService:Create(newNotification.Description, TweenInfo.new(0.3, Enum.EasingStyle.Exponential), {TextTransparency = 1}):Play()
					TweenService:Create(newNotification.Time, TweenInfo.new(0.3, Enum.EasingStyle.Exponential), {TextTransparency = 1}):Play()

					TweenService:Create(newNotification, TweenInfo.new(1, Enum.EasingStyle.Exponential), {Size = UDim2.new(1, -90, 0, 0)}):Play()

					Tween(newNotification, {Size = UDim2.new(1, -90, 0, -StarlightUI.Notifications:FindFirstChild("UIListLayout").Padding.Offset)}, function()
						newNotification.Visible = false
					end, TweenInfo.new(1, Enum.EasingStyle.Exponential))

				end
			else
				for i,newNotification in pairs(CollectionService:GetTagged("__starlight_ExpiredNotification")) do

					task.spawn(function()
						newNotification.Icon.Visible = true

						newNotification.Size = UDim2.new(1, 0, 0, -StarlightUI.Notifications:FindFirstChild("UIListLayout").Padding.Offset)

						newNotification.Icon.Size = UDim2.new(0, 28, 0, 28)

						newNotification.Visible = true

						newNotification.Description.Size = UDim2.new(1, -65, 0, math.huge)
						local bounds = newNotification.Description.TextBounds.Y + 50
						newNotification.Description.Size = UDim2.new(1,-65,0, bounds - 30)
						newNotification.Size = UDim2.new(1, 0, 0, -StarlightUI.Notifications:FindFirstChild("UIListLayout").Padding.Offset)
						TweenService:Create(newNotification, TweenInfo.new(0.6, Enum.EasingStyle.Exponential), {Size = UDim2.new(1, 0, 0, bounds)}):Play()

						task.wait(0.15)
						TweenService:Create(newNotification, TweenInfo.new(0.4, Enum.EasingStyle.Exponential), {BackgroundTransparency = 0.38}):Play()
						TweenService:Create(newNotification.Shadow.antumbraShadow, TweenInfo.new(0.4, Enum.EasingStyle.Exponential), {ImageTransparency = 0.94}):Play()
						TweenService:Create(newNotification.Shadow.penumbraShadow, TweenInfo.new(0.4, Enum.EasingStyle.Exponential), {ImageTransparency = 0.55}):Play()
						TweenService:Create(newNotification.Shadow.umbraShadow, TweenInfo.new(0.4, Enum.EasingStyle.Exponential), {ImageTransparency = 0.4}):Play()
						TweenService:Create(newNotification.Title, TweenInfo.new(0.3, Enum.EasingStyle.Exponential), {TextTransparency = 0}):Play()

						task.wait(0.05)

						TweenService:Create(newNotification.Icon, TweenInfo.new(0.3, Enum.EasingStyle.Exponential), {ImageTransparency = 0}):Play()

						task.wait(0.05)
						TweenService:Create(newNotification.Description, TweenInfo.new(0.3, Enum.EasingStyle.Exponential), {TextTransparency = 0.35}):Play()
						TweenService:Create(newNotification.Time, TweenInfo.new(0.3, Enum.EasingStyle.Exponential), {TextTransparency = 0.35}):Play()
						TweenService:Create(newNotification.UIStroke, TweenInfo.new(0.4, Enum.EasingStyle.Exponential), {Transparency = 0.95}):Play()
					end)

				end

				-- StarlightUI.Notifications.CanvasPosition = Vector2.new(0,0)
			end
			Starlight.NotificationsOpen = not Starlight.NotificationsOpen
		end)


		mainWindow.Content.Topbar.Search["MouseEnter"]:Connect(function()
			Tween(mainWindow.Content.Topbar.Search, {ImageColor3 = Resources.Themes[Starlight.CurrentTheme]['Fore_Medium'].Value})
		end)
		mainWindow.Content.Topbar.Search["MouseLeave"]:Connect(function()
			Tween(mainWindow.Content.Topbar.Search, {ImageColor3 = Resources.Themes[Starlight.CurrentTheme]['Fore_Dark'].Value})
		end)

		for _, Button in ipairs(mainWindow.Content.Topbar.Controls:GetChildren()) do
			Button["MouseEnter"]:Connect(function()
				Tween(Button, {BackgroundColor3 = Button.Value.Value})
			end)

			Button["MouseLeave"]:Connect(function()
				Tween(Button, {BackgroundColor3 = Color3.fromRGB(65, 69, 77)})
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
			Hide(mainWindow, false, true, Starlight.WindowKeybind)
			Hide(StarlightUI.Drag, false, false, Starlight.WindowKeybind)
			Tween(mainWindow.Content.Topbar.Controls.Minimize, {BackgroundColor3 = Color3.fromRGB(65,65,65)})
		end)

		connections["__windowKeybindHidingBindConnection"] = UserInputService.InputBegan:Connect(function(input, gpe)
			if gpe then return end
			if input.KeyCode == Enum.KeyCode[Starlight.WindowKeybind] then
				if Starlight.Minimized == true then
					Unhide(mainWindow)
					Unhide(StarlightUI.Drag)
				elseif Starlight.Minimized == false then
					Hide(mainWindow, false, true, Starlight.WindowKeybind)
					Hide(StarlightUI.Drag, false, false, Starlight.WindowKeybind)
				end
			end
		end)
	end
	--// ENDSUBSECTION

	-- Return the window
	return Starlight.Window

end

--// SECTION : Config System

function Starlight.ConfigSystem:BuildFolderTree(hasRoot : boolean, Root : string, Folder : string)
	if isStudio or (not isfolder) then return "Config system unavailable." end
	local paths = {
		Starlight.Folder,
		Starlight.Folder .. "/Configurations",
	}
	if hasRoot then
		table.insert(paths, Starlight.Folder .. "/Configurations/".. Root)
		table.insert(paths, Starlight.Folder .. "/Configurations/".. Root .. "/" .. Folder)
	else
		table.insert(paths, Starlight.Folder .. "/Configurations/".. Folder)
	end

	for i = 1, #paths do
		local str = paths[i]
		if not isfolder(str) then
			makefolder(str)
		end
	end
end

function Starlight.ConfigSystem:SaveConfig(file, path)

	if isStudio or (not isfile) then return "Config system unavailable." end

	if not path or not file then
		return false, "Please select a config file."
	end

	local fullPath = `{path}{file}{Starlight.ConfigSystem.FileExtension}`

	local data = {
		objects = {}
	}

	-- spent 3 hours on ts
	for tsecidx, tabsection in next, Starlight.Window.TabSections do 
	for tidx, tab in next, tabsection.Tabs do
	for grpidx, groupbox in next, tab.Groupboxes do
		if groupbox.ClassName and groupbox.ClassName ~= "TabBox" then
			for idx, object in next, groupbox.Elements do
				if object.IgnoreConfig then continue end

				local fullidx = `{tsecidx}.Tabs.{tidx}.Groupboxes.{grpidx}.Elements.{idx}`

				table.insert(data.objects, ClassParser.Save(fullidx, object.Values))

				if object.Class == "Toggle" or object.Class == "Label" --[[or object.Class == "Input"]] then
				for nestedidx, nestedobject in next, object.NestedElements do

					table.insert(data.objects, ClassParser.Save(`{fullidx}.NestedElements.{nestedidx}`, nestedobject.Values))

				end end
		end end
		
				-- will add tabbox in future

	end	end end	

	local success, encoded = pcall(HttpService.JSONEncode, HttpService, data)
	if not success then
		return false, "Unable to encode into JSON data"
	end

	writefile(fullPath, encoded)
	return true

end

function Starlight.ConfigSystem:LoadConfig(file, path)

	if isStudio or (not isfile) then return "Config system unavailable." end

	if not path or not file then
		return false, "Please select a config file."
	end

	local fullPath = `{path}{file}{Starlight.ConfigSystem.FileExtension}`
	if not isfile(fullPath) then return false, "Invalid file." end

	local success, decoded = pcall(HttpService.JSONDecode, HttpService, readfile(fullPath))
	if not success then return false, "Unable to decode JSON data." end

	for _, object in next, decoded.objects do
		task.spawn(function() 
			ClassParser.Load(object.idx, object.data) 
		end)
	end

	return true

end

function Starlight.ConfigSystem:RefreshConfigList(path)

	if isStudio or (not isfile) then return "Config system unavailable." end

	local list = listfiles(path) or {}

	local configs = {}
	for i = 1, #list do
		local file = list[i]
		if file:sub(-#Starlight.ConfigSystem.FileExtension) == Starlight.ConfigSystem.FileExtension then
			local pos = file:find(Starlight.ConfigSystem.FileExtension, 1, true)
			local start = pos

			local char = file:sub(pos, pos)
			while char ~= "/" and char ~= "\\" and char ~= "" do
				pos = pos - 1
				char = file:sub(pos, pos)
			end

			if char == "/" or char == "\\" then
				local name = file:sub(pos + 1, start - 1)
				if name ~= "options" then
					table.insert(configs, name)
				end
			end
		end
	end

	return configs

end

function Starlight:LoadAutoloadConfig()
	if isStudio or (not isfile) then return "Config system unavailable." end

	if Starlight.ConfigSystem.AutoloadPath and isfile(Starlight.ConfigSystem.AutoloadPath .. "autoload.txt") then

		local name = readfile(Starlight.ConfigSystem.AutoloadPath .. "autoload.txt")

		local success, err = Starlight.ConfigSystem:LoadConfig(name, Starlight.ConfigSystem.AutoloadPath)
		if not success then 
			Starlight:Notification({
				Title = "Autoloading Error",
				Icon = 6031071057,
				Content = "Failed to load autoload config: " .. err,
			})
			return
		end

		Starlight:Notification({
			Title = "Autoloaded Configuration",
			Icon = 4483362748,
			Content = string.format("Auto loaded config %q", name),
		})

	end 
end


--// ENDSECTION

StarlightUI.Enabled = true

--// ENDSECTION


--// SECTION : Testing

local enabled = true
if isStudio and enabled then
	local win = Starlight:CreateWindow({
		Name = "",
		Subtitle = Release,
		Icon = 92936499827985,

		LoadingEnabled = false,
		LoadingSettings = {
			Title = "Starlight Interface Suite",
			Subtitle = "by Nebula Softworks",
			Logo = nil, -- Available for Style 1 only. replace the loading circle with an image of your choice
		},

		BuildWarnings = true,
		InterfaceAdvertisingPrompts = true,
		NotifyOnCallbackError = false,

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
	local ts2 = win:CreateTabSection("TAB SECTION EXAMPLE")

	local t = ts:CreateTab({
		Name = "Elements",
		Columns = 2,
		Icon = NebulaIcons:GetIcon("broadcast", "Phosphor"),
	}, "hi")
	local t2 = ts2:CreateTab({
		Name = "Premium Tab",
		Columns = 1,
		Icon = NebulaIcons:GetIcon("sparkle", "Material"),
	}, "hi2")
	local t3 = ts2:CreateTab({
		Name = "Extra Tab",
		Columns = 2
	}, "hi3")

	local g = t:CreateGroupbox({
		Name = "Groupbox Example",
		Column = 2
	}, "g")
	local g2 = t:CreateGroupbox({
		Name = "Groupbox Example",
		Icon = NebulaIcons:GetIcon("atom", "Phosphor"),
		Style =2
	}, "g2")
	t2:CreateGroupbox({
		Name = "Groupbox Example",
		Icon = NebulaIcons:GetIcon("rocket", "Lucide"),
	}, "noindex")

	g:CreateButton({
		Name = "Button 2",
		Callback = "",
		Tooltip = "Button 2!",
		Style = 1,
	}, "btn2")

	local hi = g2:CreateButton({
		Name = "Button",
		Icon = NebulaIcons:GetIcon("cursor-click", "Phosphor"),
		Callback = function()
			print("hi")
		end,
		Style = 1,
		Tooltip = "Button 1!"
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
		Tooltip = "flat Button!"
	}, "btn3")

	g2:CreateToggle({
		Name = "Toggle",
		CheckboxIcon = NebulaIcons:GetIcon("check"),
		Callback = function()

		end,
		Tooltip = "Hi"
	}, "tggle")
	g:CreateToggle({
		Name = "Toggle without Icon",
		Callback = function()

		end,
		Tooltip = "Hi"
	}, "tggle2")

	g:CreateToggle({
		Name = "Toggle - Switch Style",
		Style = 2,
		Callback = function()

		end,
		Tooltip = "Hi"
	}, "tggle2")

	g2:CreateSlider({
		Name = "Slider",
		Range = {0,100},
		Increment = 0.5,
		Suffix = "%",
		Callback = function() end
	}, "sldr")

	g2:CreateSlider({
		Name = "Slider",
		Range = {0.2,1},
		HideMax = true,
		Tooltip = "Hi",
		CurrentValue = .2,
		Increment = 0.0002,
		Suffix = "km/h",
		Callback = function(v) print(v) end
	}, "sldr2")

	--g:CreateBind({
	--	Name = "bind",
	--	CurrentValue = "Q",
	--	Callback = function() end
	--})
	g:CreateInput({
		Name = "dynamic input",
		Tooltip = "Hi",
		Callback = function() end
	}, "inpt")
	g2:CreateInput({
		Name = "numeric input",
		Numeric = true,
		PlaceholderText = "Numbers Only Hehe",
		Tooltip = "Hi",
		Callback = function() end
	}, "nmrcinpt")

	g2:CreateLabel({
		Tooltip = "Hi",
		Name = "Label"
	}, "lblbnd"):AddBind({
		CurrentValue = "Q",
		HoldToInteract = true,
		Tooltip = "Hi",
		Callback = function(v)
			print(v)
		end,
	}, "bnd")
	
	g2:CreateLabel({
		Tooltip = "Hi",
		Name = "Window Bind"
	}, "lblbnd"):AddBind({
		CurrentValue = "K",
		HoldToInteract = false,
		Tooltip = "Hi",
		WindowSetting = true,
	}, "wndwbnd")

	g2:CreateToggle({
		Name = "Toggle Bind",
		CurrentValue = false,
		Tooltip = "Hi",
		Style = 2,
		Callback = function(v)
			print(v)
		end,
	}, "bndprnt"):AddBind({
		CurrentValue = "C",
		Tooltip = "Hi",
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

	g:CreateDivider()

	local dropdown = g:CreateLabel({Name = "Dropdown"}, "lbldrpdwn"):AddDropdown({
		Options = {"hi","heeh","huh"},
		Tooltip = "Hi",
		CurrentOption = {"wsp"},
		Callback = function(v)
			print(v)
		end,
	}, 'drpdwn')

	local dropdown2 = g:CreateLabel({Name = "Dropdown MultiOptions"}, "lbldrpdwn2"):AddDropdown({
		Options = {"smthhhhh veryyyyyyyyyyyy loooooooonggggggg","heeh","huh"},
		CurrentOption = {"wsp", "huh"},
		Tooltip = "Hi",
		MultipleOptions = true,
		Callback = function(v)
			print(v)
		end,
	}, 'drpdwn2')

	local mix = g2:CreateToggle({Name = "Dropdown On Toggle",CurrentValue = false,Callback = function() end}, "tgglemix")
	mix:AddDropdown({
		Options = {"hi","heeh","huh"},
		CurrentOption = {"wsp", "huh"},
		Tooltip = "Hi",
		MultipleOptions = true,
		Special = 1,
		Callback = function(v)
			print(v)
		end,
	}, 'drpdwn3')
	mix:AddBind({
		CurrentValue = nil,
		Tooltip = "Hi",
		SyncToggleState = true
	}, "bnd3")

	g:CreateLabel({
		Name = "Label w Icon",
		Icon = NebulaIcons:GetIcon("aperture", "Lucide"),
		Tooltip = "Hi",
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
Like this, i am a much bigger paragraph than the other one! i also support multi lines ]]
	}, "prgrph2")

	Starlight:Notification({
		Title = "Hi",
		Content = [[Hello!! Im A Paragraph, and i can store bunch of text. 
I also grow bigger or smaller depending on how much text is in my body! 
Like this, i am a much bigger paragraph than the other one! i also support multi lines ]],
		Icon = NebulaIcons:GetIcon("notifications_active", "Material")
	})

	local configg = t:BuildConfigGroupbox(1)

	Starlight:LoadAutoloadConfig()
end

--// ENDSECTION

return Starlight
