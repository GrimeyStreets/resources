Ped = PlayerPedId()
CoordsPed = GetEntityCoords(Ped)
UserServerId = GetPlayerServerId(PlayerId())

Citizen.CreateThread(function()
    while true do
        Ped = PlayerPedId()
        CoordsPed = GetEntityCoords(Ped)
        Wait(600)
    end
end)


if Config.BlipOptions.BlipsEnabled and (Config.EnableScrapyard == nil or Config.EnableScrapyard) then 
	Citizen.CreateThread(function()
		Wait(100)
		for scrapIdx, scrapyardPlace in pairs(ScrapyardConfig.places) do
			local blip = AddBlipForCoord(scrapyardPlace.npcCoords.xyz)
			SetBlipSprite(blip, Config.BlipOptions.ScrapyardBlipSprite)
			SetBlipDisplay(blip, 4)
			SetBlipScale(blip, Config.BlipOptions.ScrapyardBlipScale)
			SetBlipColour(blip, Config.BlipOptions.ScrapyardBlipColour)
			SetBlipAsShortRange(blip, true)
			BeginTextCommandSetBlipName("STRING")
			AddTextComponentString(_U("scrapyard"))
			EndTextCommandSetBlipName(blip)
		end
	end)
end

function GetClosestScrapyardPlace()
	local closestScrapyardPlace = nil
	local closestScrapIdx = nil

	if not CoordsPed then
		return
	end

	for scrapIdx, scrapyardPlace in pairs(ScrapyardConfig.places) do
		if not closestScrapyardPlace then
			if #(CoordsPed - scrapyardPlace.vehicleDelivery) <= 50.0 then
				closestScrapyardPlace = scrapyardPlace
				closestScrapIdx = scrapIdx
			end
		else
			if #(CoordsPed - scrapyardPlace.vehicleDelivery) < #(CoordsPed - closestScrapyardPlace.vehicleDelivery) then
				closestScrapyardPlace = scrapyardPlace
				closestScrapIdx = scrapIdx
			end
		end
	end

	return closestScrapyardPlace, closestScrapIdx
end