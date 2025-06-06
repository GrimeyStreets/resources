fx_version 'adamant'
game 'gta5'
name "ak47_qb_leafnlatte"
author "MenanAk47"
version "1.3"

ui_page('html/ui.html')

files({
    'html/**/*',
    'stream/*.ydr',
})

data_file 'DLC_ITYP_REQUEST' 'stream/leafnlatte_props.ytyp'

shared_scripts {
    "@ox_lib/init.lua",
    'config.lua',
    'config-shop.lua',
    'config-farming.lua',
    'config-bar.lua',

    'locales/locale.lua',
    'locales/en.lua',
}

client_scripts {
    'client/utils.lua',
    'client/shop.lua',
    'client/farming.lua',
    'client/hookah.lua',
    'client/target.lua',
    'client/edibles.lua',
    'client/bar.lua',
}

server_scripts {
    '@mysql-async/lib/MySQL.lua',

    'server/utils.lua',
    'server/farming.lua',
    'server/shop.lua',
    'server/job.lua',
    'server/hookah.lua',
    'server/edibles.lua',
    'server/bar.lua',
}

escrow_ignore {
    'locales/*.lua',
    'config*.lua',
    'server/utils.lua',
    'client/target.lua',
    'client/utils.lua',
    'stream/bzzz_camp_food_kebab.ydr',
    'INSTALL ME FIRST/**/*',
}

lua54 'yes'

dependencies {
    'ox_lib',
    'qb-core',
    'qb-management',
    'qb-target',
}
dependency '/assetpacks'