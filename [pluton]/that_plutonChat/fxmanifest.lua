fx_version 'adamant'

game 'gta5'
lua54 'yes'

author 'Pluto'
description 'Re-Imagined SAMP Chat made by Pluto'

ui_page 'html/index.html'

files {
  'html/*.*',
}

shared_scripts {
	'config.lua',
}

client_scripts {
	'client/functions.lua',
	
	'client/client.lua',
}

server_scripts {
	'bridge/sv.lua',
	
	'server/functions.lua',

	'server/server.lua',
	'server/commands.lua',
}

escrow_ignore {
    'config.lua'
  }
dependency '/assetpacks'