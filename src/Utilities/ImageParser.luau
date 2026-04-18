local functionLibrary = require("../Utilities")

local CustomImageManager = {
	Library = nil,
}
local CustomImageManagerAssets = {

	SnowfallBackground = {
		RobloxId = 108329446100832,
		Path = nil,
		URL = nil,

		Id = nil,
	},

	TransparencyTexture = {
		RobloxId = 96978989117558,
		Path = nil,
		URL = nil,

		Id = nil,
	},

	SaturationMap = {
		RobloxId = 4155801252,
		Path = nil,
		URL = nil,

		Id = nil,
	},

	TooltipIcon = {
		RobloxId = 99343233698094,
		Path = nil,
		URL = nil,

		Id = nil,
	},

	DropdownArrow = {
		RobloxId = 6031091004,
		Path = nil,
		URL = nil,

		Id = nil,
	},

	KeybindIcon = {
		RobloxId = 72407002146102,
		Path = nil,
		URL = nil,

		Id = nil,
	},

	MainWindowIcon = {
		RobloxId = 112910337033330,
		Path = nil,
		URL = nil,

		Id = nil,
	},

	ESPPreviewIcon = {
		RobloxId = 136005970583820,
		Path = nil,
		URL = nil,

		Id = nil,
	},
}

function CustomImageManager.AddAsset(AssetName: string, RobloxAssetId: number, URL: string, ForceRedownload: boolean?)
	if CustomImageManagerAssets[AssetName] ~= nil then
		error(string.format("Asset %q already exists", AssetName))
	end

	CustomImageManagerAssets[AssetName] = {
		RobloxId = RobloxAssetId,
		Path = string.format(
			"%s/custom_assets/%s.%s",
			CustomImageManager.Library.FileSystem.Folder,
			AssetName,
			CustomImageManager.Library.FileSystem.FileExtension
		),
		URL = URL,

		Id = nil,
	}

	CustomImageManager.DownloadAsset(AssetName, ForceRedownload)
end

function CustomImageManager.GetAsset(AssetName: string)
	if not CustomImageManagerAssets[AssetName] then
		return nil
	end

	local AssetData = CustomImageManagerAssets[AssetName]
	if AssetData.Id then
		return AssetData.Id
	end

	local AssetID = string.format("rbxassetid://%s", AssetData.RobloxId or "")

	if getcustomasset and AssetData.Path ~= nil then
		local Success, NewID = pcall(getcustomasset, AssetData.Path)

		if Success and NewID then
			AssetID = NewID
		end
	end

	AssetData.Id = AssetID
	return AssetID
end

function CustomImageManager.DownloadAsset(AssetName: string, ForceRedownload: boolean?)
	if not getcustomasset or not writefile or not isfile then
		return false, "missing functions"
	end

	local AssetData = CustomImageManagerAssets[AssetName]

	functionLibrary:RecursiveCreatePath(AssetData.Path, true)

	if ForceRedownload ~= true and isfile(AssetData.Path) then
		return true, nil
	end

	local success, errorMessage = pcall(function()
		writefile(AssetData.Path, game:HttpGet(AssetData.URL))
	end)

	return success, errorMessage
end

for AssetName, _ in CustomImageManagerAssets do
	CustomImageManager.DownloadAsset(AssetName)
end

return CustomImageManager, CustomImageManagerAssets
