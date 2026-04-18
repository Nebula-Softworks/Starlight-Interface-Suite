--todo:
-- windows and content shld go up in zindex when selected/clicked on
---- do by uh having a Library.HoveredWindow - updated when mouseenter and mouseleave on each window. then when userinputservice is fired, updayte
-- only selected window will have rotating gradient
-- add a modal button on app creation so mouse unlock

local services = require("@self/Utilities/Services")
local utilities = require("@self/Utilities")
local imageparser = require("@self/Utilities/ImageParser")
local Root = script
local Creator = require("@self/Utilities/Creator")
local Components = require("@self/Components")
local Acrylic = require("@self/Acrylic")
local Themes = require("@self/Themes")
local Elements = require("@self/Elements")

local GUI = Creator:New("ScreenGui", {
	Name = "Starlight Interface Suite",
})
utilities:ParentUI(GUI)

local Library = {
	Version = "Gen2 v1.0",

	WatermarkTitle = "Starlight Gen2",
	Icon = 92936499827985,

	IsMinimized = false,
	SecureMode = false,
	Windows = {},
	Instance = GUI,

	HasKeySystem = false,
	IsKeyDone = true,

	WatermarkActive = false,
	KeybindListActive = false,

	Keybind = Enum.KeyCode.Insert,
	KeybindMaps = require("@self/Utilities/KeybindMaps"),

	Themes = Themes,
	CurrentTheme = Themes["Dark (Default)"],

	OnDestroy = function() end,

	FileSystem = {
		Folder = "Starlight Interface Suite",
		FileExtension = ".starlight",
	},

	DPIScale = 1,
	Creator = Creator,
	ImageManager = imageparser,
}
imageparser.Library = Library

do -- Initialise
	local Backgrounds = Components.Backgrounds(GUI, Library)
	Library.Backgrounds = Backgrounds

	Creator:New("UIScale", {
		Parent = GUI,
		Name = "DPIScale",
		Scale = Library.DPIScale,
	}, nil, Library)

	Components.Notification.Init(Library)
	Components.Watermark(Library)

	-- to add keybind list
end
function Library:UpdateWatermarkIcon()
	GUI.Watermark.Icon.Image = imageparser.AddAsset(
		Library.Icon,
		typeof(Library.Icon) == "number" and Library.Icon or nil,
		typeof(Library.Icon) ~= "number" and Library.Icon or nil
	)
end

function Library:CreateMainWindow() end

function Library:CreateWindow() end

function Library:AddKeySystem() end

function Library:Notify(...)
	return Components.Notification:Notify(...)
end

function Library:SetTheme(Value)
	if typeof(Value) == "string" then
		if Themes[Value] ~= nil then
			self.CurrentTheme = Themes[Value]
			Creator:UpdateTheme()
		end
	elseif typeof(Value) == "table" then
		for i, v in pairs(Library.CurrentTheme) do
			if Value[i] == nil then
				Value[i] = v
			end
		end
		self.CurrentTheme = Value
	end
end

function Library:SetDPIScale(Value: number)
	self.DPIScale = Value
	GUI["DPIScale"].Scale = self.DPIScale
end

function Library:Toggle(toBlur, toDarken, toSnow)
	if Library.IsMinimized then
		Library.Backgrounds.Snowfall.Visible = toSnow
		Library.Backgrounds.Darkener.Visible = toDarken
		if toBlur then
			Library.Backgrounds.Blur.Enable()
		end
		-- toggle windows and menu here
	else
		Library.Backgrounds.Snowfall.Visible = false
		Library.Backgrounds.Darkener.Visible = false
		Library.Backgrounds.Blur.Disable()
		-- toggle windows and menu here
	end
end

function Library:ToggleWatermark() end
function Library:ToggleKeybindList() end

function Library:GetIcon(Name, Value)
	imageparser.AddAsset(Name, 1, Value)
	return imageparser.GetAsset(Name)
end

if getgenv then
	getgenv().Starlight = Library
end

return Library
