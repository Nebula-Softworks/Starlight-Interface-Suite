export type SubWindowType = number
export type GroupboxColumn = number
export type KeyService = number

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
}
