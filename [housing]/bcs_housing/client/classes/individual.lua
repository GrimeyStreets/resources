local DEFAULT_ZONE_SIZE = vec3(1.5, 1.5, 2.5)

Individual = {}

Individual.__index = Individual

Individual.__newindex = function(self, name, fn)
    rawset(self, name, fn)
end

function Individual:new(home)
    local self = setmetatable({}, Individual)
    self.zones = {}
    self.points = {}
    self:SetEntranceZone(home)
    return self
end

function Individual:Entrance(home)
    CreateThread(function()
        if home.properties.owner then
            debugPrint('[Individual:Entrance]', 'Entrance of owned house ' .. home.properties.owner)
            lib.callback('Housing:server:isOwner', false, function(isOwner)
                debugPrint('[Individual:Entrance]', 'Lock condition', home.properties.locked)
                local boxes = {}
                if not home.properties.locked then
                    HelpText(true, Locale['prompt_enter_home'])
                    table.insert(boxes, {
                        text = {
                            title = Locale['enter_home']
                        },
                        icon = 'door-open',
                        event = "Housing:client:EnterHome",
                        args = { home.identifier }
                    })
                end
                if isOwner or isAgent(home.properties.realestate, 'unlock') then
                    table.insert(boxes, {
                        text = {
                            title = Locale['lock_home'],
                            body = Locale['lock_home_body'],
                        },
                        icon = 'lock',
                        server = true,
                        event = "Housing:server:LockHome",
                        args = { home.identifier }
                    })
                    if isOwner and home.permission.sell then
                        table.insert(boxes, {
                            text = {
                                title = Locale['sell_home'],
                                body = Locale['sell_home_body'],
                            },
                            event = "Housing:client:SellHome",
                            icon = 'banknote',
                            args = { home.identifier }
                        })
                    end
                end
                if not isOwner and home.properties.owner and home.properties.rent and home.properties.rent.isRented then
                    table.insert(boxes, {
                        text = {
                            title = Locale['rent_home']
                        },
                        icon = 'receipt',
                        event = "Housing:client:RentMenu",
                        args = { home.identifier }
                    })
                end
                if home.properties.locked and isOwner then
                    HelpText(true, Locale['prompt_unlock_door'])
                elseif home.properties.locked then
                    HelpText(true, Locale['prompt_enter_home'])
                    if Config.robbery.enable then
                        table.insert(boxes, {
                            text = {
                                title = Locale['lockpick_home'],
                                body = Locale['lockpick_home_body'],
                            },
                            icon = 'lock',
                            event = "Housing:client:StartLockpick",
                            args = { home.identifier }
                        })
                    end
                    table.insert(boxes, {
                        text = {
                            title = Locale['knock_door'],
                        },
                        icon = 'lock',
                        server = true,
                        event = "Housing:server:KnockDoor",
                        args = { home.identifier }
                    })
                    if Config.robbery.enableRaid and isPolice() then
                        table.insert(boxes, {
                            text = {
                                title = Locale['raid_home'],
                                body = Locale['raid_home_body']
                            },
                            icon = 'grab',
                            event = "Housing:client:RaidDoor",
                            args = { home.identifier }
                        })
                    end
                end
                if boxes and #boxes > 0 then
                    while inZone do
                        Wait(2)
                        if IsControlJustReleased(0, 38) then
                            HelpText(false)
                            if home.properties.locked and (isOwner or isAgent(home.properties.realestate, 'unlock')) then
                                TriggerServerEvent('Housing:server:LockHome', home.identifier)
                            else
                                TriggerEvent("Housing:client:CreateMenu", {
                                    title = home.properties.name,
                                    subtitle = Locale['house_entrance_menu'],
                                    boxes = boxes,
                                })
                            end
                            break
                        end
                    end
                    while IsNuiFocused() or busy do
                        Wait(1000)
                    end
                    Wait(200)
                    if inZone then
                        local updatedData = Homes[home.identifier]
                        self:Entrance(updatedData)
                    end
                end
            end, home.identifier)
        else
            -- If home is not owned then else buy prompt
            HelpText(true, Locale['prompt_buy_home'])
            while inZone do
                Wait(2)
                if IsControlJustReleased(0, 38) then
                    HelpText(false)
                    local boxes = {
                        {
                            text = {
                                title = Locale['preview_home']
                            },
                            icon = 'eye',
                            event = "Housing:client:EnterHome",
                            args = { home.identifier, true }
                        }
                    }
                    if not home.configuration.disableBuy then
                        table.insert(boxes, {
                            text = {
                                title = home.properties.payment == 'Rent' and Locale['rent_home'] or
                                    Locale['buy_home']
                            },
                            icon = 'receipt',
                            event = "Housing:client:BuyHome",
                            args = { home.identifier }
                        })
                    end
                    TriggerEvent("Housing:client:CreateMenu", {
                        title = home.properties.name,
                        subtitle = Locale['house_menu'],
                        boxes = boxes
                    })
                    break
                end
            end
            while IsNuiFocused() do
                Wait(1000)
            end
            Wait(200)
            if inZone then
                self:Entrance(Homes[home.identifier])
            end
        end
    end)
