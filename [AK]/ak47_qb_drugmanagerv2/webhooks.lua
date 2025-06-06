Config.AuthorTitle   = 'Ak47 Drugmanager V2'
Config.AvatarUrl     = ''
Config.Webhooks = {
    npcsell = {
        webhook = "https://discord.com/api/webhooks/1280152249225576512/_FFwyzP09uqkGoXTEyeQd0IHAMe0PV3_GWWewdHROc4_h3E21GBySuAQ9kdjB0CJj0cl",
        label = "NPC Sell",
    },
    dealersell = {
        webhook = "https://discord.com/api/webhooks/1280152249225576512/_FFwyzP09uqkGoXTEyeQd0IHAMe0PV3_GWWewdHROc4_h3E21GBySuAQ9kdjB0CJj0cl",
        label = "Dealer Sell",
    },
    dealerbuy = {
        webhook = "https://discord.com/api/webhooks/1280152249225576512/_FFwyzP09uqkGoXTEyeQd0IHAMe0PV3_GWWewdHROc4_h3E21GBySuAQ9kdjB0CJj0cl",
        label = "Dealer Buy",
    },
    collect = {
        webhook = "https://discord.com/api/webhooks/1280152249225576512/_FFwyzP09uqkGoXTEyeQd0IHAMe0PV3_GWWewdHROc4_h3E21GBySuAQ9kdjB0CJj0cl",
        label = "Collect",
    },
    process = {
        webhook = "https://discord.com/api/webhooks/1280152249225576512/_FFwyzP09uqkGoXTEyeQd0IHAMe0PV3_GWWewdHROc4_h3E21GBySuAQ9kdjB0CJj0cl",
        label = "Process",
    },
    collectfield = {
        webhook = "https://discord.com/api/webhooks/1280152249225576512/_FFwyzP09uqkGoXTEyeQd0IHAMe0PV3_GWWewdHROc4_h3E21GBySuAQ9kdjB0CJj0cl",
        label = "Collect Field",
    },
    cornerboyadd = {
        webhook = "https://discord.com/api/webhooks/1280152249225576512/_FFwyzP09uqkGoXTEyeQd0IHAMe0PV3_GWWewdHROc4_h3E21GBySuAQ9kdjB0CJj0cl",
        label = "Corner Boy Add Item",
    },
    cornerboytake = {
        webhook = "https://discord.com/api/webhooks/1280152249225576512/_FFwyzP09uqkGoXTEyeQd0IHAMe0PV3_GWWewdHROc4_h3E21GBySuAQ9kdjB0CJj0cl",
        label = "Corner Take Profit",
    },
}

SendLog = function(type, logData)
    CreateThread(function()
        local webhook = Config.Webhooks[type] and Config.Webhooks[type].webhook
        if not webhook then return end
        local embeds = {}

        if type == 'npcsell' then
            embeds = {
                {
                    title = Config.Webhooks[type].label,
                    footer = { text = os.date('%c') },
                    thumbnail = {
                        url = Config.AvatarUrl,
                        width = 100,
                    },
                    fields = {
                        {
                            name = '',
                            value = string.format("**ZONE: **%s\n**IDENTIFIER: **%s\n**ITEM: **%s\n**AMOUNT: **%s\n**EARMED: **$%s", logData.zone, logData.identifier, logData.itemLabel, logData.amount, logData.earned),
                            inline = true
                        }
                    }
                }
            }
        elseif type == 'dealersell' then
            embeds = {
                {
                    title = Config.Webhooks[type].label,
                    footer = { text = os.date('%c') },
                    thumbnail = {
                        url = Config.AvatarUrl,
                        width = 100,
                    },
                    fields = {
                        {
                            name = '',
                            value = string.format("**DEALER: **%s\n**IDENTIFIER: **%s\n**ITEM: **%s\n**AMOUNT: **%s\n**EARMED: **$%s", logData.dealer, logData.identifier, logData.itemLabel, logData.amount, logData.earned),
                            inline = true
                        },
                    }
                }
            }
        elseif type == 'dealerbuy' then
            embeds = {
                {
                    title = Config.Webhooks[type].label,
                    footer = { text = os.date('%c') },
                    thumbnail = {
                        url = Config.AvatarUrl,
                        width = 100,
                    },
                    fields = {
                        {
                            name = '',
                            value = string.format("**DEALER: **%s\n**IDENTIFIER: **%s\n**ITEM: **%s\n**AMOUNT: **%s\n**PAID: **$%s", logData.dealer, logData.identifier, logData.itemLabel, logData.amount, logData.paid),
                            inline = true
                        },
                    }
                }
            }
        elseif type == 'collect' or type == 'process' then
            embeds = {
                {
                    title = Config.Webhooks[type].label,
                    footer = { text = os.date('%c') },
                    thumbnail = {
                        url = Config.AvatarUrl,
                        width = 100,
                    },
                    fields = {
                        {
                            name = '',
                            value = string.format("**UID: **%s\n**IDENTIFIER: **%s\n**ITEM: **%s\n**AMOUNT: **%s", logData.uid, logData.identifier, logData.itemLabel, logData.amount),
                            inline = true
                        },
                    }
                }
            }
        elseif type == 'collectfield' then
            embeds = {
                {
                    title = Config.Webhooks[type].label,
                    footer = { text = os.date('%c') },
                    thumbnail = {
                        url = Config.AvatarUrl,
                        width = 100,
                    },
                    fields = {
                        {
                            name = '',
                            value = string.format("**FIELD: **%s\n**IDENTIFIER: **%s\n**ITEM: **%s\n**AMOUNT: **%s", logData.name, logData.identifier, logData.itemLabel, logData.amount),
                            inline = true
                        },
                    }
                }
            }
        elseif type == 'cornerboyadd' then
            embeds = {
                {
                    title = Config.Webhooks[type].label,
                    footer = { text = os.date('%c') },
                    thumbnail = {
                        url = Config.AvatarUrl,
                        width = 100,
                    },
                    fields = {
                        {
                            name = '',
                            value = string.format("**NAME: **%s\n**IDENTIFIER: **%s\n**ITEM: **%s\n**AMOUNT: **%s", logData.name, logData.identifier, logData.itemLabel, logData.amount),
                            inline = true
                        },
                    }
                }
            }
        elseif type == 'cornerboytake' then
            embeds = {
                {
                    title = Config.Webhooks[type].label,
                    footer = { text = os.date('%c') },
                    thumbnail = {
                        url = Config.AvatarUrl,
                        width = 100,
                    },
                    fields = {
                        {
                            name = '',
                            value = string.format("**NAME: **%s\n**IDENTIFIER: **%s\n**TAKE: **$%s", logData.name, logData.identifier, logData.take),
                            inline = true
                        },
                    }
                }
            }
        end

        SendMsg(webhook, embeds)
    end)
end

SendMsg = function(webhook, embeds)
    PerformHttpRequest(webhook, function() end, 'POST', json.encode({
        username = Config.AuthorTitle, 
        embeds = embeds
    }), {['Content-Type'] = 'application/json'})
end