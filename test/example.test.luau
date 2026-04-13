--[=[

		██     ██ ██ ██████  
		██     ██ ██ ██   ██ 
		██  █  ██ ██ ██████  
		██ ███ ██ ██ ██      
		 ███ ███  ██ ██      
                    
	  THIS IS WORK IN PROGRESS

--]=]

--visuals section. esp tab, colors tab. each component is groupbox. esp tab is whats enabled, colors is colors and transparency
---if games is arsenal, auto set health to nrpbs

--// This is Assuming You Already Have Imported/Defined The Library, With it being named Twilight.
--// We will be using Starlight Interface Suite to help visualise all the toggles for the user. https://nebulasoftworks.xyz/starlight
local Starlight = loadstring(game:HttpGet("https://raw.nebulasoftworks.xyz/starlight"))()
local NebulaIcons = loadstring(game:HttpGet("https://raw.nebulasoftworks.xyz/nebula-icon-library-loader"))()

local Window = Starlight:CreateWindow({
	Name = "Twilight ESP",
	Subtitle = "Example Script",
	Icon = NebulaIcons:GetIcon("view_in_ar"),

	LoadingEnabled = false,
	LoadingSettings = {
		Title = "twilight esp",
		Subtitle = "twilight esp",
	},

	FileSettings = {
		ConfigFolder = "TwilightESPExample",
	},
})
local TabSection = Window:CreateTabSection("Visuals")
local ESP = TabSection:CreateTab({
	Name = "ESPs",
	Icon = NebulaIcons:GetIcon("eye_tracking"),
	Columns = 2,
}, "INDEX")
local Colors = TabSection:CreateTab({
	Name = "Colors",
	Icon = NebulaIcons:GetIcon("colors"),
	Columns = 2,
}, "INDEX")

local RootTabbox = ESP:CreateTabbox({
	Column = 1,
	Tabs = {
		Configuration = {
			Name = "Configuration",
			Icon = NebulaIcons:GetIcon("settings"),
		},
		Checks = {
			Name = "ESP Checks",
			Icon = NebulaIcons:GetIcon("done_all"),
		},
	},
}, "roottabbox")
local TracerBox = ESP:CreateGroupbox({
	Name = "Tracers",
	Column = 2,
	Icon = NebulaIcons:GetIcon("footprint"),
}, "tracer")
local HealthBox = ESP:CreateGroupbox({
	Name = "Healthbars",
	Column = 1,
	Icon = NebulaIcons:GetIcon("ecg_heart"),
}, "healthbar")
local boxBox = ESP:CreateGroupbox({
	Name = "Boxes",
	Column = 2,
	Icon = NebulaIcons:GetIcon("frame_person"),
}, "boxesp")
local InfoBox = ESP:CreateGroupbox({
	Name = "Info",
	Column = 1,
	Icon = NebulaIcons:GetIcon("text_fields"),
}, "info")
local ChamsBox = ESP:CreateGroupbox({
	Name = "Chams",
	Column = 2,
	Icon = NebulaIcons:GetIcon("auto_awesome_motion"),
}, "chams")
local RadarBox = ESP:CreateGroupbox({
	Name = "Radar ESP",
	Column = 1,
	Icon = NebulaIcons:GetIcon("detector"),
}, "radar")
local SkeletonBox = ESP:CreateGroupbox({
	Name = "Skeletons",
	Column = 2,
	Icon = NebulaIcons:GetIcon("skeleton"),
}, "skeleton")
local Local = Colors:CreateGroupbox({
	Name = "Local Player",
	Column = 1,
}, "local")
local Generic = Colors:CreateGroupbox({
	Name = "Local Player",
	Column = 2,
}, "local")
local Enemies = Colors:CreateGroupbox({
	Name = "Local Player",
	Column = 1,
}, "local")
local Friendly = Colors:CreateGroupbox({
	Name = "Allies",
	Column = 2,
}, "friendly")
local Radar = Colors:CreateGroupbox({
	Name = "Local Player",
	Column = 1,
}, "local")

local Twilight = loadstring(game:HttpGet("https://raw.nebulasoftworks.xyz/twilight"))()
Twilight.Settings.HealthBar.Source = game.PlaceId == 286090429 and Twilight.Enums.HealthSource.NRPBS
	or Twilight.Enums.HealthSource.Humanoid
