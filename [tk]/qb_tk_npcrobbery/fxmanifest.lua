fx_version 'cerulean'

game 'gta5'

description 'QBCore NPC Robbery'

author 'TuKeh_'

version '1.0.7'

lua54 'yes'

shared_scripts {
	'@qb-core/shared/locale.lua',
	'locales/en.lua',
	'config.lua',
}

client_scripts {
    'client/main_editable.lua',
    'client/main.lua',
}

server_scripts {
    'server/main_editable.lua',
    'server/main.lua',
}

escrow_ignore {
    'locales/*.lua',
    'config.lua',
    'client/main_editable.lua',
    'server/main_editable.lua',
}
dependency '/assetpacks'