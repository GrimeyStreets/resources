fx_version "cerulean"
games {"gta5"}
version '1.2'
author "MenanAk47"
lua54 'yes'

files {
    'web/build/index.html',
    'web/build/**/*',
}

ui_page 'web/build/index.html'

data_file 'DLC_ITYP_REQUEST' 'stream/ak47_qb_idcardv2.ytyp'

shared_scripts {
	"@ox_lib/init.lua",
	"config.lua",
	"locales/locale.lua",
	"locales/en.lua",
}

client_scripts {
	"framework/client/*.lua",
	"client/*",
} 

server_scripts {
	'@mysql-async/lib/MySQL.lua',
	"framework/server/*.lua",
	"server/*",
} 

dependencies {
    'qb-core',
    'ox_lib',
    'qb-target',
}

escrow_ignore {
	"framework/**/*",
	"INSTALL ME FIRST/**/*",
    "config.lua",
    "locales/*.lua",
    "client/utils.lua",
    "server/utils.lua",
    "stream/DarkAnimations/*",
}



dependency '/assetpacks'