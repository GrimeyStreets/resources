fx_version 'adamant'
game 'gta5'
name "ak47_qb_khusbites"
author "MenanAk47"
version "1.4"

ui_page('html/ui.html')

files({
    'html/**/*',
    'stream/*.ydr',
})

data_file 'DLC_ITYP_REQUEST' 'stream/khusbites_props.ytyp'

client_scripts {
    "@ox_lib/init.lua",
    'config.lua',
    'config-shop.lua',
    'config-farming.lua',

    'client/utils.lua',
    'client/shop.lua',
    'client/farming.lua',
    'client/hookah.lua',
    'client/target.lua',
    'client/edibles.lua',

    'locales/locale.lua',
    'locales/en.lua',
}

server_scripts {
    "@ox_lib/init.lua",
    '@mysql-async/lib/MySQL.lua',
    'config.lua',
    'config-shop.lua',
    'config-farming.lua',

    'server/utils.lua',
    'server/farming.lua',
    'server/shop.lua',
    'server/job.lua',
    'server/hookah.lua',
    'server/edibles.lua',

    'locales/locale.lua',
    'locales/en.lua',
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