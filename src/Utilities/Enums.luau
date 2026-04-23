export type SubWindowType = number
export type GroupboxColumn = number
export type KeyService = number
export type KeybindType = number
export type GetKeyType = number

export type SubWindowTypes = {
	Custom: SubWindowType,
	GridPicker: SubWindowType,
	ESPPreview: SubWindowType,
	Credits: SubWindowType,
}

export type GroupboxColumns = {
	Left: GroupboxColumn,
	Right: GroupboxColumn,
}

export type KeyServices = {
	Luarmor: KeyService,
	Pelican: KeyService,
	Junkie: KeyService,
	Platoboost: KeyService,
}

export type KeybindTypes = {
	Always: KeybindType,
	Toggle: KeybindType,
	Hold: KeybindType,
	Never: KeybindType,
	Sync: KeybindType,
}

export type GetKeyTypes = {
	Discord: GetKeyType,
	Link: GetKeyType,
}

return {

	SubWindowTypes = {
		Custom = 1,
		GridPicker = 2,
		ESPPreview = 3,
		Credits = 0,
	},

	GroupboxColumns = {
		Left = 1,
		Right = 2,
	},

	KeyServices = {
		Luarmor = 0,
		Pelican = 1,
		Junkie = 2,
		Platoboost = 3,
	},

	KeybindTypes = {
		Always = 0,
		Toggle = 1,
		Hold = 2,
		Never = 3,
		Sync = 4,
	},

	GetKeyTypes = {
		Discord = 0,
		Link = 1,
	},
}
