#!/usr/bin/env lua

local lfs = require('lfs')

local lua_postfixes = {
      'Poem/src/?.lua',
      'Poem/src/?/init.lua',
      'Metalua/src/?.lua',
      'Metalua/src/?/init.lua',
      'Libraries/?.lua',
      'Libraries/?/init.lua',      
}

local cur_dir = lfs.currentdir()
local paths = {}
for k,postfix in ipairs(lua_postfixes) do
  paths[k] = cur_dir .. '/' .. postfix
end
paths[#paths + 1] = ''

local new_paths = table.concat(paths, ';')
print('export LUA_PATH = "' .. new_paths .. '$LUA_PATH"')

