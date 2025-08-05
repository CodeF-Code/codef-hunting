fx_version 'cerulean'
use_fxv2_oal 'yes'
lua54 'yes'
game 'gta5'
version '1.0.0'
author 'Fury Scripts'


shared_scripts {
    '@ox_lib/init.lua',
    'shared/*.lua',

}

client_scripts {
    'client/modules/utils.lua',
    'client/hunting.lua',
    'client/shops.lua',
    'client/aimblock.lua',

}

server_scripts {
    '@oxmysql/lib/MySQL.lua',
    'server/bridge/esx.lua',
    'server/bridge/qb.lua',
    'server/*.lua',
}

files {
    "locales/*.json",
    "_icons/*.png",
}
