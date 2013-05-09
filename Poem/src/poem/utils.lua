require 'metalua.base'

local submodules = { require 'poem.utils.math' }

return table.cat(unpack(submodules))
