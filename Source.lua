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

local Release = "Prerelease Beta 5.03Meow"
local debugV = false

local Starlight = {

	InterfaceBuild = "B5B9",

	WindowKeybind = "K",

	Minimized = false,
	Maximized = false,
	NotificationsOpen = false,
	DialogOpen = false,

	Window = nil,
	Notifications = nil,
	Instance = nil,
	OnDestroy = nil,

	FileSystem = {
		Folder = "Starlight Interface Suite",
		FileExtension = ".starlight",

		AutoloadConfigPath = nil,
		AutoloadThemePath = nil,
	},
}

--// ENDSECTION

--// SECTION : Services And Variables

-- Services

local function GetService(serviceName)
	return cloneref ~= nil and cloneref(game:GetService(serviceName)) or game:GetService(serviceName)
end
local Lighting = GetService("Lighting")
local Players = GetService("Players")
local Teams = GetService("Teams")
local StatsService = GetService("Stats")
local RunService = GetService("RunService")
local UserInputService = GetService("UserInputService")
local TweenService = GetService("TweenService")
local HttpService = GetService("HttpService")
local Localization = GetService("LocalizationService")
local CollectionService = GetService("CollectionService")
local TeleportService = GetService("TeleportService")
local TextService = GetService("TextService")
local GuiService = GetService("GuiService")
local MarketplaceService = GetService("MarketplaceService")
local ReplicatedStorage = GetService("ReplicatedStorage")
local ContentProvider = GetService("ContentProvider")
local InputManager = GetService("VirtualInputManager")
local CoreGui = GetService("CoreGui")

local Player = Players.LocalPlayer
local PlayerGui = Player:WaitForChild("PlayerGui")
local Camera = workspace.CurrentCamera
local Mouse = Player:GetMouse()
local GuiInset, _ = GuiService:GetGuiInset()
GuiInset = GuiInset.Y - 20
local themeEvent = Instance.new("BindableEvent")

local mainAcrylic = false
local notificationAcrylic = true
local acrylicEvent = Instance.new("BindableEvent")
local notificationAcrylicEvent = Instance.new("BindableEvent")
local acrylicFlag = false -- I do logic like this cus im scared weird and/or conditions fuck up as true may be behind or sm
if getgenv then
	if getgenv().NoAnticheat == nil or getgenv().NoAnticheat == true then
		acrylicFlag = true
	end
	if getgenv().SecureMode then
		acrylicFlag = false
	end
else
	if RunService:IsStudio() then
		acrylicFlag = true
	end
end

local isStudio = RunService:IsStudio() or false
local website = "nebulasoftworks.xyz/starlight"
local Acrylic = isStudio and require(ReplicatedStorage.AcrylicBundled)
	or loadstring(game:HttpGet("https://raw." .. website .. "/AcrylicModule.luau"))()
Acrylic.Init()

local Request = (syn and syn.request)
	or (fluxus and fluxus.request)
	or (http and http.request)
	or http_request
	or request

--//SUBSECTION : Classes

local String = {}
local Table = {}
local Color = {}

local Tween = {}
setmetatable(Tween, {
	__call = function(self, object: Instance, goal: table, callback, tweenin)
		local tween = TweenService:Create(object, tweenin or Tween.Info(), goal)
		tween.Completed:Connect(callback or function() end)
		tween:Play()
	end,
})

local Themes = {

	Starlight = {
		Backgrounds = {
			Dark = Color3.fromRGB(23, 25, 29),
			Medium = Color3.fromRGB(27, 29, 33),
			Light = Color3.fromRGB(33, 34, 38),
			Groupbox = Color3.fromRGB(33, 36, 42),
			Highlight = Color3.fromRGB(17, 19, 22),
		},
		Foregrounds = {
			Active = Color3.fromRGB(255, 255, 255),
			Light = Color3.fromRGB(255, 255, 255),
			Medium = Color3.fromRGB(165, 165, 165),
			Dark = Color3.fromRGB(65, 69, 77),
			MediumHover = Color3.fromRGB(185, 185, 185),
			DarkHover = Color3.fromRGB(85, 89, 97),
		},
		Miscellaneous = {
			Divider = Color3.fromRGB(117, 128, 149),
			Shadow = Color3.fromRGB(19, 21, 24),
			LighterShadow = Color3.fromRGB(24, 25, 30),
		},
		Accents = {
			Main = ColorSequence.new({
				ColorSequenceKeypoint.new(0.0, Color3.fromRGB(230, 186, 251)),
				ColorSequenceKeypoint.new(0.5, Color3.fromRGB(161, 169, 225)),
				ColorSequenceKeypoint.new(1.0, Color3.fromRGB(138, 201, 242)),
			}),
			Brighter = ColorSequence.new({
				ColorSequenceKeypoint.new(0.0, Color3.fromRGB(241, 212, 251)),
				ColorSequenceKeypoint.new(0.5, Color3.fromRGB(187, 192, 225)),
				ColorSequenceKeypoint.new(1.0, Color3.fromRGB(195, 227, 242)),
			}),
		},
	},
	["Hollywood Dark"] = {
		Backgrounds = {
			Dark = Color3.fromRGB(8, 8, 8),
			Medium = Color3.fromRGB(12, 12, 12),
			Light = Color3.fromRGB(15, 15, 15),
			Groupbox = Color3.fromRGB(14, 14, 14),
			Highlight = Color3.fromRGB(13, 13, 13),
		},
		Foregrounds = {
			Active = Color3.fromRGB(255, 255, 255),
			Light = Color3.fromRGB(255, 255, 255),
			Medium = Color3.fromRGB(165, 165, 165),
			Dark = Color3.fromRGB(77, 77, 77),
			MediumHover = Color3.fromRGB(185, 185, 185),
			DarkHover = Color3.fromRGB(97, 97, 97),
		},
		Miscellaneous = {
			Divider = Color3.fromRGB(199, 199, 199),
			Shadow = Color3.fromRGB(21, 21, 21),
			LighterShadow = Color3.fromRGB(30, 30, 30),
		},
		Accents = {
			Main = ColorSequence.new({
				ColorSequenceKeypoint.new(0.0, Color3.fromRGB(230, 186, 251)),
				ColorSequenceKeypoint.new(0.5, Color3.fromRGB(161, 169, 225)),
				ColorSequenceKeypoint.new(1.0, Color3.fromRGB(138, 201, 242)),
			}),
			Brighter = ColorSequence.new({
				ColorSequenceKeypoint.new(0.0, Color3.fromRGB(241, 212, 251)),
				ColorSequenceKeypoint.new(0.5, Color3.fromRGB(187, 192, 225)),
				ColorSequenceKeypoint.new(1.0, Color3.fromRGB(195, 227, 242)),
			}),
		},
	},
	["Hollywood Light"] = {
		Backgrounds = {
			Dark = Color3.fromRGB(240, 240, 240),
			Medium = Color3.fromRGB(250, 250, 250),
			Light = Color3.fromRGB(255, 255, 255),
			Groupbox = Color3.fromRGB(245, 245, 245),
			Highlight = Color3.fromRGB(217, 217, 217),
		},
		Foregrounds = {
			Active = Color3.fromRGB(255, 255, 255),
			Light = Color3.fromRGB(40, 40, 40),
			Medium = Color3.fromRGB(145, 145, 145),
			Dark = Color3.fromRGB(190, 190, 190),
			MediumHover = Color3.fromRGB(125, 125, 125),
			DarkHover = Color3.fromRGB(170, 170, 170),
		},
		Miscellaneous = {
			Divider = Color3.fromRGB(40, 40, 40),
			Shadow = Color3.fromRGB(179, 179, 179),
			LighterShadow = Color3.fromRGB(30, 30, 30),
		},
		Accents = {
			Main = ColorSequence.new({
				ColorSequenceKeypoint.new(0.0, Color3.fromRGB(178, 101, 199)),
				ColorSequenceKeypoint.new(0.5, Color3.fromRGB(73, 77, 135)),
				ColorSequenceKeypoint.new(1.0, Color3.fromRGB(79, 166, 207)),
			}),
			Brighter = ColorSequence.new({
				ColorSequenceKeypoint.new(0.0, Color3.fromRGB(221, 156, 239)),
				ColorSequenceKeypoint.new(0.5, Color3.fromRGB(135, 146, 214)),
				ColorSequenceKeypoint.new(1.0, Color3.fromRGB(137, 200, 229)),
			}),
		},
	},
	Orca = {
		Backgrounds = {
			Dark = Color3.fromRGB(12, 12, 12),
			Medium = Color3.fromRGB(8, 8, 8),
			Light = Color3.fromRGB(6, 6, 6),
			Groupbox = Color3.fromRGB(8, 8, 8),
			Highlight = Color3.fromRGB(20, 20, 20),
		},
		Foregrounds = {
			Active = Color3.fromRGB(255, 255, 255),
			Light = Color3.fromRGB(254, 238, 255),
			Medium = Color3.fromRGB(199, 195, 186),
			Dark = Color3.fromRGB(61, 51, 62),
			MediumHover = Color3.fromRGB(185, 177, 160),
			DarkHover = Color3.fromRGB(81, 71, 82),
		},
		Miscellaneous = {
			Divider = Color3.fromRGB(193, 61, 191),
			Shadow = Color3.fromRGB(12, 12, 12),
			LighterShadow = Color3.fromRGB(15, 15, 15),
		},
		Accents = {
			Main = ColorSequence.new({
				ColorSequenceKeypoint.new(0.0, Color3.fromRGB(255, 170, 0)),
				ColorSequenceKeypoint.new(0.5, Color3.fromRGB(255, 85, 127)),
				ColorSequenceKeypoint.new(1.0, Color3.fromRGB(224, 71, 255)),
			}),
			Brighter = ColorSequence.new({
				ColorSequenceKeypoint.new(0.0, Color3.fromRGB(255, 202, 78)),
				ColorSequenceKeypoint.new(0.5, Color3.fromRGB(255, 123, 143)),
				ColorSequenceKeypoint.new(1.0, Color3.fromRGB(255, 151, 253)),
			}),
		},
	},
	Glacier = {
		Backgrounds = {
			Dark = Color3.fromRGB(240, 238, 240),
			Medium = Color3.fromRGB(239, 246, 250),
			Light = Color3.fromRGB(244, 254, 255),
			Groupbox = Color3.fromRGB(246, 250, 250),
			Highlight = Color3.fromRGB(191, 211, 217),
		},
		Foregrounds = {
			Active = Color3.fromRGB(0, 0, 0),
			Light = Color3.fromRGB(40, 40, 40),
			Medium = Color3.fromRGB(145, 145, 145),
			Dark = Color3.fromRGB(190, 190, 190),
			MediumHover = Color3.fromRGB(125, 125, 125),
			DarkHover = Color3.fromRGB(170, 170, 170),
		},
		Miscellaneous = {
			Divider = Color3.fromRGB(56, 63, 66),
			Shadow = Color3.fromRGB(164, 175, 179),
			LighterShadow = Color3.fromRGB(209, 209, 209),
		},
		Accents = {
			Main = ColorSequence.new({
				ColorSequenceKeypoint.new(0.0, Color3.fromRGB(196, 222, 255)),
				ColorSequenceKeypoint.new(0.5, Color3.fromRGB(255, 234, 192)),
				ColorSequenceKeypoint.new(1.0, Color3.fromRGB(198, 225, 254)),
			}),
			Brighter = ColorSequence.new({
				ColorSequenceKeypoint.new(0.0, Color3.fromRGB(228, 239, 255)),
				ColorSequenceKeypoint.new(0.5, Color3.fromRGB(255, 241, 222)),
				ColorSequenceKeypoint.new(1.0, Color3.fromRGB(230, 242, 254)),
			}),
		},
	},
	Pacific = {
		Backgrounds = {
			Dark = Color3.fromRGB(12, 12, 12),
			Medium = Color3.fromRGB(14, 14, 14),
			Light = Color3.fromRGB(6, 6, 6),
			Groupbox = Color3.fromRGB(8, 8, 8),
			Highlight = Color3.fromRGB(20, 20, 20),
		},
		Foregrounds = {
			Active = Color3.fromRGB(255, 255, 255),
			Light = Color3.fromRGB(225, 255, 227),
			Medium = Color3.fromRGB(173, 199, 196),
			Dark = Color3.fromRGB(51, 62, 61),
			MediumHover = Color3.fromRGB(157, 185, 179),
			DarkHover = Color3.fromRGB(72, 82, 80),
		},
		Miscellaneous = {
			Divider = Color3.fromRGB(85, 255, 127),
			Shadow = Color3.fromRGB(12, 12, 12),
			LighterShadow = Color3.fromRGB(15, 15, 15),
		},
		Accents = {
			Main = ColorSequence.new({
				ColorSequenceKeypoint.new(0.0, Color3.fromRGB(85, 255, 255)),
				ColorSequenceKeypoint.new(0.5, Color3.fromRGB(85, 255, 127)),
				ColorSequenceKeypoint.new(1.0, Color3.fromRGB(0, 170, 127)),
			}),
			Brighter = ColorSequence.new({
				ColorSequenceKeypoint.new(0.0, Color3.fromRGB(161, 253, 255)),
				ColorSequenceKeypoint.new(0.5, Color3.fromRGB(175, 255, 198)),
				ColorSequenceKeypoint.new(1.0, Color3.fromRGB(75, 170, 133)),
			}),
		},
	},
	Neo = {
		Backgrounds = {
			Dark = Color3.fromRGB(240, 240, 240),
			Medium = Color3.fromRGB(250, 250, 250),
			Light = Color3.fromRGB(255, 255, 255),
			Groupbox = Color3.fromRGB(245, 245, 245),
			Highlight = Color3.fromRGB(217, 217, 217),
		},
		Foregrounds = {
			Active = Color3.fromRGB(255, 255, 255),
			Light = Color3.fromRGB(40, 40, 40),
			Medium = Color3.fromRGB(145, 145, 145),
			Dark = Color3.fromRGB(190, 190, 190),
			MediumHover = Color3.fromRGB(125, 125, 125),
			DarkHover = Color3.fromRGB(170, 170, 170),
		},
		Miscellaneous = {
			Divider = Color3.fromRGB(40, 40, 40),
			Shadow = Color3.fromRGB(200, 200, 200),
			LighterShadow = Color3.fromRGB(225, 225, 225),
		},
		Accents = {
			Main = ColorSequence.new({
				ColorSequenceKeypoint.new(0.0, Color3.fromRGB(7, 7, 7)),
				ColorSequenceKeypoint.new(0.5, Color3.fromRGB(20, 20, 20)),
				ColorSequenceKeypoint.new(1.0, Color3.fromRGB(8, 8, 8)),
			}),
			Brighter = ColorSequence.new({
				ColorSequenceKeypoint.new(0.0, Color3.fromRGB(26, 26, 26)),
				ColorSequenceKeypoint.new(0.5, Color3.fromRGB(0, 0, 0)),
				ColorSequenceKeypoint.new(1.0, Color3.fromRGB(17, 17, 17)),
			}),
		},
	},
	["Neo (Dark)"] = {
		Backgrounds = {
			Dark = Color3.fromRGB(13, 13, 13),
			Medium = Color3.fromRGB(16, 16, 16),
			Light = Color3.fromRGB(21, 21, 21),
			Groupbox = Color3.fromRGB(24, 24, 24),
			Highlight = Color3.fromRGB(16, 16, 16),
		},
		Foregrounds = {
			Active = Color3.fromRGB(20, 20, 20),
			Light = Color3.fromRGB(255, 255, 255),
			Medium = Color3.fromRGB(165, 165, 165),
			Dark = Color3.fromRGB(77, 77, 77),
			MediumHover = Color3.fromRGB(185, 185, 185),
			DarkHover = Color3.fromRGB(97, 97, 97),
		},
		Miscellaneous = {
			Divider = Color3.fromRGB(199, 199, 199),
			Shadow = Color3.fromRGB(21, 21, 21),
			LighterShadow = Color3.fromRGB(30, 30, 30),
		},
		Accents = {
			Main = ColorSequence.new({
				ColorSequenceKeypoint.new(0.0, Color3.fromRGB(220, 220, 220)),
				ColorSequenceKeypoint.new(0.5, Color3.fromRGB(198, 198, 198)),
				ColorSequenceKeypoint.new(1.0, Color3.fromRGB(230, 230, 230)),
			}),
			Brighter = ColorSequence.new({
				ColorSequenceKeypoint.new(0.0, Color3.fromRGB(241, 241, 241)),
				ColorSequenceKeypoint.new(0.5, Color3.fromRGB(214, 214, 214)),
				ColorSequenceKeypoint.new(1.0, Color3.fromRGB(253, 253, 253)),
			}),
		},
	},
	Crimson = {
		Backgrounds = {
			Dark = Color3.fromRGB(11, 11, 15),
			Medium = Color3.fromRGB(18, 18, 24),
			Light = Color3.fromRGB(11, 11, 15),
			Groupbox = Color3.fromRGB(18, 18, 24),
			Highlight = Color3.fromRGB(18, 18, 24),
		},
		Foregrounds = {
			Active = Color3.fromRGB(255, 255, 255),
			Light = Color3.fromRGB(224, 224, 224),
			Medium = Color3.fromRGB(147, 147, 149),
			Dark = Color3.fromRGB(67, 67, 78),
			MediumHover = Color3.fromRGB(177, 177, 179),
			DarkHover = Color3.fromRGB(97, 97, 107),
		},
		Miscellaneous = {
			Divider = Color3.fromRGB(107, 107, 109),
			Shadow = Color3.fromRGB(12, 12, 12),
			LighterShadow = Color3.fromRGB(15, 15, 15),
		},
		Accents = {
			Main = ColorSequence.new({
				ColorSequenceKeypoint.new(0.0, Color3.fromRGB(216, 79, 104)),
				ColorSequenceKeypoint.new(0.5, Color3.fromRGB(199, 92, 112)),
				ColorSequenceKeypoint.new(1.0, Color3.fromRGB(216, 79, 104)),
			}),
			Brighter = ColorSequence.new({
				ColorSequenceKeypoint.new(0.0, Color3.fromRGB(199, 92, 112)),
				ColorSequenceKeypoint.new(0.5, Color3.fromRGB(216, 79, 104)),
				ColorSequenceKeypoint.new(1.0, Color3.fromRGB(199, 92, 112)),
			}),
		},
	},
	--Matcha = {},
	Nebula = {
		Backgrounds = {
			Dark = Color3.fromRGB(1, 4, 9),
			Medium = Color3.fromRGB(14, 18, 26),
			Light = Color3.fromRGB(13, 17, 23),
			Groupbox = Color3.fromRGB(13, 17, 23),
			Highlight = Color3.fromRGB(14, 18, 26),
		},
		Foregrounds = {
			Active = Color3.fromRGB(243, 243, 243),
			Light = Color3.fromRGB(255, 255, 255),
			Medium = Color3.fromRGB(170, 177, 191),
			Dark = Color3.fromRGB(33, 38, 45),
			MediumHover = Color3.fromRGB(186, 194, 209),
			DarkHover = Color3.fromRGB(84, 97, 115),
		},
		Miscellaneous = {
			Divider = Color3.fromRGB(201, 209, 217),
			Shadow = Color3.fromRGB(12, 12, 12),
			LighterShadow = Color3.fromRGB(15, 15, 15),
		},
		Accents = {
			Main = ColorSequence.new({
				ColorSequenceKeypoint.new(0.0, Color3.fromRGB(94, 255, 236)),
				ColorSequenceKeypoint.new(0.5, Color3.fromRGB(172, 164, 255)),
				ColorSequenceKeypoint.new(1.0, Color3.fromRGB(191, 0, 255)),
			}),
			Brighter = ColorSequence.new({
				ColorSequenceKeypoint.new(0.0, Color3.fromRGB(179, 255, 240)),
				ColorSequenceKeypoint.new(0.5, Color3.fromRGB(214, 202, 255)),
				ColorSequenceKeypoint.new(1.0, Color3.fromRGB(220, 133, 255)),
			}),
		},
	},

	Evergreen = {
		Backgrounds = {
			Dark = Color3.fromRGB(41, 50, 54),
			Medium = Color3.fromRGB(45, 53, 59),
			Light = Color3.fromRGB(52, 63, 68),
			Groupbox = Color3.fromRGB(45, 52, 54),
			Highlight = Color3.fromRGB(45, 53, 59),
		},
		Foregrounds = {
			Active = Color3.fromRGB(255, 255, 255),
			Light = Color3.fromRGB(224, 224, 224),
			Medium = Color3.fromRGB(211, 198, 170),
			Dark = Color3.fromRGB(122, 132, 120),
			MediumHover = Color3.fromRGB(177, 177, 179),
			DarkHover = Color3.fromRGB(97, 97, 107),
		},
		Miscellaneous = {
			Divider = Color3.fromRGB(211, 198, 170),
			Shadow = Color3.fromRGB(43, 48, 47),
			LighterShadow = Color3.fromRGB(48, 54, 53),
		},
		Accents = {
			Main = ColorSequence.new({
				ColorSequenceKeypoint.new(0.0, Color3.fromRGB(167, 192, 128)),
				ColorSequenceKeypoint.new(0.5, Color3.fromRGB(145, 177, 89)),
				ColorSequenceKeypoint.new(1.0, Color3.fromRGB(167, 192, 128)),
			}),
			Brighter = ColorSequence.new({
				ColorSequenceKeypoint.new(0.0, Color3.fromRGB(145, 177, 89)),
				ColorSequenceKeypoint.new(0.5, Color3.fromRGB(167, 192, 128)),
				ColorSequenceKeypoint.new(1.0, Color3.fromRGB(145, 177, 89)),
			}),
		},
	},
	Ubuntu = {
		Backgrounds = {
			Dark = Color3.fromRGB(50, 50, 50),
			Medium = Color3.fromRGB(56, 56, 56),
			Light = Color3.fromRGB(62, 62, 62),
			Groupbox = Color3.fromRGB(62, 62, 62),
			Highlight = Color3.fromRGB(50, 50, 50),
		},
		Foregrounds = {
			Active = Color3.fromRGB(255, 255, 255),
			Light = Color3.fromRGB(255, 255, 255),
			Medium = Color3.fromRGB(141, 141, 141),
			Dark = Color3.fromRGB(50, 50, 50),
			MediumHover = Color3.fromRGB(100, 100, 100),
			DarkHover = Color3.fromRGB(70, 70, 70),
		},
		Miscellaneous = {
			Divider = Color3.fromRGB(226, 88, 30),
			Shadow = Color3.fromRGB(25, 25, 25),
			LighterShadow = Color3.fromRGB(50, 50, 50),
		},
		Accents = {
			Main = ColorSequence.new({
				ColorSequenceKeypoint.new(0.0, Color3.fromRGB(226, 88, 30)),
				ColorSequenceKeypoint.new(0.5, Color3.fromRGB(226, 114, 70)),
				ColorSequenceKeypoint.new(1.0, Color3.fromRGB(226, 88, 30)),
			}),
			Brighter = ColorSequence.new({
				ColorSequenceKeypoint.new(0.0, Color3.fromRGB(226, 108, 61)),
				ColorSequenceKeypoint.new(0.5, Color3.fromRGB(226, 149, 111)),
				ColorSequenceKeypoint.new(1.0, Color3.fromRGB(226, 108, 61)),
			}),
		},
	},
	Luna = {
		Backgrounds = {
			Dark = Color3.fromRGB(21, 20, 25),
			Medium = Color3.fromRGB(26, 25, 31),
			Light = Color3.fromRGB(37, 35, 44),
			Groupbox = Color3.fromRGB(39, 34, 43),
			Highlight = Color3.fromRGB(22, 22, 31),
		},
		Foregrounds = {
			Active = Color3.fromRGB(255, 255, 255),
			Light = Color3.fromRGB(255, 255, 255),
			Medium = Color3.fromRGB(203, 203, 203),
			Dark = Color3.fromRGB(66, 63, 76),
			MediumHover = Color3.fromRGB(227, 227, 227),
			DarkHover = Color3.fromRGB(98, 98, 98),
		},
		Miscellaneous = {
			Divider = Color3.fromRGB(64, 61, 76),
			Shadow = Color3.fromRGB(32, 28, 35),
			LighterShadow = Color3.fromRGB(45, 39, 49),
		},
		Accents = {
			Main = ColorSequence.new({
				ColorSequenceKeypoint.new(0.0, Color3.fromRGB(117, 164, 206)),
				ColorSequenceKeypoint.new(0.5, Color3.fromRGB(123, 201, 201)),
				ColorSequenceKeypoint.new(1.0, Color3.fromRGB(224, 138, 175)),
			}),
			Brighter = ColorSequence.new({
				ColorSequenceKeypoint.new(0.0, Color3.fromRGB(152, 193, 221)),
				ColorSequenceKeypoint.new(0.5, Color3.fromRGB(181, 235, 231)),
				ColorSequenceKeypoint.new(1.0, Color3.fromRGB(244, 175, 202)),
			}),
		},
	},
	["Tokyo Night"] = {
		Backgrounds = {
			Dark = Color3.fromRGB(22, 22, 31),
			Medium = Color3.fromRGB(28, 28, 40),
			Light = Color3.fromRGB(25, 25, 37),
			Groupbox = Color3.fromRGB(25, 25, 37),
			Highlight = Color3.fromRGB(22, 22, 31),
		},
		Foregrounds = {
			Active = Color3.fromRGB(255, 255, 255),
			Light = Color3.fromRGB(255, 255, 255),
			Medium = Color3.fromRGB(167, 160, 185),
			Dark = Color3.fromRGB(80, 78, 98),
			MediumHover = Color3.fromRGB(180, 167, 206),
			DarkHover = Color3.fromRGB(88, 82, 130),
		},
		Miscellaneous = {
			Divider = Color3.fromRGB(144, 101, 163),
			Shadow = Color3.fromRGB(40, 40, 48),
			LighterShadow = Color3.fromRGB(40, 40, 48),
		},
		Accents = {
			Main = ColorSequence.new({
				ColorSequenceKeypoint.new(0.0, Color3.fromRGB(132, 116, 163)),
				ColorSequenceKeypoint.new(0.5, Color3.fromRGB(133, 122, 194)),
				ColorSequenceKeypoint.new(1.0, Color3.fromRGB(132, 116, 163)),
			}),
			Brighter = ColorSequence.new({
				ColorSequenceKeypoint.new(0.0, Color3.fromRGB(133, 122, 194)),
				ColorSequenceKeypoint.new(0.5, Color3.fromRGB(132, 116, 163)),
				ColorSequenceKeypoint.new(1.0, Color3.fromRGB(133, 122, 194)),
			}),
		},
	},
	OperaGX = {
		Backgrounds = {
			Dark = Color3.fromRGB(15, 13, 18),
			Medium = Color3.fromRGB(12, 11, 15),
			Light = Color3.fromRGB(11, 9, 16),
			Groupbox = Color3.fromRGB(6, 5, 8),
			Highlight = Color3.fromRGB(13, 11, 18),
		},
		Foregrounds = {
			Active = Color3.fromRGB(255, 255, 255),
			Light = Color3.fromRGB(255, 255, 255),
			Medium = Color3.fromRGB(170, 170, 170),
			Dark = Color3.fromRGB(80, 78, 98),
			MediumHover = Color3.fromRGB(190, 190, 190),
			DarkHover = Color3.fromRGB(122, 117, 130),
		},
		Miscellaneous = {
			Divider = Color3.fromRGB(250, 30, 78),
			Shadow = Color3.fromRGB(24, 23, 26),
			LighterShadow = Color3.fromRGB(40, 40, 48),
		},
		Accents = {
			Main = ColorSequence.new({
				ColorSequenceKeypoint.new(0.0, Color3.fromRGB(250, 30, 78)),
				ColorSequenceKeypoint.new(0.5, Color3.fromRGB(216, 27, 62)),
				ColorSequenceKeypoint.new(1.0, Color3.fromRGB(250, 30, 78)),
			}),
			Brighter = ColorSequence.new({
				ColorSequenceKeypoint.new(0.0, Color3.fromRGB(216, 27, 62)),
				ColorSequenceKeypoint.new(0.5, Color3.fromRGB(250, 30, 78)),
				ColorSequenceKeypoint.new(1.0, Color3.fromRGB(216, 27, 62)),
			}),
		},
	},
	BBot = {
		Backgrounds = {
			Dark = Color3.fromRGB(35, 35, 35),
			Medium = Color3.fromRGB(40, 40, 40),
			Light = Color3.fromRGB(30, 30, 30),
			Groupbox = Color3.fromRGB(30, 30, 30),
			Highlight = Color3.fromRGB(35, 35, 35),
		},
		Foregrounds = {
			Active = Color3.fromRGB(255, 255, 255),
			Light = Color3.fromRGB(255, 255, 255),
			Medium = Color3.fromRGB(180, 180, 180),
			Dark = Color3.fromRGB(82, 82, 82),
			MediumHover = Color3.fromRGB(150, 150, 150),
			DarkHover = Color3.fromRGB(112, 112, 112),
		},
		Miscellaneous = {
			Divider = Color3.fromRGB(144, 101, 163),
			Shadow = Color3.fromRGB(20, 20, 20),
			LighterShadow = Color3.fromRGB(40, 40, 40),
		},
		Accents = {
			Main = ColorSequence.new({
				ColorSequenceKeypoint.new(0.0, Color3.fromRGB(126, 72, 163)),
				ColorSequenceKeypoint.new(0.5, Color3.fromRGB(144, 101, 163)),
				ColorSequenceKeypoint.new(1.0, Color3.fromRGB(167, 97, 218)),
			}),
			Brighter = ColorSequence.new({
				ColorSequenceKeypoint.new(0.0, Color3.fromRGB(170, 98, 221)),
				ColorSequenceKeypoint.new(0.5, Color3.fromRGB(124, 75, 148)),
				ColorSequenceKeypoint.new(1.0, Color3.fromRGB(179, 131, 218)),
			}),
		},
	},
	["Hollywood Fluent"] = {
		Backgrounds = {
			Dark = Color3.fromRGB(25, 25, 25),
			Medium = Color3.fromRGB(36, 36, 36),
			Light = Color3.fromRGB(36, 36, 36),
			Groupbox = Color3.fromRGB(30, 30, 30),
			Highlight = Color3.fromRGB(40, 40, 40),
		},
		Foregrounds = {
			Active = Color3.fromRGB(26, 34, 42),
			Light = Color3.fromRGB(255, 255, 255),
			Medium = Color3.fromRGB(165, 165, 165),
			Dark = Color3.fromRGB(77, 77, 77),
			MediumHover = Color3.fromRGB(185, 185, 185),
			DarkHover = Color3.fromRGB(97, 97, 97),
		},
		Miscellaneous = {
			Divider = Color3.fromRGB(180, 180, 180),
			Shadow = Color3.fromRGB(42, 42, 42),
			LighterShadow = Color3.fromRGB(35, 35, 35),
		},
		Accents = {
			Main = ColorSequence.new({
				ColorSequenceKeypoint.new(0.0, Color3.fromRGB(174, 216, 232)),
				ColorSequenceKeypoint.new(0.5, Color3.fromRGB(160, 210, 232)),
				ColorSequenceKeypoint.new(1.0, Color3.fromRGB(174, 216, 232)),
			}),
			Brighter = ColorSequence.new({
				ColorSequenceKeypoint.new(0.0, Color3.fromRGB(187, 219, 232)),
				ColorSequenceKeypoint.new(0.5, Color3.fromRGB(176, 214, 232)),
				ColorSequenceKeypoint.new(1.0, Color3.fromRGB(187, 219, 232)),
			}),
		},
	},
	["Catppuccin Mocha"] = {
		Backgrounds = {
			Dark = Color3.fromRGB(24, 24, 37),       -- base
			Medium = Color3.fromRGB(30, 30, 46),     -- mantle
			Light = Color3.fromRGB(30, 30, 46),     
			Groupbox = Color3.fromRGB(30, 30, 46),
			Highlight = Color3.fromRGB(49, 50, 68)  -- surface0
		},
		Foregrounds = {
			Active = Color3.fromRGB(205, 214, 244),  -- text
			Light = Color3.fromRGB(205, 214, 244),
			Medium = Color3.fromRGB(166, 173, 200),  -- subtext0
			Dark = Color3.fromRGB(88, 91, 112),    -- overlay0
			MediumHover = Color3.fromRGB(186, 194, 222),
			DarkHover = Color3.fromRGB(127, 132, 156),
		},
		Miscellaneous = {
			Divider = Color3.fromRGB(137, 180, 250), -- blue
			Shadow = Color3.fromRGB(17, 17, 27),     -- crust
			LighterShadow = Color3.fromRGB(24, 24, 37),
		},
		Accents = {
			Main = ColorSequence.new({
				ColorSequenceKeypoint.new(0.0, Color3.fromRGB(245, 194, 231)), -- pink
				ColorSequenceKeypoint.new(0.5, Color3.fromRGB(203, 166, 247)), -- mauve
				ColorSequenceKeypoint.new(1.0, Color3.fromRGB(137, 180, 250)), -- blue
			}),
			Brighter = ColorSequence.new({
				ColorSequenceKeypoint.new(0.0, Color3.fromRGB(250, 217, 233)),
				ColorSequenceKeypoint.new(0.5, Color3.fromRGB(214, 178, 255)),
				ColorSequenceKeypoint.new(1.0, Color3.fromRGB(166, 200, 255)),
			}),
		},
	},
	["Catppuccin Macchiato"] = {
		Backgrounds = {
			Dark = Color3.fromRGB(24, 25, 38),
			Medium = Color3.fromRGB(36, 39, 58),
			Light = Color3.fromRGB(48, 52, 70),
			Groupbox = Color3.fromRGB(42, 45, 63),
			Highlight = Color3.fromRGB(54, 58, 79),
		},
		Foregrounds = {
			Active = Color3.fromRGB(202, 211, 245),
			Light = Color3.fromRGB(202, 211, 245),
			Medium = Color3.fromRGB(165, 173, 203),
			Dark = Color3.fromRGB(110, 115, 141),
			MediumHover = Color3.fromRGB(184, 192, 224),
			DarkHover = Color3.fromRGB(129, 135, 165),
		},
		Miscellaneous = {
			Divider = Color3.fromRGB(183, 189, 248),
			Shadow = Color3.fromRGB(18, 19, 32),
			LighterShadow = Color3.fromRGB(24, 25, 38),
		},
		Accents = {
			Main = ColorSequence.new({
				ColorSequenceKeypoint.new(0, Color3.fromRGB(238, 153, 160)),
				ColorSequenceKeypoint.new(0.5, Color3.fromRGB(183, 189, 248)),
				ColorSequenceKeypoint.new(1, Color3.fromRGB(245, 189, 230)),
			}),
			Brighter = ColorSequence.new({
				ColorSequenceKeypoint.new(0, Color3.fromRGB(244, 184, 191)),
				ColorSequenceKeypoint.new(0.5, Color3.fromRGB(198, 202, 255)),
				ColorSequenceKeypoint.new(1, Color3.fromRGB(250, 212, 239)),
			}),
		},
	},

	["Catppuccin Frappe"] = {
		Backgrounds = {
			Dark = Color3.fromRGB(48, 52, 70),
			Medium = Color3.fromRGB(65, 69, 89),
			Light = Color3.fromRGB(81, 87, 109),
			Groupbox = Color3.fromRGB(72, 78, 100),
			Highlight = Color3.fromRGB(92, 97, 122),
		},
		Foregrounds = {
			Active = Color3.fromRGB(198, 208, 245),
			Light = Color3.fromRGB(198, 208, 245),
			Medium = Color3.fromRGB(165, 173, 206),
			Dark = Color3.fromRGB(115, 121, 148),
			MediumHover = Color3.fromRGB(180, 189, 220),
			DarkHover = Color3.fromRGB(136, 142, 170),
		},
		Miscellaneous = {
			Divider = Color3.fromRGB(166, 218, 149),
			Shadow = Color3.fromRGB(40, 44, 61),
			LighterShadow = Color3.fromRGB(48, 52, 70),
		},
		Accents = {
			Main = ColorSequence.new({
				ColorSequenceKeypoint.new(0, Color3.fromRGB(239, 159, 118)),
				ColorSequenceKeypoint.new(0.5, Color3.fromRGB(229, 200, 144)),
				ColorSequenceKeypoint.new(1, Color3.fromRGB(166, 218, 149)),
			}),
			Brighter = ColorSequence.new({
				ColorSequenceKeypoint.new(0, Color3.fromRGB(245, 182, 148)),
				ColorSequenceKeypoint.new(0.5, Color3.fromRGB(238, 215, 170)),
				ColorSequenceKeypoint.new(1, Color3.fromRGB(190, 232, 178)),
			}),
		},
	},

	["Catppuccin Latte"] = {
		Backgrounds = {
			Dark = Color3.fromRGB(239, 241, 245),
			Medium = Color3.fromRGB(220, 224, 232),
			Light = Color3.fromRGB(230, 233, 239),
			Groupbox = Color3.fromRGB(216, 222, 233),
			Highlight = Color3.fromRGB(204, 208, 218),
		},
		Foregrounds = {
			Active = Color3.fromRGB(76, 79, 105),
			Light = Color3.fromRGB(76, 79, 105),
			Medium = Color3.fromRGB(108, 111, 133),
			Dark = Color3.fromRGB(156, 160, 176),
			MediumHover = Color3.fromRGB(92, 95, 119),
			DarkHover = Color3.fromRGB(137, 142, 162),
		},
		Miscellaneous = {
			Divider = Color3.fromRGB(64, 160, 43),
			Shadow = Color3.fromRGB(76, 79, 105),
			LighterShadow = Color3.fromRGB(108, 111, 133),
		},
		Accents = {
			Main = ColorSequence.new({
				ColorSequenceKeypoint.new(0, Color3.fromRGB(254, 100, 11)),
				ColorSequenceKeypoint.new(0.5, Color3.fromRGB(223, 142, 29)),
				ColorSequenceKeypoint.new(1, Color3.fromRGB(64, 160, 43)),
			}),
			Brighter = ColorSequence.new({
				ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 132, 60)),
				ColorSequenceKeypoint.new(0.5, Color3.fromRGB(235, 175, 80)),
				ColorSequenceKeypoint.new(1, Color3.fromRGB(122, 190, 90)),
			}),
		},
	},
	--PHub = {},
	--Serika = {},
	--Rust = {},
	--Matcha = {},
	--Vaporwave = {},
}

local function deepCopy(tbl)
	if type(tbl) ~= "table" then
		return tbl
	end
	local copy = {}
	for k, v in pairs(tbl) do
		copy[k] = deepCopy(v)
	end
	return copy
end
Starlight.Themes = Themes
Starlight.CurrentTheme = deepCopy(Themes.Starlight)

--//ENDSUBSECTION

function Tween.Info(style: string?, direction: string?, time: number?)
	style = style or "Exponential"
	direction = direction or "Out"
	time = time or 0.5
	return TweenInfo.new(time, Enum.EasingStyle[style], Enum.EasingDirection[direction])
end

local NebulaIcons = isStudio and require(ReplicatedStorage.NebulaIcons)

local connections = {}

--// ENDSECTION

--// SECTION : Methods

-- used so the index system allows for universal linking without breaking
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
local ClassInterfacer = {

	["Button"] = {},
	["Toggle"] = {
		"CurrentValue",
	},
	["Slider"] = {
		"CurrentValue",
	},
	["Input"] = {
		"CurrentValue",
	},
	["Label"] = {},
	["Paragraph"] = {},
	["Divider"] = {},
	--["Image"] = {}, ["Viewport"] = {}, ["Stepper"] = {}, ["Radio"] = {},
	["Bind"] = {
		"CurrentValue",
	},
	["ColorPicker"] = {
		"CurrentValue",
		"Transparency",
	},
	["Dropdown"] = {
		"CurrentOption",
	},
}

local ConfigMethods = {
	Save = function(Idx, Data, Type)
		if Type == "ColorPicker" then
			local appendedData = {}
			for i, v in pairs(Data) do
				if i == "CurrentValue" then
					appendedData[i] = Color.Unpack(v)
				else
					appendedData[i] = v
				end
			end
			return {
				type = Type,
				idx = Idx,
				data = appendedData,
			}
		else
			return {
				type = Type,
				idx = Idx,
				data = Data,
			}
		end
	end,
	Load = function(Idx, Data, Path)
		if GetNestedValue(Starlight.Window.TabSections, Idx) then
			if GetNestedValue(Starlight.Window.TabSections, Idx) then
				for key, value in pairs(Data) do
					if table.find(ClassInterfacer[GetNestedValue(Starlight.Window.TabSections, Idx).Class], key) then
						GetNestedValue(Starlight.Window.TabSections, Idx):Set({ [key] = value })
					end
				end
			end
		end
	end,
	UpdateOld = function(oldPath, newPath)
		local list = listfiles(oldPath) or {}

		for i = 1, #list do
			local file = list[i]
			if file:sub(-#Starlight.FileSystem.FileExtension) == Starlight.FileSystem.FileExtension then
				local content = readfile(file)

				local pos = file:find(Starlight.FileSystem.FileExtension, 1, true)
				local start = pos

				local char = file:sub(pos, pos)
				while char ~= "/" and char ~= "\\" and char ~= "" do
					pos = pos - 1
					char = file:sub(pos, pos)
				end

				if char == "/" or char == "\\" then
					local name = file:sub(pos + 1, start - 1)
					if name ~= "options" then
						writefile(`{newPath}/{name}{Starlight.FileSystem.FileExtension}`, content)
					end
				end

				delfile(file)
			end
		end
	end,
}

local ThemeMethods = {
	bindTheme = function(object: GuiObject, property, themeKey)
		local function set()
			pcall(task.spawn, function()
				if
					object.ClassName == "UIGradient"
					and typeof(GetNestedValue(Starlight.CurrentTheme, themeKey)) == "Color3"
				then
					object[property] = ColorSequence.new({
						ColorSequenceKeypoint.new(0, GetNestedValue(Starlight.CurrentTheme, themeKey)),
						ColorSequenceKeypoint.new(1, GetNestedValue(Starlight.CurrentTheme, themeKey)),
					})
					return
				end

				object[property] = GetNestedValue(Starlight.CurrentTheme, themeKey)
			end)
		end

		themeEvent.Event:Connect(set)
		set()
	end,
	encodeTheme = function(theme)
		local function serialize(data)
			if typeof(data) == "Color3" then
				return { __type = "Color3", R = data.R * 255, G = data.G * 255, B = data.B * 255 }
			elseif typeof(data) == "ColorSequence" then
				local keypoints = {}
				for _, kp in ipairs(data.Keypoints) do
					table.insert(keypoints, {
						Time = kp.Time,
						Value = { R = kp.Value.R * 255, G = kp.Value.G * 255, B = kp.Value.B * 255 },
					})
				end
				return { __type = "ColorSequence", Keypoints = keypoints }
			elseif type(data) == "table" then
				local newTbl = {}
				for k, v in pairs(data) do
					newTbl[k] = serialize(v)
				end
				return newTbl
			end
			return data
		end

		local serialized = serialize(theme)
		local success, encoded = pcall(HttpService.JSONEncode, HttpService, serialized)
		if not success then
			return false, "Failed to encode into JSON Data."
		end
		return true, encoded
	end,
	decodeTheme = function(data)
		local function deserialize(value)
			if type(value) == "table" then
				if value.__type == "Color3" then
					return Color3.fromRGB(value.R, value.G, value.B)
				elseif value.__type == "ColorSequence" then
					local keypoints = {}
					for _, kp in ipairs(value.Keypoints) do
						table.insert(
							keypoints,
							ColorSequenceKeypoint.new(kp.Time, Color3.fromRGB(kp.Value.R, kp.Value.G, kp.Value.B))
						)
					end
					return ColorSequence.new(keypoints)
				else
					local newTbl = {}
					for k, v in pairs(value) do
						newTbl[k] = deserialize(v)
					end
					return newTbl
				end
			end
			return value
		end

		local success, decoded = pcall(HttpService.JSONDecode, HttpService, data)
		if not success then
			return false, "Failed to decode JSON data."
		end
		return deserialize(decoded)
	end,
}

-- Removes item from a provided table via the value of the item
-- and tablre is not a typo, table was already taken by roblox's core scripting
function Table.Remove(tablre: table, value)
	for i, v in pairs(tablre) do
		if v == value then
			table.remove(tablre, i)
		end
	end
end

-- Returns a table with RGB Values of the provided Color
function Color.Unpack(Color: Color3)
	return { R = Color.R * 255, G = Color.G * 255, B = Color.B * 255 }
end

-- Returns a color with the RGB Values of the provided table
function Color.Pack(Color: table)
	return Color3.fromRGB(Color.R, Color.G, Color.B)
end

-- Deprecated with the new AcrylicModule system.
--[=[
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
]=]

-- Unpacks A Table, Returning it as string containing a list of the values
--[Obsolete "So apparently... theres a function called table.concat and it does exactly what this does. So yea, i didnt know lmao"]
function Table.Unpack(array: table)
	local val = ""
	for _, v in pairs(array) do
		val = val .. tostring(v) .. ", "
	end

	val = string.sub(val, 1, #val - 2)
	return val
end

function String.IsEmptyOrNull(str: string)
	if str == nil then
		return true
	end
	if type(str) ~= "string" then
		return false
	end
	if str == "" or str:match("^%s*$") then
		return true
	end
	return false
end

--// SUBSECTION : Window Methods

-- this is a way to allow for tweening cus roblox doesnt have opacity yet and my lazy ass is not gonna be able to set each and every value without crashing out - also this makes it extremely future/change proof
-- Table for Transparency Values Of All Instances
local TransparencyValues = {
	["TEMPLATE"] = {
		BackgroundTransparency = nil,
		TextTransparency = nil,
		Transparency = nil,
		ImageTransparency = nil,
	},
}
-- sometimes it breaks for no reason, so just throw nothing if it does to prevent errors
setmetatable(TransparencyValues, {
	__index = function()
		return
	end,
})

local oldSizeX, oldSizeY, oldPosX, oldPosY

-- Hides the given object
local function Hide(Interface, JustHide: boolean?, Notify: boolean?, Bind: string?)
	JustHide = JustHide or false

	TransparencyValues[Interface.Name] = TransparencyValues[Interface.Name] or {}
	-- Clear Table
	table.clear(TransparencyValues[Interface.Name])

	for i, v in pairs(Interface:GetDescendants()) do
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
			-- Create And Set Subtables
			if JustHide == false then
				v:SetAttribute("InstanceID", HttpService:GenerateGUID(false)) -- we are doing this cus roblox fucking removed/disabled the UniqueId feature, and stuff might have the same name

				TransparencyValues[Interface.Name][v:GetAttribute("InstanceID")] = {}

				if v.ClassName == "Frame" then
					TransparencyValues[Interface.Name][v:GetAttribute("InstanceID")].BackgroundTransparency =
						v.BackgroundTransparency
				end

				if v.ClassName == "TextLabel" or v.ClassName == "TextBox" or v.ClassName == "TextButton" then
					TransparencyValues[Interface.Name][v:GetAttribute("InstanceID")].BackgroundTransparency =
						v.BackgroundTransparency
					TransparencyValues[Interface.Name][v:GetAttribute("InstanceID")].TextTransparency =
						v.TextTransparency
				end

				if v.ClassName == "ImageLabel" or v.ClassName == "ImageButton" then
					TransparencyValues[Interface.Name][v:GetAttribute("InstanceID")].BackgroundTransparency =
						v.BackgroundTransparency
					TransparencyValues[Interface.Name][v:GetAttribute("InstanceID")].ImageTransparency =
						v.ImageTransparency
				end

				-- do this cus roblox gui stuff have a although deprecated class, its still accesible by scripts
				-- and sets text and transparency values which is smth we dont want
				if v.ClassName == "UIStroke" or v.ClassName == "UIGradient" then
					TransparencyValues[Interface.Name][v:GetAttribute("InstanceID")].Transparency = v.Transparency
				end
			end

			-- Actually Hide The Stuff
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
			Interface:SetAttribute("InstanceID", HttpService:GenerateGUID(false)) -- we are doing this cus roblox fucking removed/disabled the UniqueId feature, and stuff might have the same name

			TransparencyValues[Interface.Name][Interface:GetAttribute("InstanceID")] = {}

			if Interface.ClassName == "Frame" then
				TransparencyValues[Interface.Name][Interface:GetAttribute("InstanceID")].BackgroundTransparency =
					Interface.BackgroundTransparency
			end

			if
				Interface.ClassName == "TextLabel"
				or Interface.ClassName == "TextBox"
				or Interface.ClassName == "TextButton"
			then
				TransparencyValues[Interface.Name][Interface:GetAttribute("InstanceID")].BackgroundTransparency =
					Interface.BackgroundTransparency
				TransparencyValues[Interface.Name][Interface:GetAttribute("InstanceID")].TextTransparency =
					Interface.TextTransparency
			end

			if Interface.ClassName == "ImageLabel" or Interface.ClassName == "ImageButton" then
				TransparencyValues[Interface.Name][Interface:GetAttribute("InstanceID")].BackgroundTransparency =
					Interface.BackgroundTransparency
				TransparencyValues[Interface.Name][Interface:GetAttribute("InstanceID")].ImageTransparency =
					Interface.ImageTransparency
			end

			-- do this cus roblox gui stuff have a although deprecated class, its still accesible by scripts
			-- and sets text and transparency values which is smth we dont want
			if Interface.ClassName == "UIStroke" or Interface.ClassName == "UIGradient" then
				TransparencyValues[Interface.Name][Interface:GetAttribute("InstanceID")].Transparency =
					Interface.Transparency
			end
		end

		-- Actually Hide The Stuff
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
	
	-- hide popups
	if not isStudio and Starlight.Instance.MobileToggle.Visible then
		InputManager:SendTouchEvent(
			0, 0, 0, 0
		)

		InputManager:SendTouchEvent(
			0, 2, 0, 0
		)
	elseif not isStudio then
		InputManager:SendMouseButtonEvent(
			0, 0, 0, true, game, 0
		)

		InputManager:SendMouseButtonEvent(
			0, 0, 0, false, game, 0
		)
	end


	task.wait(0.18)
	if Interface.ClassName == "ScreenGui" then
		Interface.Enabled = false
	else
		Interface.Visible = false
	end

	if Notify then
		if Starlight.Instance.MobileToggle.Visible then
			Starlight:Notification({
				Title = "Interface Hidden",
				Icon = 87575513726659,
				Content = "The Interface Has Been Hidden. You May Reopen It By Pressing The Small Icon Button. ",
				Duration = 2,
			})
		else
			Starlight:Notification({
				Title = "Interface Hidden",
				Icon = 87575513726659,
				Content = "The Interface Has Been Hidden. You May Reopen It By Pressing The " .. Bind .. " Key.  ",
				Duration = 2,
			})
		end
	end

	Starlight.Minimized = true
end

-- Unhides the given object which has been hidden by hide
local function Unhide(Interface)
	if Interface.ClassName == "ScreenGui" then
		Interface.Enabled = true
	else
		Interface.Visible = true
	end

	for i, v in pairs(Interface:GetDescendants()) do
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
				if
					(v.ClassName == "Frame")
					and TransparencyValues[Interface.Name][v:GetAttribute("InstanceID")].BackgroundTransparency
					~= nil
				then
					Tween(
						v,
						{
							BackgroundTransparency = TransparencyValues[Interface.Name][v:GetAttribute("InstanceID")].BackgroundTransparency,
						}
					)
				end

				if
					(v.ClassName == "TextLabel" or v.ClassName == "TextBox" or v.ClassName == "TextButton")
					and TransparencyValues[Interface.Name][v:GetAttribute("InstanceID")].BackgroundTransparency ~= nil
					and TransparencyValues[Interface.Name][v:GetAttribute("InstanceID")].TextTransparency ~= nil
				then
					Tween(
						v,
						{
							BackgroundTransparency = TransparencyValues[Interface.Name][v:GetAttribute("InstanceID")].BackgroundTransparency,
						}
					)
					Tween(
						v,
						{
							TextTransparency = TransparencyValues[Interface.Name][v:GetAttribute("InstanceID")].TextTransparency,
						}
					)
				end

				if
					(v.ClassName == "ImageLabel" or v.ClassName == "ImageButton")
					and TransparencyValues[Interface.Name][v:GetAttribute("InstanceID")].BackgroundTransparency ~= nil
					and TransparencyValues[Interface.Name][v:GetAttribute("InstanceID")].ImageTransparency
				then
					Tween(
						v,
						{
							BackgroundTransparency = TransparencyValues[Interface.Name][v:GetAttribute("InstanceID")].BackgroundTransparency,
						}
					)
					Tween(
						v,
						{
							ImageTransparency = TransparencyValues[Interface.Name][v:GetAttribute("InstanceID")].ImageTransparency,
						}
					)
				end

				if
					(v.ClassName == "UIStroke" or Interface.ClassName == "UIGradient")
					and TransparencyValues[Interface.Name][v:GetAttribute("InstanceID")].Transparency
				then
					Tween(
						v,
						{ Transparency = TransparencyValues[Interface.Name][v:GetAttribute("InstanceID")].Transparency }
					)
				end
			end)
		end
	end

	pcall(function()
		if Interface.ClassName ~= "ScreenGui" then
			if
				(Interface.ClassName == "Frame")
				and TransparencyValues[Interface.Name][Interface:GetAttribute("InstanceID")].BackgroundTransparency
				~= nil
			then
				Tween(
					Interface,
					{
						BackgroundTransparency = TransparencyValues[Interface.Name][Interface:GetAttribute(
							"InstanceID"
						)].BackgroundTransparency,
					}
				)
			end

			if
				(
					Interface.ClassName == "TextLabel"
						or Interface.ClassName == "TextBox"
						or Interface.ClassName == "TextButton"
				)
					and TransparencyValues[Interface.Name][Interface:GetAttribute("InstanceID")].BackgroundTransparency ~= nil
					and TransparencyValues[Interface.Name][Interface:GetAttribute("InstanceID")].TextTransparency ~= nil
			then
				Tween(
					Interface,
					{
						BackgroundTransparency = TransparencyValues[Interface.Name][Interface:GetAttribute(
							"InstanceID"
						)].BackgroundTransparency,
					}
				)
				Tween(
					Interface,
					{
						TextTransparency = TransparencyValues[Interface.Name][Interface:GetAttribute("InstanceID")].TextTransparency,
					}
				)
			end

			if
				(Interface.ClassName == "ImageLabel" or Interface.ClassName == "ImageButton")
				and TransparencyValues[Interface.Name][Interface:GetAttribute("InstanceID")].BackgroundTransparency ~= nil
				and TransparencyValues[Interface.Name][Interface:GetAttribute("InstanceID")].ImageTransparency
			then
				Tween(
					Interface,
					{
						BackgroundTransparency = TransparencyValues[Interface.Name][Interface:GetAttribute(
							"InstanceID"
						)].BackgroundTransparency,
					}
				)
				Tween(
					Interface,
					{
						ImageTransparency = TransparencyValues[Interface.Name][Interface:GetAttribute("InstanceID")].ImageTransparency,
					}
				)
			end

			if
				(Interface.ClassName == "UIStroke" or Interface.ClassName == "UIGradient")
				and TransparencyValues[Interface.Name][Interface:GetAttribute("InstanceID")].Transparency
			then
				Tween(
					Interface,
					{
						Transparency = TransparencyValues[Interface.Name][Interface:GetAttribute("InstanceID")].Transparency,
					}
				)
			end
		end
	end)

	Starlight.Minimized = false
end

-- Maximizes the window
local function Maximize(Window: Frame)
	oldSizeX = Window.Size.X.Offset
	oldSizeY = Window.Size.Y.Offset
	oldPosX = Window.Position.X.Offset
	oldPosY = Window.Position.Y.Offset

	Tween(Window, { Size = UDim2.new(1, -2, 1, -2) }, nil, Tween.Info(nil, nil, 0.38))
	Tween(Window, { Position = UDim2.fromOffset(1, 1) }, nil, Tween.Info(nil, nil, 0.38))

	Starlight.Maximized = true
end

-- Unmaximizes the window and sets it to its previous size
local function Unmaximize(Window: Frame, Dragging: boolean?)
	Dragging = Dragging or false

	Window.UICorner.CornerRadius = UDim.new(0, 8)

	Tween(Window, { Size = UDim2.fromOffset(oldSizeX, oldSizeY) })
	if not Dragging then
		Tween(Window, { Position = UDim2.fromOffset(oldPosX, oldPosY) })
	end

	Starlight.Maximized = false
end

-- Add a tooltip to the element
local function AddToolTip(InfoStr, HoverInstance)
	local label = Instance.new("TextLabel")
	label.Text = InfoStr or ""
	label.AnchorPoint = Vector2.new(0, 0.5)
	label.Position = UDim2.new(0, 4, 0.5, 0)
	label.TextSize = 15
	label.TextXAlignment = Enum.TextXAlignment.Left
	label.FontFace = Font.fromId(12187365364, Enum.FontWeight.Regular)
	label.TextWrapped = true
	label.BackgroundTransparency = 1
	label.TextColor3 = Color3.new(1, 1, 1)

	local tooltip = Instance.new("Frame")
	tooltip.ZIndex = 300
	tooltip.Parent = Starlight.Instance.Tooltips
	tooltip.Name = HoverInstance.Name

	label.ZIndex = tooltip.ZIndex + 1
	label.Parent = tooltip
	label.Size = UDim2.fromOffset(math.huge, math.huge)
	if label.TextBounds.X > 180 then
		label.Size = UDim2.fromOffset(180, math.huge)
	end
	label.Size = UDim2.fromOffset(label.TextBounds.X, label.TextBounds.Y)
	tooltip.Size = UDim2.fromOffset(label.Size.X.Offset + 8, label.Size.Y.Offset + 6)

	tooltip.Visible = false

	local corner = Instance.new("UICorner")
	corner.CornerRadius = UDim.new(0, 3)
	corner.Parent = tooltip

	local stroke = Instance.new("UIStroke")
	stroke.Color = Color3.fromRGB(65, 66, 77)
	stroke.Parent = tooltip

	local hoverTime = 0
	local IsHovering = false
	local lastMousePos = nil
	local threshold = 0.44

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

		HoverInstance:GetPropertyChangedSignal("AbsolutePosition"):Connect(function()
			local p, pos, size = Mouse, HoverInstance.AbsolutePosition, HoverInstance.AbsoluteSize
			if not (p.X >= pos.X and p.X <= pos.X + size.X and p.Y >= pos.Y and p.Y <= pos.Y + size.Y) then
				IsHovering = false
				tooltip.Visible = false
			else
				IsHovering = true
				lastMousePos = Vector2.new(Mouse.X, Mouse.Y)
				hoverTime = 0
			end
		end)

		RunService.RenderStepped:Connect(function(dt)
			if not IsHovering then
				return
			end

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
	do -- Theme Binding
		ThemeMethods.bindTheme(tooltip, "BackgroundColor3", "Backgrounds.Medium")
		ThemeMethods.bindTheme(stroke, "Color", "Foregrounds.Dark")
		ThemeMethods.bindTheme(label, "TextColor3", "Foregrounds.Light")
	end
	tooltip.ClipsDescendants = false
	label.ClipsDescendants = false

	return label
end

-- A Function to make an object movable via dragging another object
-- Taken From Luna Interface Suite, A Nebula Softworks Product
local function makeDraggable(Bar, Window: Frame, dragBar, enableTaptic, tapticOffset)
	pcall(function()
		local Dragging, DragInput, MousePos, FramePos

		local dragInteract = dragBar and dragBar.Interact
		local dragBarCosmetic = dragBar and dragBar.DragCosmetic

		local function connectMethods()
			if dragBar and enableTaptic then
				dragBar.MouseEnter:Connect(function()
					if not Dragging then
						Tween(
							dragBarCosmetic,
							{ BackgroundTransparency = 0.5, Size = UDim2.new(0, 120, 0, 4) },
							nil,
							TweenInfo.new(0.25, Enum.EasingStyle.Back, Enum.EasingDirection.Out)
						)
					end
				end)

				dragBar.MouseLeave:Connect(function()
					if not Dragging then
						Tween(
							dragBarCosmetic,
							{ BackgroundTransparency = 0.7, Size = UDim2.new(0, 100, 0, 4) },
							nil,
							TweenInfo.new(0.25, Enum.EasingStyle.Back, Enum.EasingDirection.Out)
						)
					end
				end)
			end
		end

		connectMethods()

		Bar.InputBegan:Connect(function(Input)
			if
				Input.UserInputType == Enum.UserInputType.MouseButton1
				or Input.UserInputType == Enum.UserInputType.Touch
			then
				Dragging = true
				MousePos = Input.Position
				FramePos = Window.Position

				if enableTaptic then
					Tween(
						dragBarCosmetic,
						{ Size = UDim2.new(0, 110, 0, 4), BackgroundTransparency = 0 },
						nil,
						TweenInfo.new(0.35, Enum.EasingStyle.Back, Enum.EasingDirection.Out)
					)
				end

				Input.Changed:Connect(function()
					if Input.UserInputState == Enum.UserInputState.End then
						Dragging = false
						connectMethods()

						if enableTaptic then
							Tween(
								dragBarCosmetic,
								{ Size = UDim2.new(0, 100, 0, 4), BackgroundTransparency = 0.7 },
								nil,
								TweenInfo.new(0.35, Enum.EasingStyle.Back, Enum.EasingDirection.Out)
							)
						end
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

		local debounce = false
		UserInputService.InputChanged:Connect(function(Input)
			if Input == DragInput and Dragging then
				debounce = true
				if Starlight.Maximized then
					Unmaximize(Window, true)
				end
				local Delta = Input.Position - MousePos

				local newMainPosition = UDim2.new(
					FramePos.X.Scale,
					FramePos.X.Offset + Delta.X,
					FramePos.Y.Scale,
					FramePos.Y.Offset + Delta.Y
				)
				Tween(
					Window,
					{ Position = newMainPosition },
					nil,
					TweenInfo.new(0.35, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out)
				)

				if dragBar then
					local newDragBarPosition = UDim2.new(
						FramePos.X.Scale,
						FramePos.X.Offset + Delta.X + Window.Size.X.Offset / 2,
						FramePos.Y.Scale,
						FramePos.Y.Offset + Delta.Y + Window.Size.Y.Offset + 10
					)
					Tween(dragBar, { Position = newDragBarPosition }, function()
						debounce = false
					end, TweenInfo.new(0.35, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out))
				end
			end
		end)

		Window:GetPropertyChangedSignal("AbsoluteSize"):Connect(function()
			if not debounce then
				local newMainPosition = UDim2.new(
					Window.Position.X.Scale,
					Window.Position.X.Offset,
					Window.Position.Y.Scale,
					Window.Position.Y.Offset
				)
				local newDragBarPosition = UDim2.new(
					Window.Position.X.Scale,
					Window.Position.X.Offset + Window.Size.X.Offset / 2,
					Window.Position.Y.Scale,
					Window.Position.Y.Offset + Window.Size.Y.Offset + 10
				)
				Tween(
					dragBar,
					{ Position = newDragBarPosition },
					nil,
					TweenInfo.new(0.35, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out)
				)
			end
		end)
	end)
end

--// ENDSUBSECTION

--// ENDSECTION

--// SECTION : Interface Management

-- Interface Model
local modelId = debugV and 136653172778765 or 132866968194043

local StarlightUI: ScreenGui = isStudio and script.Parent:WaitForChild("Starlight V2")
	or game:GetObjects("rbxassetid://" .. modelId)[1]
local buildAttempts = 0
local correctBuild = false
local warned = false

repeat
	if
		StarlightUI.Resources:FindFirstChild("Build")
		and StarlightUI.Resources.Build.Value == Starlight.InterfaceBuild
	then
		correctBuild = true
		break
	end

	toDestroy, StarlightUI =
		StarlightUI,
		isStudio and script.Parent:FindFirstChild("Starlight V2") or game:GetObjects("rbxassetid://" .. modelId)[1]
	if toDestroy and not isStudio then
		toDestroy:Destroy()
	end

	buildAttempts += 1

until buildAttempts >= 2

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
else
	for _, Interface in ipairs(PlayerGui:GetChildren()) do
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
	((Camera.ViewportSize.Y / 2 - GuiInset) - StarlightUI.MainWindow.Size.Y.Offset / 2) - (GuiInset / 2)
)
StarlightUI:WaitForChild("Drag").Position = UDim2.new(
	0.5,
	0,
	0,
	((Camera.ViewportSize.Y / 2 - GuiInset) - StarlightUI.MainWindow.Size.Y.Offset / 2)
	- (GuiInset / 2)
		+ StarlightUI.MainWindow.Size.Y.Offset
		+ 10
)

--// SUBSECTION : Interface Variables

local mainWindow: Frame = StarlightUI.MainWindow
local Resources = StarlightUI.Resources
local navigation: Frame = mainWindow.Sidebar.Navigation
local tabs: Frame = mainWindow.Content.ContentMain.Elements
local Resizing = false -- Not Implemented as of Alpha Release 2
local ResizePos = false -- Not Implemented as of Alpha Release 2

local GUICanvasSize = { X = Camera.ViewportSize.X, Y = Camera.ViewportSize.Y - GuiInset }

--// SUBSECTION : Interface Variables

local mainWindow: Frame = StarlightUI.MainWindow
local Resources = StarlightUI.Resources
local navigation: Frame = mainWindow.Sidebar.Navigation
local tabs: Frame = mainWindow.Content.ContentMain.Elements
local Resizing = false -- Not Implemented as of Alpha Release 2
local ResizePos = false -- Not Implemented as of Alpha Release 2

local GUICanvasSize = { X = Camera.ViewportSize.X, Y = Camera.ViewportSize.Y - GuiInset }

--// ENDSUBSECTION

if UserInputService.TouchEnabled then
	StarlightUI.Notifications.Interactable = false
end

if PlayerGui:FindFirstChild("TouchGui") then
	local controlFrame = PlayerGui:FindFirstChild("TouchGui"):FindFirstChild("TouchControlFrame")
	local jumpButton = controlFrame and controlFrame:FindFirstChild("JumpButton")

	local function check()
		if jumpButton and jumpButton.Visible then
			StarlightUI.Notifications.Position = UDim2.new(1, -20, 1, -(24 + jumpButton.AbsoluteSize.Y))
		else
			StarlightUI.Notifications.Position = UDim2.new(1, -20, 1, -20)
		end
	end

	if jumpButton then
		jumpButton:GetPropertyChangedSignal("Visible"):Connect(check)
	end

	check()
end

--// ENDSECTION

--// SECTION : Library Methods

-- Sets what to do on destruction
function Starlight:OnDestroy(func)
	Starlight.DestroyFunction = func
end

-- Destroys The Interface
function Starlight:Destroy()
	task.wait()
	StarlightUI:Destroy()
end
StarlightUI.Destroying:Connect(function()
	pcall(Starlight.DestroyFunction)
	for i, v in pairs(connections) do
		v:Disconnect()
	end
	if Starlight.Window then
		for _, tabSection in pairs(Starlight.Window.TabSections) do
			tabSection:Destroy()
		end
	end
	for i, v in pairs(Starlight) do
		v = nil
	end
	if Camera:FindFirstChild("Starlight Blur Elements") then
		for _, blur in pairs(Camera:FindFirstChild("Starlight Blur Elements"):GetChildren()) do
			blur:Destroy()
		end
		--Camera:FindFirstChild("Starlight Blur Elements"):Destroy()
	end
end)

function Starlight:Notification(data)
	--[[
	NotificationSettings = {
		Title = string,
		Content = string,
		Icon = number, **
		Duration = number, **
	}
	]]

	--[[if not correctBuild and not warned then
		warned = true
		warn('Starlight | Build Mismatch')
		warn('Starlight may run into issues as it seems you are running an incompatible interface version ('.. (StarlightUI.Resources:FindFirstChild("Build") and StarlightUI.Resources:FindFirstChild("Build").Value or 'No Build') ..'). of Starlight\n\nThis version of Starlight is intended for interface build '..Starlight.InterfaceBuild..'.\nTry rerunning the script. If the issue persists, join our discord for support.')
		pcall(function()
			Starlight:Notification({
				Title = "Starlight - Build Mistmatch",
				Content = 'Starlight may run into issues as it seems you are running an incompatible interface version ('.. (StarlightUI.Resources:FindFirstChild("Build") and StarlightUI.Resources:FindFirstChild("Build").Value or 'No Build') ..'). of Starlight\n\nThis version of Starlight is intended for interface build '..Starlight.InterfaceBuild..'. \nTry rerunning the script. If the issue persists, join our discord for support.',
				Icon = 129398364168201
			})
		end)
	end]]

	task.spawn(function()
		local creationTime = tick()

		-- Notification Object Creation
		local newNotification = Resources.Elements.NotificationTemplate:Clone()
		newNotification.Name = data.Title
		newNotification.Parent = StarlightUI.Notifications
		newNotification.LayoutOrder = #StarlightUI.Notifications:GetChildren()
		newNotification.Visible = false
		local AcrylicObject = Acrylic.AcrylicPaint()
		pcall(function()
			AcrylicObject.AddParent(newNotification)
			AcrylicObject.Frame.Parent = newNotification
		end)

		local function setDuration(elapsed)
			if elapsed <= 4 then
				newNotification.Time.Text = "now"
			elseif elapsed < 60 then
				newNotification.Time.Text = math.floor(elapsed) .. "s ago"
			elseif elapsed < 3600 then
				newNotification.Time.Text = math.floor(elapsed / 60) .. "m ago"
			else
				newNotification.Time.Text = math.floor(elapsed / 3600) .. "h ago"
			end
		end

		task.spawn(function() end)
		table.insert(
			connections,
			RunService.RenderStepped:Connect(function()
				pcall(setDuration, tick() - creationTime)
			end)
		)

		notificationAcrylicEvent.Event:Connect(function()
			if newNotification.BackgroundTransparency == 1 then
				return
			end
			TweenService:Create(
				newNotification,
				TweenInfo.new(0.4, Enum.EasingStyle.Exponential),
				{ BackgroundTransparency = notificationAcrylic and (mainAcrylic and 0.55 or 0.375) or 0 }
			):Play()
		end)

		-- Set Data
		newNotification.Title.Text = data.Title
		newNotification.Description.Text = data.Content
		newNotification.Icon.Image = "rbxassetid://" .. (data.Icon or "")

		-- Set initial transparency values
		Hide(newNotification, false, false, false)

		task.wait()

		-- Calculate textbounds and set initial values
		newNotification.Size =
			UDim2.new(1, 0, 0, -StarlightUI.Notifications:FindFirstChild("UIListLayout").Padding.Offset)

		newNotification.Visible = true

		newNotification.Description.Size = UDim2.new(1, -65, 0, math.huge)
		local bounds = newNotification.Description.TextBounds.Y
		newNotification.Description.Size = UDim2.new(1, -65, 0, bounds + 2)
		newNotification.Size =
			UDim2.new(1, 0, 0, -StarlightUI.Notifications:FindFirstChild("UIListLayout").Padding.Offset)
		task.wait()
		TweenService:Create(
			newNotification,
			TweenInfo.new(0.6, Enum.EasingStyle.Exponential),
			{ Size = UDim2.new(1, 0, 0, bounds + 50) }
		):Play()

		task.wait(0.15)
		pcall(function()
			TweenService:Create(
				newNotification,
				TweenInfo.new(0.4, Enum.EasingStyle.Exponential),
				{ BackgroundTransparency = notificationAcrylic and (mainAcrylic and 0.55 or 0.375) or 0 }
			):Play()
			pcall(function()
				TweenService:Create(
					newNotification.Acrylic.shadow,
					TweenInfo.new(0.4, Enum.EasingStyle.Exponential),
					{ ImageTransparency = 0.7 }
				):Play()
				TweenService:Create(
					newNotification.Acrylic.tint,
					TweenInfo.new(0.4, Enum.EasingStyle.Exponential),
					{ ImageTransparency = 0.98 }
				):Play()
				TweenService:Create(
					newNotification.Acrylic.Noise,
					TweenInfo.new(0.4, Enum.EasingStyle.Exponential),
					{ ImageTransparency = 0.9 }
				):Play()
			end)
			TweenService:Create(
				newNotification.Shadow.antumbraShadow,
				TweenInfo.new(0.4, Enum.EasingStyle.Exponential),
				{ ImageTransparency = 0.94 }
			):Play()
			TweenService:Create(
				newNotification.Shadow.penumbraShadow,
				TweenInfo.new(0.4, Enum.EasingStyle.Exponential),
				{ ImageTransparency = 0.55 }
			):Play()
			TweenService:Create(
				newNotification.Shadow.umbraShadow,
				TweenInfo.new(0.4, Enum.EasingStyle.Exponential),
				{ ImageTransparency = 0.4 }
			):Play()
			TweenService
				:Create(
					newNotification.Title,
					TweenInfo.new(0.3, Enum.EasingStyle.Exponential),
					{ TextTransparency = 0 }
				)
				:Play()

			task.wait(0.05)

			TweenService
				:Create(
					newNotification.Icon,
					TweenInfo.new(0.3, Enum.EasingStyle.Exponential),
					{ ImageTransparency = 0 }
				)
				:Play()

			task.wait(0.05)
			TweenService:Create(
				newNotification.Description,
				TweenInfo.new(0.3, Enum.EasingStyle.Exponential),
				{ TextTransparency = 0.35 }
			):Play()
			TweenService
				:Create(
					newNotification.Time,
					TweenInfo.new(0.3, Enum.EasingStyle.Exponential),
					{ TextTransparency = 0.35 }
				)
				:Play()
			TweenService
				:Create(
					newNotification.UIStroke,
					TweenInfo.new(0.4, Enum.EasingStyle.Exponential),
					{ Transparency = 0.95 }
				)
				:Play()

			-- Theme Binding
			do
				ThemeMethods.bindTheme(newNotification, "BackgroundColor3", "Backgrounds.Medium")
				ThemeMethods.bindTheme(newNotification.UIStroke, "Color", "Foregrounds.Dark")
				for _, shadow in pairs(newNotification.Shadow:GetChildren()) do
					ThemeMethods.bindTheme(shadow, "ImageColor3", "Miscellaneous.LighterShadow")
				end
				ThemeMethods.bindTheme(newNotification.Icon, "ImageColor3", "Foregrounds.Light")
				ThemeMethods.bindTheme(newNotification.Description, "TextColor3", "Foregrounds.Light")
				ThemeMethods.bindTheme(newNotification.Title, "TextColor3", "Foregrounds.Light")
				ThemeMethods.bindTheme(newNotification.Time, "TextColor3", "Foregrounds.Light")
			end
		end)

		data.Duration = data.Duration or math.min(math.max((#newNotification.Description.Text * 0.1) + 2.5, 3), 10)
		if data.Duration >= 0 then
			task.wait(data.Duration)

			pcall(function()
				if not Starlight.NotificationsOpen then
					newNotification.Icon.Visible = false
					TweenService:Create(
						newNotification,
						TweenInfo.new(0.4, Enum.EasingStyle.Exponential),
						{ BackgroundTransparency = 1 }
					):Play()
					TweenService:Create(
						newNotification.UIStroke,
						TweenInfo.new(0.4, Enum.EasingStyle.Exponential),
						{ Transparency = 1 }
					):Play()
					TweenService:Create(
						newNotification.Shadow.antumbraShadow,
						TweenInfo.new(0.4, Enum.EasingStyle.Exponential),
						{ ImageTransparency = 1 }
					):Play()
					TweenService:Create(
						newNotification.Shadow.penumbraShadow,
						TweenInfo.new(0.4, Enum.EasingStyle.Exponential),
						{ ImageTransparency = 1 }
					):Play()
					TweenService:Create(
						newNotification.Shadow.umbraShadow,
						TweenInfo.new(0.4, Enum.EasingStyle.Exponential),
						{ ImageTransparency = 1 }
					):Play()
					TweenService:Create(
						newNotification.Title,
						TweenInfo.new(0.3, Enum.EasingStyle.Exponential),
						{ TextTransparency = 1 }
					):Play()
					TweenService:Create(
						newNotification.Description,
						TweenInfo.new(0.3, Enum.EasingStyle.Exponential),
						{ TextTransparency = 1 }
					):Play()
					TweenService:Create(
						newNotification.Time,
						TweenInfo.new(0.3, Enum.EasingStyle.Exponential),
						{ TextTransparency = 1 }
					):Play()

					TweenService:Create(
						newNotification,
						TweenInfo.new(1, Enum.EasingStyle.Exponential),
						{ Size = UDim2.new(1, -90, 0, 0) }
					):Play()

					Tween(
						newNotification,
						{
							Size = UDim2.new(
								1,
								-90,
								0,
								-StarlightUI.Notifications:FindFirstChild("UIListLayout").Padding.Offset
							),
						},
						function()
							newNotification.Visible = false
						end,
						TweenInfo.new(1, Enum.EasingStyle.Exponential)
					)
				end

				CollectionService:AddTag(newNotification, "__starlight_ExpiredNotification")
			end)
		end
		return newNotification
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
		
		FileSettings = {
			RootFolder = string, **
			ConfigFolder = string,**  
			ThemeFolder = string, **
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
	
	]]
	--

	if
		not correctBuild
		and not warned
		and (WindowSettings.BuildWarnings == nil and true or WindowSettings.BuildWarnings)
	then
		warned = true
		warn("Starlight | Build Mismatch")
		warn(
			"Starlight may run into issues as it seems you are running an incompatible interface version ("
				.. (StarlightUI.Resources:FindFirstChild("Build") and StarlightUI.Resources:FindFirstChild("Build").Value or "No Build")
				.. "). of Starlight\n\nThis version of Starlight is intended for interface build "
				.. Starlight.InterfaceBuild
				.. ".\nTry rerunning the script. If the issue persists, join our discord for support."
		)
		pcall(function()
			Starlight:Notification({
				Title = "Starlight - Build Mistmatch",
				Content = "Starlight may run into issues as it seems you are running an incompatible interface version ("
					.. (StarlightUI.Resources:FindFirstChild("Build") and StarlightUI.Resources:FindFirstChild("Build").Value or "No Build")
					.. "). of Starlight\n\nThis version of Starlight is intended for interface build "
					.. Starlight.InterfaceBuild
					.. ". \nTry rerunning the script. If the issue persists, join our discord for support.",
				Icon = 129398364168201,
			})
		end)
	end

	WindowSettings.FileSettings = WindowSettings.FileSettings or {}
	local hasOld = WindowSettings.ConfigurationSettings ~= nil
	if WindowSettings.FileSettings.RootFolder == nil and hasOld then
		WindowSettings.FileSettings.RootFolder = WindowSettings.ConfigurationSettings.RootFolder
	end
	if WindowSettings.FileSettings.ConfigFolder == nil and hasOld then
		WindowSettings.FileSettings.ConfigFolder = WindowSettings.ConfigurationSettings.FolderName
	end

	local root = WindowSettings.FileSettings.RootFolder
	local folder = WindowSettings.FileSettings.ConfigFolder
	local folderpath = root ~= nil and root .. "/" .. folder or folder

	if root ~= nil then
		WindowSettings.FileSettings.ThemesInRoot = WindowSettings.FileSettings.ThemesInRoot == nil and true
			or WindowSettings.FileSettings.ThemesInRoot
	end

	if WindowSettings.NotifyOnCallbackError == nil then
		WindowSettings.NotifyOnCallbackError = true
	end
	Starlight.FileSystem.AutoloadConfigPath = `{Starlight.FileSystem.Folder}/{folderpath}/configs/`
	if WindowSettings.FileSettings.ThemesInRoot then
		Starlight.FileSystem.AutoloadThemePath = `{Starlight.FileSystem.Folder}/{root}/themes/`
	else
		Starlight.FileSystem.AutoloadThemePath = `{Starlight.FileSystem.Folder}/{folderpath}/themes/`
	end

	Starlight.FileSystem:BuildFolderTree(WindowSettings.FileSettings)

	Starlight.Window = {
		Instance = mainWindow,
		TabSections = {},
		CurrentTab = nil,
		Settings = nil,
		CurrentSize = mainWindow.Size,

		Values = WindowSettings,
	}

	--// SUBSECTION : Initial Code
	do
		local AcrylicObject = Acrylic.AcrylicPaint()
		local AcrylicObject2 = Acrylic.AcrylicPaint()
		pcall(function()
			AcrylicObject.AddParent(mainWindow)
			AcrylicObject.Frame.Parent = mainWindow
			AcrylicObject.Model.Size = Vector3.new(1.0, 1.032, 0.001)
			AcrylicObject2.AddParent(StarlightUI.MobileToggle)
			AcrylicObject2.Frame.Parent = StarlightUI.MobileToggle
			AcrylicObject2.Model.Size = Vector3.new(1.0, 1.0, 0.001)
		end)

		acrylicEvent.Event:Connect(function()
			notificationAcrylicEvent:Fire()
			if mainAcrylic then
				Tween(mainWindow, { BackgroundTransparency = 0.6 })
				Tween(mainWindow.Content.ContentMain, { BackgroundTransparency = 0.6 })
				for _, cornerrepair in pairs(mainWindow.Content.ContentMain.CornerRepairs:GetChildren()) do
					Tween(cornerrepair, { ImageTransparency = 0.6 })
				end
				Tween(mainWindow.Content.Topbar, { BackgroundTransparency = 0.5 })
				for _, cornerrepair in pairs(mainWindow.Content.Topbar.CornerRepairs:GetChildren()) do
					Tween(cornerrepair, { ImageTransparency = 0.5 })
				end
				Tween(mainWindow.Sidebar, { BackgroundTransparency = 0.45 })
				for _, cornerrepair in pairs(mainWindow.Sidebar.CornerRepairs:GetChildren()) do
					Tween(cornerrepair, { ImageTransparency = 0.45 })
				end
				Tween(StarlightUI.MobileToggle.Backdrop, { BackgroundTransparency = 0.5 })
				Tween(StarlightUI.MobileToggle.Backdrop.UIStroke, { Transparency = 0.5 })
				AcrylicObject.Frame.shadow.Visible = true
			else
				Tween(mainWindow, { BackgroundTransparency = 0 })
				Tween(mainWindow.Content.ContentMain, { BackgroundTransparency = 0 })
				for _, cornerrepair in pairs(mainWindow.Content.ContentMain.CornerRepairs:GetChildren()) do
					Tween(cornerrepair, { ImageTransparency = 0 })
				end
				Tween(mainWindow.Content.Topbar, { BackgroundTransparency = 0 })
				for _, cornerrepair in pairs(mainWindow.Content.Topbar.CornerRepairs:GetChildren()) do
					Tween(cornerrepair, { ImageTransparency = 0 })
				end
				Tween(mainWindow.Sidebar, { BackgroundTransparency = 0 })
				for _, cornerrepair in pairs(mainWindow.Sidebar.CornerRepairs:GetChildren()) do
					Tween(cornerrepair, { ImageTransparency = 0 })
				end
				Tween(StarlightUI.MobileToggle.Backdrop, { BackgroundTransparency = 0 })
				Tween(StarlightUI.MobileToggle.Backdrop.UIStroke, { Transparency = 0 })
				AcrylicObject.Frame.shadow.Visible = false
			end
		end)

		mainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.Visible = false
		local loadingScreenLogoChanged = false

		mainWindow["New Loading Screen"].Visible = true
		mainWindow.ModalOverlay.Visible = true

		mainWindow.Size = WindowSettings.DefaultSize ~= nil and WindowSettings.DefaultSize or mainWindow.Size
		if (GUICanvasSize.X - 50) <= mainWindow.AbsoluteSize.X then
			mainWindow.Size = UDim2.new(0, GUICanvasSize.X - 50, mainWindow.Size.Y.Scale, mainWindow.Size.Y.Offset)
		end
		if (GUICanvasSize.Y - 50) <= mainWindow.AbsoluteSize.Y then
			mainWindow.Size = UDim2.new(mainWindow.Size.X.Scale, mainWindow.Size.X.Offset, 0, GUICanvasSize.Y - 50)
		end

		mainWindow.Sidebar.Icon.Image = WindowSettings.Icon ~= nil and "rbxassetid://" .. WindowSettings.Icon or ""
		mainWindow.Sidebar.Header.Text = WindowSettings.Name or ""
		mainWindow.Content.Topbar.Headers.Subheader.Text = WindowSettings.Subtitle or ""
		StarlightUI.MobileToggle.Image = WindowSettings.Icon ~= nil and "rbxassetid://" .. WindowSettings.Icon
			or "rbxassetid://6031097229"

		local size = mainWindow.Size
		mainWindow.Size = WindowSettings.LoadingEnabled and UDim2.fromOffset(500, 325) or mainWindow.Size
		StarlightUI.MainWindow.Position = UDim2.fromOffset(
			Camera.ViewportSize.X / 2 - StarlightUI.MainWindow.Size.X.Offset / 2,
			((Camera.ViewportSize.Y / 2 - GuiInset) - StarlightUI.MainWindow.Size.Y.Offset / 2) - (GuiInset / 2)
		)
		StarlightUI.Drag.Position = UDim2.new(
			0.5,
			0,
			0,
			((Camera.ViewportSize.Y / 2 - GuiInset) - StarlightUI.MainWindow.Size.Y.Offset / 2)
			- (GuiInset / 2)
				+ mainWindow.Size.Y.Offset
				+ 10
		)

		mainWindow.ModalOverlay.Visible = false
		--[[mainWindow["Loading Screen"].Version.Text = WindowSettings.LoadingSettings.Title == "Starlight Interface Suite" and Release or "Starlight Interface Suite " .. Release
		mainWindow["Loading Screen"].Frame.SubFrame.Title.Text = WindowSettings.LoadingSettings.Title or ""
		mainWindow["Loading Screen"].Frame.SubFrame.Subtitle.Text = WindowSettings.LoadingSettings.Subtitle or ""]]
		if WindowSettings.LoadingSettings then
			if WindowSettings.LoadingSettings.Logo then
				mainWindow["New Loading Screen"].Frame.ImageLabel.Image.Image = "rbxassetid://"
					.. WindowSettings.LoadingSettings.Logo
				mainWindow["New Loading Screen"].Frame.ImageLabel.Image.Size = UDim2.fromScale(1, 1)
				loadingScreenLogoChanged = true
			end
		end

		mainWindow.Sidebar.Player.PlayerIcon.Image =
			Players:GetUserThumbnailAsync(Player.UserId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size48x48)
		mainWindow.Sidebar.Player.Header.Text = Player.DisplayName
		mainWindow.Sidebar.Player.subheader.Text = Player.Name

		ContentProvider:PreloadAsync({
			"rbxassetid://116767744785553", -- cursor
			"rbxassetid://90155503712202", -- cursor shadow
			"rbxassetid://18824089198", -- player blurred
			"rbxassetid://129398364168201", -- warning
			"rbxassetid://3926305904", -- dropdown arrows
			"rbxassetid://108613279334326", -- linking colorpicker
			"rbxassetid://6031625148", -- rainbow colorpicker
			"rbxassetid://4155801252", -- color picker
			"rbxassetid://16423157073", -- close
			"rbxassetid://123097456061373", -- minimise
			"rbxassetid://114684871091583", -- maximise
			"rbxassetid://6034304908", -- notification
			"rbxassetid://8445471332", -- search
			"rbxassetid://92421933997743", -- Corner Repair
			"rbxassetid://80990588449079", -- loading circle
		}, function(asset)
			if debugV then
				print(`loaded asset {asset}`)
			end
		end)

		-- Theme Binding
		do
			ThemeMethods.bindTheme(StarlightUI.MobileToggle.Backdrop, "BackgroundColor3", "Backgrounds.Dark")
			ThemeMethods.bindTheme(StarlightUI.MobileToggle.Backdrop.UIStroke, "Color", "Foregrounds.Dark")
			for _, shadow in pairs(StarlightUI.MobileToggle.Backdrop.DropShadowHolder:GetChildren()) do
				ThemeMethods.bindTheme(shadow, "ImageColor3", "Miscellaneous.Shadow")
			end

			ThemeMethods.bindTheme(mainWindow, "BackgroundColor3", "Backgrounds.Dark")
			ThemeMethods.bindTheme(mainWindow.UIStroke.Accent, "Color", "Accents.Brighter")
			for _, shadow in pairs(mainWindow.DropShadowHolder:GetChildren()) do
				ThemeMethods.bindTheme(shadow, "ImageColor3", "Miscellaneous.Shadow")
			end
			ThemeMethods.bindTheme(mainWindow.ModalOverlay, "BackgroundColor3", "Backgrounds.Groupbox")
			ThemeMethods.bindTheme(mainWindow.Sidebar, "BackgroundColor3", "Backgrounds.Light")
			for _, cornerrepair in pairs(mainWindow.Sidebar.CornerRepairs:GetChildren()) do
				ThemeMethods.bindTheme(cornerrepair, "ImageColor3", "Backgrounds.Light")
			end
			ThemeMethods.bindTheme(mainWindow.Sidebar.DropShadowHolder.DropShadow, "ImageColor3", "Foregrounds.Dark")
			ThemeMethods.bindTheme(mainWindow.Sidebar.Header, "TextColor3", "Foregrounds.Light")
			ThemeMethods.bindTheme(mainWindow.Sidebar.Player.PlayerIcon, "BackgroundColor3", "Backgrounds.Groupbox")
			ThemeMethods.bindTheme(mainWindow.Sidebar.Player.Header, "TextColor3", "Foregrounds.Light")
			ThemeMethods.bindTheme(mainWindow.Sidebar.Player.Header.Icon.Accent, "Color", "Accents.Main")
			ThemeMethods.bindTheme(mainWindow.Sidebar.Player.subheader, "TextColor3", "Foregrounds.Medium")
			ThemeMethods.bindTheme(mainWindow.Content.Topbar, "BackgroundColor3", "Backgrounds.Medium")
			for _, cornerrepair in pairs(mainWindow.Content.Topbar.CornerRepairs:GetChildren()) do
				ThemeMethods.bindTheme(cornerrepair, "ImageColor3", "Backgrounds.Medium")
			end
			ThemeMethods.bindTheme(mainWindow.Content.Topbar.Headers.Subheader, "TextColor3", "Foregrounds.Medium")
			for _, control in pairs(mainWindow.Content.Topbar.Controls:GetChildren()) do
				if control.ClassName ~= "TextButton" then
					continue
				end
				ThemeMethods.bindTheme(control, "BackgroundColor3", "Foregrounds.Dark")
			end
			ThemeMethods.bindTheme(mainWindow.Content.Topbar.NotificationCenterIcon, "ImageColor3", "Foregrounds.Dark")
			ThemeMethods.bindTheme(mainWindow.Content.Topbar.Search, "ImageColor3", "Foregrounds.Dark")
			ThemeMethods.bindTheme(mainWindow.Content.ContentMain, "BackgroundColor3", "Backgrounds.Dark")
			for _, cornerrepair in pairs(mainWindow.Content.ContentMain.CornerRepairs:GetChildren()) do
				ThemeMethods.bindTheme(cornerrepair, "ImageColor3", "Backgrounds.Dark")
			end

			ThemeMethods.bindTheme(StarlightUI.Drag.DragCosmetic, "BackgroundColor3", "Foregrounds.Light")

			ThemeMethods.bindTheme(mainWindow["New Loading Screen"], "BackgroundColor3", "Backgrounds.Medium")
			for _, shadow in pairs(mainWindow["New Loading Screen"].shadows:GetChildren()) do
				ThemeMethods.bindTheme(shadow, "ImageColor3", "Miscellaneous.LighterShadow")
			end
			ThemeMethods.bindTheme(mainWindow["New Loading Screen"].Version, "TextColor3", "Foregrounds.Medium")
			ThemeMethods.bindTheme(
				mainWindow["New Loading Screen"].Frame.SubFrame.Title,
				"TextColor3",
				"Foregrounds.Light"
			)
			ThemeMethods.bindTheme(
				mainWindow["New Loading Screen"].Frame.SubFrame.Title.playerName,
				"TextColor3",
				"Foregrounds.Light"
			)
			ThemeMethods.bindTheme(
				mainWindow["New Loading Screen"].Frame.SubFrame.Subtitle,
				"TextColor3",
				"Foregrounds.Medium"
			)
			if not loadingScreenLogoChanged then
				ThemeMethods.bindTheme(
					mainWindow["New Loading Screen"].Frame.ImageLabel.Image,
					"ImageColor3",
					"Foregrounds.Light"
				)
			end
			ThemeMethods.bindTheme(
				mainWindow["New Loading Screen"].Frame.ImageLabel.Player,
				"BackgroundColor3",
				"Backgrounds.Groupbox"
			)
		end

		task.spawn(function()
			if WindowSettings.LoadingEnabled then
				mainWindow.Visible = true
				StarlightUI.Drag.Visible = true
				StarlightUI.MobileToggle.Visible = UserInputService.TouchEnabled
					--and not UserInputService.KeyboardEnabled

				local main = mainWindow["New Loading Screen"]
				local shadows = main.shadows
				local content = main.Frame
				local versionLabel = main.Version

				local imgContainer = content.ImageLabel
				local textLabels = content.SubFrame

				local loadingCircle = imgContainer.Image
				local playerIcon = imgContainer.Player

				local subtitle = textLabels.Subtitle
				local title = textLabels.Title

				StarlightUI.MainWindow.Position = UDim2.fromOffset(
					Camera.ViewportSize.X / 2 - StarlightUI.MainWindow.Size.X.Offset / 2,
					((Camera.ViewportSize.Y / 2 - GuiInset) - StarlightUI.MainWindow.Size.Y.Offset / 2) - (GuiInset / 2)
				)
				StarlightUI.Drag.Position = UDim2.new(
					0.5,
					0,
					0,
					((Camera.ViewportSize.Y / 2 - GuiInset) - StarlightUI.MainWindow.Size.Y.Offset / 2)
					- (GuiInset / 2)
						+ mainWindow.Size.Y.Offset
						+ 10
				)

				for _, shadow in pairs(shadows:GetChildren()) do
					shadow.ImageTransparency = 1
				end
				for _, shadow in pairs(mainWindow.DropShadowHolder:GetChildren()) do
					shadow.ImageTransparency = 1
				end
				versionLabel.TextTransparency = 1
				loadingCircle.ImageTransparency = 1
				subtitle.TextTransparency = 1
				title.TextTransparency = 1

				title.Text = WindowSettings.LoadingSettings and WindowSettings.LoadingSettings.Title
					or "Starlight Interface Suite"
				versionLabel.Text = title.Text == "Starlight Interface Suite" and Release or `Starlight UI {Release}`
				title.playerName.Text = Player.DisplayName
				playerIcon.Image = Players:GetUserThumbnailAsync(
					Player.UserId,
					Enum.ThumbnailType.HeadShot,
					Enum.ThumbnailSize.Size352x352
				)

				Tween(main, { BackgroundTransparency = 0 }, nil, Tween.Info("Quint", "InOut", 0.2))
				for _, shadow in pairs(shadows:GetChildren()) do
					local trans = {
						antumbraShadow = 0.9,
						penumbraShadow = 0.45,
						umbraShadow = 0.1,
					}

					Tween(shadow, { ImageTransparency = trans[shadow.Name] }, nil, Tween.Info("Quint", "InOut", 0.2))
				end
				Tween(versionLabel, { TextTransparency = 0 }, nil, Tween.Info("Quint", "InOut", 0.2))
				task.wait(0.076)
				Tween(loadingCircle, { ImageTransparency = 0 }, nil, Tween.Info(nil, "InOut", 0.7))
				Tween(title, { TextTransparency = 0 }, nil, Tween.Info(nil, "InOut", 0.7))
				task.wait(0.05)
				Tween(subtitle, { TextTransparency = 0 }, nil, Tween.Info(nil, "InOut", 0.7))

				if not loadingScreenLogoChanged then
					Tween(
						loadingCircle,
						{ Rotation = 450 },
						nil,
						TweenInfo.new(1.7, Enum.EasingStyle.Back, Enum.EasingDirection.Out, 2, false, 0.2)
					)
				else
					if WindowSettings.LoadingSettings.IconAnimation then
						pcall(WindowSettings.LoadingSettings.IconAnimation, loadingCircle)
					end
				end

				task.wait(3.24)

				subtitle.Text = "Loaded!"
				task.wait(0.5)

				subtitle.Text = "Logging In..."
				task.wait(1.72)

				subtitle.Text = WindowSettings.LoadingSettings
					and (WindowSettings.LoadingSettings.Subtitle or WindowSettings.LoadingSettings.Title)
					or "Welcome To Starlight!"
				Tween(title, { TextTransparency = 1 }, nil, Tween.Info("Quint", "InOut", 0.2))
				Tween(title.playerName, { Position = UDim2.new(0, -8, 0, 0) }, nil, Tween.Info("Quint", "InOut", 0.85))
				Tween(
					playerIcon,
					{ Size = UDim2.new(1, -10, 1, -10), Position = UDim2.new(0.5, 0, 0.5, -6) },
					nil,
					Tween.Info("Back", "InOut", 1.4)
				)
				Tween(loadingCircle, { ImageTransparency = 1 }, nil, Tween.Info(nil, nil, 0.38))

				task.wait(1.5)

				Tween(mainWindow, {
					Size = size,
					Position = UDim2.fromOffset(
						Camera.ViewportSize.X / 2 - size.X.Offset / 2,
						((Camera.ViewportSize.Y / 2 - GuiInset) - size.Y.Offset / 2) - (GuiInset / 2)
					),
				}, nil, Tween.Info(nil, nil, 1.1))
				Tween(StarlightUI.Drag, {
					Position = UDim2.new(
						0.5,
						0,
						0,
						((Camera.ViewportSize.Y / 2 - GuiInset) - size.Y.Offset / 2)
						- (GuiInset / 2)
							+ size.Y.Offset
							+ 10
					),
				}, nil, Tween.Info(nil, nil, 1.1))

				Tween(mainWindow.DropShadowHolder.umbraShadow, {
					ImageTransparency = 0,
				}, nil, Tween.Info(nil, nil, 1.5))
				Tween(mainWindow.DropShadowHolder.antumbraShadow, {
					ImageTransparency = 0.94,
				}, nil, Tween.Info(nil, nil, 1.5))
				Tween(mainWindow.DropShadowHolder.penumbraShadow, {
					ImageTransparency = 0.55,
				}, nil, Tween.Info(nil, nil, 1.5))
				for _, shadow in pairs(shadows:GetChildren()) do
					Tween(shadow, { ImageTransparency = 1 }, nil, Tween.Info("Quint", "InOut", 1.2))
				end

				Tween(
					playerIcon,
					{ Size = UDim2.new(1, 10, 1, 10), ImageTransparency = 1 },
					nil,
					Tween.Info("Back", "InOut", 0.9)
				)
				Tween(title.playerName, { Position = UDim2.new(0, 0, 1, 0) }, nil, Tween.Info("Quint", "InOut", 0.85))
				Tween(subtitle, { TextTransparency = 1 }, nil, Tween.Info("Quint", "InOut", 0.2))
				Tween(versionLabel, { TextTransparency = 1 }, nil, Tween.Info("Quint", "InOut", 0.2))
				task.wait(0.08)
				Tween(playerIcon, { BackgroundTransparency = 1 }, nil, Tween.Info("Quint", "InOut", 0.2))
				task.wait(1.1 - 0.08)
				Tween(main, { BackgroundTransparency = 1 }, nil, Tween.Info("Quint", "InOut", 0.2))
				-- like this cus uhh tween method dont got all the properties
				--[[if not loadingScreenLogoChanged then
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
			})]]
			end

			mainWindow["New Loading Screen"].Visible = false

			mainWindow.Visible = true
			StarlightUI.Drag.Visible = true
			StarlightUI.MobileToggle.Visible = UserInputService.TouchEnabled
		end)

		makeDraggable(mainWindow.Content.Topbar, mainWindow, StarlightUI.Drag)
		makeDraggable(mainWindow.Sidebar, mainWindow, StarlightUI.Drag)
		makeDraggable(StarlightUI.MobileToggle, StarlightUI.MobileToggle, nil)
		if StarlightUI.Drag then
			makeDraggable(StarlightUI.Drag.Interact, mainWindow, StarlightUI.Drag, true, nil, StarlightUI.Drag)
		end

		--if not WindowSettings.LoadingEnabled then task.wait(.15) end
	end

	--// ENDSUBSECTION
	--// SUBSECTION : User Methods

	function Starlight.Window:PromptDialog(ModalSettings)
		--[[
		Name = "Header",
   		Content = "Description",
    	Type = 1,
    	Actions = { 
        	Primary = {
            	Name = "Okay!",
            	Icon = NebulaIcons:GetIcon("check", "Material"),
            	Callback = function()

            	end
        	}, 
        	{
            	Name = "Cancel",
            	Callback = function()
					
            	end
        	},
    	}
    	OR
    	Type = 2,
    	Actions = {
        	{
            	PlaceholderText = ""
            	...from input
            	
            	Callback = function(Text)
					
            	end
        	},
    	}
		]]

		ModalSettings.Type = ModalSettings.Type or 1

		local Modal = {
			Open = false,
			Values = ModalSettings,
		}

		Modal.Instance = mainWindow.ModalOverlay.Template:Clone()
		Modal.Instance.Holder.Actions.Primary:Destroy()
		Modal.Instance.Holder.Actions.Secondary:Destroy()
		Modal.Instance.Holder.Actions.Input:Destroy()
		Modal.Instance.Name = "Dialog"
		mainWindow.Content.Interactable = false

		repeat
			task.wait()
		until Modal.Instance.Holder ~= nil
		Modal.Instance.Holder:GetPropertyChangedSignal("AbsoluteSize"):Connect(function()
			pcall(function()
				Modal.Instance.Size =
					UDim2.fromOffset(400, Modal.Instance.Holder and Modal.Instance.Holder.AbsoluteSize.Y or 0)
			end)
		end)
		Modal.Instance.Size = UDim2.fromOffset(400, Modal.Instance.Holder and Modal.Instance.Holder.AbsoluteSize.Y)

		-- Theme Binding
		do
			ThemeMethods.bindTheme(Modal.Instance, "BackgroundColor3", "Miscellaneous.LighterShadow")
			ThemeMethods.bindTheme(Modal.Instance.UIStroke, "Color", "Foregrounds.Dark")
			for _, shadow in pairs(Modal.Instance.DropShadowHolder:GetChildren()) do
				ThemeMethods.bindTheme(shadow, "ImageColor3", "Miscellaneous.LighterShadow")
			end

			acrylicEvent.Event:Connect(function()
				if mainAcrylic then
					Modal.Instance.BackgroundTransparency = 0.7
				else
					Modal.Instance.BackgroundTransparency = 0.05
				end
			end)
		end

		local connection
		local function close(x)
			Tween(Modal.Instance.UIScale, { Scale = 1.25 })
			Hide(Modal.Instance)
			Tween(mainWindow.ModalOverlay, { BackgroundTransparency = 1, ImageTransparency = 1 }, function()
				Modal.Instance:Destroy()
			end)
			task.wait(0.18)
			mainWindow.ModalOverlay.Visible = false
			mainWindow.Content.Interactable = true
			if x then
				x()
			end
			connection:Disconnect()
		end

		connection = mainWindow.ModalOverlay.MouseButton1Click:Connect(close)

		Modal.Instance.Holder.Header.TextLabel.Text = Modal.Values.Name
		Modal.Instance.Holder.Header.Icon.Visible = not String.IsEmptyOrNull(Modal.Values.Icon)
		if Modal.Instance.Holder.Header.Icon.Visible == false then
			Modal.Instance.Holder.Header.TextLabel.Position = UDim2.fromOffset(5, 0)
		else
			Modal.Instance.Holder.Header.TextLabel.Position = UDim2.fromOffset(36, 0)
		end
		Modal.Instance.Holder.Header.Icon.Image = not String.IsEmptyOrNull(Modal.Values.Icon)
			and "rbxassetid://" .. Modal.Values.Icon
			or ""
		Modal.Instance.Holder.Content.TextLabel.Text = Modal.Values.Content

		if Modal.Values.Type == 1 then
			for Key, Action in pairs(Modal.Values.Actions) do
				local ActionButton: TextButton = nil
				if Key == "Primary" then
					ActionButton = mainWindow.ModalOverlay.Template.Holder.Actions.Primary:Clone()

					ThemeMethods.bindTheme(ActionButton.Backdrop.Accent, "Color", "Accents.Main")
					ThemeMethods.bindTheme(ActionButton.Backdrop.UIStroke.Accent, "Color", "Accents.Main")
					ThemeMethods.bindTheme(ActionButton.Header.Icon, "ImageColor3", "Foregrounds.Active")
					ThemeMethods.bindTheme(ActionButton.Header.Header, "TextColor3", "Foregrounds.Active")
				else
					ActionButton = mainWindow.ModalOverlay.Template.Holder.Actions.Secondary:Clone()

					ThemeMethods.bindTheme(ActionButton.Backdrop, "BackgroundColor3", "Backgrounds.Groupbox")
					ThemeMethods.bindTheme(ActionButton.Backdrop.UIStroke, "Color", "Foregrounds.Dark")
					ThemeMethods.bindTheme(ActionButton.Backdrop.Shadow, "BackgroundColor3", "Backgrounds.Dark")
					ThemeMethods.bindTheme(ActionButton.Header.Icon, "ImageColor3", "Foregrounds.Light")
					ThemeMethods.bindTheme(ActionButton.Header.Icon, "ImageColor3", "Foregrounds.Light")
					ThemeMethods.bindTheme(ActionButton.Header.Header, "TextColor3", "Foregrounds.Light")
				end

				ActionButton.Parent = Modal.Instance.Holder.Actions
				ActionButton.Header.Icon.Image = not String.IsEmptyOrNull(Action.Icon)
					and "rbxassetid://" .. Action.Icon
					or ""
				ActionButton.Header.Icon.Visible = not String.IsEmptyOrNull(Action.Icon)
				ActionButton.Header.Header.Text = Action.Name

				ActionButton.MouseButton1Click:Connect(function()
					close(function()
						local Success, Response = pcall(Action.Callback)

						if not Success then
							warn(`Starlight Interface Suite - Callback Error | Dialog {Modal.Values.Name}`)
							print(Response)
							if WindowSettings.NotifyOnCallbackError then
								Starlight:Notification({
									Title = Modal.Values.Name .. " Callback Error",
									Content = tostring(Response),
									Icon = 129398364168201,
								})
							end
						end
					end)
				end)
			end
		else
			Modal.Instance.Holder.Actions.UIListLayout.FillDirection = Enum.FillDirection.Vertical
			for _, Action in pairs(Modal.Values.Actions) do
				Action.CurrentValue = Action.CurrentValue or ""
				Action.PlaceholderText = Action.PlaceholderText or ""
				Action.Numeric = Action.Numeric or false
				Action.Enter = Action.Enter or true
				Action.MaxCharacters = Action.MaxCharacters or -1
				if Action.RemoveTextOnFocus == nil then
					Action.RemoveTextOnFocus = true
				end

				local ActionInput = mainWindow.ModalOverlay.Template.Holder.Actions.Input:Clone()
				ThemeMethods.bindTheme(ActionInput, "BackgroundColor3", "Backgrounds.Dark")
				ThemeMethods.bindTheme(ActionInput.UIStroke, "Color", "Foregrounds.Dark")
				ThemeMethods.bindTheme(ActionInput.PART_Input, "PlaceholderColor3", "Foregrounds.Medium")
				ThemeMethods.bindTheme(ActionInput.PART_Input, "TextColor3", "Foregrounds.Light")

				ActionInput.Visible = true
				ActionInput.Parent = Modal.Instance.Holder.Actions
				ActionInput.PART_Input.FocusLost:Connect(function(Enter)
					if not ActionInput then
						return
					end

					close(function()
						if Action.Enter then
							local Success, Response = pcall(function()
								Action.Callback(Action.CurrentValue)
							end)

							if not Success then
								warn(`Starlight Interface Suite - Callback Error | Dialog {Modal.Values.Name}`)
								print(Response)
								if WindowSettings.NotifyOnCallbackError then
									Starlight:Notification({
										Title = Modal.Values.Name .. " Callback Error",
										Content = tostring(Response),
										Icon = 129398364168201,
									})
								end
							end
						end

						if Action.RemoveTextAfterFocusLost then
							ActionInput.PART_Input.Text = ""
							Action.CurrentValue = ""
						end
					end)
				end)

				ActionInput.Interact.Focused:Connect(function()
					ActionInput.Interact:ReleaseFocus()
					ActionInput.PART_Input:CaptureFocus()
				end)

				ActionInput.MouseEnter:Connect(function()
					Tween(ActionInput.UIStroke, { Color = Starlight.CurrentTheme.Foregrounds.DarkHover })
				end)
				ActionInput.MouseLeave:Connect(function()
					Tween(ActionInput.UIStroke, { Color = Starlight.CurrentTheme.Foregrounds.Dark })
				end)

				if Action.Numeric then
					ActionInput.PART_Input:GetPropertyChangedSignal("Text"):Connect(function()
						local text = ActionInput.PART_Input.Text
						if not tonumber(text) and text ~= "." then
							ActionInput.PART_Input.Text = text:match("[0-9.]*") or ""
						end
					end)
				end

				ActionInput.PART_Input:GetPropertyChangedSignal("Text"):Connect(function()
					if Action.MaxCharacters < 0 then
						if (#ActionInput.PART_Input.Text - 1) == Action.MaxCharacters then
							ActionInput.PART_Input.Text = ActionInput.PART_Input.Text:sub(1, Action.MaxCharacters)
						end
					end
					Action.CurrentValue = ActionInput.PART_Input.Text
				end)

				ActionInput.PART_Input.PlaceholderText = Action.PlaceholderText or ""
				ActionInput.PART_Input.Text = Action.CurrentValue
				ActionInput.PART_Input.ClearTextOnFocus = Action.RemoveTextOnFocus
			end
		end

		Hide(Modal.Instance)
		--task.wait()
		Tween(Modal.Instance.UIScale, { Scale = 1 })
		Unhide(Modal.Instance)
		task.wait(0.1)
		mainWindow.ModalOverlay.Visible = true
		Tween(mainWindow.ModalOverlay, { BackgroundTransparency = 0.2, ImageTransparency = 0.1 })

		Modal.Instance.Parent = mainWindow.ModalOverlay
		--return Modal
	end

	local prebuiltTabSection = nil

	local homeTabCalled: boolean? = false
	function Starlight.Window:CreateHomeTab(TabSettings)
		TabSettings.UnsupportedExecutors = TabSettings.UnsupportedExecutors or {}
		TabSettings.SupportedExecutors = TabSettings.SupportedExecutors or {}
		TabSettings.DiscordInvite = TabSettings.DiscordInvite or ""
		TabSettings.Changelog = TabSettings.Changelog or {}
		TabSettings.IconStyle = TabSettings.IconStyle or 1

		if homeTabCalled then
			return
		end
		homeTabCalled = true

		local Tab = {
			Instances = {},
			Values = TabSettings,
			Groupboxes = {},
			Index = "prebuilthometab",

			Active = false,
			Hover = false,
		}

		if not prebuiltTabSection then
			prebuiltTabSection = Starlight.Window:CreateTabSection()
			prebuiltTabSection.Instance.LayoutOrder = -1
		end

		local executorname = identifyexecutor and identifyexecutor() or "Roblox Studio"

		Tab.Instances.Button = navigation.NavigationSectionTemplate.TabButtonTemplate:Clone()
		Tab.Instances.Button.Visible = true

		Tab.Instances.Button.Header.Text = "Dashboard"
		Tab.Instances.Button.Name = "HomeTab"

		Tab.Instances.Button.Icon.Image = Tab.Values.IconStyle == 1 and "rbxassetid://97461687077117"
			or "rbxassetid://11295288868"

		Tab.Instances.Page = tabs["HomeTab"]
		Tab.Instances.Page.Visible = true

		Tab.Instances.Page.LayoutOrder = -1

		local function Activate() -- so i dont have to rewrite shit again
			Tween(Tab.Instances.Button, { BackgroundTransparency = 0.5 })
			Tween(Tab.Instances.Button.Icon, { ImageColor3 = Starlight.CurrentTheme.Foregrounds.Light })
			Tween(Tab.Instances.Button.Header, { TextColor3 = Starlight.CurrentTheme.Foregrounds.Light })
			Tab.Instances.Button.Icon.AccentBrighter.Enabled = true
			Tab.Instances.Button.Header.AccentBrighter.Enabled = true

			for i, v in pairs(Starlight.Window.TabSections) do
				for _, tab in pairs(v.Tabs) do
					tab.Active = false
				end
			end

			for _, OtherTabSection in pairs(navigation:GetChildren()) do
				for _, OtherTab in pairs(OtherTabSection:GetChildren()) do
					if OtherTab.ClassName == "Frame" and OtherTab ~= Tab.Instances.Button then
						Tween(OtherTab, { BackgroundTransparency = 1 })
						Tween(OtherTab.Icon, { ImageColor3 = Starlight.CurrentTheme.Foregrounds.Medium })
						Tween(OtherTab.Header, { TextColor3 = Starlight.CurrentTheme.Foregrounds.Medium })
						OtherTab.Icon.AccentBrighter.Enabled = false
						OtherTab.Header.AccentBrighter.Enabled = false
					end
				end
			end

			Tab.Active = true
			Starlight.Window.CurrentTab = Tab
			tabs.UIPageLayout:JumpTo(Tab.Instances.Page)
		end

		repeat
			task.wait()
		until Tab.Instances.Page.Parent == tabs
		Activate()

		Tab.Instances.Button.Interact["MouseButton1Click"]:Connect(Activate)

		Tab.Instances.Button.MouseEnter:Connect(function()
			Tab.Hover = true
			if not Tab.Active then
				Tween(Tab.Instances.Button.Icon, { ImageColor3 = Starlight.CurrentTheme.Foregrounds.Light })
				Tween(Tab.Instances.Button.Header, { TextColor3 = Starlight.CurrentTheme.Foregrounds.Light })
			end
		end)

		Tab.Instances.Button.MouseLeave:Connect(function()
			Tab.Hover = false
			if not Tab.Active then
				Tween(Tab.Instances.Button.Icon, { ImageColor3 = Starlight.CurrentTheme.Foregrounds.Medium })
				Tween(Tab.Instances.Button.Header, { TextColor3 = Starlight.CurrentTheme.Foregrounds.Medium })
			end
		end)

		Tab.Instances.Page.InputBegan:Connect(function(input)
			if
				input.KeyCode == Enum.KeyCode.LeftShift
				or input.KeyCode == Enum.KeyCode.RightShift
				or input.UserInputType == Enum.UserInputType.Touch
			then
				Tab.Instances.Page.ScrollingEnabled = true
			end
		end)
		Tab.Instances.Page.InputEnded:Connect(function(input)
			if
				input.KeyCode == Enum.KeyCode.LeftShift
				or input.KeyCode == Enum.KeyCode.RightShift
				or input.UserInputType == Enum.UserInputType.Touch
			then
				Tab.Instances.Page.ScrollingEnabled = false
			end
		end)

		if TabSettings.Backdrop then
			if TabSettings.Backdrop == 0 then
				Tab.Instances.Page.ImageBackdrop.Image = "https://www.roblox.com/asset-thumbnail/image?assetId="
					.. game.PlaceId
					.. "&width=768&height=432&format=png"
			else
				Tab.Instances.Page.ImageBackdrop.Image = "rbxassetid://" .. TabSettings.Backdrop
				Tab.Instances.Page.ImageBackdrop.Visible = not Tab.Instances.Page.ImageBackdrop.Visible
				Tab.Instances.Page.ImageBackdrop.Visible = not Tab.Instances.Page.ImageBackdrop.Visible
			end
		else
			Tab.Instances.Page.ImageBackdrop.Image = "rbxassetid://78881404248017"
		end

		Tab.Instances.Page.playerDisplay.Text = `Welcome, {Player.DisplayName}`
		Tab.Instances.Page.Thumbnail.ImageLabel.Image =
			Players:GetUserThumbnailAsync(Player.UserId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size100x100)

		task.spawn(function()
			connections.__homeTabTime = RunService.RenderStepped:Connect(function()
				local t = os.date("*t")
				local hour = t.hour

				local formatted = string.format("%02d : %02d : %02d", hour, t.min, t.sec)
				local greetingString = ""
				if hour >= 4 and hour < 12 then
					greetingString = "Good Morning!"
				elseif hour >= 12 and hour < 19 then
					greetingString = "How's Your Day Going?"
				elseif hour >= 19 and hour <= 23 then
					greetingString = "Sweet Dreams."
				else
					greetingString = "Jeez you should be asleep..."
				end
				Tab.Instances.Page.playerUser.Text = `{greetingString} | {Player.Name}`

				Tab.Instances.Page.clock.Text =
					`{formatted}\n{string.format("%02d / %02d / %02d", t.day, t.month, t.year % 100)}`
			end)
		end)

		for _, column in pairs(Tab.Instances.Page.Holder:GetChildren()) do
			if column.ClassName ~= "Frame" then
				continue
			end

			for _, button in pairs(column:GetChildren()) do
				if button.ClassName ~= "Frame" then
					continue
				end

				button.Interact.MouseEnter:Connect(function()
					Tween(button.Hover, { BackgroundTransparency = 0 })
				end)
				button.Interact.MouseLeave:Connect(function()
					Tween(button.Hover, { BackgroundTransparency = 1 })
				end)
			end
		end
		Tab.Instances.Page.Holder.Left.Discord.Interact.MouseButton1Click:Connect(function()
			setclipboard(tostring("https://discord.gg/" .. TabSettings.DiscordInvite))
			if Request then
				pcall(function()
					Request({
						Url = "http://127.0.0.1:6463/rpc?v=1",
						Method = "POST",
						Headers = {
							["Content-Type"] = "application/json",
							Origin = "https://discord.com",
						},
						Body = HttpService:JSONEncode({
							cmd = "INVITE_BROWSER",
							nonce = HttpService:GenerateGUID(false),
							args = { code = TabSettings.DiscordInvite },
						}),
					})
				end)
			end
		end)

		table.insert(TabSettings.UnsupportedExecutors, "Roblox Studio")

		Tab.Instances.Page.Holder.Center.Executor.Header.Text = executorname
		if table.find(TabSettings.SupportedExecutors, executorname) then
			Tab.Instances.Page.Holder.Center.Executor.Subheader.Text = "Your Executor Is Supported By \nThis Script."
		end
		if table.find(TabSettings.UnsupportedExecutors, executorname) then
			Tab.Instances.Page.Holder.Center.Executor.Subheader.Text = "Your Executor Is Unsupported \nBy This Script."
		end

		Tab.Instances.Page.Holder.Left.Server.Subheader.Text = "Currently Playing "
			.. MarketplaceService:GetProductInfo(game.PlaceId).Name
		Tab.Instances.Page.Holder.Left.Server.Frame.serverregion.Text = '<font size="14" color="#FFF" weight="semibold">Region</font>\n'
			.. Localization:GetCountryRegionForPlayerAsync(Player)
		
		Tab.Instances.Page.Holder.Left.Server.Frame.copyjoin.MouseButton1Click:Connect(function()
			setclipboard(`game:GetService("TeleportService"):TeleportToPlaceInstance({game.PlaceId}, "{game.JobId}", game:GetService("Players").LocalPlayer)`)
		end)
		
		local function updatePlayerCount()
			Tab.Instances.Page.Holder.Left.Server.Frame.playercount.Text = '<font size="14" color="#FFF" weight="semibold">Players</font>\n'
				.. #Players:GetChildren()
				.. (#Players:GetChildren() > 1 and " Players" or " Player")
				.. " In\nThis Server"
			Tab.Instances.Page.Holder.Left.Server.Frame.maxplayers.Text = '<font size="14" color="#FFF" weight="semibold">Capacity</font>\n'
				.. Players.MaxPlayers
				.. (Players.MaxPlayers > 1 and " Players" or " Player")
				.. " In\ncan join."
		end
		local function protectedUpdate() -- apparently creating less funcs and locals help with memory so im doing this
			pcall(updatePlayerCount)
		end
		updatePlayerCount()
		local localconnections =
			{ Players.ChildAdded:Connect(protectedUpdate), Players.ChildRemoved:Connect(protectedUpdate) }
		Tab.Instances.Page.Holder.Left.Server.Frame.playercount.Destroying:Connect(function()
			for _, connection in pairs(localconnections) do
				connection:Disconnect()
			end
		end)
		for _, connection in pairs(localconnections) do
			table.insert(connections, connection)
		end

		local function getPing()
			return math.round(((isStudio and Players.LocalPlayer:GetNetworkPing() or StatsService.PerformanceStats.Ping:GetValue()) * 2) / 0.01)
		end
		local TimeFunction = RunService:IsRunning() and time or os.clock

		local LastIteration, Start
		local FrameUpdateTable = {}

		local friendsCooldown = 0
		local function checkFriends()
			if friendsCooldown == 0 then
				friendsCooldown = 25

				local playersFriends = {}
				local friendsInTotal = 0
				local onlineFriends = #Player:GetFriendsOnline()
				local friendsInGame = 0

				local list = Players:GetFriendsAsync(Player.UserId)
				while true do
					for _, data in list:GetCurrentPage() do
						friendsInTotal += 1
						table.insert(playersFriends, data)
					end

					if list.IsFinished then
						-- stop the loop since this is the last page
						break
					else
						-- go to the next page
						list:AdvanceToNextPageAsync()
					end
				end
				for i, v in pairs(playersFriends) do
					if Players:FindFirstChild(v.Username) then
						friendsInGame += 1
					end
				end

				Tab.Instances.Page.Holder.Right.Friends.Frame.total.Text = '<font size="14" color="#FFF" weight="semibold">Total</font>\n'
					.. tostring(friendsInTotal)
					.. " friends"
				Tab.Instances.Page.Holder.Right.Friends.Frame.offline.Text = '<font size="14" color="#FFF" weight="semibold">Offline</font>\n'
					.. tostring(friendsInTotal - onlineFriends)
					.. " friends"
				Tab.Instances.Page.Holder.Right.Friends.Frame.online.Text = '<font size="14" color="#FFF" weight="semibold">Online</font>\n'
					.. tostring(onlineFriends)
					.. " friends"
				Tab.Instances.Page.Holder.Right.Friends.Frame.inserver.Text = '<font size="14" color="#FFF" weight="semibold">In Server</font>\n'
					.. tostring(friendsInGame)
					.. " friends"
			else
				friendsCooldown -= 1
			end
		end

		local function HeartbeatUpdate()
			LastIteration = TimeFunction()
			for Index = #FrameUpdateTable, 1, -1 do
				FrameUpdateTable[Index + 1] = FrameUpdateTable[Index] >= LastIteration - 1 and FrameUpdateTable[Index]
					or nil
			end

			FrameUpdateTable[1] = LastIteration
			Tab.Instances.Page.Holder.Left.Server.Frame.latency.Text =
				`<font size="14" color="#FFF" weight="semibold">Latency</font>\n{tostring(
					math.floor(
						TimeFunction() - Start >= 1 and #FrameUpdateTable
						or #FrameUpdateTable / (TimeFunction() - Start)
					)
				)} FPS\n{getPing()}ms`

			local function convertToHMS(elapsed)
				if elapsed <= 4 then
					return "now"
				elseif elapsed < 60 then
					return math.floor(elapsed) .. "s"
				elseif elapsed < 3600 then
					return math.floor(elapsed / 60) .. "m"
				else
					return math.floor(elapsed / 3600) .. "h"
				end
			end

			Tab.Instances.Page.Holder.Left.Server.Frame.time.Text = '<font size="14" color="#FFF" weight="semibold">Players</font>\n'
				.. convertToHMS(time())
		end
		
		if TabSettings.Changelog[1] then
			Tab.Instances.Page.Holder.Center.Changelog.latest.Visible = true
			Tab.Instances.Page.Holder.Center.Changelog.latest.Header.Text = TabSettings.Changelog[1].Title
			Tab.Instances.Page.Holder.Center.Changelog.latest.date.Text = TabSettings.Changelog[1].Date
			Tab.Instances.Page.Holder.Center.Changelog.latest.desc.Text = TabSettings.Changelog[1].Description
		end

		checkFriends()
		Start = TimeFunction()
		connections.__fpscheck = RunService.Heartbeat:Connect(HeartbeatUpdate)

		ThemeMethods.bindTheme(Tab.Instances.Button, "BackgroundColor3", "Backgrounds.Dark")
		ThemeMethods.bindTheme(Tab.Instances.Button.Accent, "Color", "Accents.Main")
		ThemeMethods.bindTheme(Tab.Instances.Button.Icon.AccentBrighter, "Color", "Accents.Brighter")
		ThemeMethods.bindTheme(Tab.Instances.Button.Header.AccentBrighter, "Color", "Accents.Brighter")
		ThemeMethods.bindTheme(Tab.Instances.Button.Icon, "ImageColor3", "Foregrounds.Medium")
		ThemeMethods.bindTheme(Tab.Instances.Button.Header, "TextColor3", "Foregrounds.Medium")
		themeEvent.Event:Connect(function()
			if tabs.UIPageLayout.CurrentPage == Tab.Instances.Page then
				Activate()
			end
		end)
		ThemeMethods.bindTheme(Tab.Instances.Page.Fade, "BackgroundColor3", "Backgrounds.Dark")
		ThemeMethods.bindTheme(Tab.Instances.Page.Fade2, "BackgroundColor3", "Backgrounds.Dark")
		ThemeMethods.bindTheme(Tab.Instances.Page.Thumbnail, "BackgroundColor3", "Backgrounds.Dark")
		for _, shadow in pairs(Tab.Instances.Page.Thumbnail.DropShadowHolder:GetChildren()) do
			ThemeMethods.bindTheme(shadow, "ImageColor3", "Miscellaneous.Shadow")
		end
		ThemeMethods.bindTheme(Tab.Instances.Page.Thumbnail.UIStroke, "Color", "Foregrounds.Dark")
		for _, text in pairs(Tab.Instances.Page:GetChildren()) do
			if text.ClassName ~= "TextLabel" then
				continue
			end
			ThemeMethods.bindTheme(text, "TextColor3", "Foregrounds.Light")
		end
		for _, side in pairs(Tab.Instances.Page.Holder:GetChildren()) do
			if side.ClassName ~= "Frame" then
				continue
			end

			for _, panel in pairs(side:GetChildren()) do
				if panel.ClassName ~= "Frame" then
					continue
				end

				ThemeMethods.bindTheme(panel, "BackgroundColor3", "Backgrounds.Light")
				ThemeMethods.bindTheme(panel.DropShadow, "ImageColor3", "Miscellaneous.Shadow")
				ThemeMethods.bindTheme(panel.Header, "TextColor3", "Foregrounds.Light")
				ThemeMethods.bindTheme(panel.Header.Icon, "ImageColor3", "Foregrounds.Light")
			end
		end

		function Tab:Destroy()
			Tab.Instances.Page:Destroy()
			Tab.Instances.Button:Destroy()
			connections.__homeTabTime:Disconnect()
		end

		Tab.Instances.Button.Parent = prebuiltTabSection.Instance
		prebuiltTabSection.Tabs["prebuilthometab"] = Tab
		return Tab
	end

	function Starlight.Window:CreateTabSection(Name: string, Visible)
		Visible = Visible or (Name ~= nil and true or false)
		Name = Name or "Empty Section"

		local TabSection = {
			Tabs = {},
			Name = Name,
		}

		TabSection.Instance = navigation.NavigationSectionTemplate:Clone()
		TabSection.Instance.TabButtonTemplate:Destroy()
		TabSection.Instance.Visible = true

		TabSection.Instance.Header.Text = Name
		TabSection.Instance.Name = "TAB_SECTION_" .. Name
		TabSection.Instance.Header.Visible = Visible

		-- Theme Binding
		do
			ThemeMethods.bindTheme(TabSection.Instance.Header, "TextColor3", "Foregrounds.Medium")
		end

		--// SUBSECTION : User Methods

		function TabSection:Set(NewName)
			Name = NewName
			TabSection.Instance.Header.Text = Name
			TabSection.Instance.Name = "TAB_SECTION_" .. Name
			Starlight.Window.TabSections[Name] = TabSection
		end

		function TabSection:Destroy()
			TabSection.Instance:Destroy()
			for _, tab in pairs(TabSection.Tabs) do
				tab:Destroy()
			end
			TabSection = nil
		end

		function TabSection:CreateCustomTab(TabSettings, TabIndex)
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

			Tab.Instances.Button.Header.UIPadding.PaddingLeft =
				UDim.new(0, not String.IsEmptyOrNull(Tab.Values.Icon) and 36 or 8)
			Tab.Instances.Button.Icon.Image = "rbxassetid://" .. Tab.Values.Icon

			Tab.Instances.Page = tabs["Tab_TEMPLATE"]:Clone()
			for i, v in pairs(Tab.Instances.Page:GetChildren()) do
				if v.ClassName == "ScrollingFrame" then
					v:Destroy()
				end
			end
			Tab.Instances.Page.Visible = true
			Tab.Instances.Page.Name = "TAB_" .. TabIndex
			Tab.Instances.Page.Parent = tabs

			Tab.Instances.Page.LayoutOrder = #tabs:GetChildren() - 2

			local function Activate() -- so i dont have to rewrite shit again
				Tween(Tab.Instances.Button, { BackgroundTransparency = 0.5 })
				Tween(Tab.Instances.Button.Icon, { ImageColor3 = Starlight.CurrentTheme.Foregrounds.Light })
				Tween(Tab.Instances.Button.Header, { TextColor3 = Starlight.CurrentTheme.Foregrounds.Light })
				Tab.Instances.Button.Icon.AccentBrighter.Enabled = true
				Tab.Instances.Button.Header.AccentBrighter.Enabled = true

				for i, v in pairs(Starlight.Window.TabSections) do
					for _, tab in pairs(v.Tabs) do
						tab.Active = false
					end
				end

				for _, OtherTabSection in pairs(navigation:GetChildren()) do
					for _, OtherTab in pairs(OtherTabSection:GetChildren()) do
						if OtherTab.ClassName == "Frame" and OtherTab ~= Tab.Instances.Button then
							Tween(OtherTab, { BackgroundTransparency = 1 })
							Tween(OtherTab.Icon, { ImageColor3 = Starlight.CurrentTheme.Foregrounds.Medium })
							Tween(OtherTab.Header, { TextColor3 = Starlight.CurrentTheme.Foregrounds.Medium })
							OtherTab.Icon.AccentBrighter.Enabled = false
							OtherTab.Header.AccentBrighter.Enabled = false
						end
					end
				end

				Tab.Active = true
				Starlight.Window.CurrentTab = Tab
				tabs.UIPageLayout:JumpTo(Tab.Instances.Page)
			end

			if Starlight.Window.CurrentTab == nil then
				--task.spawn(function()
				repeat
					task.wait()
				until Tab.Instances.Page.Parent == tabs
				Activate()
				--end)
			end

			Tab.Instances.Button.Interact["MouseButton1Click"]:Connect(Activate)

			Tab.Instances.Button.MouseEnter:Connect(function()
				Tab.Hover = true
				if not Tab.Active then
					Tween(Tab.Instances.Button.Icon, { ImageColor3 = Starlight.CurrentTheme.Foregrounds.Light })
					Tween(Tab.Instances.Button.Header, { TextColor3 = Starlight.CurrentTheme.Foregrounds.Light })
				end
			end)

			Tab.Instances.Button.MouseLeave:Connect(function()
				Tab.Hover = false
				if not Tab.Active then
					Tween(Tab.Instances.Button.Icon, { ImageColor3 = Starlight.CurrentTheme.Foregrounds.Medium })
					Tween(Tab.Instances.Button.Header, { TextColor3 = Starlight.CurrentTheme.Foregrounds.Medium })
				end
			end)

			Tab.Instances.Page.InputBegan:Connect(function(input)
				if
					input.KeyCode == Enum.KeyCode.LeftShift
					or input.KeyCode == Enum.KeyCode.RightShift
					or input.UserInputType == Enum.UserInputType.Touch
				then
					Tab.Instances.Page.ScrollingEnabled = true
				end
			end)
			Tab.Instances.Page.InputEnded:Connect(function(input)
				if
					input.KeyCode == Enum.KeyCode.LeftShift
					or input.KeyCode == Enum.KeyCode.RightShift
					or input.UserInputType == Enum.UserInputType.Touch
				then
					Tab.Instances.Page.ScrollingEnabled = false
				end
			end)

			ThemeMethods.bindTheme(Tab.Instances.Button, "BackgroundColor3", "Backgrounds.Dark")
			ThemeMethods.bindTheme(Tab.Instances.Button.Accent, "Color", "Accents.Main")
			ThemeMethods.bindTheme(Tab.Instances.Button.Icon.AccentBrighter, "Color", "Accents.Brighter")
			ThemeMethods.bindTheme(Tab.Instances.Button.Header.AccentBrighter, "Color", "Accents.Brighter")
			ThemeMethods.bindTheme(Tab.Instances.Button.Icon, "ImageColor3", "Foregrounds.Medium")
			ThemeMethods.bindTheme(Tab.Instances.Button.Header, "TextColor3", "Foregrounds.Medium")
			themeEvent.Event:Connect(function()
				if tabs.UIPageLayout.CurrentPage == Tab.Instances.Page then
					Activate()
				end
			end)

			TabSettings.Page.Parent = Tab.Instances.Page

			--// SUBSECTION : User Methods

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
				for _, groupbox in pairs(Tab.Groupboxes) do
					groupbox:Destroy()
				end
				Tab = nil
			end

			--// ENDSUBSECTION

			Tab.Instances.Button.Parent = Starlight.Window.TabSections[Name].Instance
			Starlight.Window.TabSections[Name].Tabs[TabIndex] = Tab
			return Starlight.Window.TabSections[Name].Tabs[TabIndex]
		end

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

			Tab.Instances.Button.Header.UIPadding.PaddingLeft =
				UDim.new(0, not String.IsEmptyOrNull(Tab.Values.Icon) and 36 or 8)
			Tab.Instances.Button.Icon.Image = "rbxassetid://" .. Tab.Values.Icon

			Tab.Instances.Page = tabs["Tab_TEMPLATE"]:Clone()
			for i, v in pairs(Tab.Instances.Page:GetChildren()) do
				if v.ClassName == "ScrollingFrame" then
					v:Destroy()
				end
			end
			Tab.Instances.Page.Visible = true
			Tab.Instances.Page.Name = "TAB_" .. TabIndex
			Tab.Instances.Page.Parent = tabs

			Tab.Instances.Page.LayoutOrder = #tabs:GetChildren() - 2

			local function Activate() -- so i dont have to rewrite shit again
				Tween(Tab.Instances.Button, { BackgroundTransparency = 0.5 })
				Tween(Tab.Instances.Button.Icon, { ImageColor3 = Starlight.CurrentTheme.Foregrounds.Light })
				Tween(Tab.Instances.Button.Header, { TextColor3 = Starlight.CurrentTheme.Foregrounds.Light })
				Tab.Instances.Button.Icon.AccentBrighter.Enabled = true
				Tab.Instances.Button.Header.AccentBrighter.Enabled = true

				for i, v in pairs(Starlight.Window.TabSections) do
					for _, tab in pairs(v.Tabs) do
						tab.Active = false
					end
				end

				for _, OtherTabSection in pairs(navigation:GetChildren()) do
					for _, OtherTab in pairs(OtherTabSection:GetChildren()) do
						if OtherTab.ClassName == "Frame" and OtherTab ~= Tab.Instances.Button then
							Tween(OtherTab, { BackgroundTransparency = 1 })
							Tween(OtherTab.Icon, { ImageColor3 = Starlight.CurrentTheme.Foregrounds.Medium })
							Tween(OtherTab.Header, { TextColor3 = Starlight.CurrentTheme.Foregrounds.Medium })
							OtherTab.Icon.AccentBrighter.Enabled = false
							OtherTab.Header.AccentBrighter.Enabled = false
						end
					end
				end

				Tab.Active = true
				Starlight.Window.CurrentTab = Tab
				tabs.UIPageLayout:JumpTo(Tab.Instances.Page)
			end

			if Starlight.Window.CurrentTab == nil then
				--task.spawn(function()
				repeat
					task.wait()
				until Tab.Instances.Page.Parent == tabs
				Activate()
				--end)
			end

			Tab.Instances.Button.Interact["MouseButton1Click"]:Connect(Activate)

			Tab.Instances.Button.MouseEnter:Connect(function()
				Tab.Hover = true
				if not Tab.Active then
					Tween(Tab.Instances.Button.Icon, { ImageColor3 = Starlight.CurrentTheme.Foregrounds.Light })
					Tween(Tab.Instances.Button.Header, { TextColor3 = Starlight.CurrentTheme.Foregrounds.Light })
				end
			end)

			Tab.Instances.Button.MouseLeave:Connect(function()
				Tab.Hover = false
				if not Tab.Active then
					Tween(Tab.Instances.Button.Icon, { ImageColor3 = Starlight.CurrentTheme.Foregrounds.Medium })
					Tween(Tab.Instances.Button.Header, { TextColor3 = Starlight.CurrentTheme.Foregrounds.Medium })
				end
			end)

			Tab.Instances.Page.InputBegan:Connect(function(input)
				if
					input.KeyCode == Enum.KeyCode.LeftShift
					or input.KeyCode == Enum.KeyCode.RightShift
					or input.UserInputType == Enum.UserInputType.Touch
				then
					Tab.Instances.Page.ScrollingEnabled = true
				end
			end)
			Tab.Instances.Page.InputEnded:Connect(function(input)
				if
					input.KeyCode == Enum.KeyCode.LeftShift
					or input.KeyCode == Enum.KeyCode.RightShift
					or input.UserInputType == Enum.UserInputType.Touch
				then
					Tab.Instances.Page.ScrollingEnabled = false
				end
			end)

			for i = 1, TabSettings.Columns do
				local column = tabs["Tab_TEMPLATE"].ScrollingCollumnTemplate:Clone()
				column.Parent = Tab.Instances.Page
				column.LayoutOrder = i
				column.Name = "Column_" .. i
				for i, v in column:GetChildren() do
					if v.ClassName == "Frame" then
						v:Destroy()
					end
				end

				local fadetop = mainWindow.Content.ContentMain.FadesTop.Fade:Clone()
				fadetop.Name = "FADE_" .. TabIndex
				fadetop.Size = UDim2.new(1 / TabSettings.Columns, -10 / TabSettings.Columns, 0, 40)
				fadetop.LayoutOrder = i

				local fadebottom = mainWindow.Content.ContentMain.FadesBottom.Fade:Clone()
				fadebottom.Name = "FADE_" .. TabIndex
				fadebottom.Size = UDim2.new(1 / TabSettings.Columns, -10 / TabSettings.Columns, 0, 40)
				fadebottom.LayoutOrder = i

				ThemeMethods.bindTheme(fadetop.UIGradient, "Color", "Backgrounds.Dark")
				ThemeMethods.bindTheme(fadebottom.UIGradient, "Color", "Backgrounds.Dark")

				local basetrans = 0

				local function updTop()
					if column.CanvasPosition.Y ~= 0 then
						fadetop.BackgroundTransparency = basetrans
					else
						fadetop.BackgroundTransparency = 1
					end
					fadetop.Visible = tabs.UIPageLayout.CurrentPage == Tab.Instances.Page
				end

				local function updBottom()
					if column.CanvasPosition.Y + column.AbsoluteWindowSize.Y ~= column.AbsoluteCanvasSize.Y then
						fadebottom.BackgroundTransparency = basetrans
					else
						fadebottom.BackgroundTransparency = 1
					end
					fadebottom.Visible = tabs.UIPageLayout.CurrentPage == Tab.Instances.Page
				end
				acrylicEvent.Event:Connect(function()
					if mainAcrylic then
						basetrans = 0.7
						updTop()
						updBottom()
					else
						basetrans = 0
						updBottom()
						updBottom()
					end
				end)

				column:GetPropertyChangedSignal("CanvasPosition"):Connect(updTop)
				column:GetPropertyChangedSignal("CanvasPosition"):Connect(updBottom)
				tabs.UIPageLayout:GetPropertyChangedSignal("CurrentPage"):Connect(updTop)
				tabs.UIPageLayout:GetPropertyChangedSignal("CurrentPage"):Connect(updBottom)

				task.delay(1.2, function()
					updTop()
					updBottom()
				end)

				fadetop.Parent = mainWindow.Content.ContentMain.FadesTop
				fadebottom.Parent = mainWindow.Content.ContentMain.FadesBottom
			end

			ThemeMethods.bindTheme(Tab.Instances.Button, "BackgroundColor3", "Backgrounds.Dark")
			ThemeMethods.bindTheme(Tab.Instances.Button.Accent, "Color", "Accents.Main")
			ThemeMethods.bindTheme(Tab.Instances.Button.Icon.AccentBrighter, "Color", "Accents.Brighter")
			ThemeMethods.bindTheme(Tab.Instances.Button.Header.AccentBrighter, "Color", "Accents.Brighter")
			ThemeMethods.bindTheme(Tab.Instances.Button.Icon, "ImageColor3", "Foregrounds.Medium")
			ThemeMethods.bindTheme(Tab.Instances.Button.Header, "TextColor3", "Foregrounds.Medium")
			themeEvent.Event:Connect(function()
				if tabs.UIPageLayout.CurrentPage == Tab.Instances.Page then
					Activate()
				end
			end)

			--// SUBSECTION : User Methods

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
				for _, groupbox in pairs(Tab.Groupboxes) do
					groupbox:Destroy()
				end
				Tab = nil
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

				local GroupboxTemplateInstance = nil

				task.spawn(function()
					Groupbox.Instance = nil
					if GroupboxSettings.Style == 1 then
						Groupbox.Instance = tabs["Tab_TEMPLATE"].ScrollingCollumnTemplate["Groupbox_Style1"]:Clone()
						for i, v in pairs(Groupbox.Instance.PART_Content:GetChildren()) do
							if v.ClassName == "Frame" then
								v:Destroy()
							end
						end
					else
						Groupbox.Instance = tabs["Tab_TEMPLATE"].ScrollingCollumnTemplate2["Groupbox_Style2"]:Clone()
					end
					Groupbox.Instance.PART_Content:GetPropertyChangedSignal("AbsoluteSize"):Connect(function()
						Groupbox.Instance.PART_Backdrop.Inner.Visible = false
						Groupbox.Instance.PART_Backdrop.Inner.Size = UDim2.fromOffset(
							Groupbox.Instance.PART_Backdrop.AbsoluteSize.X - 2,
							Groupbox.Instance.PART_Backdrop.AbsoluteSize.Y - 2
						)
						Groupbox.Instance.PART_Backdrop.Inner.Visible = true
					end)
					Groupbox.Instance.PART_Backdrop.Inner.Visible = false
					Groupbox.Instance.PART_Backdrop.Inner.Size = UDim2.fromOffset(
						Groupbox.Instance.PART_Backdrop.AbsoluteSize.X - 2,
						Groupbox.Instance.PART_Backdrop.AbsoluteSize.Y - 2
					)
					Groupbox.Instance.PART_Backdrop.Inner.Visible = true

					Groupbox.ParentingItem = Groupbox.Instance.PART_Content

					GroupboxTemplateInstance =
						tabs["Tab_TEMPLATE"].ScrollingCollumnTemplate["Groupbox_Style1"].PART_Content

					Groupbox.Instance.Header.Text = GroupboxSettings.Name
					Groupbox.Instance.Header.UIPadding.PaddingLeft =
						UDim.new(0, not String.IsEmptyOrNull(GroupboxSettings.Icon) and 32 or 6)
					Groupbox.Instance.Header.Icon.Image = "rbxassetid://" .. GroupboxSettings.Icon
					Groupbox.Instance.Name = "GROUPBOX_" .. GroupIndex

					ThemeMethods.bindTheme(Groupbox.Instance.Header, "TextColor3", "Foregrounds.Medium")
					ThemeMethods.bindTheme(Groupbox.Instance.Header.Icon, "ImageColor3", "Foregrounds.Medium")
					ThemeMethods.bindTheme(Groupbox.Instance.PART_Backdrop, "BackgroundColor3", "Backgrounds.Medium")
					ThemeMethods.bindTheme(
						Groupbox.Instance.PART_Backdrop.Inner,
						"BackgroundColor3",
						"Backgrounds.Groupbox"
					)
					ThemeMethods.bindTheme(Groupbox.Instance.PART_Backdrop.UIStroke, "Color", "Miscellaneous.Shadow")

					acrylicEvent.Event:Connect(function()
						if mainAcrylic then
							Groupbox.Instance.PART_Backdrop.BackgroundTransparency = 0.7
							Groupbox.Instance.PART_Backdrop.Inner.BackgroundTransparency = 0.7
							Groupbox.Instance.PART_Backdrop.UIStroke.Transparency = 0.6
						else
							Groupbox.Instance.PART_Backdrop.BackgroundTransparency = 0
							Groupbox.Instance.PART_Backdrop.Inner.BackgroundTransparency = 0
							Groupbox.Instance.PART_Backdrop.UIStroke.Transparency = 0
						end
					end)
				end)

				-- Now removed due to autosizing actually working
				--[[
				if GroupboxSettings.Style == 2 then
					Groupbox.Instance["PART_Content"]:GetPropertyChangedSignal("AbsoluteSize"):Connect(function()
						Groupbox.Instance["PART_Backdrop"].Size = UDim2.new(1,0,0, Groupbox.Instance["PART_Content"].AbsoluteSize.Y)
					end)
				end
				]]

				function Groupbox:Set(NewGroupboxSettings)
					local oldInstance = Groupbox.Instance

					if NewGroupboxSettings.Style == 1 then
						Groupbox.Instance = tabs["Tab_TEMPLATE"].ScrollingCollumnTemplate["Groupbox_Style1"]:Clone()
						for i, v in pairs(Groupbox.Instance.PartContent:GetChildren()) do
							if v.ClassName == "Frame" then
								v:Destroy()
							end
						end
					else
						Groupbox.Instance = tabs["Tab_TEMPLATE"].ScrollingCollumnTemplate2["Groupbox_Style2"]:Clone()
					end

					Groupbox.ParentingItem = Groupbox.Instance.PART_Content

					if GroupboxSettings.Style == 1 then
						for _, element in pairs(oldInstance:GetChildren()) do
							if element.ClassName ~= "Frame" then
								element:Destroy()
							end
							element.Parent = Groupbox.ParentingItem
						end
					elseif GroupboxSettings.Style == 2 then
						for _, element in pairs(oldInstance.PART_Content:GetChildren()) do
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
					Groupbox.Instance.Parent = Tab.Instances.Page["Column_" .. NewGroupboxSettings.Column]

					Starlight.Window.TabSections[Name].Tabs[TabIndex].Groupboxes[GroupIndex].Values =
						NewGroupboxSettings
				end

				function Groupbox:Destroy()
					Groupbox.Instance:Destroy()
					for _, element in pairs(Groupbox.Elements) do
						element:Destroy()
					end
					Groupbox = nil
				end

				--// SUBSECTION : Legacy User Methods

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

					local Instances
					task.spawn(function()
						Instances = {
							Style1 = GroupboxTemplateInstance["Button_TEMPLATE_Style1"]:Clone(),
							Style2 = GroupboxTemplateInstance["Button_TEMPLATE_Style2"]:Clone(),
						}

						local tooltips = {}

						for i, ElementInstance in pairs(Instances) do
							ElementInstance.Visible = ElementInstance.Name
								== "Button_TEMPLATE_Style" .. Element.Values.Style

							ElementInstance.Name = "BUTTON_" .. Index
							ElementInstance["PART_Backdrop"].Header.Header.Text = Element.Values.Name
							ElementInstance["PART_Backdrop"].Header.Icon.Visible =
								not String.IsEmptyOrNull(Element.Values.Icon)
							ElementInstance["PART_Backdrop"].Header.Icon.Image = not String.IsEmptyOrNull(
								Element.Values.Icon
							) and "rbxassetid://" .. Element.Values.Icon or ""

							ElementInstance["PART_Backdrop"].Icon.Image = (
								Element.Values.IndicatorStyle == 1 and "rbxassetid://6031094680"
							)
								or (Element.Values.IndicatorStyle == 2 and "rbxassetid://6023565895")
								or ""

							ElementInstance["PART_Backdrop"].Header.UIListLayout.HorizontalAlignment = Element.Values.CenterContent
								and Enum.HorizontalAlignment.Center
								or Enum.HorizontalAlignment.Left

							if ElementInstance.PART_Backdrop:FindFirstChild("Accent") then
								local hover = nil

								ElementInstance.MouseEnter:Connect(function()
									Tween(
										ElementInstance["PART_Backdrop"].DropShadowHolder.DropShadow,
										{ ImageTransparency = 0.73 }
									)
								end)

								ElementInstance.MouseLeave:Connect(function()
									Tween(
										ElementInstance["PART_Backdrop"].DropShadowHolder.DropShadow,
										{ ImageTransparency = 1 }
									)
								end)

								ElementInstance.Interact.MouseButton1Down:Connect(function()
									Tween(
										ElementInstance["PART_Backdrop"]["PART_BackdropHover"],
										{ BackgroundTransparency = 0 }
									)
									hover = true
								end)

								UserInputService.InputEnded:Connect(function(input, processed)
									if not hover then
										return
									end
									if
										input.UserInputType == Enum.UserInputType.MouseButton1
										or input.UserInputType == Enum.UserInputType.Touch
									then
										Tween(
											ElementInstance["PART_Backdrop"]["PART_BackdropHover"],
											{ BackgroundTransparency = 1 }
										)
										hover = false
									end
								end)

								ThemeMethods.bindTheme(ElementInstance.PART_Backdrop.Accent, "Color", "Accents.Main")
								ThemeMethods.bindTheme(
									ElementInstance.PART_Backdrop.UIStroke.Accent,
									"Color",
									"Accents.Main"
								)
								ThemeMethods.bindTheme(
									ElementInstance.PART_Backdrop.DropShadowHolder.DropShadow.Accent,
									"Color",
									"Accents.Main"
								)
								ThemeMethods.bindTheme(
									ElementInstance.PART_Backdrop.PART_BackdropHover.AccentBrighter,
									"Color",
									"Accents.Brighter"
								)
								ThemeMethods.bindTheme(
									ElementInstance.PART_Backdrop.Icon,
									"ImageColor3",
									"Foregrounds.Active"
								)
								ThemeMethods.bindTheme(
									ElementInstance.PART_Backdrop.Header.Icon,
									"ImageColor3",
									"Foregrounds.Active"
								)
								ThemeMethods.bindTheme(
									ElementInstance.PART_Backdrop.Header.Header,
									"TextColor3",
									"Foregrounds.Active"
								)
							else
								ElementInstance.MouseEnter:Connect(function()
									Tween(ElementInstance["PART_Backdrop"].UIStroke, { Transparency = 0 })
								end)

								ElementInstance.MouseLeave:Connect(function()
									Tween(ElementInstance["PART_Backdrop"].UIStroke, { Transparency = 0.85 })
								end)

								ThemeMethods.bindTheme(
									ElementInstance.PART_Backdrop,
									"BackgroundColor3",
									"Backgrounds.Dark"
								)
								ThemeMethods.bindTheme(
									ElementInstance.PART_Backdrop.UIStroke,
									"Color",
									"Foregrounds.Dark"
								)
								ThemeMethods.bindTheme(
									ElementInstance.PART_Backdrop.Shadow,
									"BackgroundColor3",
									"Backgrounds.Dark"
								)
								ThemeMethods.bindTheme(
									ElementInstance.PART_Backdrop.Icon,
									"ImageColor3",
									"Foregrounds.Light"
								)
								ThemeMethods.bindTheme(
									ElementInstance.PART_Backdrop.Header.Icon,
									"ImageColor3",
									"Foregrounds.Light"
								)
								ThemeMethods.bindTheme(
									ElementInstance.PART_Backdrop.Header.Header,
									"TextColor3",
									"Foregrounds.Light"
								)
							end

							ElementInstance.Interact.MouseButton1Click:Connect(function()
								local Success, Response = pcall(Element.Values.Callback)

								if not Success then
									ElementInstance["PART_Backdrop"].Header.Header.Text = "Callback Error"
									warn(`Starlight Interface Suite - Callback Error | {Element.Values.Name} ({Index})`)
									print(Response)
									if WindowSettings.NotifyOnCallbackError then
										Starlight:Notification({
											Title = Element.Values.Name .. " Callback Error",
											Content = tostring(Response),
											Icon = 129398364168201,
										})
									end
									wait(0.5)
									ElementInstance["PART_Backdrop"].Header.Header.Text = ElementSettings.Name
								end
							end)

							ElementInstance.Parent = Groupbox.ParentingItem

							tooltips[i] = AddToolTip(Element.Values.Tooltip or "", ElementInstance)

							Element.Instance = ElementInstance.Visible and ElementInstance or Element.Instance
						end

						function Element:Set(NewElementSettings, NewIndex)
							NewIndex = NewIndex or Index

							for i, v in pairs(Element.Values) do
								if NewElementSettings[i] == nil then
									NewElementSettings[i] = v
								end
							end

							ElementSettings = NewElementSettings
							Index = NewIndex
							Element.Values = ElementSettings

							for i, ElementInstance in pairs(Instances) do
								local flag
								if Element.Values.Style == 1 then
									flag = ElementInstance.PART_Backdrop:FindFirstChild("Accent")
								else
									flag = not ElementInstance.PART_Backdrop:FindFirstChild("Accent")
								end
								ElementInstance.Visible = flag
								ElementInstance.Parent = Groupbox.ParentingItem

								ElementInstance.Name = "BUTTON_" .. NewIndex
								ElementInstance["PART_Backdrop"].Header.Header.Text = Element.Values.Name
								ElementInstance["PART_Backdrop"].Header.Icon.Visible =
									not String.IsEmptyOrNull(Element.Values.Icon)
								ElementInstance["PART_Backdrop"].Header.Icon.Image = not String.IsEmptyOrNull(
									Element.Values.Icon
								) and "rbxassetid://" .. Element.Values.Icon or ""

								tooltips[i].Text = Element.Values.Tooltip or ""

								Element.Instance = ElementInstance.Visible and ElementInstance or Element.Instance
							end

							Starlight.Window.TabSections[Name].Tabs[TabIndex].Groupboxes[GroupIndex].Elements["BUTTON_" .. Index].Values =
								Element.Values
						end

						function Element:Destroy()
							for _, ElementInstance in pairs(Instances) do
								ElementInstance:Destroy()
							end
							if Element.NestedElements ~= nil then
								for _, nestedElement in pairs(Element.NestedElements) do
									nestedElement:Destroy()
								end
							end
							Element = nil
						end

						function Element:Lock(Reason: string?)
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
					end)

					Starlight.Window.TabSections[Name].Tabs[TabIndex].Groupboxes[GroupIndex].Elements["BUTTON_" .. Index] =
						Element
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
						IgnoreConfig = ElementSettings.IgnoreConfig,
					}
					local Instances

					task.spawn(function()
						Instances = {
							Style1 = GroupboxTemplateInstance["Checkbox_TEMPLATE_Disabled"]:Clone(),
							Style2 = GroupboxTemplateInstance["Switch_TEMPLATE_Disabled"]:Clone(),
						}

						local function checkForBind()
							for i, v in pairs(Element.NestedElements) do
								if v.Class == "Bind" then
									return v
								end
							end
							return nil
						end

						local tooltips = {}
						local knobcolor = Starlight.CurrentTheme.Foregrounds.Medium

						local function Set(bool)
							if bool then
								Tween(Instances.Style1.Checkbox, { BackgroundTransparency = 0 })
								Tween(Instances.Style1.Checkbox.Icon, { ImageTransparency = 0 })
								Tween(
									Instances.Style2.Switch,
									{ BackgroundTransparency = 0, BackgroundColor3 = Color3.fromRGB(255, 255, 255) }
								)
								Tween(
									Instances.Style2.Switch.Knob,
									{
										Position = UDim2.new(0, 20, 0.5, 0),
										BackgroundColor3 = Starlight.CurrentTheme.Foregrounds.Active,
										BackgroundTransparency = 0,
									}
								)
								Tween(Instances.Style2.Switch.UIStroke, { Color = Color3.fromRGB(255, 255, 255) })
								Tween(Instances.Style2.Switch.DropShadowHolder.DropShadow, { ImageTransparency = 0 })
								Instances.Style2.Switch.Accent.Enabled = true
								Instances.Style2.Switch.UIStroke.Accent.Enabled = true
							else
								Tween(Instances.Style1.Checkbox, { BackgroundTransparency = 0.9 })
								Tween(Instances.Style1.Checkbox.Icon, { ImageTransparency = 1 })
								Tween(
									Instances.Style2.Switch,
									{ BackgroundTransparency = 1, BackgroundColor3 = knobcolor }
								)
								Tween(
									Instances.Style2.Switch.Knob,
									{
										Position = UDim2.new(0, 0, 0.5, 0),
										BackgroundColor3 = knobcolor,
										BackgroundTransparency = 0.5,
									}
								)
								Tween(Instances.Style2.Switch.UIStroke, { Color = knobcolor })
								Tween(Instances.Style2.Switch.DropShadowHolder.DropShadow, { ImageTransparency = 1 })
								Instances.Style2.Switch.Accent.Enabled = false
								Instances.Style2.Switch.UIStroke.Accent.Enabled = false
							end

							Element.Values.CurrentValue = bool
							local bind = checkForBind()
							if bind ~= nil and bind.Values.SyncToggleState then
								bind.Active = bool
							end
						end

						for i, ElementInstance in pairs(Instances) do
							if ElementInstance.Name == "Checkbox_TEMPLATE_Disabled" and Element.Values.Style == 1 then
								ElementInstance.Visible = true
							end
							if ElementInstance.Name == "Switch_TEMPLATE_Disabled" and Element.Values.Style == 2 then
								ElementInstance.Visible = true
							end

							ElementInstance.Name = "TOGGLE_" .. Index
							ElementInstance.Header.Text = Element.Values.Name
							ElementInstance.Header.Icon.Visible = not String.IsEmptyOrNull(Element.Values.Icon)

							if ElementInstance.Header.Icon.Visible == false then
								ElementInstance.Header.UIPadding.PaddingLeft = UDim.new(0, 6)
							else
								ElementInstance.Header.UIPadding.PaddingLeft = UDim.new(0, 32)
							end
							ElementInstance.Header.Icon.Image = not String.IsEmptyOrNull(Element.Values.Icon)
								and "rbxassetid://" .. Element.Values.Icon
								or ""

							ThemeMethods.bindTheme(ElementInstance.Header, "TextColor3", "Foregrounds.Light")
							ThemeMethods.bindTheme(ElementInstance.Header.Icon, "ImageColor3", "Foregrounds.Light")

							if ElementInstance:FindFirstChild("Checkbox") then
								if Element.Values.Style == 2 then
									ElementInstance.Visible = false
								end

								ElementInstance.Checkbox.Icon.Visible = true
								ElementInstance.Checkbox.Icon.Image = Element.Values.CheckboxIcon ~= nil
									and "rbxassetid://" .. Element.Values.CheckboxIcon
									or ""

								do
									Set(Element.Values.CurrentValue)
									local Success, Response = pcall(function()
										Element.Values.Callback(Element.Values.CurrentValue)
									end)

									if not Success then
										ElementInstance.Header.Text = "Callback Error"
										warn(
											`Starlight Interface Suite - Callback Error | {Element.Values.Name} ({Index})`
										)
										print(Response)
										if WindowSettings.NotifyOnCallbackError then
											Starlight:Notification({
												Title = Element.Values.Name .. " Callback Error",
												Content = tostring(Response),
												Icon = 129398364168201,
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

									local Success, Response = pcall(function()
										Element.Values.Callback(Element.Values.CurrentValue)
									end)

									if not Success then
										ElementInstance.Header.Text = "Callback Error"
										warn(
											`Starlight Interface Suite - Callback Error | {Element.Values.Name} ({Index})`
										)
										print(Response)
										if WindowSettings.NotifyOnCallbackError then
											Starlight:Notification({
												Title = Element.Values.Name .. " Callback Error",
												Content = tostring(Response),
												Icon = 129398364168201,
											})
										end
										wait(0.5)
										ElementInstance.Header.Text = ElementSettings.Name
									end
								end)

								ThemeMethods.bindTheme(ElementInstance.Checkbox.Accent, "Color", "Accents.Main")
								ThemeMethods.bindTheme(
									ElementInstance.Checkbox.AccentBrighter,
									"Color",
									"Accents.Brighter"
								)
								ThemeMethods.bindTheme(
									ElementInstance.Checkbox.UIStroke.Accent,
									"Color",
									"Accents.Main"
								)
								ThemeMethods.bindTheme(
									ElementInstance.Checkbox.DropShadowHolder.DropShadow.Accent,
									"Color",
									"Accents.Main"
								)
								ThemeMethods.bindTheme(
									ElementInstance.Checkbox.Icon,
									"ImageColor3",
									"Foregrounds.Active"
								)
							elseif ElementInstance.Switch then
								if Element.Values.Style == 1 then
									ElementInstance.Visible = false
								end

								do
									Set(Element.Values.CurrentValue)
									local Success, Response = pcall(function()
										Element.Values.Callback(Element.Values.CurrentValue)
									end)

									if not Success then
										ElementInstance.Header.Text = "Callback Error"
										warn(
											`Starlight Interface Suite - Callback Error | {Element.Values.Name} ({Index})`
										)
										print(Response)
										if WindowSettings.NotifyOnCallbackError then
											Starlight:Notification({
												Title = Element.Values.Name .. " Callback Error",
												Content = tostring(Response),
												Icon = 129398364168201,
											})
										end
										wait(0.5)
										ElementInstance.Header.Text = ElementSettings.Name
									end
								end

								ElementInstance.Switch.MouseEnter:Connect(function()
									knobcolor = Starlight.CurrentTheme.Foregrounds.MediumHover
									if not Element.Values.CurrentValue then
										Tween(ElementInstance.Switch, { BackgroundColor3 = knobcolor })
										Tween(ElementInstance.Switch.Knob, { BackgroundColor3 = knobcolor })
										Tween(ElementInstance.Switch.UIStroke, { Color = knobcolor })
									end
								end)
								ElementInstance.Switch.MouseLeave:Connect(function()
									knobcolor = Starlight.CurrentTheme.Foregrounds.Medium
									if not Element.Values.CurrentValue then
										Tween(ElementInstance.Switch, { BackgroundColor3 = knobcolor })
										Tween(ElementInstance.Switch.Knob, { BackgroundColor3 = knobcolor })
										Tween(ElementInstance.Switch.UIStroke, { Color = knobcolor })
									end
								end)

								ElementInstance.Switch.Interact.MouseButton1Click:Connect(function()
									Element.Values.CurrentValue = not Element.Values.CurrentValue
									Set(Element.Values.CurrentValue)
									local Success, Response = pcall(function()
										Element.Values.Callback(Element.Values.CurrentValue)
									end)

									if not Success then
										ElementInstance.Header.Text = "Callback Error"
										warn(
											`Starlight Interface Suite - Callback Error | {Element.Values.Name} ({Index})`
										)
										print(Response)
										if WindowSettings.NotifyOnCallbackError then
											Starlight:Notification({
												Title = Element.Values.Name .. " Callback Error",
												Content = tostring(Response),
												Icon = 129398364168201,
											})
										end
										wait(0.5)
										ElementInstance.Header.Text = ElementSettings.Name
									end
								end)

								ThemeMethods.bindTheme(ElementInstance.Switch.Accent, "Color", "Accents.Main")
								ThemeMethods.bindTheme(ElementInstance.Switch.UIStroke.Accent, "Color", "Accents.Main")
								ThemeMethods.bindTheme(
									ElementInstance.Switch.DropShadowHolder.DropShadow.Accent,
									"Color",
									"Accents.Main"
								)
								ThemeMethods.bindTheme(
									ElementInstance.Switch.Knob,
									"BackgroundColor3",
									"Foregrounds.Active"
								)
								themeEvent.Event:Connect(function()
									Set(Element.Values.CurrentValue)
								end)
							end

							tooltips[i] = AddToolTip(Element.Values.Tooltip or "", ElementInstance)

							ElementInstance.Parent = Groupbox.ParentingItem

							Element.Instance = ElementInstance.Visible and ElementInstance or Element.Instance
						end

						function Element:Set(NewElementSettings, NewIndex)
							NewIndex = NewIndex or Index
							local oldStyle = Element.Values.Style

							for i, v in pairs(Element.Values) do
								if NewElementSettings[i] == nil then
									NewElementSettings[i] = v
								end
							end

							ElementSettings = NewElementSettings
							Index = NewIndex
							Element.Values = ElementSettings

							Set(Element.Values.CurrentValue)
							local Success, Response = pcall(function()
								Element.Values.Callback(Element.Values.CurrentValue)
							end)

							if not Success then
								for _, ElementInstance in pairs(Instances) do
									ElementInstance.Header.Text = "Callback Error"
								end
								warn(`Starlight Interface Suite - Callback Error | {Element.Values.Name} ({Index})`)
								print(Response)
								if WindowSettings.NotifyOnCallbackError then
									Starlight:Notification({
										Title = Element.Values.Name .. " Callback Error",
										Content = tostring(Response),
										Icon = 129398364168201,
									})
								end
								wait(0.5)
								for _, ElementInstance in pairs(Instances) do
									ElementInstance.Header.Text = ElementSettings.Name
								end
							end

							for i, ElementInstance in pairs(Instances) do
								ElementInstance.Name = "TOGGLE_" .. Index
								ElementInstance.Header.Text = Element.Values.Name
								ElementInstance.Header.Icon.Visible = not String.IsEmptyOrNull(Element.Values.Icon)

								if ElementInstance.Header.Icon.Visible == false then
									ElementInstance.Header.UIPadding.PaddingLeft = UDim.new(0, 6)
								else
									ElementInstance.Header.UIPadding.PaddingLeft = UDim.new(0, 32)
								end
								ElementInstance.Header.Icon.Image = not String.IsEmptyOrNull(
									Element.Values.Icon
								)
									and "rbxassetid://" .. Element.Values.Icon
									or ""

								if ElementInstance:FindFirstChild("Checkbox") then
									if Element.Values.Style == 2 then
										ElementInstance.Visible = false
									else
										ElementInstance.Visible = true
									end

									ElementInstance.Checkbox.Icon.Visible = true
									ElementInstance.Checkbox.Icon.Image = Element.Values.CheckboxIcon ~= nil
										and "rbxassetid://" .. Element.Values.CheckboxIcon
										or ""

									do
									end
								elseif ElementInstance.Switch then
									if Element.Values.Style == 1 then
										ElementInstance.Visible = false
									else
										ElementInstance.Visible = true
									end
								end

								tooltips[i].Text = Element.Values.Tooltip or ""

								Element.Instance = ElementInstance.Visible and ElementInstance or Element.Instance
							end

							for i, v in pairs(Element.NestedElements) do
								if v.Class == "Bind" or v.Class == "ColorPicker" then
									if v.Class == "Bind" then
										v.Instance.Parent = Element.Instance.ElementContainer
										continue
									end
									v.Instances[1].Parent = Element.Instance.ElementContainer
									continue
								end
								v.Instances[1].Parent = Element.Instance.DropdownHolder
							end

							Starlight.Window.TabSections[Name].Tabs[TabIndex].Groupboxes[GroupIndex].Elements[Index].Values =
								Element.Values
						end
					end)

					function Element:Destroy()
						for _, ElementInstance in pairs(Instances) do
							ElementInstance:Destroy()
						end
						if Element.NestedElements ~= nil then
							for _, nestedElement in pairs(Element.NestedElements) do
								nestedElement:Destroy()
							end
						end
						Element = nil
					end

					function Element:Lock(Reason: string?)
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
						local index = HttpService:GenerateGUID()
						local Inheritor = Groupbox:CreateLabel({ Name = "" }, index)
						local NestedElement = Inheritor:AddBind(NestedSettings, NestedIndex, Element, Index)

						local module = {}
						function module:Set(NewNestedSettings, NewNestedIndex)
							NestedElement:Set(NewNestedSettings, NewNestedIndex)
						end
						function module:Destroy()
							NestedElement:Destroy()
						end

						Inheritor.Instance:Destroy()
						Groupbox.Elements[index] = nil
						Inheritor = nil
						return module
					end

					function Element:AddColorPicker(NestedSettings, NestedIndex)
						local index = HttpService:GenerateGUID()
						local Inheritor = Groupbox:CreateLabel({ Name = "" }, index)
						local NestedElement = Inheritor:AddColorPicker(NestedSettings, NestedIndex, Element, Index)

						local module = {}
						function module:Set(NewNestedSettings, NewNestedIndex)
							NestedElement:Set(NewNestedSettings, NewNestedIndex)
						end
						function module:Destroy()
							NestedElement:Destroy()
						end

						Inheritor.Instance:Destroy()
						Groupbox.Elements[index] = nil
						Inheritor = nil
						return module
					end

					function Element:AddDropdown(NestedSettings, NestedIndex)
						local index = HttpService:GenerateGUID()
						local Inheritor = Groupbox:CreateLabel({ Name = "" }, index)
						local NestedElement = Inheritor:AddDropdown(NestedSettings, NestedIndex, Element, Index)

						local module = {}
						function module:Set(NewNestedSettings, NewNestedIndex)
							NestedElement:Set(NewNestedSettings, NewNestedIndex)
						end
						function module:Destroy()
							NestedElement:Destroy()
						end

						Inheritor.Instance:Destroy()
						Groupbox.Elements[index] = nil
						Inheritor = nil
						return module
					end

					Starlight.Window.TabSections[Name].Tabs[TabIndex].Groupboxes[GroupIndex].Elements[Index] = Element
					return Starlight.Window.TabSections[Name].Tabs[TabIndex].Groupboxes[GroupIndex].Elements[Index]
				end

				function Groupbox:CreateDivider()
					local Divider = {
						ID = HttpService:GenerateGUID(false),
						Class = "Divider",
					}

					Divider.Instance = GroupboxTemplateInstance.Divider:Clone()
					Divider.Instance.Parent = Groupbox.ParentingItem
					ThemeMethods.bindTheme(Divider.Instance.PART_Line, "BackgroundColor3", "Miscellaneous.Divider")

					function Divider:Destroy()
						Divider.Instance:Destroy()
					end

					Starlight.Window.TabSections[Name].Tabs[TabIndex].Groupboxes[GroupIndex].Elements["Divider_" .. Divider.ID] =
						Divider
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
					ElementSettings.Suffix = ElementSettings.Suffix
						and (ElementSettings.Suffix == "%" and `{ElementSettings.Suffix}` or ` {ElementSettings.Suffix}`)
						or ""

					local Element = {
						Values = ElementSettings,
						Class = "Slider",
						SLDragging = false,
						IgnoreConfig = ElementSettings.IgnoreConfig,
					}
					task.spawn(function()
						local isTyping = false
						local ignoreNext = false

						local tooltip

						Element.Instance = GroupboxTemplateInstance.Slider_TEMPLATE:Clone()
						Element.Instance.Visible = true

						Element.Instance.Name = "SLIDER_" .. Index
						Element.Instance.Header.Text = Element.Values.Name
						Element.Instance.Header.Icon.Visible = not String.IsEmptyOrNull(Element.Values.Icon)
						if Element.Instance.Header.Icon.Visible == false then
							Element.Instance.Header.UIPadding.PaddingLeft = UDim.new(0, 6)
						else
							Element.Instance.Header.UIPadding.PaddingLeft = UDim.new(0, 32)
						end
						Element.Instance.Header.Icon.Image = not String.IsEmptyOrNull(Element.Values.Icon)
							and "rbxassetid://" .. Element.Values.Icon
							or ""

						tooltip = AddToolTip(Element.Values.Tooltip, Element.Instance)

						local function Set(Value: number)
							if Value then
								Element.Values.CurrentValue = Value

								Tween(
									Element.Instance.PART_Backdrop.PART_Progress,

									{
										Size = UDim2.new(
											(Value - Element.Values.Range[1])
												/ (Element.Values.Range[2] - Element.Values.Range[1]),
											0,
											1,
											0
										),
									},
									nil,
									Tween.Info(nil, nil, 0.2)
								)
								Element.Instance.Value.input.Text = tostring(Value)
								Element.Instance.Value.input.CursorPosition = #Element.Instance.Value.input.Text + 2

								local Success, Response = pcall(function()
									Element.Values.Callback(Value)
								end)

								if not Success then
									Element.Instance.Header.Text = "Callback Error"
									warn(`Starlight Interface Suite - Callback Error | {Element.Values.Name} ({Index})`)
									print(Response)
									if WindowSettings.NotifyOnCallbackError then
										Starlight:Notification({
											Title = Element.Values.Name .. " Callback Error",
											Content = tostring(Response),
											Icon = 129398364168201,
										})
									end
									wait(0.5)
									Element.Instance.Header.Text = ElementSettings.Name
								end
							end
						end

						Element.Instance.PART_Backdrop.Interact.InputBegan:Connect(function(Input)
							if
								Input.UserInputType == Enum.UserInputType.MouseButton1
								or Input.UserInputType == Enum.UserInputType.Touch
							then
								Element.SLDragging = true
							end
						end)

						Element.Instance.PART_Backdrop.Interact.InputEnded:Connect(function(Input)
							if
								Input.UserInputType == Enum.UserInputType.MouseButton1
								or Input.UserInputType == Enum.UserInputType.Touch
							then
								Element.SLDragging = false
							end
						end)

						Element.Instance.PART_Backdrop.PART_Progress.Knob.Interact.InputBegan:Connect(function(Input)
							if
								Input.UserInputType == Enum.UserInputType.MouseButton1
								or Input.UserInputType == Enum.UserInputType.Touch
							then
								Element.SLDragging = true
							end
						end)

						Element.Instance.PART_Backdrop.PART_Progress.Knob.Interact.InputEnded:Connect(function(Input)
							if
								Input.UserInputType == Enum.UserInputType.MouseButton1
								or Input.UserInputType == Enum.UserInputType.Touch
							then
								Element.SLDragging = false
							end
						end)

						local dragFunction = function(X)
							local Current = Element.Instance.PART_Backdrop.PART_Progress.AbsolutePosition.X
								+ Element.Instance.PART_Backdrop.PART_Progress.AbsoluteSize.X
							local Start = Current
							local Location = X
							local Loop
							Loop = RunService.Stepped:Connect(function()
								if Element.SLDragging then
									Location = Mouse.X
									Current = Current + 0.025 * (Location - Start)

									if Location < Element.Instance.PART_Backdrop.AbsolutePosition.X then
										Location = Element.Instance.PART_Backdrop.AbsolutePosition.X
									elseif
										Location
										> Element.Instance.PART_Backdrop.AbsolutePosition.X
										+ Element.Instance.PART_Backdrop.AbsoluteSize.X
									then
										Location = Element.Instance.PART_Backdrop.AbsolutePosition.X
											+ Element.Instance.PART_Backdrop.AbsoluteSize.X
									end

									if Current < Element.Instance.PART_Backdrop.AbsolutePosition.X then
										Current = Element.Instance.PART_Backdrop.AbsolutePosition.X
									elseif
										Current
										> Element.Instance.PART_Backdrop.AbsolutePosition.X
										+ Element.Instance.PART_Backdrop.AbsoluteSize.X
									then
										Current = Element.Instance.PART_Backdrop.AbsolutePosition.X
											+ Element.Instance.PART_Backdrop.AbsoluteSize.X
									end

									if Current <= Location and (Location - Start) < 0 then
										Start = Location
									elseif Current >= Location and (Location - Start) > 0 then
										Start = Location
									end

									local percentage = (Location - Element.Instance.PART_Backdrop.AbsolutePosition.X)
										/ Element.Instance.PART_Backdrop.AbsoluteSize.X
									Tween(
										Element.Instance.PART_Backdrop.PART_Progress,

										{ Size = UDim2.new(percentage, 0, 1, 0) },

										nil,
										Tween.Info(nil, nil, 0.2)
									)

									local NewValue = ((Element.Values.Range[2] - Element.Values.Range[1]) * percentage)
										+ Element.Values.Range[1]

									NewValue = math.floor(NewValue / Element.Values.Increment + 0.5)
										* (Element.Values.Increment * 10000000)
										/ 10000000

									Element.Instance.Value.input.Text = tostring(NewValue)

									if Element.Values.CurrentValue ~= NewValue then
										local Success, Response = pcall(function()
											Element.Values.Callback(NewValue)
										end)

										if not Success then
											Element.Instance.Header.Text = "Callback Error"
											warn(
												`Starlight Interface Suite - Callback Error | {Element.Values.Name} ({Index})`
											)
											print(Response)
											if WindowSettings.NotifyOnCallbackError then
												Starlight:Notification({
													Title = Element.Values.Name .. " Callback Error",
													Content = tostring(Response),
													Icon = 129398364168201,
												})
											end
											wait(0.5)
											Element.Instance.Header.Text = ElementSettings.Name
										end

										Element.Values.CurrentValue = NewValue
									end
								else
									Loop:Disconnect()
								end
							end)
						end

						Element.Instance.PART_Backdrop.Interact.MouseButton1Down:Connect(function(X)
							dragFunction(X)
						end)
						Element.Instance.PART_Backdrop.PART_Progress.Knob.Interact.MouseButton1Down:Connect(function(X)
							dragFunction(X)
						end)

						Element.Instance.PART_Backdrop.PART_Progress:GetPropertyChangedSignal("Size"):Connect(function()
							if Element.Instance.PART_Backdrop.PART_Progress.AbsoluteSize.X <= 0 then
								Element.Instance.PART_Backdrop.PART_Progress.DropShadowHolder.DropShadow.Size =
									UDim2.new(1, 0, 1, 0)
								return
							end
							Element.Instance.PART_Backdrop.PART_Progress.DropShadowHolder.DropShadow.Size =
								UDim2.new(1, 22, 1, 22)
						end)

						local input = Element.Instance.Value.input
						local updating = false
						local lastValid = input.Text or ""

						input:GetPropertyChangedSignal("Text"):Connect(function()
							if updating or Element.SLDragging then
								return
							end

							local tb = input
							local newText = tb.Text or ""
							if newText == lastValid then
								return
							end

							local sanitizedBuilder = {}
							local dotUsed = false
							local survivorsBeforeCursor = 0
							local cursorPos = tb.CursorPosition or (#newText + 1)

							for i = 1, #newText do
								local ch = newText:sub(i, i)
								if ch:match("%d") then
									table.insert(sanitizedBuilder, ch)
									if i < cursorPos then
										survivorsBeforeCursor = survivorsBeforeCursor + 1
									end
								elseif ch == "." and not dotUsed then
									dotUsed = true
									table.insert(sanitizedBuilder, ".")
									if i < cursorPos then
										survivorsBeforeCursor = survivorsBeforeCursor + 1
									end
								end
							end

							local sanitized = table.concat(sanitizedBuilder)

							if sanitized ~= newText then
								updating = true
								tb.Text = sanitized
								--task.wait()
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

							local minv = (Element.Values and Element.Values.Range and Element.Values.Range[1])
								or -math.huge
							local maxv = (Element.Values and Element.Values.Range and Element.Values.Range[2])
								or math.huge

							if num < minv then
								num = minv
								updating = true
								tb.Text = tostring(num)
								--task.wait()
								tb.CursorPosition = #tb.Text + 1
								updating = false
								lastValid = tb.Text
							elseif num > maxv then
								num = maxv
								updating = true
								tb.Text = tostring(num)
								--task.wait()
								tb.CursorPosition = #tb.Text + 1
								updating = false
								lastValid = tb.Text
							end

							if Element.Values.CurrentValue ~= num then
								Set(num)
							end
						end)

						Element.Instance.Value.input.FocusLost:Connect(function()
							if
								Element.Instance.Value.input.Text == ""
								or Element.Instance.Value.input.Text == "."
								or Element.Instance.Value.input.Text == "0."
							then
								Set(Element.Values.CurrentValue)
								--task.wait()
								Element.Instance.Value.input:ReleaseFocus()
							end
						end)

						Element.Instance.MouseEnter:Connect(function()
							Tween(
								Element.Instance.PART_Backdrop.PART_Progress.DropShadowHolder.DropShadow,
								{ ImageTransparency = 0.1 }
							)
							Tween(
								Element.Instance.PART_Backdrop.PART_Progress.Knob.DropShadowHolder.DropShadow,
								{ ImageTransparency = 0, ImageColor3 = Color3.new(1, 1, 1) }
							)
						end)
						Element.Instance.MouseLeave:Connect(function()
							Tween(
								Element.Instance.PART_Backdrop.PART_Progress.DropShadowHolder.DropShadow,
								{ ImageTransparency = 0.9 }
							)
							Tween(
								Element.Instance.PART_Backdrop.PART_Progress.Knob.DropShadowHolder.DropShadow,
								{ ImageTransparency = 0.5, ImageColor3 = Color3.new(0, 0, 0) }
							)
						end)

						Set(Element.Values.CurrentValue)
						Element.Instance.Value.max.Text = (
							not Element.Values.HideMax and `/{Element.Values.Range[2]}` or ""
						) .. `{Element.Values.Suffix}`

						ThemeMethods.bindTheme(Element.Instance.Header, "TextColor3", "Foregrounds.Light")
						ThemeMethods.bindTheme(Element.Instance.Header.Icon, "ImageColor3", "Foregrounds.Light")
						ThemeMethods.bindTheme(Element.Instance.Value.max, "TextColor3", "Foregrounds.Medium")
						ThemeMethods.bindTheme(Element.Instance.Value.input, "TextColor3", "Foregrounds.Light")
						ThemeMethods.bindTheme(Element.Instance.PART_Backdrop, "BackgroundColor3", "Backgrounds.Dark")
						ThemeMethods.bindTheme(Element.Instance.PART_Backdrop.UIStroke, "Color", "Foregrounds.Dark")
						ThemeMethods.bindTheme(
							Element.Instance.PART_Backdrop.PART_Progress.Accent,
							"Color",
							"Accents.Main"
						)
						ThemeMethods.bindTheme(
							Element.Instance.PART_Backdrop.PART_Progress.DropShadowHolder.DropShadow.Accent,
							"Color",
							"Accents.Main"
						)
						ThemeMethods.bindTheme(
							Element.Instance.PART_Backdrop.PART_Progress.Knob,
							"BackgroundColor3",
							"Foregrounds.Light"
						)
						ThemeMethods.bindTheme(
							Element.Instance.PART_Backdrop.PART_Progress.Knob.DropShadowHolder.DropShadow,
							"ImageColor3",
							"Foregrounds.Light"
						)

						function Element:Destroy()
							Element.Instance:Destroy()
							if Element.NestedElements ~= nil then
								for _, nestedElement in pairs(Element.NestedElements) do
									nestedElement:Destroy()
								end
							end
							Element = nil
						end

						function Element:Set(NewElementSettings, NewIndex)
							NewIndex = NewIndex or Index

							for i, v in pairs(Element.Values) do
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
								Element.Instance.Header.UIPadding.PaddingLeft = UDim.new(0, 6)
							else
								Element.Instance.Header.UIPadding.PaddingLeft = UDim.new(0, 32)
							end
							Element.Instance.Header.Icon.Image = not String.IsEmptyOrNull(Element.Values.Icon)
								and "rbxassetid://" .. Element.Values.Icon
								or ""

							tooltip.Text = Element.Values.Tooltip or tooltip.Text

							Set(Element.Values.CurrentValue)
							Element.Instance.Value.max.Text = (
								not Element.Values.HideMax and `/{Element.Values.Range[2]}` or ""
							) .. `{Element.Values.Suffix}`

							Starlight.Window.TabSections[Name].Tabs[TabIndex].Groupboxes[GroupIndex].Elements[Index].Values =
								Element.Values
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
						Element.Instance.Parent = Groupbox.ParentingItem
					end)

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
					if ElementSettings.RemoveTextOnFocus == nil then
						ElementSettings.RemoveTextOnFocus = true
					end

					local Element = {
						Values = ElementSettings,
						Class = "Input",
						IgnoreConfig = ElementSettings.IgnoreConfig,
					}

					task.spawn(function()
						local tooltip

						Element.Instance = GroupboxTemplateInstance.Input_TEMPLATE:Clone()
						Element.Instance.Visible = true

						Element.Instance.PART_Backdrop.PART_Input.FocusLost:Connect(function(Enter)
							if Element.Values.Enter then
								local Success, Response = pcall(function()
									Element.Values.Callback(Element.Values.CurrentValue)
								end)

								if not Success then
									Element.Instance.Header.Text = "Callback Error"
									warn(`Starlight Interface Suite - Callback Error | {Element.Values.Name} ({Index})`)
									print(Response)
									if WindowSettings.NotifyOnCallbackError then
										Starlight:Notification({
											Title = Element.Values.Name .. " Callback Error",
											Content = tostring(Response),
											Icon = 129398364168201,
										})
									end
									wait(0.5)
									Element.Instance.Header.Text = ElementSettings.Name
								end
							end

							if Element.Values.RemoveTextAfterFocusLost then
								Element.Instance.PART_Backdrop.PART_Input.Text = ""
								Element.Values.CurrentValue = ""
							end
						end)

						Element.Instance.PART_Backdrop.Interact.Focused:Connect(function()
							Element.Instance.PART_Backdrop.Interact:ReleaseFocus()
							Element.Instance.PART_Backdrop.PART_Input:CaptureFocus()
						end)

						Element.Instance.MouseEnter:Connect(function()
							Tween(
								Element.Instance.PART_Backdrop.UIStroke,
								{ Color = Starlight.CurrentTheme.Foregrounds.DarkHover }
							)
						end)
						Element.Instance.MouseLeave:Connect(function()
							Tween(
								Element.Instance.PART_Backdrop.UIStroke,
								{ Color = Starlight.CurrentTheme.Foregrounds.Dark }
							)
						end)

						if Element.Values.Numeric then
							Element.Instance.PART_Backdrop.PART_Input
								:GetPropertyChangedSignal("Text")
								:Connect(function()
									local text = Element.Instance.PART_Backdrop.PART_Input.Text
									if not tonumber(text) and text ~= "." then
										Element.Instance.PART_Backdrop.PART_Input.Text = text:match("[0-9.]*") or ""
									end
								end)
						end

						Element.Instance.PART_Backdrop.PART_Input:GetPropertyChangedSignal("Text"):Connect(function()
							if Element.Values.MaxCharacters < 0 then
								if
									(#Element.Instance.PART_Backdrop.PART_Input.Text - 1)
									== Element.Values.MaxCharacters
								then
									Element.Instance.PART_Backdrop.PART_Input.Text =
										Element.Instance.PART_Backdrop.PART_Input.Text:sub(
											1,
											Element.Values.MaxCharacters
										)
								end
							end

							Element.Values.CurrentValue = Element.Instance.PART_Backdrop.PART_Input.Text
							if not Element.Values.Enter then
								local Success, Response = pcall(function()
									Element.Values.Callback(Element.Values.CurrentValue)
								end)

								if not Success then
									Element.Instance.Header.Text = "Callback Error"
									warn(`Starlight Interface Suite - Callback Error | {Element.Values.Name} ({Index})`)
									print(Response)
									if WindowSettings.NotifyOnCallbackError then
										Starlight:Notification({
											Title = Element.Values.Name .. " Callback Error",
											Content = tostring(Response),
											Icon = 129398364168201,
										})
									end
									wait(0.5)
									Element.Instance.Header.Text = ElementSettings.Name
								end
							end

							Tween(
								Element.Instance.PART_Backdrop.PART_Input,
								{ Size = UDim2.new(0, Element.Instance.PART_Backdrop.PART_Input.TextBounds.X, 1, 0) }
							)
							Tween(
								Element.Instance.PART_Backdrop,
								{
									Size = UDim2.new(
										0,
										Element.Instance.PART_Backdrop.PART_Input.TextBounds.X + 30,
										0,
										Element.Instance.PART_Backdrop.Size.Y.Offset
									),
								}
							)
						end)

						Element.Instance.Name = "INPUT_" .. Index
						Element.Instance.Header.Text = Element.Values.Name
						Element.Instance.Header.Icon.Visible = not String.IsEmptyOrNull(Element.Values.Icon)
						if Element.Instance.Header.Icon.Visible == false then
							Element.Instance.Header.UIPadding.PaddingLeft = UDim.new(0, 6)
						else
							Element.Instance.Header.UIPadding.PaddingLeft = UDim.new(0, 32)
						end
						Element.Instance.PART_Backdrop.PART_Input.ClearTextOnFocus = Element.Values.RemoveTextOnFocus
						Element.Instance.Header.Icon.Image = not String.IsEmptyOrNull(Element.Values.Icon)
							and "rbxassetid://" .. Element.Values.Icon
							or ""
						task.delay(0.2, function()
							Element.Instance.PART_Backdrop.PART_Input.PlaceholderText = Element.Values.PlaceholderText
							Element.Instance.PART_Backdrop.PART_Input.Text = Element.Values.CurrentValue
							Element.Instance.PART_Backdrop.PART_Input.Size =
								UDim2.new(0, Element.Instance.PART_Backdrop.PART_Input.TextBounds.X, 1, 0)
							Element.Instance.PART_Backdrop.Size = UDim2.new(
								0,
								Element.Instance.PART_Backdrop.PART_Input.TextBounds.X + 30,
								0,
								Element.Instance.PART_Backdrop.Size.Y.Offset
							)
						end)

						ThemeMethods.bindTheme(Element.Instance.Header, "TextColor3", "Foregrounds.Light")
						ThemeMethods.bindTheme(Element.Instance.Header.Icon, "ImageColor3", "Foregrounds.Light")
						ThemeMethods.bindTheme(Element.Instance.PART_Backdrop, "BackgroundColor3", "Backgrounds.Dark")
						ThemeMethods.bindTheme(Element.Instance.PART_Backdrop.UIStroke, "Color", "Foregrounds.Dark")
						ThemeMethods.bindTheme(
							Element.Instance.PART_Backdrop.PART_Input,
							"PlaceholderColor3",
							"Foregrounds.Medium"
						)
						ThemeMethods.bindTheme(
							Element.Instance.PART_Backdrop.PART_Input,
							"TextColor3",
							"Foregrounds.Light"
						)

						tooltip = AddToolTip(Element.Values.Tooltip, Element.Instance)

						function Element:Set(NewElementSettings, NewIndex)
							NewIndex = NewIndex or Index

							for i, v in pairs(ElementSettings) do
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
								Element.Instance.Header.UIPadding.PaddingLeft = UDim.new(0, 6)
							else
								Element.Instance.Header.UIPadding.PaddingLeft = UDim.new(0, 32)
							end
							Element.Instance.Header.Icon.Image = not String.IsEmptyOrNull(Element.Values.Icon)
								and "rbxassetid://" .. Element.Values.Icon
								or ""
							Element.Instance.PART_Backdrop.PART_Input.PlaceholderText = Element.Values.PlaceholderText
							Element.Instance.PART_Backdrop.PART_Input.Text = Element.Values.CurrentValue
							Tween(
								Element.Instance.PART_Backdrop.PART_Input,
								{ Size = UDim2.new(0, Element.Instance.PART_Backdrop.PART_Input.TextBounds.X, 1, 0) }
							)
							Tween(
								Element.Instance.PART_Backdrop,
								{
									Size = UDim2.new(
										0,
										Element.Instance.PART_Backdrop.PART_Input.TextBounds.X + 30,
										0,
										Element.Instance.PART_Backdrop.Size.Y.Offset
									),
								}
							)
							local Success, Response = pcall(function()
								Element.Values.Callback(Element.Values.CurrentValue)
							end)

							if not Success then
								Element.Instance.Header.Text = "Callback Error"
								warn(`Starlight Interface Suite - Callback Error | {Element.Values.Name} ({Index})`)
								print(Response)
								if WindowSettings.NotifyOnCallbackError then
									Starlight:Notification({
										Title = Element.Values.Name .. " Callback Error",
										Content = tostring(Response),
										Icon = 129398364168201,
									})
								end
								wait(0.5)
								Element.Instance.Header.Text = ElementSettings.Name
							end

							tooltip.Text = Element.Values.Tooltip or ""

							Starlight.Window.TabSections[Name].Tabs[TabIndex].Groupboxes[GroupIndex].Elements[Index].Values =
								Element.Values
						end

						function Element:Destroy()
							Element.Instance:Destroy()
							if Element.NestedElements ~= nil then
								for _, nestedElement in pairs(Element.NestedElements) do
									nestedElement:Destroy()
								end
							end
							Element = nil
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
					end)
					Element.Instance.Parent = Groupbox.ParentingItem

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

					task.spawn(function()
						local tooltip

						Element.Instance = GroupboxTemplateInstance.Label_TEMPLATE:Clone()
						Element.Instance.Visible = true
						Element.Instance.Parent = Groupbox.ParentingItem

						Element.Instance.Name = "LABEL_" .. Index
						Element.Instance.Header.Text = Element.Values.Name
						Element.Instance.Header.Icon.Visible = not String.IsEmptyOrNull(Element.Values.Icon)
						if Element.Instance.Header.Icon.Visible == false then
							Element.Instance.Header.UIPadding.PaddingLeft = UDim.new(0, 6)
						else
							Element.Instance.Header.UIPadding.PaddingLeft = UDim.new(0, 32)
						end
						Element.Instance.Header.Icon.Image = not String.IsEmptyOrNull(Element.Values.Icon)
							and "rbxassetid://" .. Element.Values.Icon
							or ""

						ThemeMethods.bindTheme(Element.Instance.Header, "TextColor3", "Foregrounds.Light")
						ThemeMethods.bindTheme(Element.Instance.Header.Icon, "ImageColor3", "Foregrounds.Light")

						tooltip = AddToolTip(Element.Values.Tooltip, Element.Instance)

						function Element:Set(NewElementSettings, NewIndex)
							NewIndex = NewIndex or Index

							for i, v in pairs(Element.Values) do
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
								Element.Instance.Header.UIPadding.PaddingLeft = UDim.new(0, 6)
							else
								Element.Instance.Header.UIPadding.PaddingLeft = UDim.new(0, 32)
							end
							Element.Instance.Header.Icon.Image = not String.IsEmptyOrNull(Element.Values.Icon)
								and "rbxassetid://" .. Element.Values.Icon
								or ""

							tooltip.Text = Element.Values.Tooltip or ""

							Starlight.Window.TabSections[Name].Tabs[TabIndex].Groupboxes[GroupIndex].Elements[Index].Values =
								Element.Values
						end

						function Element:Destroy()
							Element.Instance:Destroy()
							if Element.NestedElements ~= nil then
								for _, nestedElement in pairs(Element.NestedElements) do
									nestedElement:Destroy()
								end
							end
							Element = nil
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
					end)

					--// SUBSECTION : User Elements

					function Element:AddBind(NestedSettings, NestedIndex, Parent, ParentIndex)
						Parent = Parent or Element
						local isToggle = Parent ~= Element

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
						if NestedSettings.SyncToggleState == nil then
							NestedSettings.SyncToggleState = true
						end
						NestedSettings.OnChangedCallback = NestedSettings.OnChangedCallback or function() end
						if isToggle then
							NestedSettings.Callback = NestedSettings.Callback or function() end
						end
						NestedSettings.CurrentValue = NestedSettings.CurrentValue or "No Bind"
						NestedSettings.WindowSetting = NestedSettings.WindowSetting or false

						local NestedElement = {
							Values = NestedSettings,
							Active = false,
							Class = "Bind",
							IgnoreConfig = NestedSettings.IgnoreConfig,
						}

						task.spawn(function()
							-- Current Value Validation

							local digits = {
								[1] = "One",
								[2] = "Two",
								[3] = "Three",
								[4] = "Four",
								[5] = "Five",
								[6] = "Six",
								[7] = "Seven",
								[8] = "Eight",
								[9] = "Nine",
								[0] = "Zero",
							}

							if tonumber(NestedElement.Values.CurrentValue) then
								NestedElement.Values.CurrentValue = digits[tonumber(NestedElement.Values.CurrentValue)]
							end

							NestedElement.Values.CurrentValue = NestedElement.Values.CurrentValue:sub(1, 1):upper()
								.. NestedElement.Values.CurrentValue:sub(2)

							--

							NestedElement.Instance = Element.Instance.ElementContainer.Bind:Clone()
							NestedElement.Instance.Visible = true
							NestedElement.Instance.Parent = Parent.Instance.ElementContainer
							Parent.Instance.Header.Size = UDim2.fromOffset(Parent.Instance.Header.Size.X.Offset - 26, 20)

							NestedElement.Instance.Name = "BIND_" .. NestedIndex

							local CheckingForKey = false

							NestedElement.Instance:GetPropertyChangedSignal("Text"):Connect(function()
								--task.wait()

								if NestedElement.Instance.ContentText == "" then
									Tween(
										NestedElement.Instance,
										{ Size = UDim2.new(0, NestedElement.Instance.TextBounds.X + 30, 0, 22) }
									)
								else
									Tween(
										NestedElement.Instance,
										{ Size = UDim2.new(0, NestedElement.Instance.TextBounds.X + 14, 0, 22) }
									)
								end
							end)

							task.delay(0.2, function()
								NestedElement.Instance.Text = NestedElement.Values.CurrentValue == "No Bind"
									and '<font color="rgb(' .. tostring(
										math.floor(Starlight.CurrentTheme.Foregrounds.Medium.R * 255 + 0.5)
									) .. "," .. tostring(
									math.floor(Starlight.CurrentTheme.Foregrounds.Medium.G * 255 + 0.5)
								) .. "," .. tostring(
									math.floor(Starlight.CurrentTheme.Foregrounds.Medium.B * 255 + 0.5)
								) .. ')">No Bind</font>'
									or NestedElement.Values.CurrentValue
							end)

							NestedElement.Instance.Focused:Connect(function()
								task.wait()
								CheckingForKey = true
							end)

							NestedElement.Instance.MouseEnter:Connect(function()
								Tween(
									NestedElement.Instance.UIStroke,
									{ Color = Starlight.CurrentTheme.Foregrounds.DarkHover }
								)
							end)
							NestedElement.Instance.MouseLeave:Connect(function()
								Tween(
									NestedElement.Instance.UIStroke,
									{ Color = Starlight.CurrentTheme.Foregrounds.Dark }
								)
							end)

							NestedElement.Instance.FocusLost:Connect(function(enter)
								if not enter then
									CheckingForKey = false
									if String.IsEmptyOrNull(NestedElement.Instance.Text) then
										NestedElement.Values.CurrentValue = "No Bind"
										NestedElement.Instance.Text = '<font color="rgb('
											.. tostring(
												math.floor(Starlight.CurrentTheme.Foregrounds.Medium.R * 255 + 0.5)
											)
											.. ","
											.. tostring(
												math.floor(Starlight.CurrentTheme.Foregrounds.Medium.G * 255 + 0.5)
											)
											.. ","
											.. tostring(
												math.floor(Starlight.CurrentTheme.Foregrounds.Medium.B * 255 + 0.5)
											)
											.. ')">No Bind</font>'
									end
								end
							end)

							connections[ParentIndex .. "_" .. Index] = UserInputService.InputBegan:Connect(
								function(input, processed)
									if CheckingForKey then
										if NestedElement.Values.WindowSetting then
											if input.KeyCode ~= Enum.KeyCode.Unknown then
												local SplitMessage = string.split(tostring(input.KeyCode), ".")
												local NewKeyNoEnum = SplitMessage[3]
												NestedElement.Instance.Text = tostring(NewKeyNoEnum)
												NestedElement.Values.CurrentValue = tostring(NewKeyNoEnum)
												local Success, Response = pcall(function()
													NestedElement.Values.OnChangedCallback(
														NestedElement.Values.CurrentValue
													)
													Starlight.WindowKeybind = tostring(NewKeyNoEnum)
												end)

												if not Success then
													Parent.Instance.Header.Text = "Callback Error"
													warn(
														`Starlight Interface Suite - Callback Error | {Element.Values.Name} ({Index} {NestedIndex})`
													)
													print(Response)
													if WindowSettings.NotifyOnCallbackError then
														Starlight:Notification({
															Title = Element.Values.Name .. " Callback Error",
															Content = tostring(Response),
															Icon = 129398364168201,
														})
													end
													wait(0.5)
													Parent.Instance.Header.Text = ElementSettings.Name
												end
												NestedElement.Instance:ReleaseFocus()
											else
												Starlight.WindowKeybind = nil
											end
										elseif input.UserInputType == Enum.UserInputType.Keyboard then
											if
												input.KeyCode ~= Enum.KeyCode.Unknown
												and input.KeyCode ~= Enum.KeyCode[Starlight.WindowKeybind]
											then
												local SplitMessage = string.split(tostring(input.KeyCode), ".")
												local NewKeyNoEnum = SplitMessage[3]
												NestedElement.Instance.Text = tostring(NewKeyNoEnum)
												NestedElement.Values.CurrentValue = tostring(NewKeyNoEnum)
												local Success, Response = pcall(function()
													NestedElement.Values.OnChangedCallback(
														NestedElement.Values.CurrentValue
													)
												end)

												if not Success then
													Parent.Instance.Header.Text = "Callback Error"
													warn(
														`Starlight Interface Suite - Callback Error | {Element.Values.Name} ({Index} {NestedIndex})`
													)
													print(Response)
													if WindowSettings.NotifyOnCallbackError then
														Starlight:Notification({
															Title = Element.Values.Name .. " Callback Error",
															Content = tostring(Response),
															Icon = 129398364168201,
														})
													end
													wait(0.5)
													Parent.Instance.Header.Text = ElementSettings.Name
												end
												NestedElement.Instance:ReleaseFocus()
											elseif input.KeyCode == Enum.KeyCode[Starlight.WindowKeybind] then
												NestedElement.Instance.Text = NestedElement.Values.CurrentValue
													== "No Bind"
													and '<font color="rgb(' .. tostring(
														math.floor(
															Starlight.CurrentTheme.Foregrounds.Medium.R * 255 + 0.5
														)
													) .. "," .. tostring(
													math.floor(
														Starlight.CurrentTheme.Foregrounds.Medium.G * 255 + 0.5
													)
												) .. "," .. tostring(
													math.floor(
														Starlight.CurrentTheme.Foregrounds.Medium.B * 255 + 0.5
													)
												) .. ')">No Bind</font>'
													or NestedElement.Values.CurrentValue
												NestedElement.Instance:ReleaseFocus()
											end
										else
											if input.UserInputType == Enum.UserInputType.MouseButton1 then
												NestedElement.Instance.Text = "MB1"
												NestedElement.Values.CurrentValue = "MB1"
												NestedElement.Instance:ReleaseFocus()
												local Success, Response = pcall(function()
													NestedElement.Values.OnChangedCallback(
														NestedElement.Values.CurrentValue
													)
												end)

												if not Success then
													Parent.Instance.Header.Text = "Callback Error"
													warn(
														`Starlight Interface Suite - Callback Error | {Element.Values.Name} ({Index} {NestedIndex})`
													)
													print(Response)
													if WindowSettings.NotifyOnCallbackError then
														Starlight:Notification({
															Title = Element.Values.Name .. " Callback Error",
															Content = tostring(Response),
															Icon = 129398364168201,
														})
													end
													wait(0.5)
													Parent.Instance.Header.Text = ElementSettings.Name
												end
											elseif input.UserInputType == Enum.UserInputType.MouseButton2 then
												NestedElement.Instance.Text = "MB2"
												NestedElement.Values.CurrentValue = "MB2"
												NestedElement.Instance:ReleaseFocus()
												local Success, Response = pcall(function()
													NestedElement.Values.OnChangedCallback(
														NestedElement.Values.CurrentValue
													)
												end)

												if not Success then
													Parent.Instance.Header.Text = "Callback Error"
													warn(
														`Starlight Interface Suite - Callback Error | {Element.Values.Name} ({Index} {NestedIndex})`
													)
													print(Response)
													if WindowSettings.NotifyOnCallbackError then
														Starlight:Notification({
															Title = Element.Values.Name .. " Callback Error",
															Content = tostring(Response),
															Icon = 129398364168201,
														})
													end
													wait(0.5)
													Parent.Instance.Header.Text = ElementSettings.Name
												end
											end
										end
										CheckingForKey = false
									elseif
										NestedElement.Values.CurrentValue ~= nil
										and NestedElement.Values.CurrentValue ~= "No Bind"
										and not processed
									then
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
												warn(
													`Starlight Interface Suite - Callback Error | {Element.Values.Name} ({Index} {NestedIndex})`
												)
												print(response)
												if WindowSettings.NotifyOnCallbackError then
													Starlight:Notification({
														Title = Element.Values.Name .. " Callback Error",
														Content = tostring(response),
														Icon = 129398364168201,
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
													if Parent.Values.CurrentValue ~= true then
														Parent:Set({ CurrentValue = true })
													end
												elseif isToggle then
													Parent.Values.Callback(true)
												end
											end)

											if not success then
												Parent.Instance.Header.Text = "Callback Error"
												warn(
													`Starlight Interface Suite - Callback Error | {Element.Values.Name} ({Index} {NestedIndex})`
												)
												print(response)
												if WindowSettings.NotifyOnCallbackError then
													Starlight:Notification({
														Title = Element.Values.Name .. " Callback Error",
														Content = tostring(response),
														Icon = 129398364168201,
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
															if Parent.Values.CurrentValue ~= false then
																Parent:Set({ CurrentValue = false })
															end
														elseif isToggle then
															Parent.Values.Callback(false)
														end
													end)

													if not success2 then
														Parent.Instance.Header.Text = "Callback Error"
														warn(
															`Starlight Interface Suite - Callback Error | {Element.Values.Name} ({Index} {NestedIndex})`
														)
														print(response2)
														if WindowSettings.NotifyOnCallbackError then
															Starlight:Notification({
																Title = Element.Values.Name .. " Callback Error",
																Content = tostring(response2),
																Icon = 129398364168201,
															})
														end
														wait(0.5)
														Parent.Instance.Header.Text = ElementSettings.Name
													end
												end
											end)
										end
									end
								end
							)

							local Success, Response = pcall(function()
								NestedElement.Values.OnChangedCallback(NestedElement.Values.CurrentValue)
								if NestedElement.Values.WindowSetting then
									Starlight.WindowKeybind = tostring(NestedElement.Values.CurrentValue)
								end
							end)

							if not Success then
								Parent.Instance.Header.Text = "Callback Error"
								warn(
									`Starlight Interface Suite - Callback Error | {Element.Values.Name} ({Index} {NestedIndex})`
								)
								print(Response)
								if WindowSettings.NotifyOnCallbackError then
									Starlight:Notification({
										Title = Element.Values.Name .. " Callback Error",
										Content = tostring(Response),
										Icon = 129398364168201,
									})
								end
								wait(0.5)
								Parent.Instance.Header.Text = ElementSettings.Name
							end

							ThemeMethods.bindTheme(NestedElement.Instance, "BackgroundColor3", "Backgrounds.Dark")
							ThemeMethods.bindTheme(NestedElement.Instance.UIStroke, "Color", "Foregrounds.Dark")
							ThemeMethods.bindTheme(NestedElement.Instance, "TextColor3", "Foregrounds.Light")
							ThemeMethods.bindTheme(NestedElement.Instance, "PlaceholderColor3", "Foregrounds.Medium")

							function NestedElement:Destroy()
								NestedElement.Instance:Destroy()
								NestedElement = nil
								if connections[ParentIndex .. "_" .. Index] ~= nil then
									connections[ParentIndex .. "_" .. Index]:Disconnect()
								end
								connections[ParentIndex .. "_" .. Index] = nil
								Parent.Instance.Header.Size = UDim2.fromOffset(Parent.Instance.Header.Size.X.Offset + 26, 20)
							end

							function NestedElement:Set(NewNestedSettings, NewNestedIndex)
								NewNestedIndex = NewNestedIndex or NestedIndex

								for i, v in pairs(NestedElement.Values) do
									if NewNestedSettings[i] == nil then
										NewNestedSettings[i] = v
									end
								end

								NestedSettings = NewNestedSettings
								NestedIndex = NewNestedIndex

								NestedElement.Values = NestedSettings

								NestedElement.Instance.Name = "BIND_" .. NestedIndex

								NestedElement.Instance.Text = NestedElement.Values.CurrentValue == "No Bind"
									and '<font color="rgb(' .. tostring(
										math.floor(Starlight.CurrentTheme.Foregrounds.Medium.R * 255 + 0.5)
									) .. "," .. tostring(
									math.floor(Starlight.CurrentTheme.Foregrounds.Medium.G * 255 + 0.5)
								) .. "," .. tostring(
									math.floor(Starlight.CurrentTheme.Foregrounds.Medium.B * 255 + 0.5)
								) .. ')">No Bind</font>'
									or NestedElement.Values.CurrentValue

								local Success, Response = pcall(function()
									NestedElement.Values.OnChangedCallback(NestedElement.Values.CurrentValue)
									if NestedElement.Values.WindowSetting then
										Starlight.WindowKeybind = tostring(NestedElement.Values.CurrentValue)
									end
								end)

								if not Success then
									Parent.Instance.Header.Text = "Callback Error"
									warn(
										`Starlight Interface Suite - Callback Error | {Element.Values.Name} ({Index} {NestedIndex})`
									)
									print(Response)
									if WindowSettings.NotifyOnCallbackError then
										Starlight:Notification({
											Title = Element.Values.Name .. " Callback Error",
											Content = tostring(Response),
											Icon = 129398364168201,
										})
									end
									wait(0.5)
									Parent.Instance.Header.Text = ElementSettings.Name
								end

								Starlight.Window.TabSections[Name].Tabs[TabIndex].Groupboxes[GroupIndex].Elements[ParentIndex].NestedElements[NestedIndex].Values =
									NestedElement.Values
							end
						end)

						Starlight.Window.TabSections[Name].Tabs[TabIndex].Groupboxes[GroupIndex].Elements[ParentIndex].NestedElements[NestedIndex] =
							NestedElement
						return Starlight.Window.TabSections[Name].Tabs[TabIndex].Groupboxes[GroupIndex].Elements[ParentIndex].NestedElements[NestedIndex]
					end

					function Element:AddColorPicker(NestedSettings, NestedIndex, Parent, ParentIndex)
						Parent = Parent or Element
						ParentIndex = ParentIndex or Index

						--[[
						NestedSettings = {
							CurrentValue = Color3,
							Transparency = number, **
							
							Callback = function(Color3, number),
						}
						]]

						local NestedElement = {
							Values = NestedSettings,
							Class = "ColorPicker",
							Instances = {},
							IgnoreConfig = NestedSettings.IgnoreConfig,
						}

						task.spawn(function()
							local hover = false
							local sliders = {}

							NestedElement.Instances[1] = Element.Instance.ElementContainer.ColorPicker:Clone()
							NestedElement.Instances[1].Visible = true
							NestedElement.Instances[1].Parent = Parent.Instance.ElementContainer
							Parent.Instance.Header.Size = UDim2.fromOffset(Parent.Instance.Header.Size.X.Offset - 26, 20)

							NestedElement.Instances[2] = Resources.Elements.ColorPicker:Clone()
							NestedElement.Instances[2].Parent = StarlightUI.PopupOverlay

							NestedElement.Instances[1].Name = "COLORPICKER_" .. NestedIndex
							NestedElement.Instances[2].Name = "COLORPICKER_" .. NestedIndex

							acrylicEvent.Event:Connect(function()
								if mainAcrylic then
									NestedElement.Instances[2].BackgroundTransparency = 0.5
								else
									NestedElement.Instances[2].BackgroundTransparency = 0
								end
							end)
							local AcrylicObject = Acrylic.AcrylicPaint()
							AcrylicObject.AddParent(NestedElement.Instances[2])
							AcrylicObject.Frame.Parent = NestedElement.Instances[2]

							local function close()
								if
									NestedElement.Instances[1].AbsolutePosition.Y + 27 + 245
									>= Camera.ViewportSize.Y - (GuiInset + 20)
								then
									NestedElement.Instances[2].AnchorPoint = Vector2.new(1, 1)
									NestedElement.Instances[2].Position = UDim2.fromOffset(
										math.ceil(NestedElement.Instances[1].AbsolutePosition.X) + 22,
										math.ceil(NestedElement.Instances[1].AbsolutePosition.Y) - 5
									)
								else
									NestedElement.Instances[2].AnchorPoint = Vector2.new(1, 0)
									NestedElement.Instances[2].Position = UDim2.fromOffset(
										math.ceil(NestedElement.Instances[1].AbsolutePosition.X) + 22,
										math.ceil(NestedElement.Instances[1].AbsolutePosition.Y) + 35
									)
								end

								NestedElement.Instances[2].Container.Visible = false
								NestedElement.Instances[2].TabSelector.Visible = false
								NestedElement.Instances[2].Buttons.Visible = false

								Tween(NestedElement.Instances[2], { Size = UDim2.fromOffset(0, 0) }, function()
									if NestedElement and NestedElement.Instances ~= nil then
										NestedElement.Instances[2].Visible = false
										if acrylicFlag then
											AcrylicObject.Model.Transparency = 1
										end
									end
								end, Tween.Info(nil, nil, 0.24))

								NestedElement.Instances[2].Container.Color.OldColor.Frame.BackgroundColor3 =
									NestedElement.Values.CurrentValue
								NestedElement.Instances[2].Container.Color.OldColor.Frame.BackgroundTransparency = NestedElement.Values.Transparency
									or 0
							end

							NestedElement.Instances[1]:GetPropertyChangedSignal("AbsolutePosition"):Connect(close)

							NestedElement.Instances[1].Interact.MouseButton1Click:Connect(function()
								if NestedElement.Instances[2].Visible then
									close()
								else
									NestedElement.Instances[2].Visible = true
									Tween(
										NestedElement.Instances[2],
										{ Size = UDim2.fromOffset(320, 245) },
										nil,
										Tween.Info(nil, nil, 0.18)
									)
									NestedElement.Instances[2].Container.Visible = true
									NestedElement.Instances[2].TabSelector.Visible = true
									NestedElement.Instances[2].Buttons.Visible = true
									if acrylicFlag then
										AcrylicObject.Model.Transparency = 0.98
									end
									local connection
									connection = UserInputService.InputBegan:Connect(function(i)
										if i.UserInputType ~= Enum.UserInputType.MouseButton1 then
											return
										end
										local p, pos, size =
											i.Position,
											NestedElement.Instances[2].AbsolutePosition,
											NestedElement.Instances[2].AbsoluteSize
										if
											not (
												p.X >= pos.X
													and p.X <= pos.X + size.X
													and p.Y >= pos.Y
													and p.Y <= pos.Y + size.Y
											) and not hover
										then
											close()
											connection:Disconnect()
										end
									end)
								end
							end)

							NestedElement.Instances[1].MouseEnter:Connect(function()
								hover = true
							end)
							NestedElement.Instances[1].MouseLeave:Connect(function()
								hover = false
							end)

							for _, TabButton in pairs(NestedElement.Instances[2].TabSelector:GetChildren()) do
								if TabButton.Name == "UIListLayout" or TabButton.Name == "UIPadding" then
									continue
								end

								TabButton.MouseButton1Click:Connect(function()
									for _, OtherTabButton in pairs(NestedElement.Instances[2].TabSelector:GetChildren()) do
										if
											OtherTabButton.Name == "UIListLayout"
											or OtherTabButton.Name == "UIPadding"
										then
											continue
										end
										if OtherTabButton == TabButton then
											continue
										end

										Tween(
											OtherTabButton,
											{
												BackgroundTransparency = 1,
												TextColor3 = Starlight.CurrentTheme.Foregrounds.Medium,
											}
										)
										OtherTabButton.Accent.Enabled = false
									end
									Tween(TabButton, { BackgroundTransparency = 0.8, TextColor3 = Color3.new(1, 1, 1) })
									TabButton.Accent.Enabled = true

									NestedElement.Instances[2].Container.UIPageLayout:JumpTo(
										NestedElement.Instances[2].Container[TabButton.Name]
									)
								end)
							end

							-- uhh forget abt doing this myself, i found this part on stackoverflow for some old ahh c# app and ported it to luau
							local function GammaBlend(fg: Color3, transparency: number, bg: Color3): Color3
								local function toLinear(channel)
									return math.pow(channel, 2.2)
								end

								local function toSRGB(channel)
									return math.pow(channel, 1 / 2.2)
								end

								local alpha = 1 - transparency

								local r = toSRGB(toLinear(fg.R) * alpha + toLinear(bg.R) * transparency)
								local g = toSRGB(toLinear(fg.G) * alpha + toLinear(bg.G) * transparency)
								local b = toSRGB(toLinear(fg.B) * alpha + toLinear(bg.B) * transparency)

								return Color3.new(r, g, b)
							end

							local function safeCallback()
								local Success, Response = pcall(function()
									NestedElement.Values.Callback(
										NestedElement.Values.CurrentValue,
										NestedElement.Values.Transparency
									)
								end)

								if not Success then
									Parent.Instance.Header.Text = "Callback Error"
									warn(
										`Starlight Interface Suite - Callback Error | {Element.Values.Name} ({Index} {NestedIndex})`
									)
									print(Response)
									if WindowSettings.NotifyOnCallbackError then
										Starlight:Notification({
											Title = Element.Values.Name .. " Callback Error",
											Content = tostring(Response),
											Icon = 129398364168201,
										})
									end
									wait(0.5)
									Parent.Instance.Header.Text = Element.Values.Name
								end
							end

							local function updateInstances(currentBox, ignoreCallback)
								local oldValue = Color3.fromRGB(
									tonumber(
										NestedElement.Instances[2].Container.Values.HexRGB.Red.PART_Backdrop.PART_Input.Text
									),
									tonumber(
										NestedElement.Instances[2].Container.Values.HexRGB.Green.PART_Backdrop.PART_Input.Text
									),
									tonumber(
										NestedElement.Instances[2].Container.Values.HexRGB.Blue.PART_Backdrop.PART_Input.Text
									)
								)

								local h, s, v = NestedElement.Values.CurrentValue:ToHSV()
								if
									currentBox == NestedElement.Instances[2].Container.Color.ColorPicker
									or currentBox == NestedElement.Instances[2].Container.Color.HueSlider
								then
									h = NestedElement.Instances[2].Container.Color.HueSlider.Value.Size.Y.Scale
								else
									if
										currentBox == NestedElement.Instances[2].Container.Values.AlphaHSV.Hue
										or currentBox == NestedElement.Instances[2].Container.Values.HexRGB.Red
										or currentBox == NestedElement.Instances[2].Container.Values.HexRGB.Green
										or currentBox == NestedElement.Instances[2].Container.Values.HexRGB.Blue
										or currentBox == NestedElement.Instances[2].Container.Values.HexRGB.Hex
									then
										local h, _, _ = NestedElement.Values.CurrentValue:ToHSV()

										NestedElement.Instances[2].Container.Values.AlphaHSV.Hue.PART_Backdrop.PART_Input.Text =
											tostring(math.floor((h * 255) + 0.5))
									end
									h = (
										tonumber(
											NestedElement.Instances[2].Container.Values.AlphaHSV.Hue.PART_Backdrop.PART_Input.Text
										) or h * 255
									) / 255
								end
								local r, g, b =
									NestedElement.Values.CurrentValue.R * 255,
									NestedElement.Values.CurrentValue.G * 255,
									NestedElement.Values.CurrentValue.B * 255

								if NestedElement.Instances[2].Visible == false then
									NestedElement.Instances[2].Container.Color.OldColor.Frame.BackgroundColor3 =
										NestedElement.Values.CurrentValue
									NestedElement.Instances[2].Container.Color.OldColor.Frame.BackgroundTransparency = NestedElement.Values.Transparency
										or 0
								end

								NestedElement.Instances[2].Container.Color.NewColor.Frame.BackgroundColor3 =
									NestedElement.Values.CurrentValue
								NestedElement.Instances[2].Container.Color.NewColor.Frame.BackgroundTransparency = NestedElement.Values.Transparency
									or 0
								NestedElement.Instances[1].BackgroundColor3 = NestedElement.Values.CurrentValue
								NestedElement.Instances[1].BackgroundTransparency = NestedElement.Values.Transparency
									or 0
								task.delay(1 / 60, function()
									NestedElement.Instances[1].DropShadowHolder.DropShadow.ImageColor3 = GammaBlend(
										NestedElement.Values.CurrentValue,
										NestedElement.Values.Transparency or 0,
										Color3.fromRGB(242, 242, 242)
									)
								end)

								if currentBox ~= NestedElement.Instances[2].Container.Color.ColorPicker then
									NestedElement.Instances[2].Container.Color.ColorPicker.Point.Position =
										UDim2.new(s, 0, 1 - v, 0)
								end
								NestedElement.Instances[2].Container.Color.ColorPicker.BackgroundColor3 =
									Color3.fromHSV(h, 1, 1)
								NestedElement.Instances[2].Container.Color.TransparencySlider.Color.BackgroundColor3 =
									NestedElement.Values.CurrentValue
								if s * 255 < 30 then
									if v * 255 > 90 and v * 255 < 180 then
										NestedElement.Instances[2].Container.Color.ColorPicker.Point.UIStroke.Color =
											Color3.new(1, 1, 1)
									else
										NestedElement.Instances[2].Container.Color.ColorPicker.Point.UIStroke.Color =
											Color3.fromRGB(165, 165, 165)
									end
									if v * 255 > 250 then
										NestedElement.Instances[2].Container.Color.TransparencySlider.Value.Knob.ImageColor3 =
											Color3.new()
									else
										NestedElement.Instances[2].Container.Color.TransparencySlider.Value.Knob.ImageColor3 =
											Color3.new(1, 1, 1)
									end
								else
									NestedElement.Instances[2].Container.Color.TransparencySlider.Value.Knob.ImageColor3 =
										Color3.new(1, 1, 1)
									NestedElement.Instances[2].Container.Color.ColorPicker.Point.UIStroke.Color =
										Color3.fromRGB(165, 165, 165)
								end

								Tween(
									NestedElement.Instances[2].Container.Color.HueSlider.Value,
									{ Size = UDim2.new(1, 0, h, 0) }
								)
								Tween(
									NestedElement.Instances[2].Container.Color.TransparencySlider.Value,
									{ Size = UDim2.new(1, 0, 1 - (NestedElement.Values.Transparency or 0), 0) }
								)

								local color = Color3.fromHSV(h, s, v)
								local r, g, b =
									math.floor((color.R * 255) + 0.5),
									math.floor((color.G * 255) + 0.5),
									math.floor((color.B * 255) + 0.5)

								for _, Side in pairs(NestedElement.Instances[2].Container.Values:GetChildren()) do
									if Side.ClassName ~= "Frame" then
										continue
									end

									for _, Input in pairs(Side:GetChildren()) do
										if Input.ClassName ~= "Frame" then
											continue
										end
										local inputinstance = Input.PART_Backdrop.PART_Input

										if Input == currentBox then
											continue
										end

										if Input.Name == "Hex" then
											inputinstance.Text = NestedElement.Values.Transparency == nil
												and string.format(
													"#%02X%02X%02X",
													color.R * 0xFF,
													color.G * 0xFF,
													color.B * 0xFF
												)
												or string.format(
													"#%02X%02X%02X%02X",
													color.R * 0xFF,
													color.G * 0xFF,
													color.B * 0xFF,
													(1 - NestedElement.Values.Transparency) * 0xFF
												)
										end
										if Input.Name == "Alpha" then
											inputinstance.Text = tostring(
												math.floor(
													(255 - ((NestedElement.Values.Transparency or 0) * 255)) + 0.5
												)
											)
										end
										if Input.Name == "Hue" then
											if
												currentBox
												== NestedElement.Instances[2].Container.Values.AlphaHSV.Hue
												or currentBox == NestedElement.Instances[2].Container.Values.HexRGB.Red
												or currentBox == NestedElement.Instances[2].Container.Values.HexRGB.Green
												or currentBox == NestedElement.Instances[2].Container.Values.HexRGB.Blue
												or currentBox == NestedElement.Instances[2].Container.Values.HexRGB.Hex
												or currentBox
												== NestedElement.Instances[2].Container.Color.HueSlider
											then
												local h, _, _ = NestedElement.Values.CurrentValue:ToHSV()

												inputinstance.Text = tostring(math.floor((h * 255) + 0.5))
											end
										end
										if Input.Name == "Saturation" then
											inputinstance.Text = tostring(math.floor((s * 255) + 0.5))
										end
										if Input.Name == "Value" then
											inputinstance.Text = tostring(math.floor((v * 255) + 0.5))
										end
										if Input.Name == "Red" then
											inputinstance.Text = tostring(r)
										end
										if Input.Name == "Green" then
											inputinstance.Text = tostring(g)
										end
										if Input.Name == "Blue" then
											inputinstance.Text = tostring(b)
										end
									end
								end

								if NestedElement.Values.Transparency == nil then
									NestedElement.Instances[2].Container.Values.AlphaHSV.Alpha.Visible = false
									NestedElement.Instances[2].Container.Color.TransparencySlider.Visible = false
									NestedElement.Instances[2].Container.Color.HueSlider.Position =
										UDim2.new(1, -11, 0, 15)
									NestedElement.Instances[2].Container.Color.ColorPicker.Size =
										UDim2.fromOffset(283, 160)
									NestedElement.Instances[2].Container.Color.OldColor.Size = UDim2.fromOffset(137, 24)
									NestedElement.Instances[2].Container.Color.NewColor.Size = UDim2.fromOffset(137, 24)
									NestedElement.Instances[2].Container.Color.OldColor.Position =
										UDim2.fromOffset(155, 180)
								else
									NestedElement.Instances[2].Container.Values.AlphaHSV.Alpha.Visible = true
									NestedElement.Instances[2].Container.Color.TransparencySlider.Visible = true
									NestedElement.Instances[2].Container.Color.HueSlider.Position =
										UDim2.new(1, -23, 0, 15)
									NestedElement.Instances[2].Container.Color.ColorPicker.Size =
										UDim2.fromOffset(268, 160)
									NestedElement.Instances[2].Container.Color.OldColor.Size = UDim2.fromOffset(130, 24)
									NestedElement.Instances[2].Container.Color.NewColor.Size = UDim2.fromOffset(130, 24)
									NestedElement.Instances[2].Container.Color.OldColor.Position =
										UDim2.fromOffset(148, 180)
								end

								if not ignoreCallback then
									safeCallback()
								end
							end

							updateInstances()
							local h, _, _ = NestedElement.Values.CurrentValue:ToHSV()

							NestedElement.Instances[2].Container.Values.AlphaHSV.Hue.PART_Backdrop.PART_Input.Text =
								tostring(math.floor((h * 255) + 0.5))

							do
								local mainDragging, sliderDragging, transDragging = nil, nil, nil
								local mainHover, sliderHover, transHover = false, false, false

								local h, s, v = NestedElement.Values.CurrentValue:ToHSV()

								function NestedElement:__updateHsv()
									h, s, v = NestedElement.Values.CurrentValue:ToHSV()
								end

								local color = Color3.fromHSV(h, s, v)
								local hex =
									string.format("#%02X%02X%02X", color.R * 0xFF, color.G * 0xFF, color.B * 0xFF)

								UserInputService.InputEnded:Connect(function(input)
									if
										input.UserInputType == Enum.UserInputType.MouseButton1
										or input.UserInputType == Enum.UserInputType.Touch
									then
										if mainDragging then
											Tween(
												NestedElement.Instances[2].Container.Color.ColorPicker.Point,
												{ Size = mainHover and UDim2.new(0, 10, 0, 10) or UDim2.new(0, 7, 0, 7) }
											)
										end
										if sliderDragging then
											Tween(
												NestedElement.Instances[2].Container.Color.HueSlider.Value.Knob,
												{ Size = sliderHover and UDim2.new(0, 8, 0, 8) or UDim2.new(0, 6, 0, 6) }
											)
										end
										if transDragging then
											Tween(
												NestedElement.Instances[2].Container.Color.TransparencySlider.Value.Knob,
												{ Size = transHover and UDim2.new(0, 10, 0, 10) or UDim2.new(0, 8, 0, 8) }
											)
										end
										mainDragging = false
										sliderDragging = false
										transDragging = false
									end
								end)
								NestedElement.Instances[2].Container.Color.ColorPicker.MouseButton1Down:Connect(
									function()
										mainDragging = true
										Tween(
											NestedElement.Instances[2].Container.Color.ColorPicker.Point,
											{ Size = UDim2.new(0, 5, 0, 5) }
										)
									end
								)
								NestedElement.Instances[2].Container.Color.ColorPicker.MouseLeave:Connect(function()
									mainHover = false
									if mainDragging then
										return
									end
									Tween(
										NestedElement.Instances[2].Container.Color.ColorPicker.Point,
										{ Size = UDim2.new(0, 7, 0, 7) }
									)
								end)
								NestedElement.Instances[2].Container.Color.ColorPicker.MouseEnter:Connect(function()
									mainHover = true
									if mainDragging then
										return
									end
									Tween(
										NestedElement.Instances[2].Container.Color.ColorPicker.Point,
										{ Size = UDim2.new(0, 9, 0, 9) }
									)
								end)
								NestedElement.Instances[2].Container.Color.HueSlider.MouseButton1Down:Connect(function()
									sliderDragging = true
									Tween(
										NestedElement.Instances[2].Container.Color.HueSlider.Value.Knob,
										{ Size = UDim2.new(0, 4, 0, 4) }
									)
								end)
								NestedElement.Instances[2].Container.Color.HueSlider.MouseLeave:Connect(function()
									sliderHover = false
									if sliderDragging then
										return
									end
									Tween(
										NestedElement.Instances[2].Container.Color.HueSlider.Value.Knob,
										{ Size = UDim2.new(0, 6, 0, 6) }
									)
								end)
								NestedElement.Instances[2].Container.Color.HueSlider.MouseEnter:Connect(function()
									sliderHover = true
									if sliderDragging then
										return
									end
									Tween(
										NestedElement.Instances[2].Container.Color.HueSlider.Value.Knob,
										{ Size = UDim2.new(0, 8, 0, 8) }
									)
								end)
								NestedElement.Instances[2].Container.Color.TransparencySlider.MouseButton1Down:Connect(
									function()
										transDragging = true
										Tween(
											NestedElement.Instances[2].Container.Color.TransparencySlider.Value.Knob,
											{ Size = UDim2.new(0, 6, 0, 6) }
										)
									end
								)
								NestedElement.Instances[2].Container.Color.TransparencySlider.MouseLeave:Connect(
									function()
										transHover = false
										if sliderDragging then
											return
										end
										Tween(
											NestedElement.Instances[2].Container.Color.TransparencySlider.Value.Knob,
											{ Size = UDim2.new(0, 8, 0, 8) }
										)
									end
								)
								NestedElement.Instances[2].Container.Color.TransparencySlider.MouseEnter:Connect(
									function()
										transHover = true
										if transDragging then
											return
										end
										Tween(
											NestedElement.Instances[2].Container.Color.TransparencySlider.Value.Knob,
											{ Size = UDim2.new(0, 10, 0, 10) }
										)
									end
								)

								RunService.RenderStepped:Connect(function()
									if mainDragging then
										local localX = math.clamp(
											Mouse.X
											- NestedElement.Instances[2].Container.Color.ColorPicker.AbsolutePosition.X,
											0,
											NestedElement.Instances[2].Container.Color.ColorPicker.AbsoluteSize.X
										)
										local localY = math.clamp(
											Mouse.Y
											- NestedElement.Instances[2].Container.Color.ColorPicker.AbsolutePosition.Y,
											0,
											NestedElement.Instances[2].Container.Color.ColorPicker.AbsoluteSize.Y
										)
										Tween(
											NestedElement.Instances[2].Container.Color.ColorPicker.Point,
											{ Position = UDim2.new(0, localX, 0, localY) }
										)
										s = localX
											/ NestedElement.Instances[2].Container.Color.ColorPicker.AbsoluteSize.X
										v = 1
										- (
											localY
												/ NestedElement.Instances[2].Container.Color.ColorPicker.AbsoluteSize.Y
										)
										local color = Color3.fromHSV(h, s, v)
										NestedElement.Values.CurrentValue = color
										updateInstances(NestedElement.Instances[2].Container.Color.ColorPicker)
										local r, g, b =
											math.floor((color.R * 255) + 0.5),
											math.floor((color.G * 255) + 0.5),
											math.floor((color.B * 255) + 0.5)
									end
									if sliderDragging then
										local localY = math.clamp(
											Mouse.Y
											- NestedElement.Instances[2].Container.Color.HueSlider.AbsolutePosition.Y,
											0,
											NestedElement.Instances[2].Container.Color.HueSlider.AbsoluteSize.Y
										)
										h = localY / NestedElement.Instances[2].Container.Color.HueSlider.AbsoluteSize.Y
										local color = Color3.fromHSV(h, s, v)
										NestedElement.Values.CurrentValue = color
										updateInstances(NestedElement.Instances[2].Container.Color.HueSlider)
										Tween(
											NestedElement.Instances[2].Container.Color.HueSlider.Value,
											{ Size = UDim2.new(1, 0, h, 0) }
										)
										local r, g, b =
											math.floor((color.R * 255) + 0.5),
											math.floor((color.G * 255) + 0.5),
											math.floor((color.B * 255) + 0.5)
									end
									if transDragging then
										local localY = math.clamp(
											Mouse.Y
											- NestedElement.Instances[2].Container.Color.TransparencySlider.AbsolutePosition.Y,
											0,
											NestedElement.Instances[2].Container.Color.TransparencySlider.AbsoluteSize.Y
										)
										local t = localY
											/ NestedElement.Instances[2].Container.Color.TransparencySlider.AbsoluteSize.Y
										Tween(
											NestedElement.Instances[2].Container.Color.TransparencySlider.Value,
											{ Size = UDim2.new(1, 0, t, 0) }
										)
										NestedElement.Values.Transparency = 1 - t
										updateInstances()
									end
								end)
							end

							NestedElement.Instances[2].Container.Color.OldColor.MouseButton1Click:Connect(function()
								NestedElement.Values.CurrentValue =
									NestedElement.Instances[2].Container.Color.OldColor.Frame.BackgroundColor3
								if NestedElement.Values.Transparency ~= nil then
									NestedElement.Values.Transparency =
										NestedElement.Instances[2].Container.Color.OldColor.Frame.BackgroundTransparency
								end
								updateInstances(NestedElement.Instances[2].Container.Values.AlphaHSV.Hue)
							end)

							for _, Side in pairs(NestedElement.Instances[2].Container.Values:GetChildren()) do
								if Side.ClassName ~= "Frame" then
									continue
								end

								for _, Input in pairs(Side:GetChildren()) do
									if Input.ClassName ~= "Frame" then
										continue
									end
									local inputinstance = Input.PART_Backdrop.PART_Input

									if Input.Name == "Hex" then
										inputinstance.FocusLost:Connect(function()
											if
												not pcall(function()
													if NestedElement.Values.Transparency ~= nil then
														local text = inputinstance.Text

														local r, g, b, a = text:match("^%s*#?(%x%x)(%x%x)(%x%x)(%x%x)$")
														local rgbColor = Color3.fromRGB(
															tonumber(r, 16),
															tonumber(g, 16),
															tonumber(b, 16)
														)
														NestedElement.Values.CurrentValue = rgbColor
														NestedElement.Values.Transparency = 1 - (tonumber(a, 16) / 255)
													else
														local r, g, b =
															string.match(inputinstance.Text, "^#?(%x%x)(%x%x)(%x%x)$")
														local rgbColor = Color3.fromRGB(
															tonumber(r, 16),
															tonumber(g, 16),
															tonumber(b, 16)
														)
														NestedElement.Values.CurrentValue = rgbColor
													end
													updateInstances(Input)
												end)
											then
												inputinstance.Text = NestedElement.Values.Transparency == nil
													and string.format(
														"#%02X%02X%02X",
														NestedElement.Values.CurrentValue.R * 0xFF,
														NestedElement.Values.CurrentValue.G * 0xFF,
														NestedElement.Values.CurrentValue.B * 0xFF
													)
													or string.format(
														"#%02X%02X%02X%02X",
														NestedElement.Values.CurrentValue.R * 0xFF,
														NestedElement.Values.CurrentValue.G * 0xFF,
														NestedElement.Values.CurrentValue.B * 0xFF,
														(1 - NestedElement.Values.Transparency) * 0xFF
													)
											end
										end)
									end
									if Input.Name == "Alpha" then
										inputinstance.FocusLost:Connect(function()
											local old = NestedElement.Values.Transparency
											if
												not pcall(function()
													if tonumber(inputinstance.Text) > 255 then
														inputinstance.Text = tostring((1 - old) * 255)
														return
													end
													NestedElement.Values.Transparency = 1
													- tonumber(inputinstance.Text) / 255
													updateInstances(Input)
												end)
											then
												inputinstance.Text = tostring((1 - old) * 255)
											end
										end)
									end
									if Input.Name == "Hue" then
										inputinstance.FocusLost:Connect(function()
											local old, s, v = NestedElement.Values.CurrentValue:ToHSV()
											if
												not pcall(function()
													if tonumber(inputinstance.Text) > 255 then
														inputinstance.Text = tostring(old * 255)
														return
													end
													NestedElement.Values.CurrentValue =
														Color3.fromHSV(tonumber(inputinstance.Text) / 255, s, v)
													updateInstances(Input)
												end)
											then
												inputinstance.Text = tostring(old * 255)
											end
										end)
									end
									if Input.Name == "Saturation" then
										inputinstance.FocusLost:Connect(function()
											local h, old, v = NestedElement.Values.CurrentValue:ToHSV()
											if
												not pcall(function()
													if tonumber(inputinstance.Text) > 255 then
														inputinstance.Text = tostring(old * 255)
														return
													end
													NestedElement.Values.CurrentValue =
														Color3.fromHSV(h, tonumber(inputinstance.Text) / 255, v)
													updateInstances(Input)
												end)
											then
												inputinstance.Text = tostring(old * 255)
											end
										end)
									end
									if Input.Name == "Value" then
										inputinstance.FocusLost:Connect(function()
											local h, s, old = NestedElement.Values.CurrentValue:ToHSV()
											if
												not pcall(function()
													if tonumber(inputinstance.Text) > 255 then
														inputinstance.Text = tostring(old * 255)
														return
													end
													NestedElement.Values.CurrentValue =
														Color3.fromHSV(h, s, tonumber(inputinstance.Text) / 255)
													updateInstances(Input)
												end)
											then
												inputinstance.Text = tostring(old * 255)
											end
										end)
									end
									if Input.Name == "Red" then
										inputinstance.FocusLost:Connect(function()
											local old, g, b =
												NestedElement.Values.CurrentValue.R,
												NestedElement.Values.CurrentValue.G,
												NestedElement.Values.CurrentValue.B
											if
												not pcall(function()
													if tonumber(inputinstance.Text) > 255 then
														inputinstance.Text = tostring(old * 255)
														return
													end
													NestedElement.Values.CurrentValue =
														Color3.new(tonumber(inputinstance.Text) / 255, g, b)
													updateInstances(Input)
												end)
											then
												inputinstance.Text = tostring(old * 255)
											end
										end)
									end
									if Input.Name == "Green" then
										inputinstance.FocusLost:Connect(function()
											local r, old, b =
												NestedElement.Values.CurrentValue.R,
												NestedElement.Values.CurrentValue.G,
												NestedElement.Values.CurrentValue.B
											if
												not pcall(function()
													if tonumber(inputinstance.Text) > 255 then
														inputinstance.Text = tostring(old * 255)
														return
													end
													NestedElement.Values.CurrentValue =
														Color3.new(r, tonumber(inputinstance.Text) / 255, b)
													updateInstances(Input)
												end)
											then
												inputinstance.Text = tostring(old * 255)
											end
										end)
									end
									if Input.Name == "Blue" then
										inputinstance.FocusLost:Connect(function()
											local r, g, old =
												NestedElement.Values.CurrentValue.R,
												NestedElement.Values.CurrentValue.G,
												NestedElement.Values.CurrentValue.B
											if
												not pcall(function()
													if tonumber(inputinstance.Text) > 255 then
														inputinstance.Text = tostring(old * 255)
														return
													end
													NestedElement.Values.CurrentValue =
														Color3.new(r, g, tonumber(inputinstance.Text) / 255)
													updateInstances(Input)
												end)
											then
												inputinstance.Text = tostring(old * 255)
											end
										end)
									end
								end
							end

							ThemeMethods.bindTheme(
								NestedElement.Instances[2],
								"BackgroundColor3",
								"Backgrounds.Groupbox"
							)
							ThemeMethods.bindTheme(NestedElement.Instances[2].UIStroke, "Color", "Foregrounds.Dark")
							ThemeMethods.bindTheme(
								NestedElement.Instances[2].Background,
								"BackgroundColor3",
								"Backgrounds.Dark"
							)
							for _, button in pairs(NestedElement.Instances[2].Buttons:GetChildren()) do
								if button.ClassName ~= "TextButton" then
									continue
								end
								ThemeMethods.bindTheme(button, "ImageColor3", "Foregrounds.Dark")
							end
							for _, button in pairs(NestedElement.Instances[2].TabSelector:GetChildren()) do
								if button.ClassName ~= "TextButton" then
									continue
								end
								ThemeMethods.bindTheme(button, "TextColor3", "Foregrounds.Medium")
								ThemeMethods.bindTheme(button.Accent, "Color", "Accents.Main")
							end
							themeEvent.Event:Connect(function()
								NestedElement.Instances[2].TabSelector[NestedElement.Instances[2].Container.UIPageLayout.CurrentPage.Name].TextColor3 =
									Color3.new(1, 1, 1)
							end)
							for _, shadow in pairs(NestedElement.Instances[2].DropShadowHolder:GetChildren()) do
								ThemeMethods.bindTheme(shadow, "ImageColor3", "Miscellaneous.LighterShadow")
							end
							for _, side in pairs(NestedElement.Instances[2].Container.Values:GetChildren()) do
								if side.ClassName ~= "Frame" then
									continue
								end
								for _, input in pairs(side:GetChildren()) do
									if input.ClassName ~= "Frame" then
										continue
									end
									ThemeMethods.bindTheme(input.Header, "TextColor3", "Foregrounds.Light")
									ThemeMethods.bindTheme(input.PART_Backdrop, "BackgroundColor3", "Backgrounds.Dark")
									pcall(function()
										ThemeMethods.bindTheme(
											input.PART_Backdrop.UIStroke,
											"Color",
											"Foregrounds.Dark"
										)
									end)
									ThemeMethods.bindTheme(
										input.PART_Backdrop.PART_Input,
										"TextColor3",
										"Foregrounds.Light"
									)
									ThemeMethods.bindTheme(
										input.PART_Backdrop.PART_Input,
										"PlaceholderColor3",
										"Foregrounds.Medium"
									)
								end
							end

							function NestedElement:Destroy()
								NestedElement.Instances[1]:Destroy()
								NestedElement.Instances[2]:Destroy()
								NestedElement = nil
								Parent.Instance.Header.Size = UDim2.fromOffset(Parent.Instance.Header.Size.X.Offset - 26, 20)
							end

							function NestedElement:Set(NewNestedSettings, NewNestedIndex, ignoreCallback: boolean?)
								NewNestedIndex = NewNestedIndex or NestedIndex

								for i, v in pairs(NestedElement.Values) do
									if NewNestedSettings[i] == nil then
										NewNestedSettings[i] = v
									end
								end

								NestedSettings = NewNestedSettings
								NestedIndex = NewNestedIndex

								NestedElement.Values = NestedSettings
								local h, _, _ = NestedElement.Values.CurrentValue:ToHSV()

								NestedElement.Instances[2].Container.Values.AlphaHSV.Hue.PART_Backdrop.PART_Input.Text =
									tostring(math.floor((h * 255) + 0.5))

								updateInstances(nil, ignoreCallback)
								NestedElement:__updateHsv()

								Starlight.Window.TabSections[Name].Tabs[TabIndex].Groupboxes[GroupIndex].Elements[ParentIndex].NestedElements[NestedIndex].Values =
									NestedElement.Values
							end
						end)

						Starlight.Window.TabSections[Name].Tabs[TabIndex].Groupboxes[GroupIndex].Elements[ParentIndex].NestedElements[NestedIndex] =
							NestedElement
						return Starlight.Window.TabSections[Name].Tabs[TabIndex].Groupboxes[GroupIndex].Elements[ParentIndex].NestedElements[NestedIndex]
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

						local additionSize = Parent.Instance.DropdownHolder:FindFirstChild("Dropdown") and 36 or 34
						local localConnections = {}

						NestedSettings.MultipleOptions = NestedSettings.MultipleOptions or false
						NestedSettings.Special = NestedSettings.Special or 0
						NestedSettings.Required = NestedSettings.Required or false

						local NestedElement = {
							Values = NestedSettings,
							Class = "Dropdown",
							Instances = {},
							IgnoreConfig = NestedSettings.IgnoreConfig,
						}

						task.spawn(function()
							local hover = false
							local height = 175

							NestedElement.Instances[1] = Element.Instance.DropdownHolder.Dropdown:Clone()
							NestedElement.Instances[1].Visible = true
							NestedElement.Instances[1].Parent = Parent.Instance.DropdownHolder
							if Parent ~= Element then
								local instance2
								for i, v in pairs(Parent.Instance.Parent:GetChildren()) do
									if v.Name == Parent.Instance.Name and v ~= Parent.Instance then
										instance2 = v
									end
								end
								instance2.Size = UDim2.fromOffset(0, Parent.Instance.Size.Y.Offset + additionSize)
								Parent.Instance.Size = UDim2.fromOffset(0, Parent.Instance.Size.Y.Offset + additionSize)
							else
								Parent.Instance.Size = UDim2.fromOffset(0, Parent.Instance.Size.Y.Offset + additionSize)
							end

							NestedElement.Instances[2] = Resources.Elements.DropdownPopup:Clone()
							NestedElement.Instances[2].Parent = StarlightUI.PopupOverlay

							NestedElement.Instances[1].Name = "DROPDOWN_" .. NestedIndex
							NestedElement.Instances[2].Name = "DROPDOWN_" .. NestedIndex

							for _, option in pairs(NestedElement.Instances[2].List:GetChildren()) do
								if option.ClassName == "Frame" then
									option:Destroy()
								end
							end

							acrylicEvent.Event:Connect(function()
								if mainAcrylic then
									NestedElement.Instances[2].BackgroundTransparency = 0.5
								else
									NestedElement.Instances[2].BackgroundTransparency = 0
								end
							end)
							local AcrylicObject = Acrylic.AcrylicPaint()
							AcrylicObject.AddParent(NestedElement.Instances[2])
							AcrylicObject.Frame.Parent = NestedElement.Instances[2]

							local function updPos()
								if
									NestedElement.Instances[1].AbsolutePosition.Y + 35 + height
									>= Camera.ViewportSize.Y - (GuiInset + 20)
								then
									NestedElement.Instances[2].AnchorPoint = Vector2.new(0, 1)
									NestedElement.Instances[2].Position = UDim2.fromOffset(
										math.ceil(NestedElement.Instances[1].AbsolutePosition.X),
										math.ceil(NestedElement.Instances[1].AbsolutePosition.Y) - 5
									)
								else
									NestedElement.Instances[2].AnchorPoint = Vector2.new(0, 0)
									NestedElement.Instances[2].Position = UDim2.fromOffset(
										math.ceil(NestedElement.Instances[1].AbsolutePosition.X),
										math.ceil(NestedElement.Instances[1].AbsolutePosition.Y) + 35
									)
								end
							end
							local function close()
								Tween(
									NestedElement.Instances[2].List,
									{ Size = UDim2.new(1, 0, 0, 0) },
									nil,
									Tween.Info(nil, nil, 0.18)
								)
								Tween(
									NestedElement.Instances[2],
									{ Size = UDim2.fromOffset(NestedElement.Instances[2].Size.X.Offset, 0) },
									function()
										if NestedElement and NestedElement.Instances ~= nil then
											NestedElement.Instances[2].Visible = false
											if acrylicFlag then
												AcrylicObject.Model.Transparency = 1
											end
										end
									end,
									Tween.Info(nil, nil, 0.18)
								)
							end
							NestedElement.Instances[1]:GetPropertyChangedSignal("AbsolutePosition"):Connect(close)
							NestedElement.Instances[1]:GetPropertyChangedSignal("AbsolutePosition"):Connect(updPos)
							updPos()
							close()

							NestedElement.Instances[1]:GetPropertyChangedSignal("AbsoluteSize"):Connect(function()
								NestedElement.Instances[2].Size = UDim2.fromOffset(
									math.ceil(NestedElement.Instances[1].AbsoluteSize.X),
									NestedElement.Instances[2].Size.Y.Offset
								)
								--task.wait()
								NestedElement:truncate()
							end)

							NestedElement.Instances[1].Interact.MouseButton1Click:Connect(function()
								if NestedElement.Instances[2].Visible then
									close()
								else
									NestedElement.Instances[2].Visible = true
									height = NestedElement.Instances[2].List.AbsoluteCanvasSize.Y >= 175 and 175
										or NestedElement.Instances[2].List.AbsoluteCanvasSize.Y
									updPos()
									NestedElement.Instances[2].List.Size = UDim2.new(1, 0, 0, 0)
									NestedElement.Instances[2].List.ScrollBarImageTransparency = 1
									Tween(
										NestedElement.Instances[2],
										{ Size = UDim2.fromOffset(NestedElement.Instances[2].Size.X.Offset, height) }
									)
									Tween(
										NestedElement.Instances[2].List,
										{ Size = UDim2.new(1, 0, 0, height) },
										function()
											NestedElement.Instances[2].List.ScrollBarImageTransparency = 0
										end
									)
									if acrylicFlag then
										AcrylicObject.Model.Transparency = 0.98
									end
									local connection
									connection = UserInputService.InputBegan:Connect(function(i)
										if i.UserInputType ~= Enum.UserInputType.MouseButton1 then
											return
										end
										local p, pos, size =
											i.Position,
											NestedElement.Instances[2].AbsolutePosition,
											NestedElement.Instances[2].AbsoluteSize
										if
											not (
												p.X >= pos.X
													and p.X <= pos.X + size.X
													and p.Y >= pos.Y
													and p.Y <= pos.Y + size.Y
											) and not hover
										then
											close()
											connection:Disconnect()
										end
									end)
								end
							end)

							local function hover()
								Tween(
									NestedElement.Instances[1].UIStroke,
									{ Color = Starlight.CurrentTheme.Foregrounds.DarkHover }
								)
								Tween(
									NestedElement.Instances[2].UIStroke,
									{ Color = Starlight.CurrentTheme.Foregrounds.DarkHover }
								)
								hover = true
							end
							local function leave()
								Tween(
									NestedElement.Instances[1].UIStroke,
									{ Color = Starlight.CurrentTheme.Foregrounds.Dark }
								)
								Tween(
									NestedElement.Instances[2].UIStroke,
									{ Color = Starlight.CurrentTheme.Foregrounds.Dark }
								)
								hover = false
							end

							NestedElement.Instances[1].MouseEnter:Connect(hover)
							NestedElement.Instances[1].MouseLeave:Connect(leave)
							NestedElement.Instances[2].MouseEnter:Connect(hover)
							NestedElement.Instances[2].MouseLeave:Connect(leave)

							if NestedElement.Values.CurrentOption then
								if typeof(NestedElement.Values.CurrentOption) == "string" then
									NestedElement.Values.CurrentOption = { NestedElement.Values.CurrentOption }
								end
								if
									not NestedElement.Values.MultipleOptions
									and typeof(NestedElement.Values.CurrentOption) == "table"
								then
									NestedElement.Values.CurrentOption = { NestedElement.Values.CurrentOption[1] }
								end
								if typeof(NestedElement.Values.CurrentOption) == "number" then
									NestedElement.Values.CurrentOption =
										{ NestedElement.Values.Options[NestedElement.Values.CurrentOption] }
								end
							else
								NestedElement.Values.CurrentOption = {}
							end
							if NestedElement.Values.Required and unpack(NestedElement.Values.CurrentOption) == nil then
								NestedElement.Values.CurrentOption = { NestedElement.Values.Options[1] }
							end

							--// SUBSECTION : display updation and methods

							function NestedElement:truncate()
								NestedElement.Instances[1].Header.Size = UDim2.new(1, -18, 0, 20)
								if
									NestedElement.Instances[1].Header.TextBounds.X
									<= NestedElement.Instances[1].Header.AbsoluteSize.X
								then
									NestedElement.Instances[1].Truncater.Visible = false
									return
								end
								NestedElement.Instances[1].Header.Size = UDim2.new(1, -26, 0, 20)
								NestedElement.Instances[1].Truncater.Visible = true
							end

							NestedElement.Instances[1].Header:GetPropertyChangedSignal("Text"):Connect(function()
								NestedElement:truncate()
							end)

							--// ENDSUBSECTION

							local function Activate(option)
								pcall(function()
									Tween(option, { BackgroundTransparency = 0.5 })
									Tween(option.header, { TextColor3 = Starlight.CurrentTheme.Foregrounds.Light })
									Tween(
										option.UIPadding,
										{ PaddingLeft = UDim.new(0, 12) },
										nil,
										Tween.Info(nil, nil, 0.2)
									)
									Tween(
										option.Indicator,
										{ Size = UDim2.fromOffset(4, 17) },
										nil,
										Tween.Info(nil, nil, 0.2)
									)
									option:SetAttribute("Active", true)
								end)
							end

							local function Deactivate(option)
								pcall(function()
									Tween(option, { BackgroundTransparency = 1 })
									Tween(option.header, { TextColor3 = Starlight.CurrentTheme.Foregrounds.Medium })
									Tween(
										option.UIPadding,
										{ PaddingLeft = UDim.new(0, 8) },
										nil,
										Tween.Info(nil, nil, 0.2)
									)
									Tween(
										option.Indicator,
										{ Size = UDim2.fromOffset(4, 0) },
										nil,
										Tween.Info(nil, nil, 0.2)
									)
									option:SetAttribute("Active", false)
								end)
							end

							local function ToggleOption(option)
								if not NestedElement.Values.MultipleOptions then
									for i, v in pairs(NestedElement.Instances[2].List:GetChildren()) do
										if v.ClassName == "Frame" and v ~= option then
											Deactivate(v)
											NestedElement.Values.CurrentOption = {}
										end
									end
								end

								if option:GetAttribute("Active") == false then
									Activate(option)
									local Success, Response = pcall(function()
										table.insert(NestedElement.Values.CurrentOption, option.header.Text)
										NestedElement.Values.Callback(NestedElement.Values.CurrentOption)
										NestedElement.Instances[1].Header.Text =
											Table.Unpack(NestedElement.Values.CurrentOption)
									end)

									if not Success then
										Parent.Instance.Header.Text = "Callback Error"
										warn(
											`Starlight Interface Suite - Callback Error | {Element.Values.Name} ({Index} {NestedIndex})`
										)
										print(Response)
										if WindowSettings.NotifyOnCallbackError then
											Starlight:Notification({
												Title = Element.Values.Name .. " Callback Error",
												Content = tostring(Response),
												Icon = 129398364168201,
											})
										end
										wait(0.5)
										Parent.Instance.Header.Text = ElementSettings.Name
									end
								else
									if
										NestedElement.Values.Required == true
										and NestedElement.Values.CurrentOption ~= {}
									then
										return
									end

									Deactivate(option)
									local Success, Response = pcall(function()
										Table.Remove(NestedElement.Values.CurrentOption, option.header.Text)
										NestedElement.Values.Callback(NestedElement.Values.CurrentOption)
										NestedElement.Instances[1].Header.Text =
											Table.Unpack(NestedElement.Values.CurrentOption)
									end)

									if not Success then
										Parent.Instance.Header.Text = "Callback Error"
										warn(
											`Starlight Interface Suite - Callback Error | {Element.Values.Name} ({Index} {NestedIndex})`
										)
										print(Response)
										if WindowSettings.NotifyOnCallbackError then
											Starlight:Notification({
												Title = Element.Values.Name .. " Callback Error",
												Content = tostring(Response),
												Icon = 129398364168201,
											})
										end
										wait(0.5)
										Parent.Instance.Header.Text = ElementSettings.Name
									end
								end
							end

							local function Refresh()
								for i, v in pairs(NestedElement.Instances[2].List:GetChildren()) do
									if v.ClassName == "Frame" then
										v:Destroy()
									end
								end

								if NestedElement.Values.Special == 1 then
									NestedElement.Values.Options = {}
									for i, v in pairs(Players:GetChildren()) do
										table.insert(NestedElement.Values.Options, v.Name)
									end
								end
								if NestedElement.Values.Special == 2 then
									NestedElement.Values.Options = {}
									for i, v in pairs(Teams:GetChildren()) do
										table.insert(NestedElement.Values.Options, v.Name)
									end
								end

								-- ipairs so it actually lines up correctly
								for _, option in ipairs(NestedElement.Values.Options) do
									local optioninstance = Resources.Elements.DropdownPopup.List.Option_TEMPLATE:Clone()
									optioninstance.Parent = NestedElement.Instances[2].List
									optioninstance.Name = "OPTION_" .. option
									optioninstance.header.Text = option
									optioninstance:SetAttribute("Active", false)
									ThemeMethods.bindTheme(optioninstance, "BackgroundColor3", "Backgrounds.Highlight")
									ThemeMethods.bindTheme(
										optioninstance.Indicator.AccentBrighter,
										"Color",
										"Accents.Brighter"
									)
									ThemeMethods.bindTheme(optioninstance.header, "TextColor3", "Foregrounds.Medium")
									themeEvent.Event:Connect(function()
										if optioninstance:GetAttribute("Active") then
											Activate(optioninstance)
										else
											Deactivate(optioninstance)
										end
									end)

									optioninstance.Interact.MouseButton1Click:Connect(function()
										ToggleOption(optioninstance)
									end)

									optioninstance.MouseEnter:Connect(function()
										if optioninstance:GetAttribute("Active") == false then
											Tween(optioninstance, { BackgroundTransparency = 0.8 })
											Tween(
												optioninstance.header,
												{ TextColor3 = Starlight.CurrentTheme.Foregrounds.Light }
											)
										end
									end)
									optioninstance.MouseLeave:Connect(function()
										if optioninstance:GetAttribute("Active") == false then
											Tween(optioninstance, { BackgroundTransparency = 1 })
											Tween(
												optioninstance.header,
												{ TextColor3 = Starlight.CurrentTheme.Foregrounds.Medium }
											)
										end
									end)
								end
							end

							Refresh()
							NestedElement.Instances[2].Size = UDim2.fromOffset(
								math.ceil(NestedElement.Instances[1].AbsoluteSize.X),
								NestedElement.Instances[2].Size.Y.Offset
							)
							NestedElement.Instances[2].Position = UDim2.fromOffset(
								math.ceil(NestedElement.Instances[1].AbsolutePosition.X),
								math.ceil(NestedElement.Instances[1].AbsolutePosition.Y) + (135 / 2) + 30
							)

							local preoptions = NestedElement.Values.CurrentOption
							NestedElement.Values.CurrentOption = {}
							for i, v in pairs(preoptions) do
								for _, optioninstance in pairs(NestedElement.Instances[2].List:GetChildren()) do
									if optioninstance.Name == "OPTION_" .. v then
										ToggleOption(optioninstance)
									end
								end
							end
							NestedElement.Instances[1].Header.Text = Table.Unpack(NestedElement.Values.CurrentOption)
							NestedElement.Instances[1].Header.PlaceholderText = NestedElement.Values.Placeholder or "--"

							if NestedElement.Values.Special == 1 then
								local c
								c = Players.PlayerAdded:Connect(function()
									if not pcall(Refresh) then
										c:Disconnect()
									end
								end)
								local c
								c = Players.ChildRemoved:Connect(function()
									if not pcall(Refresh) then
										c:Disconnect()
									end
								end)
							end
							if NestedElement.Values.Special == 2 then
								local c
								c = Teams.ChildAdded:Connect(function()
									if not pcall(Refresh) then
										c:Disconnect()
									end
								end)
								local c
								c = Teams.ChildRemoved:Connect(function()
									if not pcall(Refresh) then
										c:Disconnect()
									end
								end)
							end

							ThemeMethods.bindTheme(
								NestedElement.Instances[2],
								"BackgroundColor3",
								"Backgrounds.Groupbox"
							)
							ThemeMethods.bindTheme(NestedElement.Instances[2].UIStroke, "Color", "Foregrounds.Dark")
							ThemeMethods.bindTheme(
								NestedElement.Instances[2].Background,
								"BackgroundColor3",
								"Backgrounds.Dark"
							)
							for _, shadow in pairs(NestedElement.Instances[2].DropShadowHolder:GetChildren()) do
								ThemeMethods.bindTheme(shadow, "ImageColor3", "Miscellaneous.LighterShadow")
							end
							ThemeMethods.bindTheme(
								NestedElement.Instances[2].List,
								"ScrollBarImageColor3",
								"Foregrounds.Medium"
							)
							ThemeMethods.bindTheme(NestedElement.Instances[1], "BackgroundColor3", "Backgrounds.Dark")
							ThemeMethods.bindTheme(NestedElement.Instances[1].UIStroke, "Color", "Foregrounds.Dark")
							ThemeMethods.bindTheme(NestedElement.Instances[1].Icon, "ImageColor3", "Foregrounds.Light")
							ThemeMethods.bindTheme(
								NestedElement.Instances[1].Truncater,
								"TextColor3",
								"Foregrounds.Light"
							)
							ThemeMethods.bindTheme(NestedElement.Instances[1].Header, "TextColor3", "Foregrounds.Light")
							ThemeMethods.bindTheme(
								NestedElement.Instances[1].Header,
								"PlaceholderColor3",
								"Foregrounds.Medium"
							)

							function NestedElement:Destroy()
								NestedElement.Instances[1]:Destroy()
								NestedElement.Instances[2]:Destroy()
								Parent.Instance.Size = UDim2.fromOffset(0, Parent.Instance.Size.Y.Offset - additionSize)
								NestedElement = nil
							end

							function NestedElement:Set(NewNestedSettings, NewNestedIndex)
								NewNestedIndex = NewNestedIndex or NestedIndex

								for i, v in pairs(NestedElement.Values) do
									if NewNestedSettings[i] == nil then
										NewNestedSettings[i] = v
									end
								end

								NestedSettings = NewNestedSettings
								NestedIndex = NewNestedIndex

								NestedElement.Values = NestedSettings

								if NestedElement.Values.CurrentOption then
									if typeof(NestedElement.Values.CurrentOption) == "string" then
										NestedElement.Values.CurrentOption = { NestedElement.Values.CurrentOption }
									end
									if
										not NestedElement.Values.MultipleOptions
										and typeof(NestedElement.Values.CurrentOption) == "table"
									then
										NestedElement.Values.CurrentOption = { NestedElement.Values.CurrentOption[1] }
									end
									if
										not NestedElement.Values.MultipleOptions
										and typeof(NestedElement.Values.CurrentOption) == "number"
									then
										NestedElement.Values.CurrentOption =
											{ NestedElement.Values.Options[NestedElement.Values.CurrentOption] }
									end
								end
								if
									NestedElement.Values.Required
									and unpack(NestedElement.Values.CurrentOption) == nil
								then
									NestedElement.Values.CurrentOption = { NestedElement.Values.Options[1] }
								end

								NestedElement.Instances[1].Name = "DROPDOWN_" .. NestedIndex
								NestedElement.Instances[2].Name = "DROPDOWN_" .. NestedIndex

								Refresh()
								local preoptions = table.clone(NestedElement.Values.CurrentOption or {})
								NestedElement.Values.CurrentOption = {}
								task.delay(1 / 60, function()
									for i, v in pairs(preoptions) do
										for _, optioninstance in pairs(NestedElement.Instances[2].List:GetChildren()) do
											if optioninstance.Name == "OPTION_" .. v then
												ToggleOption(optioninstance)
											end
										end
									end
									NestedElement.Instances[1].Header.Text =
										Table.Unpack(NestedElement.Values.CurrentOption)
									NestedElement.Instances[1].Header.PlaceholderText = NestedElement.Values.Placeholder
										or "--"
								end)

								Starlight.Window.TabSections[Name].Tabs[TabIndex].Groupboxes[GroupIndex].Elements[ParentIndex].NestedElements[NestedIndex].Values =
									NestedElement.Values
							end
						end)

						Starlight.Window.TabSections[Name].Tabs[TabIndex].Groupboxes[GroupIndex].Elements[ParentIndex].NestedElements[NestedIndex] =
							NestedElement
						return NestedElement
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
						Content = string,
					}
					]]

					local Element = {
						Values = ElementSettings,
						Class = "Paragraph",
					}

					task.spawn(function()
						Element.Instance = GroupboxTemplateInstance.Paragraph_TEMPLATE:Clone()
						Element.Instance.Visible = true
						Element.Instance.Parent = Groupbox.ParentingItem

						Element.Instance.Name = "PARAGRAPH_" .. Index
						Element.Instance.Header.Text = Element.Values.Name
						Element.Instance.Header.Icon.Visible = not String.IsEmptyOrNull(Element.Values.Icon)
						if Element.Instance.Header.Icon.Visible == false then
							Element.Instance.Header.UIPadding.PaddingLeft = UDim.new(0, 6)
							Element.Instance.Content.UIPadding.PaddingLeft = UDim.new(0, 6)
						else
							Element.Instance.Header.UIPadding.PaddingLeft = UDim.new(0, 32)
							Element.Instance.Content.UIPadding.PaddingLeft = UDim.new(0, 32)
						end
						Element.Instance.Header.Icon.Image = not String.IsEmptyOrNull(Element.Values.Icon)
							and "rbxassetid://" .. Element.Values.Icon
							or ""
						Element.Instance.Content.Text = Element.Values.Content

						ThemeMethods.bindTheme(Element.Instance.Header, "TextColor3", "Foregrounds.Light")
						ThemeMethods.bindTheme(Element.Instance.Content, "TextColor3", "Foregrounds.Medium")
						ThemeMethods.bindTheme(Element.Instance.Header.Icon, "ImageColor3", "Foregrounds.Light")

						function Element:Set(NewElementSettings, NewIndex)
							NewIndex = NewIndex or Index

							for i, v in pairs(Element.Values) do
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
								Element.Instance.Header.UIPadding.PaddingLeft = UDim.new(0, 6)
								Element.Instance.Content.UIPadding.PaddingLeft = UDim.new(0, 6)
							else
								Element.Instance.Header.UIPadding.PaddingLeft = UDim.new(0, 32)
								Element.Instance.Content.UIPadding.PaddingLeft = UDim.new(0, 32)
							end
							Element.Instance.Header.Icon.Image = not String.IsEmptyOrNull(Element.Values.Icon)
								and "rbxassetid://" .. Element.Values.Icon
								or ""
							Element.Instance.Content.Text = Element.Values.Content

							Starlight.Window.TabSections[Name].Tabs[TabIndex].Groupboxes[GroupIndex].Elements[NewIndex].Values =
								ElementSettings
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
							if Element.NestedElements ~= nil then
								for _, nestedElement in pairs(Element.NestedElements) do
									nestedElement:Destroy()
								end
							end
							Element = nil
						end
					end)

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

			function Tab:BuildThemeGroupbox(Column, Style, ButtonsCentered)
				if ButtonsCentered == nil then
					ButtonsCentered = false
				end

				local themesPath = WindowSettings.FileSettings.ThemesInRoot
					and `{Starlight.FileSystem.Folder}/{root}/themes`
					or `{Starlight.FileSystem.Folder}/{folderpath}/themes`

				if not isStudio and not isfolder(themesPath) then
					Starlight.FileSystem:BuildFolderTree(WindowSettings.FileSettings)
				end

				local instance = Tab:CreateGroupbox({
					Name = "Themes",
					Icon = 6031625148,
					Column = Column,
					Style = Style or 1,
				}, "__prebuiltThemeGroupbox")

				local themesArray = {
					"Starlight",
					"Hollywood Dark",
					"Hollywood Light",
					"Orca",
					"Glacier",
					"Pacific",
					"Neo",
					"Neo (Dark)",
					"Crimson",
					"Nebula",
					"Evergreen",
					"Luna",
					"OperaGX",
					"BBot",
					"Ubuntu",
					"Tokyo Night",
					"Hollywood Fluent",
					"Catppuccin Mocha",
					"Catppuccin Macchiato",
					"Catppuccin Frappe",
					"Catppuccin Latte",
				}
				local customThemes = not isStudio and Starlight.FileSystem:RefreshConfigList(themesPath) or {}
				for _, v in pairs(customThemes) do
					table.insert(themesArray, v)
				end

				instance:CreateToggle({
					Name = "Acrylic",
					CurrentValue = false,
					Tooltip = "Enables The Glass And Acrylic Style for the main UI",
					Icon = 6031371068,
					Callback = function(v)
						mainAcrylic = v
						acrylicEvent:Fire()
					end,
				}, "mainacrylic")
				instance:CreateToggle({
					Name = "Notification Acrylic",
					CurrentValue = true,
					Tooltip = "Enables The Glass And Acrylic Style for notifications",
					Icon = 6031488930,
					Callback = function(v)
						notificationAcrylic = v
						notificationAcrylicEvent:Fire()
					end,
				}, "notitficationacrylic")

				instance:CreateDivider()

				local colorpickers = {}
				do
					colorpickers.bg = instance:CreateLabel({
						Name = "Backgrounds",
					}, "colorpicker_bg")
					colorpickers.fg = instance:CreateLabel({
						Name = "Foregrounds",
					}, "colorpicker_fg")
					colorpickers.fga = instance:CreateLabel({
						Name = "Foreground Hovers",
					}, "colorpicker_fga")
					colorpickers.divider = instance:CreateLabel({
						Name = "Divider",
					}, "colorpicker_divider")
					colorpickers.shadows = instance:CreateLabel({
						Name = "Shadows",
					}, "colorpicker_shadows")
					colorpickers.accent = instance:CreateLabel({
						Name = "Accent",
					}, "colorpicker_accents")
					colorpickers.accent2 = instance:CreateLabel({
						Name = "Accent Brighter",
					}, "colorpicker_accents")
				end

				-- backgrounds
				do
					do
						local debounce = false
						local cp = colorpickers.bg:AddColorPicker({
							IgnoreConfig = true,
							CurrentValue = Starlight.CurrentTheme.Backgrounds.Dark,
							Callback = function(c)
								debounce = true
								Starlight.CurrentTheme.Backgrounds.Dark = c
								themeEvent:Fire()
								task.wait(6 / 60)
								debounce = false
							end,
						}, "dark")
						themeEvent.Event:Connect(function()
							if not debounce then
								cp:Set({ CurrentValue = Starlight.CurrentTheme.Backgrounds.Dark }, nil, true)
							end
						end)
					end
					do
						local debounce = false
						local cp = colorpickers.bg:AddColorPicker({
							IgnoreConfig = true,
							CurrentValue = Starlight.CurrentTheme.Backgrounds.Medium,
							Callback = function(c)
								debounce = true
								Starlight.CurrentTheme.Backgrounds.Medium = c
								themeEvent:Fire()
								task.wait(6 / 60)
								debounce = false
							end,
						}, "medium")
						themeEvent.Event:Connect(function()
							if not debounce then
								cp:Set({ CurrentValue = Starlight.CurrentTheme.Backgrounds.Medium }, nil, true)
							end
						end)
					end
					do
						local debounce = false
						local cp = colorpickers.bg:AddColorPicker({
							IgnoreConfig = true,
							CurrentValue = Starlight.CurrentTheme.Backgrounds.Light,
							Callback = function(c)
								debounce = true
								Starlight.CurrentTheme.Backgrounds.Light = c
								themeEvent:Fire()
								task.wait(6 / 60)
								debounce = false
							end,
						}, "light")
						themeEvent.Event:Connect(function()
							if not debounce then
								cp:Set({ CurrentValue = Starlight.CurrentTheme.Backgrounds.Light }, nil, true)
							end
						end)
					end
					do
						local debounce = false
						local cp = colorpickers.bg:AddColorPicker({
							IgnoreConfig = true,
							CurrentValue = Starlight.CurrentTheme.Backgrounds.Groupbox,
							Callback = function(c)
								debounce = true
								Starlight.CurrentTheme.Backgrounds.Groupbox = c
								themeEvent:Fire()
								task.wait(6 / 60)
								debounce = false
							end,
						}, "gb")
						themeEvent.Event:Connect(function()
							if not debounce then
								cp:Set({ CurrentValue = Starlight.CurrentTheme.Backgrounds.Groupbox }, nil, true)
							end
						end)
					end
					do
						local debounce = false
						local cp = colorpickers.bg:AddColorPicker({
							IgnoreConfig = true,
							CurrentValue = Starlight.CurrentTheme.Backgrounds.Highlight,
							Callback = function(c)
								debounce = true
								Starlight.CurrentTheme.Backgrounds.Highlight = c
								themeEvent:Fire()
								task.wait(6 / 60)
								debounce = false
							end,
						}, "popup")
						themeEvent.Event:Connect(function()
							if not debounce then
								cp:Set({ CurrentValue = Starlight.CurrentTheme.Backgrounds.Highlight }, nil, true)
							end
						end)
					end
				end

				-- foregrounds
				do
					do
						local debounce = false
						local cp = colorpickers.fg:AddColorPicker({
							IgnoreConfig = true,
							CurrentValue = Starlight.CurrentTheme.Foregrounds.Dark,
							Callback = function(c)
								debounce = true
								Starlight.CurrentTheme.Foregrounds.Dark = c
								themeEvent:Fire()
								task.wait(6 / 60)
								debounce = false
							end,
						}, "dark")
						themeEvent.Event:Connect(function()
							if not debounce then
								cp:Set({ CurrentValue = Starlight.CurrentTheme.Foregrounds.Dark }, nil, true)
							end
						end)
					end
					do
						local debounce = false
						local cp = colorpickers.fg:AddColorPicker({
							IgnoreConfig = true,
							CurrentValue = Starlight.CurrentTheme.Foregrounds.Medium,
							Callback = function(c)
								debounce = true
								Starlight.CurrentTheme.Foregrounds.Medium = c
								themeEvent:Fire()
								task.wait(6 / 60)
								debounce = false
							end,
						}, "medium")
						themeEvent.Event:Connect(function()
							if not debounce then
								cp:Set({ CurrentValue = Starlight.CurrentTheme.Foregrounds.Medium }, nil, true)
							end
						end)
					end
					do
						local debounce = false
						local cp = colorpickers.fg:AddColorPicker({
							IgnoreConfig = true,
							CurrentValue = Starlight.CurrentTheme.Foregrounds.Light,
							Callback = function(c)
								debounce = true
								Starlight.CurrentTheme.Foregrounds.Light = c
								themeEvent:Fire()
								task.wait(6 / 60)
								debounce = false
							end,
						}, "light")
						themeEvent.Event:Connect(function()
							if not debounce then
								cp:Set({ CurrentValue = Starlight.CurrentTheme.Foregrounds.Light }, nil, true)
							end
						end)
					end
					do
						local debounce = false
						local cp = colorpickers.fg:AddColorPicker({
							IgnoreConfig = true,
							CurrentValue = Starlight.CurrentTheme.Foregrounds.Active,
							Callback = function(c)
								debounce = true
								Starlight.CurrentTheme.Foregrounds.Active = c
								themeEvent:Fire()
								task.wait(6 / 60)
								debounce = false
							end,
						}, "active")
						themeEvent.Event:Connect(function()
							if not debounce then
								cp:Set({ CurrentValue = Starlight.CurrentTheme.Foregrounds.Active }, nil, true)
							end
						end)
					end
					do
						local debounce = false
						local cp = colorpickers.fga:AddColorPicker({
							IgnoreConfig = true,
							CurrentValue = Starlight.CurrentTheme.Foregrounds.DarkHover,
							Callback = function(c)
								debounce = true
								Starlight.CurrentTheme.Foregrounds.DarkHover = c
								themeEvent:Fire()
								task.wait(6 / 60)
								debounce = false
							end,
						}, "dark")
						themeEvent.Event:Connect(function()
							if not debounce then
								cp:Set({ CurrentValue = Starlight.CurrentTheme.Foregrounds.DarkHover }, nil, true)
							end
						end)
					end
					do
						local debounce = false
						local cp = colorpickers.fga:AddColorPicker({
							IgnoreConfig = true,
							CurrentValue = Starlight.CurrentTheme.Foregrounds.MediumHover,
							Callback = function(c)
								debounce = true
								Starlight.CurrentTheme.Foregrounds.MediumHover = c
								themeEvent:Fire()
								task.wait(6 / 60)
								debounce = false
							end,
						}, "medium")
						themeEvent.Event:Connect(function()
							if not debounce then
								cp:Set({ CurrentValue = Starlight.CurrentTheme.Foregrounds.MediumHover }, nil, true)
							end
						end)
					end
				end

				-- divider
				do
					local debounce = false
					local cp = colorpickers.divider:AddColorPicker({
						IgnoreConfig = true,
						CurrentValue = Starlight.CurrentTheme.Miscellaneous.Divider,
						Callback = function(c)
							debounce = true
							Starlight.CurrentTheme.Miscellaneous.Divider = c
							themeEvent:Fire()
							task.wait(6 / 60)
							debounce = false
						end,
					}, "dark")
					themeEvent.Event:Connect(function()
						if not debounce then
							cp:Set({ CurrentValue = Starlight.CurrentTheme.Miscellaneous.Divider }, nil, true)
						end
					end)
				end

				-- shadows
				do
					do
						local debounce = false
						local cp = colorpickers.shadows:AddColorPicker({
							IgnoreConfig = true,
							CurrentValue = Starlight.CurrentTheme.Miscellaneous.Shadow,
							Callback = function(c)
								debounce = true
								Starlight.CurrentTheme.Miscellaneous.Shadow = c
								themeEvent:Fire()
								task.wait(6 / 60)
								debounce = false
							end,
						}, "dark")
						themeEvent.Event:Connect(function()
							if not debounce then
								cp:Set({ CurrentValue = Starlight.CurrentTheme.Miscellaneous.Shadow }, nil, true)
							end
						end)
					end
					do
						local debounce = false
						local cp = colorpickers.shadows:AddColorPicker({
							IgnoreConfig = true,
							CurrentValue = Starlight.CurrentTheme.Miscellaneous.LighterShadow,
							Callback = function(c)
								debounce = true
								Starlight.CurrentTheme.Miscellaneous.LighterShadow = c
								themeEvent:Fire()
								task.wait(6 / 60)
								debounce = false
							end,
						}, "light")
						themeEvent.Event:Connect(function()
							if not debounce then
								cp:Set({ CurrentValue = Starlight.CurrentTheme.Miscellaneous.LighterShadow }, nil, true)
							end
						end)
					end
				end

				-- accents
				do
					-- main
					do
						do
							local debounce = false
							local cp = colorpickers.accent:AddColorPicker({
								IgnoreConfig = true,
								CurrentValue = Starlight.CurrentTheme.Accents.Main.Keypoints[1].Value,
								Callback = function(c)
									debounce = true
									local keypoints = Starlight.CurrentTheme.Accents.Main.Keypoints
									Starlight.CurrentTheme.Accents.Main = ColorSequence.new({
										ColorSequenceKeypoint.new(keypoints[1].Time, c),
										keypoints[2],
										keypoints[3],
									})
									themeEvent:Fire()
									task.wait(6 / 60)
									debounce = false
								end,
							}, "1")
							themeEvent.Event:Connect(function()
								if not debounce then
									cp:Set(
										{ CurrentValue = Starlight.CurrentTheme.Accents.Main.Keypoints[1].Value },
										nil,
										true
									)
								end
							end)
						end
						do
							local debounce = false
							local cp = colorpickers.accent:AddColorPicker({
								IgnoreConfig = true,
								CurrentValue = Starlight.CurrentTheme.Accents.Main.Keypoints[2].Value,
								Callback = function(c)
									debounce = true
									local keypoints = Starlight.CurrentTheme.Accents.Main.Keypoints
									Starlight.CurrentTheme.Accents.Main = ColorSequence.new({
										keypoints[1],
										ColorSequenceKeypoint.new(keypoints[2].Time, c),
										keypoints[3],
									})
									themeEvent:Fire()
									task.wait(6 / 60)
									debounce = false
								end,
							}, "2")
							themeEvent.Event:Connect(function()
								if not debounce then
									cp:Set(
										{ CurrentValue = Starlight.CurrentTheme.Accents.Main.Keypoints[2].Value },
										nil,
										true
									)
								end
							end)
						end
						do
							local debounce = false
							local cp = colorpickers.accent:AddColorPicker({
								IgnoreConfig = true,
								CurrentValue = Starlight.CurrentTheme.Accents.Main.Keypoints[3].Value,
								Callback = function(c)
									debounce = true
									local keypoints = Starlight.CurrentTheme.Accents.Main.Keypoints
									Starlight.CurrentTheme.Accents.Main = ColorSequence.new({
										keypoints[1],
										keypoints[2],
										ColorSequenceKeypoint.new(keypoints[3].Time, c),
									})
									themeEvent:Fire()
									task.wait(6 / 60)
									debounce = false
								end,
							}, "3")
							themeEvent.Event:Connect(function()
								if not debounce then
									cp:Set(
										{ CurrentValue = Starlight.CurrentTheme.Accents.Main.Keypoints[3].Value },
										nil,
										true
									)
								end
							end)
						end
					end
					-- brighter
					do
						do
							local debounce = false
							local cp = colorpickers.accent2:AddColorPicker({
								IgnoreConfig = true,
								CurrentValue = Starlight.CurrentTheme.Accents.Brighter.Keypoints[1].Value,
								Callback = function(c)
									debounce = true
									local keypoints = Starlight.CurrentTheme.Accents.Brighter.Keypoints
									Starlight.CurrentTheme.Accents.Brighter = ColorSequence.new({
										ColorSequenceKeypoint.new(keypoints[1].Time, c),
										keypoints[2],
										keypoints[3],
									})
									themeEvent:Fire()
									task.wait(6 / 60)
									debounce = false
								end,
							}, "1")
							themeEvent.Event:Connect(function()
								if not debounce then
									cp:Set(
										{ CurrentValue = Starlight.CurrentTheme.Accents.Brighter.Keypoints[1].Value },
										nil,
										true
									)
								end
							end)
						end
						do
							local debounce = false
							local cp = colorpickers.accent2:AddColorPicker({
								IgnoreConfig = true,
								CurrentValue = Starlight.CurrentTheme.Accents.Brighter.Keypoints[2].Value,
								Callback = function(c)
									debounce = true
									local keypoints = Starlight.CurrentTheme.Accents.Brighter.Keypoints
									Starlight.CurrentTheme.Accents.Brighter = ColorSequence.new({
										keypoints[1],
										ColorSequenceKeypoint.new(keypoints[2].Time, c),
										keypoints[3],
									})
									themeEvent:Fire()
									task.wait(6 / 60)
									debounce = false
								end,
							}, "2")
							themeEvent.Event:Connect(function()
								if not debounce then
									cp:Set(
										{ CurrentValue = Starlight.CurrentTheme.Accents.Brighter.Keypoints[2].Value },
										nil,
										true
									)
								end
							end)
						end
						do
							local debounce = false
							local cp = colorpickers.accent2:AddColorPicker({
								IgnoreConfig = true,
								CurrentValue = Starlight.CurrentTheme.Accents.Brighter.Keypoints[3].Value,
								Callback = function(c)
									debounce = true
									local keypoints = Starlight.CurrentTheme.Accents.Brighter.Keypoints
									Starlight.CurrentTheme.Accents.Brighter = ColorSequence.new({
										keypoints[1],
										keypoints[2],
										ColorSequenceKeypoint.new(keypoints[3].Time, c),
									})
									themeEvent:Fire()
									task.wait(6 / 60)
									debounce = false
								end,
							}, "3")
							themeEvent.Event:Connect(function()
								if not debounce then
									cp:Set(
										{ CurrentValue = Starlight.CurrentTheme.Accents.Brighter.Keypoints[3].Value },
										nil,
										true
									)
								end
							end)
						end
					end
				end

				instance:CreateDivider()

				local newName = instance:CreateInput({
					Name = "New Theme Name",
					PlaceholderText = "Name",
					RemoveTextOnFocus = true,
					Callback = function(v) end,
				}, "newthemename")
				instance:CreateButton({
					Name = "Create New Theme",
					Icon = 6031471484,
					CenteredContent = ButtonsCentered,
					Callback = function()
						if not newName.CurrentValue or String.IsEmptyOrNull(newName.CurrentValue) then
							Starlight:Notification({
								Title = "Theme Error",
								Icon = 129398364168201,
								Content = "Theme name cannot be empty.",
							})
							return
						end
						newName.CurrentValue = string.gsub(newName.CurrentValue, "/", " ")
						newName.CurrentValue = string.gsub(newName.CurrentValue, "\\", " ")

						if
							isfile(`{themesPath}/{newName.CurrentValue}{Starlight.FileSystem.FileExtension}`)
							or themesArray[newName.CurrentValue]
						then
							Starlight:Notification({
								Title = "Theme Exists",
								Icon = 129398364168201,
								Content = "Theme with the provided name exists already. Overwrite it with overwrite theme below.",
							})
							return
						end

						local success, returned = pcall(function()
							if isStudio or not isfile then
								return "File System unavailable."
							end

							local fullPath = `{themesPath}/{newName.CurrentValue}{Starlight.FileSystem.FileExtension}`

							local success, encoded = ThemeMethods.encodeTheme(Starlight.CurrentTheme)
							if not success then
								return false, "Unable to encode into JSON data"
							end

							writefile(fullPath, encoded)
						end)
						if not success then
							Starlight:Notification({
								Title = "Theme Error",
								Icon = 6031071057,
								Content = "Unable to save Theme, return error: " .. returned,
							})
							return
						end

						themesArray = {
							"Starlight",
							"Hollywood Dark",
							"Hollywood Light",
							"Orca",
							"Glacier",
							"Pacific",
							"Neo",
							"Neo (Dark)",
							"Crimson",
							"Nebula",
							"Evergreen",
							"Luna",
							"OperaGX",
							"BBot",
							"Ubuntu",
							"Tokyo Night",
							"Hollywood Fluent",
						}
						local customThemes = not isStudio and Starlight.FileSystem:RefreshConfigList(themesPath) or {}
						for _, v in pairs(customThemes) do
							table.insert(themesArray, v)
						end
						instance.Elements.themedropdownlabel.NestedElements.themedropdown:Set({
							Options = themesArray,
						})
						Starlight:Notification({
							Title = "Theme Created",
							Icon = 6026568227,
							Content = string.format("Created Theme %q", newName.CurrentValue),
						})
					end,
				}, "newtheme")

				local newThemeToApply
				local themeDropdown = instance
					:CreateLabel({
						Name = "Themes List",
					}, "themedropdownlabel")
					:AddDropdown({
						Options = themesArray,
						CurrentOption = "Starlight",
						Required = true,
						Callback = function(newTheme)
							newThemeToApply = newTheme[1]
						end,
					}, "themedropdown")
				themeEvent.Event:Connect(function()
					for key, theme in pairs(Themes) do
						if theme == Starlight.CurrentTheme then
							--themeDropdown:Set({ CurrentOption = tostring(key) })
						end
					end
				end)

				instance:CreateButton({
					Name = "Apply Theme",
					Icon = 6034439635,
					CenteredContent = ButtonsCentered,
					Style = 1,
					Callback = function()
						if Themes[newThemeToApply] ~= nil then
							Starlight:SetTheme(Themes[newThemeToApply])
						else
							Starlight:SetTheme(
								ThemeMethods.decodeTheme(
									readfile(`{themesPath}/{newThemeToApply}{Starlight.FileSystem.FileExtension}`)
								)
							)
						end
					end,
				}, "applytheme")

				instance:CreateButton({
					Name = "Overwrite Theme",
					CenteredContent = ButtonsCentered,
					Icon = 6031225810,
					Callback = function()
						if newThemeToApply == nil then
							Starlight:Notification({
								Title = "Null Selection",
								Icon = 129398364168201,
								Content = "Theme Must Be Selected!",
							})
							return
						end
						if Themes[newThemeToApply] then
							Starlight:Notification({
								Title = "Preset Theme",
								Icon = 129398364168201,
								Content = "Only A Custom Theme Can Be Overwritten!",
							})
							return
						end

						local success, returned = pcall(function()
							if isStudio or not isfile then
								return "File System unavailable."
							end

							local fullPath = `{themesPath}/{newThemeToApply}{Starlight.FileSystem.FileExtension}`

							local success, encoded = pcall(HttpService.JSONEncode, HttpService, Starlight.CurrentTheme)
							if not success then
								return false, "Unable to encode into JSON data"
							end

							writefile(fullPath, encoded)
						end)
						if not success then
							Starlight:Notification({
								Title = "Theme Error",
								Icon = 6031071057,
								Content = "Unable to overwrite theme, return error: " .. returned,
							})
							return
						end

						Starlight:Notification({
							Title = "Theme Updated",
							Icon = 6026568227,
							Content = string.format("Overwrote theme %q", newThemeToApply),
						})
					end,
				}, "overwritetheme")

				local loadlabel = instance:CreateParagraph({
					Name = "Current Autoload Theme:",
					Content = not isStudio and (isfile(`{themesPath}/autoload.txt`) and readfile(
						`{themesPath}/autoload.txt`
						)) or "Starlight",
				}, "autoloadlabel")

				instance:CreateButton({
					Name = "Autoload Theme",
					Icon = 6023565901,
					CenterContent = ButtonsCentered,
					Callback = function()
						if newThemeToApply == nil then
							Starlight:Notification({
								Title = "Null Selection",
								Icon = 129398364168201,
								Content = "Theme Must Be Selected!",
							})
							return
						end
						local name = newThemeToApply
						pcall(function()
							writefile(`{themesPath}/autoload.txt`, name)
						end)
						loadlabel:Set({ Content = name })

						Starlight:Notification({
							Title = "Theme Updated",
							Icon = 6026568227,
							Content = string.format(
								"Set %q to be automatically loaded on your future sessions.",
								newThemeToApply
							),
						})
					end,
					Style = 1,
				}, "autoloadtheme")

				instance:CreateButton({
					Name = "Reset Autoload",
					Icon = 6034767619,
					CenteredContent = ButtonsCentered,
					Callback = function()
						if isfile(`{themesPath}/autoload.txt`) then
							delfile(`{themesPath}/autoload.txt`)
						end
						loadlabel:Set({ Content = "None" })

						Starlight:Notification({
							Title = "Autoload Cleared",
							Icon = 6026568227,
							Content = string.format("Disabled current autoload.", newThemeToApply),
						})
					end,
				}, "clearautoload")

				instance:CreateButton({
					Name = "Delete Theme",
					Icon = 115577765236264,
					CenteredContent = ButtonsCentered,
					Callback = function()
						if newThemeToApply == nil then
							Starlight:Notification({
								Title = "Null Selection",
								Icon = 129398364168201,
								Content = "Theme Must Be Selected!",
							})
							return
						end
						if isfile(`{themesPath}/{newThemeToApply}{Starlight.FileSystem.FileExtension}`) then
							delfile(`{themesPath}/{newThemeToApply}{Starlight.FileSystem.FileExtension}`)
						end

						if loadlabel.Values.Content == newThemeToApply then
							if isfile(`{themesPath}/autoload.txt`) then
								delfile(`{themesPath}/autoload.txt`)
							end
							loadlabel:Set({ Content = "None" })
						end

						themesArray = {
							"Starlight",
							"Hollywood Dark",
							"Hollywood Light",
							"Orca",
							"Glacier",
							"Pacific",
							"Neo",
							"Neo (Dark)",
							"Crimson",
							"Nebula",
							"Evergreen",
							"Luna",
							"OperaGX",
							"BBot",
							"Ubuntu",
							"Tokyo Night",
							"Hollywood Fluent",
						}
						local customThemes = not isStudio and Starlight.FileSystem:RefreshConfigList(themesPath) or {}
						for _, v in pairs(customThemes) do
							table.insert(themesArray, v)
						end
						themeDropdown:Set({
							Options = themesArray,
							CurrentOption = "",
						})

						Starlight:Notification({
							Title = "Theme Deleted",
							Icon = 6026568227,
							Content = string.format("Deleted Configuration %q", newThemeToApply),
						})
						if newThemeToApply then
							newThemeToApply = nil
						end
					end,
				}, "deletetheme")
			end

			function Tab:BuildConfigGroupbox(Column, Style, ButtonsCentered)
				if ButtonsCentered == nil then
					ButtonsCentered = false
				end

				local instance = Tab:CreateGroupbox({
					Name = "Configurations",
					Icon = 6031280882,
					Column = Column,
					Style = Style or 1,
				}, "__prebuiltConfigGroupbox")

				if isStudio then
					instance:CreateParagraph({
						Name = "Config System Unavailable.",
						Content = "Environment Invalid : isStudio.",
					}, "__prebuiltConfigEnvironmentWarning")
					return "Config System Unavailable"
				end
				if not isfile or isfile == nil then
					instance:CreateParagraph({
						Name = "Config System Unavailable.",
						Content = "Environment Invalid : isFile UNC Function Not Found.",
					}, "__prebuiltConfigEnvironmentWarning")
					return "Config System Unavailable"
				end

				local inputPath = nil
				local selectedConfig = nil

				inputPath = instance:CreateInput({
					Name = "Config Name",
					Tooltip = "Insert a name for the config you want to create.",
					PlaceholderText = "Name",
					RemoveTextOnFocus = true,
					IgnoreConfig = true,
					Callback = function(val) end,
				}, "__prebuiltConfigNameInput")

				instance:CreateButton({
					Name = "Create Config",
					Icon = 6035053304,
					CenterContent = ButtonsCentered,
					Tooltip = "Create a configuration to access any time with all your current settings.",
					Callback = function()
						if not inputPath.Values.CurrentValue or String.IsEmptyOrNull(inputPath.Values.CurrentValue) then
							Starlight:Notification({
								Title = "Configuration Error",
								Icon = 129398364168201,
								Content = "Config name cannot be empty.",
							})
							return
						end
						inputPath.Values.CurrentValue = string.gsub(inputPath.Values.CurrentValue, "/", " ")
						inputPath.Values.CurrentValue = string.gsub(inputPath.Values.CurrentValue, "\\", " ")

						if
							isfile(
								`{Starlight.FileSystem.Folder}/{folderpath}/configs/{inputPath.Values.CurrentValue}{Starlight.FileSystem.FileExtension}`
							)
						then
							Starlight:Notification({
								Title = "Configuration Exists",
								Icon = 129398364168201,
								Content = "Configuration with the provided name exists already. Overwrite it with update config below.",
							})
							return
						end

						local success, returned = Starlight.FileSystem:SaveConfig(
							inputPath.Values.CurrentValue,
							`{Starlight.FileSystem.Folder}/{folderpath}/configs/`
						)
						if not success then
							Starlight:Notification({
								Title = "Configuration Error",
								Icon = 6031071057,
								Content = "Unable to save config, return error: " .. returned,
							})
						end

						Starlight:Notification({
							Title = "Configuration Created",
							Icon = 6026568227,
							Content = string.format("Created config %q", inputPath.Values.CurrentValue),
						})

						instance.Elements["__prebuiltConfigSelector_lbl"].NestedElements["__prebuiltConfigSelector_lbl"]:Set({
							Options = Starlight.FileSystem:RefreshConfigList(
								`{Starlight.FileSystem.Folder}/{folderpath}/configs`
							),
						})
					end,
					Style = 1,
				}, "__prebuiltConfigCreator")

				instance:CreateDivider()

				local configSelection = instance
					:CreateLabel({
						Name = "Select Config",
						Tooltip = "Select a config for this section to work on.",
					}, "__prebuiltConfigSelector_lbl")
					:AddDropdown({
						Options = Starlight.FileSystem:RefreshConfigList(
							`{Starlight.FileSystem.Folder}/{folderpath}/configs`
						),
						CurrentOption = nil,
						MultipleOptions = false,
						Callback = function(val)
							selectedConfig = val[1]
						end,
					}, "__prebuiltConfigSelector_lbl")

				instance:CreateButton({
					Name = "Load Config",
					Icon = 10723433935,
					CenterContent = ButtonsCentered,
					Tooltip = "Load the selected configuration and all its settings.",
					Callback = function()
						if selectedConfig == nil then
							Starlight:Notification({
								Title = "Null Selection",
								Icon = 129398364168201,
								Content = "Configuration Must Be Selected!",
							})
							return
						end

						local success, returned = Starlight.FileSystem:LoadConfig(
							selectedConfig,
							`{Starlight.FileSystem.Folder}/{folderpath}/configs/`
						)
						if not success then
							Starlight:Notification({
								Title = "Configuration Error",
								Icon = 6031071057,
								Content = "Unable to load config, return error: " .. returned,
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
					CenterContent = ButtonsCentered,
					Tooltip = "Overwrite and update the selected configuration and all its settings with your current ones.",
					Callback = function()
						if selectedConfig == nil then
							Starlight:Notification({
								Title = "Null Selection",
								Icon = 129398364168201,
								Content = "Configuration Must Be Selected!",
							})
							return
						end

						local success, returned = Starlight.FileSystem:SaveConfig(
							selectedConfig,
							`{Starlight.FileSystem.Folder}/{folderpath}/configs/`
						)
						if not success then
							Starlight:Notification({
								Title = "Configuration Error",
								Icon = 6031071057,
								Content = "Unable to overwrite config, return error: " .. returned,
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
					CenterContent = ButtonsCentered,
					Tooltip = "Manually refresh the list of configurations incase of any errors.",
					Callback = function()
						instance.Elements["__prebuiltConfigSelector_lbl"].NestedElements["__prebuiltConfigSelector_lbl"]:Set({
							Options = Starlight.FileSystem:RefreshConfigList(
								`{Starlight.FileSystem.Folder}/{folderpath}/configs`
							),
						})
					end,
					Style = 2,
				}, "__prebuiltConfigRefresher")

				local loadlabel = instance:CreateParagraph({
					Name = "Current Autoload Config:",
					Content = isfile(`{Starlight.FileSystem.Folder}/{folderpath}/configs/autoload.txt`) and readfile(
						`{Starlight.FileSystem.Folder}/{folderpath}/configs/autoload.txt`
					) or "None",
				}, "__prebuiltConfigAutoloadLabel")

				instance:CreateButton({
					Name = "Autoload Configuration",
					Icon = 6023565901,
					CenterContent = ButtonsCentered,
					Tooltip = "Set the selected configuration to load whenever you run the script automatically.",
					Callback = function()
						if selectedConfig == nil then
							Starlight:Notification({
								Title = "Null Selection",
								Icon = 129398364168201,
								Content = "Configuration Must Be Selected!",
							})
							return
						end
						local name = selectedConfig
						pcall(function()
							writefile(`{Starlight.FileSystem.Folder}/{folderpath}/configs/autoload.txt`, name)
						end)
						loadlabel:Set({ Content = name })

						Starlight:Notification({
							Title = "Configuration Updated",
							Icon = 6026568227,
							Content = string.format(
								"Set %q to be automatically loaded on your future sessions.",
								selectedConfig
							),
						})
					end,
					Style = 1,
				}, "__prebuiltConfigLoader")

				instance:CreateDivider()

				local warning = instance:CreateLabel({
					Name = "! DANGER ZONE !",
				}, "__prebuiltConfigDangerWarning")
				warning.Instance.Header.TextXAlignment = Enum.TextXAlignment.Center
				warning.Instance.Header.Size = UDim2.new(1, 0, 0, warning.Instance.Header.Size.Y.Offset)
				warning.Instance.Header.UIPadding.PaddingLeft = UDim.new(0, 0)

				instance:CreateButton({
					Name = "Clear Autoload",
					Icon = 6034767619,
					CenterContent = ButtonsCentered,
					Tooltip = "Removes the autoloading of the current autoload config.",
					Callback = function()
						if isfile(`{Starlight.FileSystem.Folder}/{folderpath}/configs/autoload.txt`) then
							delfile(`{Starlight.FileSystem.Folder}/{folderpath}/configs/autoload.txt`)
						end
						loadlabel:Set({ Content = "None" })

						Starlight:Notification({
							Title = "Autoload Cleared",
							Icon = 6026568227,
							Content = string.format("Disabled current autoload.", selectedConfig),
						})
					end,
					Style = 2,
				}, "__prebuiltConfigDeleter")

				instance:CreateButton({
					Name = "Delete Configuration",
					Icon = 115577765236264,
					CenterContent = ButtonsCentered,
					Tooltip = "Deleting A Configuration is permanent and you have to redo it!",
					Callback = function()
						if selectedConfig == nil then
							Starlight:Notification({
								Title = "Null Selection",
								Icon = 129398364168201,
								Content = "Configuration Must Be Selected!",
							})
							return
						end
						if
							isfile(
								`{Starlight.FileSystem.Folder}/{folderpath}/configs/{selectedConfig}{Starlight.FileSystem.FileExtension}`
							)
						then
							delfile(
								`{Starlight.FileSystem.Folder}/{folderpath}/configs/{selectedConfig}{Starlight.FileSystem.FileExtension}`
							)
						end

						if loadlabel.Values.Content == selectedConfig then
							if isfile(`{Starlight.FileSystem.Folder}/{folderpath}/configs/autoload.txt`) then
								delfile(`{Starlight.FileSystem.Folder}/{folderpath}/configs/autoload.txt`)
							end
							loadlabel:Set({ Content = "None" })
						end

						instance.Elements["__prebuiltConfigSelector_lbl"].NestedElements["__prebuiltConfigSelector_lbl"]:Set({
							Options = Starlight.FileSystem:RefreshConfigList(
								`{Starlight.FileSystem.Folder}/{folderpath}/configs`
							),
							CurrentOption = "",
						})

						Starlight:Notification({
							Title = "Configuration Deleted",
							Icon = 6026568227,
							Content = string.format("Deleted Configuration %q", selectedConfig),
						})
						if selectedConfig then
							selectedConfig = nil
						end
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
			Tween(
				mainWindow.Content.Topbar.NotificationCenterIcon,
				{ ImageColor3 = Starlight.CurrentTheme.Foregrounds.DarkHover }
			)
		end)
		mainWindow.Content.Topbar.NotificationCenterIcon["MouseLeave"]:Connect(function()
			Tween(
				mainWindow.Content.Topbar.NotificationCenterIcon,
				{ ImageColor3 = Starlight.CurrentTheme.Foregrounds.Dark }
			)
		end)

		local notifdebounce = false
		mainWindow.Content.Topbar.NotificationCenterIcon["MouseButton1Click"]:Connect(function()
			if not notifdebounce then
				notifdebounce = true
				if Starlight.NotificationsOpen then
					for i, newNotification in pairs(CollectionService:GetTagged("__starlight_ExpiredNotification")) do
						newNotification.Icon.Visible = false
						TweenService:Create(
							newNotification,
							TweenInfo.new(0.4, Enum.EasingStyle.Exponential),
							{ BackgroundTransparency = 1 }
						):Play()
						TweenService:Create(
							newNotification.UIStroke,
							TweenInfo.new(0.4, Enum.EasingStyle.Exponential),
							{ Transparency = 1 }
						):Play()
						TweenService:Create(
							newNotification.Shadow.antumbraShadow,
							TweenInfo.new(0.4, Enum.EasingStyle.Exponential),
							{ ImageTransparency = 1 }
						):Play()
						TweenService:Create(
							newNotification.Shadow.penumbraShadow,
							TweenInfo.new(0.4, Enum.EasingStyle.Exponential),
							{ ImageTransparency = 1 }
						):Play()
						TweenService:Create(
							newNotification.Shadow.umbraShadow,
							TweenInfo.new(0.4, Enum.EasingStyle.Exponential),
							{ ImageTransparency = 1 }
						):Play()
						TweenService:Create(
							newNotification.Title,
							TweenInfo.new(0.3, Enum.EasingStyle.Exponential),
							{ TextTransparency = 1 }
						):Play()
						TweenService:Create(
							newNotification.Description,
							TweenInfo.new(0.3, Enum.EasingStyle.Exponential),
							{ TextTransparency = 1 }
						):Play()
						TweenService:Create(
							newNotification.Time,
							TweenInfo.new(0.3, Enum.EasingStyle.Exponential),
							{ TextTransparency = 1 }
						):Play()

						pcall(function()
							TweenService:Create(
								newNotification.Acrylic.shadow,
								TweenInfo.new(0.4, Enum.EasingStyle.Exponential),
								{ ImageTransparency = 0.7 }
							):Play()
							TweenService:Create(
								newNotification.Acrylic.tint,
								TweenInfo.new(0.4, Enum.EasingStyle.Exponential),
								{ ImageTransparency = 0.98 }
							):Play()
							TweenService:Create(
								newNotification.Acrylic.Noise,
								TweenInfo.new(0.4, Enum.EasingStyle.Exponential),
								{ ImageTransparency = 0.9 }
							):Play()
						end)

						TweenService:Create(
							newNotification,
							TweenInfo.new(1, Enum.EasingStyle.Exponential),
							{ Size = UDim2.new(1, -90, 0, 0) }
						):Play()

						Tween(
							newNotification,
							{
								Size = UDim2.new(
									1,
									-90,
									0,
									-StarlightUI.Notifications:FindFirstChild("UIListLayout").Padding.Offset
								),
							},
							function()
								newNotification.Visible = false
							end,
							TweenInfo.new(1, Enum.EasingStyle.Exponential)
						)
					end
				else
					for i, newNotification in pairs(CollectionService:GetTagged("__starlight_ExpiredNotification")) do
						task.spawn(function()
							newNotification.Icon.Visible = true

							newNotification.Size = UDim2.new(
								1,
								0,
								0,
								-StarlightUI.Notifications:FindFirstChild("UIListLayout").Padding.Offset
							)

							newNotification.Icon.Size = UDim2.new(0, 28, 0, 28)

							newNotification.Visible = true

							newNotification.Description.Size = UDim2.new(1, -65, 0, math.huge)
							local bounds = newNotification.Description.TextBounds.Y
							newNotification.Description.Size = UDim2.new(1, -65, 0, bounds + 2)
							TweenService:Create(
								newNotification,
								TweenInfo.new(0.6, Enum.EasingStyle.Exponential),
								{ Size = UDim2.new(1, 0, 0, bounds + 50) }
							):Play()

							task.wait(0.15)
							TweenService
								:Create(
									newNotification,
									TweenInfo.new(0.4, Enum.EasingStyle.Exponential),
									{
										BackgroundTransparency = notificationAcrylic
										and (mainAcrylic and 0.55 or 0.375)
										or 0,
									}
								)
								:Play()
							TweenService:Create(
								newNotification.Shadow.antumbraShadow,
								TweenInfo.new(0.4, Enum.EasingStyle.Exponential),
								{ ImageTransparency = 0.94 }
							):Play()
							TweenService:Create(
								newNotification.Shadow.penumbraShadow,
								TweenInfo.new(0.4, Enum.EasingStyle.Exponential),
								{ ImageTransparency = 0.55 }
							):Play()
							TweenService:Create(
								newNotification.Shadow.umbraShadow,
								TweenInfo.new(0.4, Enum.EasingStyle.Exponential),
								{ ImageTransparency = 0.4 }
							):Play()
							TweenService:Create(
								newNotification.Title,
								TweenInfo.new(0.3, Enum.EasingStyle.Exponential),
								{ TextTransparency = 0 }
							):Play()

							task.wait(0.05)

							TweenService:Create(
								newNotification.Icon,
								TweenInfo.new(0.3, Enum.EasingStyle.Exponential),
								{ ImageTransparency = 0 }
							):Play()

							task.wait(0.05)
							TweenService:Create(
								newNotification.Description,
								TweenInfo.new(0.3, Enum.EasingStyle.Exponential),
								{ TextTransparency = 0.35 }
							):Play()
							TweenService:Create(
								newNotification.Time,
								TweenInfo.new(0.3, Enum.EasingStyle.Exponential),
								{ TextTransparency = 0.35 }
							):Play()
							TweenService:Create(
								newNotification.UIStroke,
								TweenInfo.new(0.4, Enum.EasingStyle.Exponential),
								{ Transparency = 0.95 }
							):Play()
						end)
					end
				end
				Starlight.NotificationsOpen = not Starlight.NotificationsOpen
				task.wait(1)
				notifdebounce = false
			end
		end)

		mainWindow.Content.Topbar.Search["MouseEnter"]:Connect(function()
			Tween(mainWindow.Content.Topbar.Search, { ImageColor3 = Starlight.CurrentTheme.Foregrounds.DarkHover })
		end)
		mainWindow.Content.Topbar.Search["MouseLeave"]:Connect(function()
			Tween(mainWindow.Content.Topbar.Search, { ImageColor3 = Starlight.CurrentTheme.Foregrounds.Dark })
		end)

		for _, Button in pairs(mainWindow.Content.Topbar.Controls:GetChildren()) do
			if Button.ClassName == "TextButton" then
				Button["MouseEnter"]:Connect(function()
					Tween(Button.Fill, { BackgroundTransparency = 0 })
					Tween(Button.Fill.Icon, { Position = UDim2.fromScale(0.5, 0.5) })
				end)

				Button["MouseLeave"]:Connect(function()
					Tween(Button.Fill, { BackgroundTransparency = 1 })
					Tween(Button.Fill.Icon, { Position = UDim2.fromScale(0.5, 1.8) })
				end)
			end
		end

		mainWindow.Content.Topbar.Controls.Close["MouseButton1Click"]:Connect(function()
			Starlight.Window:PromptDialog({
				Name = "Are you sure?",
				Content = "Are you sure you wish to exit the Interface?",
				Type = 1,
				Actions = {
					Primary = {
						Name = "Cancel",
						Callback = function() end,
					},
					{
						Name = "Yes",
						Callback = function()
							Starlight:Destroy()
						end,
					},
				},
			})
		end)
		mainWindow.Content.Topbar.Controls.Maximize["MouseButton1Click"]:Connect(function()
			if Starlight.Maximized then
				Unmaximize(mainWindow)
			else
				Maximize(mainWindow)
			end
		end)

		local debounce = false

		mainWindow.Content.Topbar.Controls.Minimize["MouseButton1Click"]:Connect(function()
			if not debounce then
				debounce = true
				Hide(mainWindow, false, true, Starlight.WindowKeybind)
				Hide(StarlightUI.Drag, false, false, Starlight.WindowKeybind)
				task.delay(0.4, function()
					debounce = false
				end)
			end
		end)

		StarlightUI.MobileToggle.MouseButton1Click:Connect(function()
			if Starlight.Minimized == true then
				if not debounce then
					debounce = true
					Unhide(mainWindow)
					Unhide(StarlightUI.Drag)
					Tween(
						mainWindow.Content.Topbar.Controls.Minimize.Fill.Icon,
						{ Position = UDim2.fromScale(0.5, 1.5) }
					)
					Tween(mainWindow.Content.Topbar.Controls.Minimize.Fill, { BackgroundTransparency = 1 })
					task.delay(0.4, function()
						debounce = false
					end)
				end
			elseif Starlight.Minimized == false then
				if not debounce then
					debounce = true
					Hide(mainWindow, false, true, Starlight.WindowKeybind)
					Hide(StarlightUI.Drag, false, false, Starlight.WindowKeybind)
					task.delay(0.4, function()
						debounce = false
					end)
				end
			end
		end)

		connections["__windowKeybindHidingBindConnection"] = UserInputService.InputBegan:Connect(function(input, gpe)
			if gpe then
				return
			end
			if input.KeyCode == Enum.KeyCode[Starlight.WindowKeybind] then
				if Starlight.Minimized == true then
					if not debounce then
						debounce = true
						Unhide(mainWindow)
						Unhide(StarlightUI.Drag)
						Tween(
							mainWindow.Content.Topbar.Controls.Minimize.Fill.Icon,
							{ Position = UDim2.fromScale(0.5, 1.5) }
						)
						Tween(mainWindow.Content.Topbar.Controls.Minimize.Fill, { BackgroundTransparency = 1 })
						task.delay(0.4, function()
							debounce = false
						end)
					end
				elseif Starlight.Minimized == false then
					if not debounce then
						debounce = true
						Hide(mainWindow, false, true, Starlight.WindowKeybind)
						Hide(StarlightUI.Drag, false, false, Starlight.WindowKeybind)
						task.delay(0.4, function()
							debounce = false
						end)
					end
				end
			end
		end)
	end
	--// ENDSUBSECTION

	-- Return the window
	return Starlight.Window
end

--// SECTION : Config System

function Starlight.FileSystem:BuildFolderTree(FileSettings)
	-- Revamp since beta 4 since we are storing stuff within like scripts for both themes and such
	if isStudio or not isfolder then
		return "Config system unavailable."
	end
	local paths = {}
	if FileSettings.RootFolder ~= nil then
		-- has root
		if FileSettings.ThemesInRoot then
			paths = {
				Starlight.FileSystem.Folder,
				`{Starlight.FileSystem.Folder}/{FileSettings.RootFolder}/{FileSettings.ConfigFolder}`,
				`{Starlight.FileSystem.Folder}/{FileSettings.RootFolder}/{FileSettings.ConfigFolder}/configs`,
				`{Starlight.FileSystem.Folder}/{FileSettings.RootFolder}/themes`,
			}
		else
			paths = {
				Starlight.FileSystem.Folder,
				`{Starlight.FileSystem.Folder}/{FileSettings.RootFolder}/{FileSettings.ConfigFolder}`,
				`{Starlight.FileSystem.Folder}/{FileSettings.RootFolder}/{FileSettings.ConfigFolder}/configs`,
				`{Starlight.FileSystem.Folder}/{FileSettings.RootFolder}}/{FileSettings.ConfigFolder}/themes`,
			}
		end
	else
		-- no root
		paths = {
			Starlight.FileSystem.Folder,
			`{Starlight.FileSystem.Folder}/{FileSettings.ConfigFolder}`,
			`{Starlight.FileSystem.Folder}/{FileSettings.ConfigFolder}/configs`,
			`{Starlight.FileSystem.Folder}/{FileSettings.ConfigFolder}/themes`,
		}
	end

	for i, str in ipairs(paths) do
		if not isfolder(str) then
			makefolder(str)
		end
	end
end

function Starlight.FileSystem:SaveConfig(file, path)
	if isStudio or not isfile then
		return "Config system unavailable."
	end

	if not path or not file then
		return false, "Please select a config file."
	end

	local fullPath = `{path}{file}{Starlight.FileSystem.FileExtension}`

	local data = {
		objects = {},
	}

	for tsecidx, tabsection in next, Starlight.Window.TabSections do
		for tidx, tab in next, tabsection.Tabs do
			for grpidx, groupbox in next, tab.Groupboxes do
				if groupbox.ClassName and groupbox.ClassName ~= "TabBox" then
					for idx, object in next, groupbox.Elements do
						if object.IgnoreConfig then
							continue
						end

						local fullidx = `{tsecidx}.Tabs.{tidx}.Groupboxes.{grpidx}.Elements.{idx}`

						table.insert(data.objects, ConfigMethods.Save(fullidx, object.Values, object.Class))

						if
							object.Class == "Toggle" or object.Class == "Label" --[[or object.Class == "Input"]]
						then
							for nestedidx, nestedobject in next, object.NestedElements do
								if nestedobject.IgnoreConfig then
									continue
								end

								table.insert(
									data.objects,
									ConfigMethods.Save(`{fullidx}.NestedElements.{nestedidx}`, nestedobject.Values)
								)
							end
						end
					end
				end

				-- will add tabbox in future
			end
		end
	end

	local success, encoded = pcall(HttpService.JSONEncode, HttpService, data)
	if not success then
		return false, "Unable to encode into JSON data"
	end

	writefile(fullPath, encoded)
	return true
end

function Starlight.FileSystem:LoadConfig(file, path)
	if isStudio or not isfile then
		return "Config system unavailable."
	end

	if not path or not file then
		return false, "Please select a config file."
	end

	local fullPath = `{path}{file}{Starlight.FileSystem.FileExtension}`
	if not isfile(fullPath) then
		return false, "Invalid file."
	end

	local success, decoded = pcall(HttpService.JSONDecode, HttpService, readfile(fullPath))
	if not success then
		return false, "Unable to decode JSON data."
	end

	for _, object in next, decoded.objects do
		task.spawn(function()
			ConfigMethods.Load(object.idx, object.data)
		end)
	end

	return true
end

function Starlight.FileSystem:RefreshConfigList(path)
	if isStudio or not isfile then
		return "Config system unavailable."
	end

	if not isfolder(path) then
		Starlight:Notification({
			Title = "shitty executor",
			Icon = 0,
			Content = identifyexecutor() .. " is so shit bro.\n your file system is just broken 💀",
		}, "hdajdnj")
		return {}
	end

	local list = listfiles(path) or {}

	local configs = {}
	for i = 1, #list do
		local file = list[i]
		if file:sub(-#Starlight.FileSystem.FileExtension) == Starlight.FileSystem.FileExtension then
			local pos = file:find(Starlight.FileSystem.FileExtension, 1, true)
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
	if isStudio or not isfile then
		return "Config system unavailable."
	end

	if
		Starlight.FileSystem.AutoloadConfigPath and isfile(Starlight.FileSystem.AutoloadConfigPath .. "autoload.txt")
	then
		local name = readfile(Starlight.FileSystem.AutoloadConfigPath .. "autoload.txt")

		local success, err = Starlight.FileSystem:LoadConfig(name, Starlight.FileSystem.AutoloadConfigPath)
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

function Starlight:SetTheme(newTheme)
	local themeToCopy = newTheme
	if type(themeToCopy) == "string" then
		themeToCopy = Starlight.Themes[themeToCopy]
	end

	Starlight.CurrentTheme = deepCopy(themeToCopy)
	themeEvent:Fire()
end

function Starlight:LoadAutoloadTheme()
	if isStudio or not isfile then
		return "Config system unavailable."
	end

	if Starlight.FileSystem.AutoloadThemePath and isfile(Starlight.FileSystem.AutoloadThemePath .. "autoload.txt") then
		local name = readfile(Starlight.FileSystem.AutoloadThemePath .. "autoload.txt")

		if Themes[name] then
			Starlight:SetTheme(name)
		else
			local content =
				readfile(Starlight.FileSystem.AutoloadThemePath .. name .. Starlight.FileSystem.FileExtension)
			local success, decoded = pcall(HttpService.JSONDecode, HttpService, content)
			if not success then
				return false, "Unable to decode JSON data."
			end

			Starlight:SetTheme(decoded)
		end
	end
end

--// ENDSECTION

StarlightUI.Enabled = true

--// ENDSECTION

--// SECTION : Testing

local enabled = true

if isStudio and enabled then
	--Starlight:SetTheme("Hollywood Dark")

	local win = Starlight:CreateWindow({
		Name = "Window",
		Subtitle = "this is an optional subtitle",
		Icon = 92936499827985,

		LoadingEnabled = false,
		LoadingSettings = {
			Title = "Starlight Interface Suite",
			Subtitle = "Welcome to Starlight",
		},

		BuildWarnings = true,
		InterfaceAdvertisingPrompts = true,
		NotifyOnCallbackError = true,

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
			Keys = { "Key" }, -- put the link to a raw content page containing your key.
		},

		Discord = { -- u can still have it in the home tab, this is just auto join
			Enabled = false,
			RememberJoins = true,
			Link = "1234",
		},
	})

	win:CreateHomeTab({
		Backdrop = 78881404248017,
	})
	local ts = win:CreateTabSection("ELEMENT SHOWCASE")
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
		Columns = 2,
	}, "hi3")

	local g = t:CreateGroupbox({
		Name = "Groupbox Example",
		Column = 2,
	}, "g")
	local g2 = t:CreateGroupbox({
		Name = "Groupbox Example",
		Icon = NebulaIcons:GetIcon("atom", "Phosphor"),
		Style = 2,
	}, "g2")
	t2:CreateGroupbox({
		Name = "Groupbox Example",
		Icon = NebulaIcons:GetIcon("rocket", "Lucide"),
	}, "noindex")

	local x = g:CreateButton({
		Name = "Centered Button",
		Callback = function() end,
		Tooltip = "Button 2!",
		CenterContent = true,
		Style = 1,
	}, "btn2")

	local hi = g2:CreateButton({
		Name = "Button",
		Icon = NebulaIcons:GetIcon("cursor-click", "Phosphor"),
		Callback = function()
			win:PromptDialog({
				Name = "Dialog Test",
				Content = "COntent TEst",
				Icon = NebulaIcons:GetIcon("filter_list_alt"),
				Type = 1,
				Actions = {
					Primary = {
						Name = "Okay!",
						Icon = NebulaIcons:GetIcon("check", "Material"),
						Callback = function()
							win:PromptDialog({
								Name = "Dialog Input Test",
								Content = "COntent TEst",
								Type = 2,
								Actions = {
									{
										PlaceholderText = "placeholder",
										Numeric = false,
										RemoveTextAfterFocusLost = true,
										Callback = function(x)
											print(x)
										end,
									},
									{
										PlaceholderText = "numbers",
										Numeric = true,
										MaxCharacters = 5,
										RemoveTextOnFocus = false,
										Callback = function(x)
											print(x)
										end,
									},
								},
							})
						end,
					},
					{
						Name = "Cancel",
						Callback = function() end,
					},
				},
			})
		end,
		Style = 1,
		Tooltip = "Button 1!",
	}, "btn")

	g2:CreateButton({
		Name = "Flat Button",
		Icon = NebulaIcons:GetIcon("locate", "Lucide"),
		Callback = function()
			x:Lock("this is a reason")
		end,
		Tooltip = "flat Button!",
	}, "btn3")

	g2:CreateToggle({
		Name = "Toggle",
		CheckboxIcon = NebulaIcons:GetIcon("check"),
		Callback = function() end,
		Tooltip = "Hi",
	}, "tggle")
	g:CreateToggle({
		Name = "Toggle without Icon",
		Callback = function() end,
		Tooltip = "Hi",
	}, "tggle2")

	g:CreateToggle({
		Name = "Toggle - Switch Style",
		Style = 2,
		Callback = function() end,
		Tooltip = "Hi",
	}, "tggle2")

	g2:CreateSlider({
		Name = "Slider",
		Range = { -100, 100 },
		Increment = 0.5,
		Suffix = "%",
		Callback = function() end,
	}, "sldr")

	g2:CreateSlider({
		Name = "Slider",
		Range = { 0.2, 1 },
		HideMax = true,
		Tooltip = "Hi",
		CurrentValue = 0.2,
		Increment = 0.002,
		Suffix = "km/h",
		Callback = function(v)
			print(v)
		end,
	}, "sldr2")

	g:CreateInput({
		Name = "dynamic input",
		Tooltip = "Hi",
		Callback = function() end,
	}, "inpt")
	g2:CreateInput({
		Name = "numeric input",
		Numeric = true,
		PlaceholderText = "Numbers Only Hehe",
		Tooltip = "Hi",
		Callback = function() end,
	}, "nmrcinpt")

	--g:CreateBind({
	--	Name = "bind",
	--	CurrentValue = "Q",
	--	Callback = function() end
	--})
	g2:CreateLabel({
		Tooltip = "Hi",
		Name = "Label",
	}, "lblbnd"):AddBind({
		CurrentValue = "1",
		HoldToInteract = true,
		Tooltip = "Hi",
		Callback = function(v)
			print(v)
		end,
	}, "bnd")

	g2:CreateLabel({
		Tooltip = "Hi",
		Name = "Window Bind",
	}, "lblbnd"):AddBind({
		CurrentValue = "q",
		HoldToInteract = false,
		Tooltip = "Hi",
		WindowSetting = true,
		Callback = function() end,
	}, "wndwbnd")

	g2:CreateToggle({
		Name = "Toggle Bind",
		CurrentValue = false,
		Tooltip = "Hi",
		Style = 2,
		SyncToggleState = true,
		Callback = function(v)
			print(v)
		end,
	}, "bndprnt"):AddBind({
		CurrentValue = "return",
		Tooltip = "Hi",
		SyncToggleState = true,
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

	local dropdown = g:CreateLabel({ Name = "Dropdown" }, "lbldrpdwn"):AddDropdown({
		Options = { "hi", "heeh", "huh" },
		Tooltip = "Hi",
		CurrentOption = nil,
		Callback = function(v)
			print(v)
		end,
	}, "drpdwn")

	local dropdown2 = g:CreateLabel({ Name = "Dropdown MultiOptions" }, "lbldrpdwn2"):AddDropdown({
		Options = { "smthhhhh veryyyyyyyyyyyy loooooooonggggggg", "heeh", "huh" },
		CurrentOption = { "wsp", "huh" },
		Tooltip = "Hi",
		MultipleOptions = true,
		Callback = function(v)
			print(v)
		end,
	}, "drpdwn2")
	dropdown2:Set({
		Options = { "noooo" },
	})

	local mix =
		g2:CreateToggle({ Name = "Dropdown On Toggle", CurrentValue = false, Callback = function() end }, "tgglemix")
	local id = mix:AddDropdown({
		Options = { "hi", "heeh", "huh" },
		CurrentOption = { "wsp", "huh" },
		Tooltip = "Hi",
		MultipleOptions = true,
		Special = 1,
		Placeholder = "Select a player!",
		Callback = function(v)
			print(v)
		end,
	}, "drpdwn3")

	mix:AddBind({
		CurrentValue = nil,
		Tooltip = "Hi",
		SyncToggleState = true,
	}, "bnd3")
	local cp = mix:AddColorPicker({
		Transparency = 0,
		CurrentValue = Color3.new(0, 1, 0.333333),
		Callback = function(c, v)
			local p = Instance.new("Part", workspace)
			p.CFrame = Player.Character.HumanoidRootPart.CFrame
			p.Color = c
			p.Transparency = v
		end,
	}, "cp")

	g:CreateLabel({
		Name = "Color Picker No Alpha",
		Icon = NebulaIcons:GetIcon("color_lens", "Material"),
		Tooltip = "Hi",
	}, "cplbl2"):AddColorPicker({
		CurrentValue = Color3.new(),
		Callback = function() end,
	}, "cp")

	g:CreateSlider({
		Name = "slider test",
		Range = { 0, 255 },
		CurrentValue = 99,
		Callback = function(v)
			cp:Set({
				CurrentValue = Color3.fromHSV(v / 255, 1, 1),
			})
		end,
	}, "sldrcp")

	g:CreateLabel({
		Name = "Label w Icon",
		Icon = NebulaIcons:GetIcon("aperture", "Lucide"),
		Tooltip = "Hi",
	}, "lbl")
	g2:CreateParagraph({
		Name = "paragraph",
		Content = "Hello!! Im A Paragraph, and i can store bunch of text",
	}, "prgrph")
	g:CreateParagraph({
		Name = "paragraph 2",
		Icon = NebulaIcons:GetIcon("filter_list_alt"),
		Content = "Hello!! Im A Paragraph, and i can store bunch of text. \nI also grow bigger or smaller depending on how much text is in my body! \nLike this, i am a much bigger paragraph than the other one! i also support multi lines ",
	}, "prgrph2")

	Starlight:Notification({
		Title = "Hi",
		Content = "Hello!! Im A Paragraph, and i can store bunch of text. \nI also grow bigger or smaller depending on how much text is in my body! \nLike this, i am a much bigger paragraph than the other one! i also support multi lines ",
		Icon = NebulaIcons:GetIcon("notifications_active", "Material"),
	})
	Starlight:Notification({
		Title = "Infinite Notification",
		Content = "same as the other guy but i cant expire cus im set to -1 duration",
		Duration = -1,
		Icon = NebulaIcons:GetIcon("bell-simple-ringing", "Phosphor-Filled"),
	})

	--[[task.delay(4, function()
		Starlight:SetTheme("Starlight")
	end)]]

	local configg = t:BuildConfigGroupbox(2)
	local themeg = t:BuildThemeGroupbox(1)

	ts2:CreateCustomTab({
		Name = "Custom Tab",
		Icon = 11963368654,
		Page = Instance.new("Frame"),
	}, "customtab")

	Starlight:LoadAutoloadConfig()
end --]=]0

--// ENDSECTION

--// SECTION : Protection of our work
Starlight:Notification({
	Title = "Enjoying Starlight?",
	Content = "Thanks for using a script that uses our UI Library. Starlight is made with love, care and effort by Nebula Softworks And Nebula Softworks alone. No other developer or such entity. We are spreading this message as a skid who claims others work as their own, etheruit (a fake bitdancer - bitdancer._) on discord, is claiming Starlight as theirs. Help us protect our work by staying away from his lies. You can always find us at dsc.gg/nebulasoftworks.\nThank you ❤️",
	Duration = 10,
	Icon = 105789146907268,
})

return Starlight
