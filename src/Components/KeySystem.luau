local services = require("../Utilities/Services")
local Creator = require("../Utilities/Creator")
local utilities = require("../Utilities")
local Enums = require("../Utilities/Enums")
local Components = require("./")
local ConfigLibrary = require("../Config")

return function(
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
			identifier: string,
			Provider: string,
		},
	},
	Library
)
	task.spawn(function()
		utilities:RecursiveCreatePath(`{Library.FileSystem.Folder}/{ConfigLibrary.RootFolder}/KeySystem`, false)

		-- create window
		-- window functionality (drag and zindex)
		-- join/link button
		-- key validation via service
		---- when return true/false, notify the message
		---- on validated set IsKeyDone to true
	end)
end
