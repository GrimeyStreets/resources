fx_version 'cerulean'
game 'gta5'
author 'MenanAk47'
version '1.2'

client_scripts{
    'config.lua',
    'client/utils.lua',
    'client/main.lua',

    'locales/locale.lua',
    'locales/en.lua',
}

server_scripts{
    'config.lua',
    'server/utils.lua',
    'server/main.lua',

    'locales/locale.lua',
    'locales/en.lua',
}

escrow_ignore {
    "INSTALL ME FIRST/**/*",
    "config.lua",
    "locales/*.lua",
    "server/utils.lua",
    "client/utils.lua",
}

lua54 'yes'

dependencies {
    'qb-core',
    '/onesync',
}


dependency '/assetpacks'