local utils = require 'poem.utils'

local submodules = {require 'poem.learning.bandit'}

return table.cat(unpack(submodules))
