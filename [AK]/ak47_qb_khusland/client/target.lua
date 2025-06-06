local targets = {}
local targetting = false

Citizen.CreateThread(function()
    for i, v in pairs(Config.StockItems) do
        local target = exports[Config.TargetScript]:AddCircleZone("FarmingMultiItemskhusland"..i, v.pos, v.size, {
            name = "FarmingMultiItemskhusland"..i,
            debugPoly = Config.DebugPoly,
            useZ = true
            }, {
            options = {
                {
                    icon = 'fa-solid fa-cookie-bite',
                    label = _U('stock_farm_multi_target'),
                    canInteract = function(entity)
                        return PlayerData and PlayerData.job and PlayerData.job.name == 'khusland'
                    end,
                    action = function()
                        openFarmGetMultiItem(i)
                    end,
                },
            },
            distance = 2.0
        })
        table.insert(targets, target)
    end

    for i, v in pairs(Config.Shop.edibles) do
        local target = exports[Config.TargetScript]:AddBoxZone("khuslandEdibles"..i, v.pos, v.boxSize.x, v.boxSize.y, {
            name = "khuslandEdibles"..i,
            heading = v.boxHeading,
            debugPoly = Config.DebugPoly,
            minZ = v.pos.z,
            maxZ = v.pos.z + 0.6,
            }, {
            options = {
                {
                    icon = 'fa-solid fa-plate-wheat',
                    label = _U('eat_edible'),
                    canInteract = function()
                        CreateThread(function()
                            local timer = GetGameTimer()
                            while GetGameTimer() - timer < 2000 do
                                Wait(0)
                                DrawTxt3D(vector3(v.pos.x, v.pos.y, v.pos.z + 0.8), v.item.label)
                            end
                        end)
                        return true
                    end,
                    action = function()
                        local data = lib.callback.await('ak47_qb_khusland:getedableinfo', nil, v.item.name)
                        if data.stock > 0 then
                            TriggerServerEvent('ak47_qb_khusland:tryeat', i)
                        else
                            TriggerEvent('ak47_qb_khusland:notify', _U('nostock'), 'error')
                        end
                    end,
                },
                {
                    icon = 'fa-solid fa-basket-shopping',
                    label = _U('buy_edible'),
                    action = function()
                        local data = lib.callback.await('ak47_qb_khusland:getedableinfo', nil, v.item.name)
                        if data.stock > 0 then
                            local input = lib.inputDialog(_U('buyinput', v.item.label, data.price), {
                                {type = 'number', label = _U('amount', data.stock), min = 1, max = data.stock, default = 1},
                                {type = 'select', label = _U('paymenttype'), options = {
                                    {label = _U('cash'), value = 'cash'},
                                    {label = _U('card'), value = 'bank'},
                                }, default = 'cash'},
                            })
                            TriggerServerEvent('ak47_qb_khusland:buyedible', v.item.name, input[1], input[2])
                        else
                            TriggerEvent('ak47_qb_khusland:notify', _U('nostock'), 'error')
                        end
                    end,
                },
            },
            distance = 3.5
        })
        table.insert(targets, target)
    end

    for i, v in pairs(Config.Shop.sell_coords) do
        local target = exports[Config.TargetScript]:AddCircleZone("khuslandSell"..i, v.pos, v.radius, {
            name = "khuslandSell"..i,
            debugPoly = Config.DebugPoly,
            useZ = true
            }, {
            options = {
                {
                    icon = 'fa-solid fa-cookie-bite',
                    label = _U('press_to_open_target'),
                    action = function()
                        TriggerServerEvent('ak47_qb_khusland:openMarket', i)
                    end,
                },
            },
            distance = 1.5
        })
        table.insert(targets, target)
    end

    local target = exports[Config.TargetScript]:AddCircleZone("khuslandSellManagement", Config.Shop.management, 1.1, {
        name = "khuslandSellManagement",
        debugPoly = Config.DebugPoly,
        useZ = true
        }, {
        options = {
            {
                type = 'server',
                event = 'ak47_qb_khusland:openmanagement',
                icon = 'fa-solid cash-register',
                label = _U('open_management'),
                canInteract = function(entity)
                    return PlayerData and PlayerData.job and PlayerData.job.name == 'khusland' and PlayerData.job.grade.level >= Config.ManagementRank.stock
                end,
            },
        },
        distance = 2.0
    })
    table.insert(targets, target)

    for i, v in pairs(Config.ProcessLocations) do
        local target = exports[Config.TargetScript]:AddCircleZone("khuslandProcess"..i, vector3(v.x, v.y, v.z), 1.0, {
            name = "khuslandProcess"..i,
            debugPoly = Config.DebugPoly,
            useZ = true
            }, {
            options = {
                {
                    icon = 'fa-solid fa-cookie-bite',
                    label = _U('open_process_target'),
                    canInteract = function(entity)
                        return PlayerData and PlayerData.job and PlayerData.job.name == 'khusland'
                    end,
                    action = function()
                        TriggerServerEvent('ak47_qb_khusland:openMarketProcess', i)
                    end,
                },
            },
            distance = 2.0
        })
        table.insert(targets, target)
    end

    for i, v in pairs(Config.FarmingItems) do
        local target = exports[Config.TargetScript]:AddCircleZone("khuslandFarmingItems"..i, v.pos, 1.5, {
            name = "khuslandFarmingItems"..i,
            debugPoly = Config.DebugPoly,
            useZ = true
            }, {
            options = {
                {
                    icon = 'fa-solid fa-box',
                    label = v.msgtarget,
                    canInteract = function(entity)
                        return PlayerData and PlayerData.job and PlayerData.job.name == 'khusland'
                    end,
                    action = function()
                        openFarmGetItem(i, FarmingItems[i])
                    end,
                },
            },
            distance = 2.0
        })
        table.insert(targets, target)
    end

    local targetting = false
    for i, v in pairs(Config.Hookah) do
        local target = exports[Config.TargetScript]:AddCircleZone("khuslandHookah"..i, v.pos, v.size, {
            name = "khuslandHookah"..i,
            debugPoly = Config.DebugPoly,
            useZ = true
            }, {
            options = {
                {
                    icon = 'fa-solid fa-bong',
                    label = _U('session', v.price),
                    canInteract = function(entity)
                        CreateThread(function()
                            local timer = GetGameTimer()
                            while GetGameTimer() - timer < 2000 do
                                Wait(0)
                                DrawTxt3D(vector3(v.pos.x, v.pos.y, v.pos.z + 0.8), _U('available', Config.Hookah[i].availablePuff, Config.Hookah[i].maxPuff))
                            end
                        end)
                        return true
                    end,
                    action = function()
                        TriggerServerEvent('ak47_qb_khusland:canstartpuff', i)
                    end,
                },
                {
                    icon = 'fa-solid fa-recycle',
                    label = _U('refill'),
                    canInteract = function(entity)
                        return PlayerData and PlayerData.job and PlayerData.job.name == 'khusland'
                    end,
                    action = function()
                        TriggerServerEvent('ak47_qb_khusland:refillHookah', i)
                    end,
                },
            },
            distance = 2.5
        })
        table.insert(targets, target)
    end

    for i, v in pairs(Config.Bar) do
        for j, k in pairs(v.items) do
            local target = exports[Config.TargetScript]:AddBoxZone("khuslandDrink"..i..j, k.pos, k.zone.size.x, k.zone.size.y, {
                name = "khuslandDrink"..i..j,
                heading = k.zone.heading,
                debugPoly = Config.DebugPoly,
                minZ = k.pos.z,
                maxZ = k.pos.z + k.zone.size.z,
                }, {
                options = {
                    {
                        icon = 'fa-solid fa-wine-glass',
                        label = v.label,
                        action = function()
                            OpenDrinkMenu(i, v, j, k)
                        end,
                    },
                    {
                        icon = 'fa-solid fa-fill',
                        label = _U('refill'),
                        canInteract = function()
                            return PlayerData.job and PlayerData.job.name == 'khusland'
                        end,
                        action = function()
                            OpenRefillMenu(i, v, j, k)
                        end,
                    },
                },
                distance = 3.5
            })
            table.insert(targets, target)
        end       
    end

    local target = exports[Config.TargetScript]:AddBoxZone("khuslanddance", Config.Dance.position, 0.5, 0.5, {
        name = "khuslanddance",
        heading = 0.0,
        debugPoly = Config.DebugPoly,
        minZ = Config.Dance.position.z,
        maxZ = Config.Dance.position.z + 3.0,
        }, {
        options = {
            {
                icon = 'fa-solid fa-hand',
                label = _U('startdance'),
                canInteract = function()
                    return PlayerData and PlayerData.job and PlayerData.job.name == 'khusland' and PlayerData.job.grade.level == 1
                end,
                action = function()
                    Dance()
                end,
            },
        },
        distance = 3.5
    })
    table.insert(targets, target)
end)

AddEventHandler('onResourceStop', function(resourceName)
    if resourceName == GetCurrentResourceName() then
        for i, v in pairs(targets) do
            if GetResourceState('ox_target') == 'started' then
                exports[Config.TargetScript]:RemoveZone(v)
            else
                exports[Config.TargetScript]:RemoveZone(v.name)
            end
        end
    end
end)
