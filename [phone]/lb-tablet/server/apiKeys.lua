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

LOG_WEBHOOKS = {
    Default = "https://discord.com/api/webhooks/1335118764538073128/Q3wKwqSlL10vnDGVt_A27iHkiZbGv_HFTUlzVjasoW1oKRnzmit4jszMgCiVPplXH8Se", -- set to false to disable
    Police = "https://discord.com/api/webhooks/1335118506450096128/WExB19DBMBRCYST7M2DcTaCc7omT2rUlKv-tbpYXpt0n67LYZQkQrzivq3ukaeuUe8bC",
    Ambulance = "https://discord.com/api/webhooks/1335118213213847653/EIr6maXBhrf2k_dOcECkcEwvOADg_-QQbZkUXAqPC7ecvRzU-NqdW1n7ezuZSFKvhZpj",
    Dispatch = "https://discord.com/api/webhooks/1335118764538073128/Q3wKwqSlL10vnDGVt_A27iHkiZbGv_HFTUlzVjasoW1oKRnzmit4jszMgCiVPplXH8Se"
}

DISCORD_TOKEN = nil -- you can set a discord bot token here to get the players discord avatar for logs
