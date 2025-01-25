local bliss = {
    --16 colors
    bliss0_gui = "#1c1b1d",
    bliss1_gui = "#635050",
    bliss2_gui = "#313238",
    bliss3_gui = "#434545",
    bliss4_gui = "#9DACDE",
    bliss5_gui = "#F0D3C9",
    bliss6_gui = "#E6D9D1",
    bliss7_gui = "#F0D3C9",
    bliss8_gui = "#9DACDE",
    bliss9_gui = "#DED09D",
    bliss10_gui = "#DED09D",
    bliss11_gui = "#9DDEAF",
    bliss12_gui = "#9DCCDE",
    bliss13_gui = "#AF9DDE",
    bliss14_gui = "#9DACDE",
    bliss15_gui = "#9DACDE",

    bg = '#1c1b1d',
    bg_alt = '#262727',
    fg = '#F0D3C9',
    text = '#9DACDE',
    comments = '#635050',
    selection = '#302E31',
    contrast = '#313238',
    active = '#DED09D',
    border = '#262727',
    line_numbers = '#635050',
    highlight = '#635050',
    disabled = '#635050',
    cursor = '#F0D3C9',
    accent = '#9DACDE',

    error = '#DE9DAC',
    link = '#9DCCDE',

    none = 'NONE'
}

-- Enable contrast sidebars, floating windows and popup menus
if vim.g.bliss_contrast == true then
    bliss.sidebar = bliss.bg_alt
    bliss.float = bliss.bg_alt
else
    bliss.sidebar = bliss.bg
    bliss.float = bliss.bg
end

if vim.g.bliss_cursorline_transparent == true then
    bliss.cursorlinefg = bliss.bg
else
    bliss.cursorlinefg = bliss.bliss1_gui
end

return bliss
