--todo:
-- windows and content shld go up in zindex when selected/clicked on
---- do by uh having a Library.HoveredWindow - updated when mouseenter and mouseleave on each window. then when userinputservice is fired, updayte
-- only selected window will have rotating gradient
-- add a modal button on app creation so mouse unlock

local services = require("@self/Utilities/Services")
local utilities = require("@self/Utilities")
local imageparser = require("@self/Utilities/ImageParser")
local Creator = require("@self/Utilities/Creator")
local Components = require("@self/Components")
local Themes = require("@self/Themes")
local _Elements = require("@self/Elements")
local Enums = require("@self/Utilities/Enums")

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

	ActiveWindow = nil,
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

function Library:CreateWindow(Config: {
	Title: string,
	Subtitle: string,
	Tags: {
		[any]: {
			Title: string,
			Color: Color3,
		},
	},
	Footer: string,

	MinimizeKey: Enum.KeyCode,
	InitialDPIScale: number,

	Discord: {
		Enabled: boolean,
		Invite: string,
		RememberJoins: boolean,
	},

	Theme: string | {
		[any]: Color3,
	},
})
	if Library.HasKeySystem then
		while not Library.IsKeyDone do
			task.wait()
		end
	end

	assert(Config.Title, "Starlight Interface Suite | Missing Title")
	if Library.Windows.MainWindow then
		task.spawn(
			error,
			"Starlight Interface Suite | Cannot Create More than One Main Window.\nStarlight Interface Suite | Consider using Library:CreateSubWindow instead"
		)
		return
	end

	local Window = Components.MainWindow(Config, Library)

	Library.Windows.MainWindow = Window
	Library:SetTheme(Config.Theme)
	Library:SetDPIScale(Config.InitialDPIScale or 1)

	if Config.Discord and Config.Discord.Enabled then
		utilities:RecursiveCreatePath(`{Library.FileSystem.Folder}/Discord Invites/`, false)

		if
			not isfile(
				`{Library.FileSystem.Folder}/Discord Invites/{Config.Discord.Invite}.{Library.FileSystem.FileExtension}`
			)
		then
			pcall(function()
				utilities:Request({
					Url = "http://127.0.0.1:6463/rpc?v=1",
					Method = "POST",
					Headers = {
						["Content-Type"] = "application/json",
						Origin = "https://discord.com",
					},
					Body = services.HttpService:JSONEncode({
						cmd = "INVITE_BROWSER",
						nonce = services.HttpService:GenerateGUID(false),
						args = { code = Config.Discord.Invite },
					}),
				})
			end)

			if Config.Discord.RememberJoins then
				writefile(
					`{Library.FileSystem.Folder}/Discord Invites/{Config.Discord.Invite}.{Library.FileSystem.FileExtension}`,
					"Starlight RememberJoins is true for this invite, this invite will not ask you to join again"
				)
			end
		end
	end

	return Window
end

function Library:CreateSubWindow(_Config: {
	Title: string,
	Tags: {
		[any]: {
			Title: string,
			Color: Color3,
		},
	}?,
	Template: Enums.SubWindowType,
	TemplateOptions: {
		[any]: any,
	},
})
	if Library.HasKeySystem then
		while not Library.IsKeyDone do
			task.wait()
		end
	end
end

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
		--tba: menu toggle
		for _, Window in pairs(Library.Windows) do
			if not Window.IsMinimized then
				Window.Instance.Visible = true
			end
		end
		Library.IsMinimized = false
	else
		Library.Backgrounds.Snowfall.Visible = false
		Library.Backgrounds.Darkener.Visible = false
		Library.Backgrounds.Blur.Disable()
		--tba: menu toggle
		for _, Window in pairs(Library.Windows) do
			Window.Instance.Visible = false
		end
		Library.IsMinimized = true
	end
end

function Library:ToggleWatermark() end
function Library:ToggleKeybindList() end

function Library:GetIcon(Name, Value)
	imageparser.AddAsset(Name, 1, Value)
	return imageparser.GetAsset(Name)
end

function Library:Destroy()
	Library.OnDestroy()
	GUI:Destroy()
	Creator:Disconnect()
end

if getgenv then
	getgenv().Starlight = Library
end

return Library
