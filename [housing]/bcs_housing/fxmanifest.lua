fx_version 'cerulean'
game 'gta5'
lua54 'yes'
version      '3.16.0'

author 'Baguscodestudio'
description 'FiveM Housing script with complete feature'

this_is_a_map 'yes'

ui_page 'html/index.html'

files {
	"stream/whiteroom.ytyp",
	"stream/signboard_potato.ytyp",
	'html/index.html',
	'html/**/*',
	'furniture/**/*',
	'escrow/ipl/*.lua',
}

data_file 'DLC_ITYP_REQUEST' 'whiteroom.ytyp'
data_file 'DLC_ITYP_REQUEST' 'signboard_potato.ytyp'

shared_scripts {
	'data/locale.lua',
	'@ox_lib/init.lua',
	'utils.lua'
}

client_scripts {
	'config/*.lua',
	'client/framework/*.lua',
	'client/classes/*.lua',
	'client/freecam/utils.lua',
	'client/freecam/config.lua',
	'client/freecam/camera.lua',
	'client/freecam/exports.lua',
	'client/freecam/main.lua',
	'escrow/ipl/client/*.lua',
	'client/*.lua',
	'escrow/client/*.lua'
}

server_scripts {
	'@oxmysql/lib/MySQL.lua',
	'config/*.lua',
	'config/server/*.lua',
	'server/framework/*.lua',
	'escrow/server/classes/*.lua',
	'escrow/ipl/server/*.lua',
	'server/*.lua',
	'server/convertion/**/*.lua',
	'escrow/server/*.lua'
}

dependencies {
	'oxmysql',
	'ox_lib'
}

escrow_ignore {
	'utils.lua',
	'config/*.lua',
	'config/server/*.lua',
	'stream/*.ytd',
	'stream/*.ydr',
	'stream/*.ymf',
	'stream/*.ytyp',
	'stream/*.ymap',
	'data/*.lua',
	'furniture/**/*.lua',
	'client/**/*.lua',
	'server/**/*.lua',
}

dependency '/assetpacks'