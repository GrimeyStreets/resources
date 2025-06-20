fx_version 'cerulean'
game 'gta5'
lua54 'yes'

name 'lation_detecting'
author 'iamlation'
description 'An advanced metal detecting resource for FiveM'
version '2.0.3'

server_scripts {
    '@oxmysql/lib/MySQL.lua',
    'bridge/server.lua',
    'server/*.lua',
    'logs.lua'
}

client_scripts {
    'bridge/client.lua',
    'client/*.lua',
}

shared_scripts {
    'config.lua',
    'strings.lua',
    '@ox_lib/init.lua'
}

files {
    'stream/*.ytyp',
    'stream/*.ydr',
    'install/images/*.png'
}

data_file 'DLC_ITYP_REQUEST' 'stream/*.ytyp'

dependencies {
	'oxmysql',
	'ox_lib'
}

escrow_ignore {
    'config.lua',
    'strings.lua',
    'logs.lua',
    'bridge/*.lua',
    'client/functions.lua',
    'server/functions.lua'
}
dependency '/assetpacks'