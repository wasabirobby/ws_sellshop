-----------------For support, scripts, and more----------------
----------------- https://discord.gg/XJFNyMy3Bv ---------------
---------------------------------------------------------------
fx_version 'cerulean'
game 'gta5'
lua54 'yes'

description 'Wasabi Sell Shop'
version '1.0.0'

client_scripts {
    'client/**.lua'
}

server_scripts {
  'server/**.lua'
}

shared_scripts {
  '@ox_lib/init.lua',
  'config.lua'
}

dependencies {
  'es_extended',
  'ox_lib'
}