end

function Individual:MLOEntrance(home)
    CreateThread(function()
        if not home.properties.owner then
            HelpText(true, Locale['prompt_buy_home'])
            while inZone do
                Wait(2)
                if IsControlJustReleased(0, 38) then
                    HelpText(false)
                    if not home.configuration.disableBuy then
                        TriggerEvent("Housing:client:CreateMenu", {
                            title = home.properties.name,
                            subtitle = Locale['house_menu'],
                            boxes = {
                                {
                                    text = {
                                        title = home.properties.payment == 'Rent' and Locale['rent_home'] or
                                            Locale['buy_home']
                                    },
                                    icon = 'receipt',
                                    event = "Housing:client:BuyHome",
                                    args = { home.identifier }
                                }
                            }
                        })
                    else
                        Notify(Locale['housing'], 'This house cannot be bought!', 'error', 3000)
                    end
                    break
                end
            end
        elseif home.properties.owner then
            local isOwner = home:isOwner()
            if not isOwner and not (home.properties.rent and home.properties.rent.isRented) then
                return
            end
            HelpText(true, Locale['prompt_home_menu'])
            while inZone do
                Wait(2)
                if IsControlJustReleased(0, 38) then
                    HelpText(false)
                    local isOwner = home:isOwner()
                    local boxes = {}
                    if isOwner and home.permission.sell then
                        table.insert(boxes, {
                            text = {
                                title = Locale['sell_home'],
                                body = Locale['sell_home_body'],
                            },
                            event = "Housing:client:SellHome",
                            icon = 'banknote',
                            args = { home.identifier }
                        })
                    end
                    if not home:isKeyOwner() and home.properties.rent and home.properties.rent.isRented then
                        table.insert(boxes, {
                            text = {
                                title = Locale['rent_home']
                            },
                            icon = 'receipt',
                            event = "Housing:client:RentMenu",
                            args = { home.identifier }
                        })
                    end
                    TriggerEvent("Housing:client:CreateMenu", {
                        title = home.properties.name,
                        subtitle = Locale['house_menu'],
                        boxes = boxes
                    })
                    break
                end
            end
        end
    end)
end

function Individual:DestroyZone(name)
    if self.zones.entranceZone then
        self.zones.entranceZone:remove()
    elseif Config.target then
        RemoveTargetZone('entrance-' .. name)
    end
    if Config.EnableMarkers.enable and self.points.entrance then
        self.points.entrance:remove()
    end
end

