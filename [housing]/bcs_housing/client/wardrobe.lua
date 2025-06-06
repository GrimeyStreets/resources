if GetResourceState("ox_lib") == "started" then
	lib.registerContext({
		id = "wardrobe_menu",
		title = Locale["wardrobe"],
		onExit = function() end,
		options = {
			{
				title = Locale["change_outfit"],
				description = Locale["change_description"],
				event = "Housing:wardrobe_change",
			},
			{
				title = Locale["delete_outfit"],
				description = Locale["delete_description"],
				event = "Housing:wardrobe_delete",
			},
			{
				title = Locale["save_outfit"],
				event = "Housing:saveOutfit",
			},
		},
	})
end

RegisterNetEvent('Housing:client:CreateWardrobe', function()
	if not CurrentHome then return end
	local home = Homes[CurrentHome.identifier]

	if home then
		if home.configuration.wardrobes == #home.properties.wardrobes then
			return Notify(Locale['housing'], Locale['max_wardrobes'], 'error', 3000)
		end
		local input = lib.inputDialog('Wardrobe Name', { { label = 'Name', required = true } })
		if input and input[1] then
			HelpText(true, Locale['prompt_add_wardrobe'])
			repeat
				local hit, _, coords = lib.raycast.cam()
				if hit then
					DrawMarker(1, coords.x, coords.y, coords.z, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 1.5, 1.5, 1.5, 255, 0, 0,
						100,
						false, false, 2, false, nil, nil, false)
				end
				if IsControlJustPressed(0, 38) and hit then
					wardrobe = {
						name = input[1],
						coords = vec4(coords.x, coords.y, coords.z,
							GetEntityHeading(cache.ped))
					}
					HelpText(false)
				end

				if IsControlJustReleased(0, 73) then
					HelpText(false)
					break
				end
			until wardrobe
			TriggerServerEvent('Housing:server:AddWardrobe',
				{ homeId = CurrentHome.identifier, aptId = LocalPlayer.state.CurrentApartment }, wardrobe)
		end
	end
end)

RegisterNUICallback('createWardrobe', function(data, cb)
	local wardrobe
	local home = Homes[data.identifier]

	if home and CurrentHome and CurrentHome.identifier == home.identifier then
		if home.configuration.wardrobes == #home.properties.wardrobes then
			return Notify(Locale['housing'], Locale['max_wardrobes'], 'error', 3000)
		end
		ToggleNuiFrame(false)
		HelpText(true, Locale['prompt_add_wardrobe'])
		repeat
			local hit, _, coords = lib.raycast.cam()
			if hit then
				DrawMarker(1, coords.x, coords.y, coords.z, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 1.5, 1.5, 1.5, 255, 0, 0, 100,
					false, false, 2, false, nil, nil, false)
			end
			if IsControlJustPressed(0, 38) and hit then
				wardrobe = { name = data.name, coords = vec4(coords.x, coords.y, coords.z, GetEntityHeading(cache.ped)) }
				HelpText(false)
			end

			if IsControlJustReleased(0, 73) then
				HelpText(false)
				break
			end
		until wardrobe
		TriggerServerEvent('Housing:server:AddWardrobe',
			{ homeId = data.identifier, aptId = LocalPlayer.state.CurrentApartment }, wardrobe)
	else
		Notify(Locale['housing'], Locale['incorrect_home'], 'error', 3000)
	end
	cb(1)
end)

RegisterNUICallback('getHomeWardrobes', function(homeId, cb)
	local home = Homes[homeId]
	if home then
		local wardrobes = home.properties.wardrobes
		if home.properties.complex == 'Apartment' and LocalPlayer.state.CurrentApartment then
			wardrobes = Apartments[homeId]:GetWardrobes()
		end
		cb(wardrobes)
	end
end)

RegisterNUICallback('deleteWardrobe', function(data, cb)
	local home = Homes[data.identifier]
	if home then
		TriggerServerEvent('Housing:server:DeleteWardrobe',
			{ homeId = data.identifier, aptId = LocalPlayer.state.CurrentApartment }, data.name)
	end
	cb(1)
end)

RegisterNetEvent('Housing:client:DeleteWardrobe', function(id, name)
	local homeId, aptId = GetHomeAptId(id)
	local home = Homes[homeId]
	if home then
		home:RemoveWardrobe(name, aptId)
	end
end)

RegisterNetEvent('Housing:client:AddWardrobe', function(id, wardrobe)
	local homeId, aptId = GetHomeAptId(id)
	local home = Homes[homeId]
	if home then
		home:AddWardrobe(wardrobe, aptId)
	end
end)

