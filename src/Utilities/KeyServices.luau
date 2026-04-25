local Enums = require("./Enums")
local utilities = require("./")
local PlatobootLibraries =
	loadstring(game:HttpGetAsync("https://raw.nebulasoftworks.xyz/starlight-gen2/platoboost-library"))()
local services = require("./Services")

local KeyServiceModule = {}

function KeyServiceModule:GetService(ServiceType: Enums.KeyService)
	if ServiceType == Enums.KeyServices.Junkie then
		return KeyServiceModule.Junkie
	elseif ServiceType == Enums.KeyServices.Luarmor then
		return KeyServiceModule.Luarmor
	elseif ServiceType == Enums.KeyServices.Pelican then
		return KeyServiceModule.Pelican
	elseif ServiceType == Enums.KeyServices.Platoboost then
		return KeyServiceModule.Platoboost
	else
		return KeyServiceModule.String
	end
end

KeyServiceModule.Pelican = function(ServiceParameters, Key)
	local hwid = gethwid or function()
		return services.LocalPlayer.UserId
	end

	local validationUrl = "https://new.pandadevelopment.net/api/v1/keys/validate"

	local payload = {
		ServiceID = ServiceParameters.ServiceId,
		HWID = tostring(hwid()),
		Key = tostring(Key),
	}

	local jsonData = services.HttpService:JSONEncode(payload)
	local success, response = pcall(function()
		return utilities:Request({
			Url = validationUrl,
			Method = "POST",
			Headers = {
				["User-Agent"] = "Roblox/Exploit",
				["Content-Type"] = "application/json",
			},
			Body = jsonData,
		})
	end)

	if success and response then
		if response.Success then
			local decodeSuccess, decodedJsonData = pcall(function()
				return services.HttpService:JSONDecode(response.Body)
			end)

			if decodeSuccess and decodedJsonData then
				if decodedJsonData.Authenticated_Status and decodedJsonData.Authenticated_Status == "Success" then
					return true, "Authenticated"
				else
					local reason = decodedJsonData.Note or "Unknown reason"
					return false, "Authentication failed: " .. reason
				end
			else
				return false, "JSON decode error"
			end
		else
			warn(
				" HTTP request was not successful. Code: "
					.. tostring(response.StatusCode)
					.. " Message: "
					.. response.StatusMessage
			)
			return false, "HTTP request failed: " .. response.StatusMessage
		end
	else
		return false, "Request pcall error"
	end
end

