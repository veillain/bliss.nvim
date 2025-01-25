local colors = require('bliss.colors')

local bliss = {}

bliss.normal = {
    a = { fg = colors.bg, bg = colors.accent, gui = 'bold' },
    b = { fg = colors.title, bg = colors.active },
    c = { fg = colors.fg, bg = colors.selection },
}

bliss.insert = {
    a = { fg = colors.bg, bg = colors.bliss14_gui, gui = 'bold' },
    b = { fg = colors.title, bg = colors.active },
}

bliss.visual = {
    a = { fg = colors.bg, bg = colors.bliss9_gui, gui = 'bold' },
    b = { fg = colors.title, bg = colors.active },
}

bliss.replace = {
    a = { fg = colors.bg, bg = colors.bliss11_gui, gui = 'bold' },
    b = { fg = colors.title, bg = colors.active },
}

bliss.command = {
    a = { fg = colors.bg, bg = colors.bliss15_gui, gui = 'bold' },
    b = { fg = colors.title, bg = colors.active },
}

bliss.inactive = {
    a = { fg = colors.disabled, bg = colors.bg, gui = 'bold' },
    b = { fg = colors.disabled, bg = colors.bg },
    c = { fg = colors.disabled, bg = colors.selection }
}

return bliss