AddEventHandler("Housing:saveOutfit", function()
	lib.hideContext()
	local name = RequestKeyboardInput(Locale["outfit_name"], Locale["outfit_desc"], 16)
	if name then
		if IsResourceStarted("fivem-appearance") or IsResourceStarted("illenium-appearance") then
			local appearance
			if IsResourceStarted("fivem-appearance") then
				appearance = exports["fivem-appearance"]:getPedAppearance(PlayerPedId())
			else
				appearance = exports["illenium-appearance"]:getPedAppearance(PlayerPedId())
			end
			TriggerServerEvent("Housing:server:SaveOutfit", CurrentHome.identifier, name, appearance)
			Notify(Locale["wardrobe"], Locale["saved_outfit"], "success", 2500)
		else
			TriggerEvent("skinchanger:getSkin", function(skin)
				TriggerServerEvent("Housing:server:SaveOutfit", CurrentHome.identifier, name, skin)
				Notify(Locale["wardrobe"], Locale["saved_outfit"], "success", 2500)
			end)
		end
	end
end)

AddEventHandler("Housing:wardrobe_change", function()
	lib.hideContext()
	lib.showMenu("wardrobe_change")
end)

AddEventHandler("Housing:wardrobe_delete", function()
	lib.hideContext()
	lib.showMenu("wardrobe_delete")
end)

function OpenWardrobe(identifier)
	if IsResourceStarted('nf-skin') then
		TriggerEvent('nf-skin:client:openOutfitMenu')
	elseif IsResourceStarted('bl_appearance') then
		exports.bl_appearance:OpenMenu('outfits')
	elseif IsResourceStarted('izzy-appearance') then
		TriggerEvent('izzy-appearance:client:openClothingMenu')
	elseif IsResourceStarted('codem-appearance') then
		TriggerEvent('codem-apperance:OpenWardrobe')
	elseif IsResourceStarted('hex_clothing') then
		TriggerEvent('hex_clothing:openOutfitMenu')
	elseif IsResourceStarted('rcore_clothes') then
		TriggerEvent("rcore_clothes:openOutfits")
	elseif IsResourceStarted('onex-creation') then
		TriggerEvent("onex-creation:openOutfitMenu")
	elseif IsResourceStarted('rcore_clothing') then
		TriggerEvent('rcore_clothing:openChangingRoom')
	elseif Config.framework == 'QB' and not IsResourceStarted("illenium-appearance") then
		TriggerServerEvent("InteractSound_SV:PlayOnSource", "Clothes1", 0.4)
		TriggerEvent("qb-clothing:client:openOutfitMenu")
	elseif IsResourceStarted("illenium-appearance") then
		TriggerEvent("illenium-appearance:client:openOutfitMenu")
	else
		lib.callback("Housing:server:GetWardrobe", false, function(list)
			if GetResourceState("ox_lib") == "started" then
				local options = {}
				for i = 1, #list, 1 do
					table.insert(options, { label = list[i] })
				end
				if #options == 0 then
					table.insert(options, { label = "No saved outfit" })
				end
				lib.registerMenu({
					id = "wardrobe_change",
					title = Locale["wardrobe"],
					position = "top-right",
					onSideScroll = function(selected, scrollIndex, args) end,
					onSelected = function(selected, scrollIndex, args) end,
					onClose = function() end,
					options = options,
				}, function(selected, scrollIndex, args)
					if #options > 0 then
						lib.callback("Housing:server:GetOutfit", false, function(clothes)
							if IsResourceStarted("fivem-appearance") or IsResourceStarted("illenium-appearance") then
								if not clothes.model then
									clothes.model = "mp_m_freemode_01"
								end
								if IsResourceStarted("fivem-appearance") then
									exports["fivem-appearance"]:setPlayerAppearance(clothes)
								else
									TriggerEvent('illenium-appearance:client:changeOutfit', clothes)
								end
								Notify(Locale["wardrobe"], Locale["loaded_outfit"], "success", 2500)
							else
								TriggerEvent("skinchanger:getSkin", function(skin)
									TriggerEvent("skinchanger:loadClothes", skin, clothes)
									TriggerEvent("esx_skin:setLastSkin", skin)

									TriggerEvent("skinchanger:getSkin", function(skin)
										TriggerServerEvent("esx_skin:save", skin)
										Notify(Locale["wardrobe"], Locale["loaded_outfit"], "success", 2500)
									end)
								end)
							end
						end, identifier, options[selected].label)
					end
				end)
				lib.registerMenu({
					id = "wardrobe_delete",
					title = Locale["wardrobe"],
					position = "top-right",
					onSideScroll = function(selected, scrollIndex, args) end,
					onSelected = function(selected, scrollIndex, args) end,
					onClose = function() end,
					options = options,
				}, function(selected, scrollIndex, args)
					if #options > 0 then
						TriggerServerEvent("Housing:server:DeleteOutfit", identifier, options[selected].label)
					end
				end)
				lib.showContext("wardrobe_menu")
			end
		end, identifier)
	end
end

function WardrobePrompt(home)
	CreateThread(function()
		if home:isKeyOwner() or home:isTenant('wardrobe') then
			HelpText(true, Locale["prompt_open_wardrobe"])
			while inZone do
				Wait(2)
				if IsControlJustReleased(0, 38) then
					HelpText(false)
					OpenWardrobe(home.identifier)
					break
				end
			end
			while IsNuiFocused() do
				Wait(100)
			end
			Wait(1000)
			if inZone then
				WardrobePrompt(home)
			end
		end
	end)
end
