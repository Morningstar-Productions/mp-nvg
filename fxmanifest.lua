fx_version 'cerulean'
game 'gta5'

description 'Night Vision / Thermal Vision Script for FiveM'
author 'xViperAG'
version '1.0.0'

lua54 'yes'
use_experimental_fxv2_oal 'yes'

shared_scripts {
    '@ox_lib/init.lua',
    '@Renewed-Lib/init.lua'
}

client_scripts {
    'client.lua'
}

server_scripts {
    'server.lua'
}

files {
    'config.lua'
}