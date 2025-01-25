local M = {}

M.colors = {
    -- Base colors - 
    bg = "#1c1b1d",
    bgdark = "#16161e",
    bghighlight = "#262727",

    -- Primary accent colors - 
    purple = "#AF9DDE",
    red = "#DE9DAC",
    blue = "#9DACDE",
    gold = "#DED09D",

    -- Text colors - 
    fg = "#F0D3C9",
    fgdark = "#9DACDE",
    fggutter = "#434545",

    -- UI elements - 
    border = "#262727",
    cursor = "#AF9DDE",
    selection = "#262727",

    -- Syntax highlighting - 
    string = "#DED09D",
    keyword = "#9DDEAF",
    func = "#9DDEAF",
    constant = "#DED09D",
    type = "#9DCCDE",
    variable = "#E0E2EA",
    comment = "#635050",

    -- Special highlights - 
    warning = "#DED09D",
    error = "#DE9DAC",
    info = "#9DACDE",
    hint = "#9DDEAF",

    -- Git colors - 
    gitadd = "#9DDEAF",
    gitchange = "#DED09D",
    gitdelete = "#DE9DAC",

    -- Terminal colors - 
    terminalblack = "#1c1b1d",
    terminalblue = "#9DACDE",
    terminalcyan = "#9DCCDE",
    terminalgreen = "#9DDEAF",
    terminalmagenta = "#AF9DDE",
    terminalred = "#DE9DAC",
    terminalwhite = "#F0D3C9",
    terminalyellow = "#DED09D",
}

return M