KeyServiceModule.Platoboost = function(ServiceParameters, Key)
	--! configuration
	local service = ServiceParameters.ServiceId -- your service id, this is used to identify your service.
	local secret = ServiceParameters.Secret -- make sure to obfuscate this if you want to ensure security.
	local useNonce = true -- use a nonce to prevent replay attacks and request tampering.

	--! functions
	local requestSending = false
	local hwid = gethwid or function()
		return cloneref(game:GetService("Players")).LocalPlayer.UserId
	end
	local cachedLink, cachedTime = "", 0

	--! pick host
	local host = "https://api.platoboost.app"
	local hostResponse = utilities:Request({
		Url = host .. "/public/connectivity",
		Method = "GET",
	})
	if hostResponse.StatusCode ~= 200 and hostResponse.StatusCode ~= 429 then
		host = "https://api.platoboost.net"
	end

	local function cacheLink()
		if cachedTime + (10 * 60) < os.time() then
			local response = utilities:Request({
				Url = host .. "/public/start",
				Method = "POST",
				Body = PlatobootLibraries.lEncode({
					service = service,
					identifier = PlatobootLibraries.lDigest(hwid()),
				}),
				Headers = {
					["Content-Type"] = "application/json",
					["User-Agent"] = "Roblox/Exploit",
				},
			})

			if response.StatusCode == 200 then
				local decoded = PlatobootLibraries.lDecode(response.Body)

				if decoded.success == true then
					cachedLink = decoded.data.url
					cachedTime = os.time()
					return true, cachedLink
				else
					return false, decoded.message
				end
			elseif response.StatusCode == 429 then
				local msg = "you are being rate limited, please wait 20 seconds and try again."
				return false, msg
			end

			local msg = "Failed to cache link."
			return false, msg
		else
			return true, cachedLink
		end
	end

	cacheLink()

	local generateNonce = function()
		local str = ""
		for _ = 1, 16 do
			str = str .. string.char(math.floor(math.random() * (122 - 97 + 1)) + 97)
		end
		return str
	end

	for _ = 1, 5 do
		local oNonce = generateNonce()
		task.wait(0.2)
		if generateNonce() == oNonce then
			local msg = "platoboost nonce error."
			error(msg)
			return false, msg
		end
	end

	local redeemKey = function(key)
		local nonce = generateNonce()
		local endpoint = host .. "/public/redeem/" .. tostring(service)

		local body = {
			identifier = PlatobootLibraries.lDigest(hwid()),
			key = key,
		}

		if useNonce then
			body.nonce = nonce
		end

		local response = utilities:Request({
			Url = endpoint,
			Method = "POST",
			Body = PlatobootLibraries.lEncode(body),
			Headers = {
				["Content-Type"] = "application/json",
			},
		})

		if response.StatusCode == 200 then
			local decoded = PlatobootLibraries.lDecode(response.Body)

			if decoded.success == true then
				if decoded.data.valid == true then
					if useNonce then
						if decoded.data.hash == PlatobootLibraries.lDigest("true" .. "-" .. nonce .. "-" .. secret) then
							return true
						else
							return false, "failed to verify integrity."
						end
					else
						return true
					end
				else
					return false, "Key is invalid."
				end
			else
				if string.sub(decoded.message, 1, 27) == "unique constraint violation" then
					return false, "you already have an active key, please wait for it to expire before redeeming it."
				else
					return false, decoded.message
				end
			end
		elseif response.StatusCode == 429 then
			return false, "you are being rate limited, please wait 20 seconds and try again."
		else
			return false, "server returned an invalid status code, please try again later."
		end
	end

	local verifyKey = function(key)
		if requestSending == true then
			return false, "A request is already being sent, please slow down."
		else
			requestSending = true
		end

		local nonce = generateNonce()
		local endpoint = host
			.. "/public/whitelist/"
			.. tostring(service)
			.. "?identifier="
			.. PlatobootLibraries.lDigest(hwid())
			.. "&key="
			.. key

		if useNonce then
			endpoint = endpoint .. "&nonce=" .. nonce
		end

		local response = utilities:Request({
			Url = endpoint,
			Method = "GET",
		})

		requestSending = false

		if response.StatusCode == 200 then
			local decoded = PlatobootLibraries.lDecode(response.Body)

			if decoded.success == true then
				if decoded.data.valid == true then
					if useNonce then
						if decoded.data.hash == PlatobootLibraries.lDigest("true" .. "-" .. nonce .. "-" .. secret) then
							return true, ""
						else
							return false, "failed to verify integrity."
						end
					else
						return true
					end
				else
					if string.sub(key, 1, 4) == "KEY_" then
						return true, redeemKey(key)
					else
						return false, "Key is invalid."
					end
				end
			else
				return false, decoded.message
			end
		elseif response.StatusCode == 429 then
			return false, "You are being rate limited, please wait 20 seconds and try again."
		else
			return false, "Server returned an invalid status code, please try again later."
		end
	end

	return verifyKey(Key)
end

KeyServiceModule.Junkie = function(ServiceParameters, Key)
	local Junkie = loadstring(game:HttpGet("https://jnkie.com/sdk/library.lua"))()
	Junkie.service = ServiceParameters.ServiceId
	Junkie.identifier = ServiceParameters.Identifier
	Junkie.provider = ServiceParameters.Provider

	if not Key or Key == "" then
		return false, "No key provided!"
	else
		local validation = Junkie.check_key(Key)
		if validation.valid then
			return true, "Key validated successfully!"
		else
			local errorMsg = validation.message or "Unknown error"

			-- Handle specific backend error messages
			if errorMsg == "KEY_EXPIRED" then
				return false, "Key expired - get a new one"
			elseif errorMsg == "HWID_BANNED" then
				game.Players.LocalPlayer:Kick("Hardware banned")
				return
			elseif errorMsg == "SERVICE_MISMATCH" then
				return false, "Key is for a different service"
			elseif errorMsg == "HWID_MISMATCH" then
				return false, "HWID limit reached"
			else
				return false, "Unknown Error"
			end
		end
	end
end

KeyServiceModule.Luarmor = function(ServiceParameters, Key)
	local APIURL = "https://sdkapi-public.luarmor.net/library.lua"

	local API = loadstring(game.HttpGetAsync and game:HttpGetAsync(APIURL) or services.HttpService:GetAsync(APIURL))()

	API.script_id = ServiceParameters.ServiceId

	local status = API.check_key(Key)
	if status.code == "KEY_VALID" then
		return true, "Whitelisted!"
	elseif status.code == "KEY_HWID_LOCKED" then
		return false, "Key linked to a different HWID. Please reset it using our bot"
	elseif status.code == "KEY_INCORRECT" then
		return false, "Key is wrong or deleted!"
	else
		return false, "Key check failed:" .. status.message .. " Code: " .. status.code
	end
end

KeyServiceModule.String = function(ServiceParameters, Key)
	if ServiceParameters.Key then
		if ServiceParameters.Key == Key then
			return true
		end
	end
	return false
end

return KeyServiceModule
