local colors = require("bliss.palette").colors

local darker_bg = "#16161e"

return {
    normal = {
        a = { fg = colors.bg_dark, bg = colors.purple, gui = "bold" },
        b = { fg = colors.fg, bg = colors.bg_dark },
        c = { fg = colors.fg, bg = darker_bg },
    },
    insert = {
        a = { fg = colors.bg_dark, bg = colors.string, gui = "bold" },
        b = { fg = colors.fg, bg = colors.bg_dark },
        c = { fg = colors.fg, bg = darker_bg },
    },
    visual = {
        a = { fg = colors.bg_dark, bg = colors.blue, gui = "bold" },
        b = { fg = colors.fg_dark, bg = colors.bg_dark },
        c = { fg = colors.fg, bg = darker_bg },
    },
    replace = {
        a = { fg = colors.bg_dark, bg = colors.red, gui = "bold" },
        b = { fg = colors.fg_dark, bg = colors.bg_dark },
        c = { fg = colors.fg, bg = darker_bg },
    },
    command = {
        a = { fg = colors.bg_dark, bg = colors.gold, gui = "bold" },
        b = { fg = colors.fg_dark, bg = colors.bg_dark },
        c = { fg = colors.fg, bg = darker_bg },
    },
    inactive = {
        a = { fg = colors.termminal_white, bg = darker_bg },
        b = { fg = colors.fg, bg = darker_bg },
        c = { fg = colors.fg, bg = darker_bg },
    },
}
