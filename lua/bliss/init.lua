-- Colorscheme name:    bliss.nvim
-- Description:         Port of articicestudio's bliss theme for neovim
-- Original Author:     https://github.com/shaunsingh
-- Fork Author:         https://github.com/veillain

local util = require('bliss.util')

-- Load the theme
local set = function()
    util.load()
end

return { set = set }
