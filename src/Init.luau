
local services = require("@self/Utilities/Services")
local utilities = require("@self/Utilities")
local imageparser = require("@self/Utilities/ImageParser")
local Creator = require("@self/Utilities/Creator")
local Components = require("@self/Components")
local Themes = require("@self/Themes")
local _Elements = require("@self/Elements")
local Enums = require("@self/Utilities/Enums")

local binder = require("@self/Packages/binder")

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
	RegisteredKeybinds = {} :: {
		[string]: {
			Keybind: Enum.KeyCode,
			Mode: Enums.KeybindType,
			Active: boolean,
		},
	},
	DPIScale = 1,

	Themes = Themes,
	CurrentTheme = Themes["Dark (Default)"],

	OnDestroy = function() end,

	FileSystem = {
		Folder = "Starlight Interface Suite",
		FileExtension = ".starlight",
	},

	KeybindMaps = require("@self/Utilities/KeybindMaps"),
	Creator = Creator,
	ImageManager = imageparser,
	Enums = Enums,
	Services = services,
	UtilityLibrary = utilities,
	ComponentLibrary = Components,
}
Library = binder.Wrap(Library, {
	CurrentTheme = function(Value)
		if typeof(Value) == "string" then
			if Themes[Value] ~= nil then
				Creator:UpdateTheme()
			end
		elseif typeof(Value) == "table" then
			for i, v in pairs(Value) do
				if Value[i] == nil then
					Value[i] = v
				end
			end
		end
	end,
	DPIScale = function(Value)
		GUI["DPIScale"].Scale = Value
	end,
	IsMinimized = function(Value)
		if not Value then
			Library.Backgrounds.Snowfall.Visible = true
			Library.Backgrounds.Darkener.Visible = true
			Library.Backgrounds.Blur.Enable()
			Components.Menu.Instance.Visible = true
			for _, Window in pairs(Library.Windows) do
				if not Window.Minimized then
					Window.Instance.Visible = true
				end
			end
		else
			Library.Backgrounds.Snowfall.Visible = false
			Library.Backgrounds.Darkener.Visible = false
			Library.Backgrounds.Blur.Disable()
			Components.Menu.Instance.Visible = false
			for _, Window in pairs(Library.Windows) do
				if Window.IsBypassLibraryMinimized then continue end
				Window.Instance.Visible = false
			end
		end
	end,
})

imageparser.Library = Library

-- order to create your script
-- :AddKeySystem
-- Initialise
-- windows
-- blablabla

function Library:Initialise()
	local Backgrounds = Components.Backgrounds(GUI, Library)
	Library.Backgrounds = Backgrounds

	Creator:New("UIScale", {
		Parent = GUI,
		Name = "DPIScale",
		Scale = Library.DPIScale,
	}, nil, Library)

	Components.Notification.Init(Library)
	Components.Watermark(Library)
	Library:ToggleWatermark(Library.WatermarkActive)

	Components.Menu.Init(Library)

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

	Icon: string | number,

	MinimizeKey: Enum.KeyCode,

	Discord: {
		Enabled: boolean,
		Invite: string,
		RememberJoins: boolean,
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
	if Config.Theme then
		warn(
			"Starlight Interface Suite | Deprecated Arguments\nIncluding the Theme argument in your window, while works, is superseded by directly setting the CurrentTheme property of the Starlight Module. Consider Switching to that."
		)
		Library.CurrentTheme = Config.Theme
	end
	if Config.InitialDPIScale then
		warn(
			"Starlight Interface Suite | Deprecated Arguments\nIncluding the DPI Scale argument in your window, while works, is superseded by directly setting the DPIScale property of the Starlight Module. Consider Switching to that."
		)
		Library.DPIScale = Config.InitialDPIScale
	end

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

	Components.Menu.Update(Window)

	return Window
end

function Library:CreateSubWindow(
	Config: {
		Title: string,
		Icon: number | string,

		Template: Enums.SubWindowType,
		TemplateOptions: {
			-- CREDITS
			Subtitle: string,
			Cards: {
				[any]: {
					Name: string,
					Description: string,
					Tag: {
						Title: string,
						Color: Color3,
					},
				},
			},
		} | {
			-- ESP Preview
			Type: Enums.EspItemType?,
			ID: number?,
			Position: Vector3?,
		} | {
			-- GridPicker
			Items: {
				[any]: {
					ID: any,
					Image: number | string, -- will support viewports etc in the future
				},
			},
			Callback: (ID: any) -> nil,
			AllowResize: boolean?,
			Size: UDim2?,
		} | {
			-- Custom
			AllowResize: boolean?,
			Size: UDim2?,
			StayOpenWhenDisabled: boolean?,
		}?,
	}
)
	if Config.Template == nil then
		Config.Template = Enums.SubWindowTypes.Custom
	end

	if Library.HasKeySystem then
		while not Library.IsKeyDone do
			task.wait()
		end
	end

	local Window = Components.Window(Config, Library)

	table.insert(Library.Windows, Window)

	Components.Menu.Update(Window)

	return Window
end

function Library:AddKeySystem(
	Config: {
		Title: string,
		Subtitle: string,
		SaveKey: boolean,

		GetKey: {
			Mode: Enums.GetKeyType,
			Parameter: string, -- if Discord, then put invite code (no link, just like in creating mainwindow). Else if Link, put the full url - attempts to call OpenBrowserWindow and setclipboard.
		},

		ServiceProvider: Enums.KeyService,
		ServiceParameters: {
			--Platoboost
			ServiceId: number | string,
			Secret: string,
		} | {
			-- Pelican
			ServiceId: string,
		} | {
			--Luarmor
			ServiceId: string,
		} | {
			-- Junkie
			ServiceId: string,
			Identifier: string,
			Provider: string,
		},
	}
)
	Library.IsKeyDone = false
	Library.HasKeySystem = true

	local KeySys = Components.KeySystem(Config, Library)
	return KeySys
end

function Library:Notify(...)
	return Components.Notification:Notify(...)
end

@[deprecated { use="= to set the state directly" }]
function Library:Toggle()
	Library.IsMinimized = not Library.IsMinimized
end

function Library:ToggleWatermark(b: boolean?)
	Library.WatermarkActive = b == nil and not Library.WatermarkActive or b
	if Library.WatermarkActive then
		pcall(utilities.Unhide, utilities, GUI["Watermark"])
	else
		utilities:Hide(GUI["Watermark"])
	end
end
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
function Library:Unload()
	self:Destroy()
end

if Library.SecureMode then
	getrenv().error = function() end
	getrenv().warn = function() end
	getrenv().print = function() end
	-- future protection calls tba
end
if getgenv then
	getgenv().Starlight = Library
end

return Library