function Individual:SetEntranceZone(home)
    local entry = home.properties.entry
    if Config.target then
        AddTargetBoxZone('entrance-' .. home.properties.name, {
            coords = ToVector3(entry),
            length = 2.0,
            width = 2.0,
            heading = entry.w,
            debugPoly = Config.debug,
            minZ = entry.z - 1.0,
            maxZ = entry.z + 2.0
        }, {
            options = {
                {
                    label = Locale['buy_home'],
                    icon = 'fa-solid fa-receipt',
                    action = function()
                        TriggerEvent("Housing:client:BuyHome", home.identifier)
                    end,
                    canInteract = function()
                        return not home.properties.owner and not home.configuration.disableBuy
                    end,
                },
                {
                    label = Locale['rent_home'],
                    icon = 'fa-solid fa-receipt',
                    action = function()
                        TriggerEvent("Housing:client:RentMenu", home.identifier)
                    end,
                    canInteract = function()
                        return home.properties.rent and home.properties.rent.isRented and home.properties.owner and
                            not home:isKeyOwner() and not home:isTenant() and not home.properties.rent.tenant
                    end,
                },
                {
                    label = Locale['lockpick_home'],
                    icon = 'fa-solid fa-lock',
                    action = function()
                        TriggerEvent("Housing:client:StartLockpick", home.identifier)
                    end,
                    canInteract = function()
                        return Config.robbery.enable and home.properties.locked and not home:isKeyOwner() and
                            not home:isTenant() and
                            home.properties.type ~= 'mlo'
                    end
                },
                {
                    label = Locale['knock_door'],
                    icon = 'fa-solid fa-lock',
                    action = function()
                        TriggerServerEvent("Housing:server:KnockDoor", home.identifier)
                    end,
                    canInteract = function()
                        return home.properties.locked and not home:isKeyOwner() and not home:isTenant() and
                            home.properties.type ~= 'mlo'
                    end
                },
                {
                    label = Locale['raid_home'],
                    icon = 'fa-solid fa-hand-fist',
                    action = function()
                        TriggerEvent("Housing:client:RaidDoor", home.identifier)
                    end,
                    canInteract = function()
                        return home.properties.locked and not home:isKeyOwner() and not home:isTenant() and
                            Config.robbery.enableRaid and
                            isPolice() and home.properties.type ~= 'mlo'
                    end
                },
                {
                    icon = "fas fa-door-open",
                    label = Locale['enter_home'],
                    action = function()
                        TriggerEvent('Housing:client:EnterHome', home.identifier)
                    end,
                    canInteract = function()
                        return not home.properties.locked and home.properties.type ~= 'mlo' and home.properties.owner
                    end
                },
                {
                    icon = "fas fa-eye",
                    label = Locale['preview_home'],
                    action = function()
                        TriggerEvent('Housing:client:EnterHome', home.identifier, true)
                    end,
                    canInteract = function()
                        return not home.properties.owner and home.properties.type ~= 'mlo'
                    end
                },
                {
                    label = Locale['unlock_home'],
                    icon = "fa-solid fa-lock",
                    action = function()
                        TriggerServerEvent("Housing:server:LockHome", home.identifier)
                    end,
                    canInteract = function()
                        return Homes[home.identifier].properties.locked and
                            (home:isKeyOwner() or home:isTenant() or isAgent(home.properties.realestate, 'unlock')) and
                            home.properties.type ~= 'mlo'
                    end
                },
                {
                    label = Locale['lock_home'],
                    icon = "fa-solid fa-lock",
                    action = function()
                        TriggerServerEvent("Housing:server:LockHome", home.identifier)
                    end,
                    canInteract = function()
                        return not Homes[home.identifier].properties.locked and
                            (home:isKeyOwner() or home:isTenant() or isAgent(home.properties.realestate, 'unlock')) and
                            home.properties.type ~= 'mlo'
                    end
                },
                {
                    label = Locale['sell_home'],
                    icon = 'fa-solid fa-receipt',
                    action = function()
                        TriggerEvent('Housing:client:SellHome', home.identifier)
                    end,
                    canInteract = function()
                        return home:isOwner() and Homes[home.identifier].permission.sell
                    end
                }
            },
            distance = 3.5
        })
    else
        self.zones.entranceZone = lib.zones.box({
            name = 'entrance-' .. home.properties.name,
            coords = ToVector3(entry),
            size = DEFAULT_ZONE_SIZE,
            rotation = entry.w,
            debug = Config.debug,
            onEnter = function()
                inZone = true
                if home.properties.type == 'shell' or home.properties.type == 'ipl' then
                    self:Entrance(home)
                elseif home.properties.type == 'mlo' then
                    self:MLOEntrance(home)
                end
            end,
            onExit = ExitZone
        })
    end
    if Config.EnableMarkers.enable then
        self.points.entrance = lib.points.new({
            coords = ToVector3(entry),
            distance = 3,
            nearby = function()
                if (not home.properties.owner and home.properties.type == 'mlo') or home.properties.type ~= 'mlo' then
                    DrawMarker(Config.EnableMarkers.type, ToVector3(entry), 0.0, 0.0, 0.0, 0,
                        0.0, 0.0, Config.EnableMarkers.size.x, Config.EnableMarkers.size.y,
                        Config.EnableMarkers.size.z, Config.EnableMarkers.color.r,
                        Config.EnableMarkers.color.g, Config.EnableMarkers.color.b, 100, false, true, 2,
                        false, false, false, false)
                end
            end
        })
    end
end
