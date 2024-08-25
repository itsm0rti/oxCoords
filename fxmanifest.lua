fx_version 'cerulean'
game 'gta5'
lua54 'yes'

author 'm0rti'
description 'oxCoords - Utility script for developers to copy coords using ox_lib'
version '1.0'

shared_scripts {
    '@ox_lib/init.lua'
}

client_scripts {
    'client/*.lua'
}

server_scripts {
    'server/*.lua'
}

dependencies {
    'ox_lib'
}