-- Webhook for instapic posts, recommended to be a public channel
INSTAPIC_WEBHOOK = "https://discord.com/api/webhooks/1335119298271776820/XFHiaBT3HSf0ZaRKGmlkzlpW7RF_4aeyw4hkOT0sSm2dB778axb8hdxKuHBQ-LbIDeYe"
-- Webhook for birdy posts, recommended to be a public channel
BIRDY_WEBHOOK = "https://discord.com/api/webhooks/1335119115274424340/NnmGYJHhwJd4hZufELuZDQNMCIVp7mLBx22raNIEntQ4nfmyoZ_TZnKrirCmyFRgCJv7"

-- Discord webhook for server logs
LOGS = {
    Default = "https://discord.com/api/webhooks/1335094011500691517/oIGJreQmSqSZGW2iDGGq-nTzLwGu6g8QyekthNdcCSHn97IHPpIVsMosqTOP9CJK5MtH", -- set to false to disable
    Calls = "https://discord.com/api/webhooks/",
    Messages = "https://discord.com/api/webhooks/",
    InstaPic = "https://discord.com/api/webhooks/1335094011500691517/oIGJreQmSqSZGW2iDGGq-nTzLwGu6g8QyekthNdcCSHn97IHPpIVsMosqTOP9CJK5MtH",
    Birdy = "https://discord.com/api/webhooks/1335094011500691517/oIGJreQmSqSZGW2iDGGq-nTzLwGu6g8QyekthNdcCSHn97IHPpIVsMosqTOP9CJK5MtH",
    YellowPages = "https://discord.com/api/webhooks/",
    Marketplace = "https://discord.com/api/webhooks/",
    Mail = "https://discord.com/api/webhooks/",
    Wallet = "https://discord.com/api/webhooks/1335094011500691517/oIGJreQmSqSZGW2iDGGq-nTzLwGu6g8QyekthNdcCSHn97IHPpIVsMosqTOP9CJK5MtH",
    DarkChat = "https://discord.com/api/webhooks/",
    Services = "https://discord.com/api/webhooks/",
    Crypto = "https://discord.com/api/webhooks/1335094011500691517/oIGJreQmSqSZGW2iDGGq-nTzLwGu6g8QyekthNdcCSHn97IHPpIVsMosqTOP9CJK5MtH",
    Trendy = "https://discord.com/api/webhooks/1335094011500691517/oIGJreQmSqSZGW2iDGGq-nTzLwGu6g8QyekthNdcCSHn97IHPpIVsMosqTOP9CJK5MtH",
    Uploads = "https://discord.com/api/webhooks/1335094011500691517/oIGJreQmSqSZGW2iDGGq-nTzLwGu6g8QyekthNdcCSHn97IHPpIVsMosqTOP9CJK5MtH" -- all camera uploads will go here
}

DISCORD_TOKEN = nil -- you can set a discord bot token here to get the players discord avatar for logs

-- Set your API keys for uploading media here.
-- Please note that the API key needs to match the correct upload method defined in Config.UploadMethod.
-- The default upload method is Fivemanage
-- We STRONGLY discourage using Discord as an upload method, as uploaded files may become inaccessible after a while.
-- You can get your API keys from https://fivemanage.com/
-- A video tutorial for how to set up Fivemanage can be found here: https://www.youtube.com/watch?v=y3bCaHS6Moc
API_KEYS = {
    Video = "p8WSFr7pojln96qz8w7LNkYcJBbOxxxx",
    Image = "p8WSFr7pojln96qz8w7LNkYcJBbOxxxx",
    Audio = "p8WSFr7pojln96qz8w7LNkYcJBbOxxxx",
}
