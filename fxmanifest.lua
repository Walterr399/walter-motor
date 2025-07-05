fx_version 'cerulean'
game 'gta5'
lua54 'yes'

author 'Walterr399'
description 'A simple resource mostly used by Easy Weapons servers.'
version '1.0.0'

shared_scripts {
    '@vx_lib/init.lua'
}

client_scripts {
    'client/*.lua'
}

server_scripts {
    'server/*.lua',
    'config.lua'
}

dependencies {
    'vx_lib'
}
