fx_version "cerulean"
game "gta5"
lua54 "yes"

author "Walterr399"
description "A simple resource mostly used by easy weapons servers."
version "1.0.0"

client_scripts { "client/*.lua" }
server_scripts { "server/*.lua", "config.lua" }
shared_scripts { "@vx_lib/init.lua" }

dependencies {
    "ox_lib",
    "vx_lib",
}