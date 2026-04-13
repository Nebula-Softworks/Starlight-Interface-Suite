local fs = require("@lune/fs")
local process = require("@lune/process")
local DateTime = require("@lune/datetime")

local FilePath = "dist/Starlight.Interface.Suite.luau"
local TempFile = "dist/temp.luau"
local Header = fs.readFile("./build/header.luau")

--//-------------------- REPLACE WITH YOUR VALUES IF YOU ARE MODIFYING --------------------\\--
Header = Header:gsub("{{LICENSE}}", "CC-BY-NC 4.0")
	:gsub("{{DISCORD}}", "https://dsc.gg/nebulasoftworks")
	:gsub("{{BUILD_DATE}}", DateTime.now():formatLocalTime("%d/%m/%Y %H:%M:%S"))
	:gsub("{{REPOSITORY}}", "https://github.com/Nebula-Softworks/Starlight-Interface-Suite")
--\\---------------------------------------------------------------------------------------//--

local function bundle()
	process.exec("darklua", { "process", "src/init.luau", TempFile, "--config", "./build/darklua.config.json" })
	local value = fs.readFile(TempFile)
	fs.removeFile(TempFile)
	return value
end

fs.writeFile(FilePath, Header .. "\n\n" .. bundle())
