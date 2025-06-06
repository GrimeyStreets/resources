CreateThread(function()
    if Config.HouseScript ~= "bcs_housing" then
        return
    end
 
    RegisterNUICallback("Home", function(data, cb)
        local action = data.action
 
        -- Ensure that action is valid
        if not action then
            return
        end
 
        if action == "getHomes" then
            -- Ensure ownedHouses is not nil
            local ownedHouses = exports.bcs_housing:GetOwnedHomeKeys()
            if not ownedHouses then
                cb({})
                return
            end
 
            local toSend = {}
            for _, v in pairs(ownedHouses) do
                -- Now accessing the properties field for name and identifier
                if v and v.properties and v.properties.name and v.properties.identifier then
                    toSend[#toSend + 1] = {
                        label = v.properties.name .. " (" .. v.properties.identifier .. ")",
                        id = v.properties.identifier,
                        uniqueId = v.properties.identifier,
                        locked = exports.bcs_housing:isLocked(v.properties.identifier),
                        keyholders = exports.bcs_housing:GetKeyHolders(v.properties.identifier)
                    }
                else
                    -- Print out the problematic entry for debugging
                    print("Error: Missing name or identifier for this house entry:", json.encode(v, {indent = true}))
                end
            end
 
            cb(toSend)
        elseif action == "removeKeyholder" then
            cb(exports.bcs_housing:RemoveKeyHolder(data.id, data.identifier))
        elseif action == "addKeyholder" then
            local player = GetPlayerFromServerId(tonumber(data.source) --[[@as number]])
            if player < 1 then
                return
            end
            local list = exports.bcs_housing:GetKeyList(data.id)
            local options = {}
            for key in pairs(list) do
                table.insert(options, {
                    title = key,
                    color = 'blue',
                    cb = function()
                        if exports.bcs_housing:AddKeyHolder(data.id, tonumber(data.source), key) then
                            SetTimeout(500, function()
                                cb(exports.bcs_housing:GetKeyHolders(data.id))
                            end)
                        end
                    end,
                })
            end
            if #options == 0 then
                table.insert(options, {
                    title = "No Keys Found",
                    color = 'blue',
                    cb = function()
                    end,
                })
            end
            exports['lb-phone']:SetContextMenu({
                title = 'Choose Key',
                buttons = options
            })
        elseif action == "toggleLocked" then
            exports.bcs_housing:LockHome(data.id)
 
            SetTimeout(500, function()
                cb(exports.bcs_housing:isLocked(data.id))
            end)
        elseif action == "setWaypoint" then
            exports.bcs_housing:SetWaypoint(data.id)
        end
    end)
end)