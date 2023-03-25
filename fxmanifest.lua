fx_version 'cerulean'
game 'gta5'
lua54 "yes"


author 'VibeLife'
description 'VibeLife - PoliceJob'
version '1.0'

client_scripts {
    'client/*.lua',
    'Config.lua'
}

server_scripts {
    '@oxmysql/lib/MySQL.lua',
    'server/*.lua',
    'Config.lua'
}

shared_scripts {
    '@oxmysql/lib/MySQL.lua',
    '@es_extended/imports.lua',
    '@ox_lib/init.lua',
}


exports {
    'dailyEquipSwat',
    'dailyEquip'
}