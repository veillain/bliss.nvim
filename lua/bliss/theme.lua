local bliss = require("bliss.colors")

local theme = {}

theme.loadSyntax = function()
    -- Syntax highlight groups
    local syntax = {
        Type = { fg = bliss.bliss9_gui },                                          -- int, long, char, etc.
        StorageClass = { fg = bliss.bliss9_gui },                                  -- static, register, volatile, etc.
        Structure = { fg = bliss.bliss9_gui },                                     -- struct, union, enum, etc.
        Constant = { fg = bliss.bliss4_gui },                                      -- any constant
        String = { fg = bliss.bliss10_gui, bg = bliss.none, style = 'italic' },    -- Any string
        Character = { fg = bliss.bliss10_gui },                                    -- any character constant: 'c', '\n'
        Number = { fg = bliss.bliss10_gui },                                       -- a number constant: 5
        Boolean = { fg = bliss.bliss11_gui },                                      -- a boolean constant: TRUE, false
        Float = { fg = bliss.bliss15_gui },                                        -- a floating point constant: 2.3e10
        Statement = { fg = bliss.bliss9_gui },                                     -- any statement
        Label = { fg = bliss.bliss9_gui },                                         -- case, default, etc.
        Operator = { fg = bliss.bliss8_gui },                                      -- sizeof", "+", "*", etc.
        Exception = { fg = bliss.bliss9_gui },                                     -- try, catch, throw
        PreProc = { fg = bliss.bliss9_gui },                                       -- generic Preprocessor
        Include = { fg = bliss.bliss9_gui },                                       -- preprocessor #include
        Define = { fg = bliss.bliss9_gui },                                        -- preprocessor #define
        Macro = { fg = bliss.bliss9_gui },                                         -- same as Define
        Typedef = { fg = bliss.bliss9_gui },                                       -- A typedef
        PreCondit = { fg = bliss.bliss13_gui },                                    -- preprocessor #if, #else, #endif, etc.
        Special = { fg = bliss.bliss9_gui },                                       -- any special symbol
        SpecialChar = { fg = bliss.bliss13_gui },                                  -- special character in a constant
        Tag = { fg = bliss.bliss4_gui },                                           -- you can use CTRL-] on this
        Delimiter = { fg = bliss.bliss9_gui },                                     -- character that needs attention like , or .
        SpecialComment = { fg = bliss.bliss8_gui },                                -- special things inside a comment
        Debug = { fg = bliss.bliss11_gui },                                        -- debugging statements
        Underlined = { fg = bliss.link, bg = bliss.none, style = 'underline' },    -- text that stands out, HTML links
        Ignore = { fg = bliss.disabled },                                          -- left blank, hidden
        Error = { fg = bliss.error, bg = bliss.none, style = 'bold,underline' },   -- any erroneous construct
        Todo = { fg = bliss.bliss13_gui, bg = bliss.none, style = 'bold,italic' }, -- anything that needs extra attention; mostly the keywords TODO FIXME and XXX
        Conceal = { fg = bliss.none, bg = bliss.bg },


        htmlLink = { fg = bliss.link, style = "underline" },
        htmlH1 = { fg = bliss.bliss8_gui, style = "bold" },
        htmlH2 = { fg = bliss.bliss11_gui, style = "bold" },
        htmlH3 = { fg = bliss.bliss14_gui, style = "bold" },
        htmlH4 = { fg = bliss.bliss15_gui, style = "bold" },
        htmlH5 = { fg = bliss.bliss9_gui, style = "bold" },
        markdownH1 = { fg = bliss.bliss8_gui, style = "bold" },
        markdownH2 = { fg = bliss.bliss11_gui, style = "bold" },
        markdownH3 = { fg = bliss.bliss14_gui, style = "bold" },
        markdownH1Delimiter = { fg = bliss.bliss8_gui },
        markdownH2Delimiter = { fg = bliss.bliss11_gui },
        markdownH3Delimiter = { fg = bliss.bliss14_gui },
    }

    syntax.Comment = { fg = bliss.comments, style = "italic" }
    syntax.Conditional = { fg = bliss.bliss11_gui } -- normal if, then, else, endif, switch, etc.
    syntax.Keyword = { fg = bliss.bliss11_gui }     -- normal for, do, while, etc.
    syntax.Repeat = { fg = bliss.bliss11_gui }      -- normal any other keyword
    syntax.Function = { fg = bliss.bliss8_gui }
    syntax.Identifier = { fg = bliss.error };       -- any variable name

    return syntax
end


theme.loadEditor = function()
    -- Editor highlight groups

    local editor = {
        NormalFloat = { fg = bliss.fg, bg = bliss.float },                           -- normal text and background color
        ColorColumn = { fg = bliss.none, bg = bliss.bliss1_gui },                    --  used for the columns set with 'colorcolumn'
        Conceal = { fg = bliss.disabled },                                           -- placeholder characters substituted for concealed text (see 'conceallevel')
        Cursor = { fg = bliss.bliss4_gui, bg = bliss.none, style = 'reverse' },      -- the character under the cursor
        CursorIM = { fg = bliss.cursor, bg = bliss.none, style = 'reverse' },        -- like Cursor, but used when in IME mode
        Directory = { fg = bliss.bliss7_gui, bg = bliss.none },                      -- directory names (and other special names in listings)
        DiffAdd = { fg = bliss.bliss14_gui, bg = bliss.none, style = 'reverse' },    -- diff mode: Added line
        DiffChange = { fg = bliss.bliss12_gui, bg = bliss.none, style = 'reverse' }, --  diff mode: Changed line
        DiffDelete = { fg = bliss.bliss11_gui, bg = bliss.none, style = 'reverse' }, -- diff mode: Deleted line
        DiffText = { fg = bliss.bliss15_gui, bg = bliss.none, style = 'reverse' },   -- diff mode: Changed text within a changed line
        EndOfBuffer = { fg = bliss.disabled },
        ErrorMsg = { fg = bliss.none },
        Folded = { fg = bliss.disabled, bliss.none, style = 'italic' },
        FoldColumn = { fg = bliss.bliss7_gui },
        IncSearch = { fg = bliss.none, bg = bliss.bliss4_gui, style = 'reverse' },
        LineNr = { fg = bliss.line_numbers },
        CursorLineNr = { fg = bliss.accent },
        MatchParen = { fg = bliss.bliss15_gui, bg = bliss.none, style = 'bold' },
        ModeMsg = { fg = bliss.accent },
        MoreMsg = { fg = bliss.accent },
        NonText = { fg = bliss.disabled },
        Pmenu = { fg = bliss.text, bg = bliss.contrast },
        PmenuSel = { fg = bliss.accent, bg = bliss.active },
        PmenuSbar = { fg = bliss.text, bg = bliss.contrast },
        PmenuThumb = { fg = bliss.fg, bg = bliss.accent },
        Question = { fg = bliss.bliss14_gui },
        QuickFixLine = { fg = bliss.highlight, bliss.bliss6_gui, style = 'reverse' },
        qfLineNr = { fg = bliss.highlight, bliss.bliss6_gui, style = 'reverse' },
        Search = { fg = bliss.bliss1_gui, bg = bliss.bliss6_gui, style = 'reverse' },
        SpecialKey = { fg = bliss.bliss9_gui },
        SpellBad = { fg = bliss.bliss11_gui, bg = bliss.none, style = 'italic,undercurl' },
        SpellCap = { fg = bliss.bliss7_gui, bg = bliss.none, style = 'italic,undercurl' },
        SpellLocal = { fg = bliss.bliss8_gui, bg = bliss.none, style = 'italic,undercurl' },
        SpellRare = { fg = bliss.bliss9_gui, bg = bliss.none, style = 'italic,undercurl' },
        StatusLine = { fg = bliss.fg, bg = bliss.contrast },
        StatusLineNC = { fg = bliss.text, bg = bliss.disabled },
        StatusLineTerm = { fg = bliss.fg, bg = bliss.contrast },
        StatusLineTermNC = { fg = bliss.text, bg = bliss.disabled },
        TabLineFill = { fg = bliss.fg },
        TablineSel = { fg = bliss.bliss8_gui, bg = bliss.bliss3_gui },
        Tabline = { fg = bliss.fg },
        Title = { fg = bliss.bliss14_gui, bg = bliss.none, style = 'bold' },
        Visual = { fg = bliss.none, bg = bliss.selection },
        VisualNOS = { fg = bliss.none, bg = bliss.selection },
        WarningMsg = { fg = bliss.bliss15_gui },
        WildMenu = { fg = bliss.bliss12_gui, bg = bliss.none, style = 'bold' },
        CursorColumn = { fg = bliss.none, bg = bliss.active },
        CursorLine = { fg = bliss.none, bg = bliss.cursorlinefg },
        ToolbarLine = { fg = bliss.fg, bg = bliss.bg_alt },
        ToolbarButton = { fg = bliss.fg, bg = bliss.none, style = 'bold' },
        NormalMode = { fg = bliss.accent, bg = bliss.none, style = 'reverse' },
        InsertMode = { fg = bliss.bliss14_gui, bg = bliss.none, style = 'reverse' },
        ReplacelMode = { fg = bliss.bliss11_gui, bg = bliss.none, style = 'reverse' },
        VisualMode = { fg = bliss.bliss9_gui, bg = bliss.none, style = 'reverse' },
        CommandMode = { fg = bliss.bliss4_gui, bg = bliss.none, style = 'reverse' },
        Warnings = { fg = bliss.bliss15_gui },

        healthError = { fg = bliss.error },
        healthSuccess = { fg = bliss.bliss14_gui },
        healthWarning = { fg = bliss.bliss15_gui },

        -- dashboard
        DashboardShortCut = { fg = bliss.bliss7_gui },
        DashboardHeader = { fg = bliss.bliss9_gui },
        DashboardCenter = { fg = bliss.bliss8_gui },
        DashboardFooter = { fg = bliss.bliss14_gui, style = "italic" },

    }

    -- Options:

    --Set transparent background
    if vim.g.bliss_disable_background then
        editor.Normal = { fg = bliss.fg, bg = bliss.none } -- normal text and background color
        editor.SignColumn = { fg = bliss.fg, bg = bliss.none }
    else
        editor.Normal = { fg = bliss.fg, bg = bliss.bg } -- normal text and background color
        editor.SignColumn = { fg = bliss.fg, bg = bliss.bg }
    end

    -- Remove window split borders
    if vim.g.bliss_borders then
        editor.VertSplit = { fg = bliss.border }
    else
        editor.VertSplit = { fg = bliss.bg }
    end

    return editor
end

theme.loadTerminal = function()
    vim.g.terminal_color_0 = bliss.bliss1_gui
    vim.g.terminal_color_1 = bliss.bliss11_gui
    vim.g.terminal_color_2 = bliss.bliss14_gui
    vim.g.terminal_color_3 = bliss.bliss13_gui
    vim.g.terminal_color_4 = bliss.bliss9_gui
    vim.g.terminal_color_5 = bliss.bliss15_gui
    vim.g.terminal_color_6 = bliss.bliss8_gui
    vim.g.terminal_color_7 = bliss.bliss5_gui
    vim.g.terminal_color_8 = bliss.bliss3_gui
    vim.g.terminal_color_9 = bliss.bliss11_gui
    vim.g.terminal_color_10 = bliss.bliss14_gui
    vim.g.terminal_color_11 = bliss.bliss13_gui
    vim.g.terminal_color_12 = bliss.bliss9_gui
    vim.g.terminal_color_13 = bliss.bliss15_gui
    vim.g.terminal_color_14 = bliss.bliss7_gui
    vim.g.terminal_color_15 = bliss.bliss6_gui
end

theme.loadTreeSitter = function()
    -- TreeSitter highlight groups

    local treesitter = {
        TSAnnotation = { fg = bliss.bliss12_gui },                             -- For C++/Dart attributes, annotations thatcan be attached to the code to denote some kind of meta information.
        TSCharacter = { fg = bliss.bliss14_gui },                              -- For characters.
        TSConstructor = { fg = bliss.bliss9_gui },                             -- For constructor calls and definitions: `=                                                                          { }` in Lua, and Java constructors.
        TSConstant = { fg = bliss.bliss13_gui },                               -- For constants
        TSFloat = { fg = bliss.bliss15_gui },                                  -- For floats
        TSNumber = { fg = bliss.bliss15_gui },                                 -- For all number
        TSString = { fg = bliss.bliss14_gui },                                 -- For strings.

        TSAttribute = { fg = bliss.bliss15_gui },                              -- (unstable) TODO: docs
        TSBoolean = { fg = bliss.bliss9_gui },                                 -- For booleans.
        TSConstBuiltin = { fg = bliss.bliss7_gui },                            -- For constant that are built in the language: `nil` in Lua.
        TSConstMacro = { fg = bliss.bliss7_gui },                              -- For constants that are defined by macros: `NULL` in C.
        TSError = { fg = bliss.error },                                        -- For syntax/parser errors.
        TSException = { fg = bliss.bliss15_gui },                              -- For exception related keywords.
        TSField = { fg = bliss.bliss4_gui },                                   -- For fields.
        TSFuncMacro = { fg = bliss.bliss7_gui },                               -- For macro defined fuctions (calls and definitions): each `macro_rules` in Rust.
        TSInclude = { fg = bliss.bliss9_gui },                                 -- For includes: `#include` in C, `use` or `extern crate` in Rust, or `require` in Lua.
        TSLabel = { fg = bliss.bliss15_gui },                                  -- For labels: `label:` in C and `:label:` in Lua.
        TSNamespace = { fg = bliss.bliss4_gui },                               -- For identifiers referring to modules and namespaces.
        TSOperator = { fg = bliss.bliss9_gui },                                -- For any operator: `+`, but also `->` and `*` in C.
        TSParameter = { fg = bliss.bliss10_gui },                              -- For parameters of a function.
        TSParameterReference = { fg = bliss.bliss10_gui },                     -- For references to parameters of a function.
        TSProperty = { fg = bliss.bliss10_gui },                               -- Same as `TSField`.
        TSPunctDelimiter = { fg = bliss.bliss8_gui },                          -- For delimiters ie: `.`
        TSPunctBracket = { fg = bliss.bliss8_gui },                            -- For brackets and parens.
        TSPunctSpecial = { fg = bliss.bliss8_gui },                            -- For special punctutation that does not fall in the catagories before.
        TSStringRegex = { fg = bliss.bliss7_gui },                             -- For regexes.
        TSStringEscape = { fg = bliss.disabled },                              -- For escape characters within a string.
        TSSymbol = { fg = bliss.bliss15_gui },                                 -- For identifiers referring to symbols or atoms.
        TSType = { fg = bliss.bliss9_gui },                                    -- For types.
        TSTypeBuiltin = { fg = bliss.bliss9_gui },                             -- For builtin types.
        TSTag = { fg = bliss.bliss4_gui },                                     -- Tags like html tag names.
        TSTagDelimiter = { fg = bliss.bliss15_gui },                           -- Tag delimiter like `<` `>` `/`
        TSText = { fg = bliss.text },                                          -- For strings considebliss11_gui text in a markup language.
        TSTextReference = { fg = bliss.bliss15_gui },                          -- FIXME
        TSEmphasis = { fg = bliss.bliss10_gui },                               -- For text to be represented with emphasis.
        TSUnderline = { fg = bliss.fg, bg = bliss.none, style = 'underline' }, -- For text to be represented with an underline.
        TSStrike = {},                                                         -- For strikethrough text.
        TSTitle = { fg = bliss.bliss10_gui, bg = bliss.none, style = 'bold' }, -- Text that is part of a title.
        TSLiteral = { fg = bliss.fg },                                         -- Literal text.
        TSURI = { fg = bliss.link },                                           -- Any URI like a link or email.        TSAnnotation =                                                                  { fg = bliss.bliss11_gui },    -- For C++/Dart attributes, annotations that can be attached to the code to denote some kind of meta information.

    }

    treesitter.TSComment = { fg = bliss.bliss3_gui }
    treesitter.TSConditional = { fg = bliss.bliss9_gui } -- For keywords related to conditionnals.
    treesitter.TSKeyword = { fg = bliss.bliss9_gui }     -- For keywords that don't fall in previous categories.
    treesitter.TSRepeat = { fg = bliss.bliss9_gui }      -- For keywords related to loops.
    treesitter.TSKeywordFunction = { fg = bliss.bliss8_gui }
    treesitter.TSFunction = { fg = bliss.bliss8_gui }    -- For fuction (calls and definitions).
    treesitter.TSMethod = { fg = bliss.bliss7_gui }      -- For method calls and definitions.
    treesitter.TSFuncBuiltin = { fg = bliss.bliss8_gui }
    treesitter.TSVariable = { fg = bliss.accent }        -- Any variable name that does not have another highlight.
    treesitter.TSVariableBuiltin = { fg = bliss.accent }

    return treesitter
end

theme.loadLSP = function()
    -- Lsp highlight groups

    local lsp = {
        LspDiagnosticsDefaultError = { fg = bliss.error },                                    -- used for "Error" diagnostic virtual text
        LspDiagnosticsSignError = { fg = bliss.error },                                       -- used for "Error" diagnostic signs in sign column
        LspDiagnosticsFloatingError = { fg = bliss.error },                                   -- used for "Error" diagnostic messages in the diagnostics float
        LspDiagnosticsVirtualTextError = { fg = bliss.error },                                -- Virtual text "Error"
        LspDiagnosticsUnderlineError = { style = 'undercurl', sp = bliss.error },             -- used to underline "Error" diagnostics.
        LspDiagnosticsDefaultWarning = { fg = bliss.bliss15_gui },                            -- used for "Warning" diagnostic signs in sign column
        LspDiagnosticsSignWarning = { fg = bliss.bliss15_gui },                               -- used for "Warning" diagnostic signs in sign column
        LspDiagnosticsFloatingWarning = { fg = bliss.bliss15_gui },                           -- used for "Warning" diagnostic messages in the diagnostics float
        LspDiagnosticsVirtualTextWarning = { fg = bliss.bliss15_gui },                        -- Virtual text "Warning"
        LspDiagnosticsUnderlineWarning = { style = 'undercurl', sp = bliss.bliss15_gui },     -- used to underline "Warning" diagnostics.
        LspDiagnosticsDefaultInformation = { fg = bliss.bliss10_gui },                        -- used for "Information" diagnostic virtual text
        LspDiagnosticsSignInformation = { fg = bliss.bliss10_gui },                           -- used for "Information" diagnostic signs in sign column
        LspDiagnosticsFloatingInformation = { fg = bliss.bliss10_gui },                       -- used for "Information" diagnostic messages in the diagnostics float
        LspDiagnosticsVirtualTextInformation = { fg = bliss.bliss10_gui },                    -- Virtual text "Information"
        LspDiagnosticsUnderlineInformation = { style = 'undercurl', sp = bliss.bliss10_gui }, -- used to underline "Information" diagnostics.
        LspDiagnosticsDefaultHint = { fg = bliss.bliss9_gui },                                -- used for "Hint" diagnostic virtual text
        LspDiagnosticsSignHint = { fg = bliss.bliss9_gui },                                   -- used for "Hint" diagnostic signs in sign column
        LspDiagnosticsFloatingHint = { fg = bliss.bliss9_gui },                               -- used for "Hint" diagnostic messages in the diagnostics float
        LspDiagnosticsVirtualTextHint = { fg = bliss.bliss9_gui },                            -- Virtual text "Hint"
        LspDiagnosticsUnderlineHint = { style = 'undercurl', sp = bliss.bliss10_gui },        -- used to underline "Hint" diagnostics.
        LspReferenceText = { fg = bliss.accent, bg = bliss.highlight },                       -- used for highlighting "text" references
        LspReferenceRead = { fg = bliss.accent, bg = bliss.highlight },                       -- used for highlighting "read" references
        LspReferenceWrite = { fg = bliss.accent, bg = bliss.highlight },                      -- used for highlighting "write" references
    }

    return lsp
end

theme.loadPlugins = function()
    -- Plugins highlight groups

    local plugins = {

        -- LspTrouble
        LspTroubleText = { fg = bliss.text },
        LspTroubleCount = { fg = bliss.bliss9_gui, bg = bliss.active },
        LspTroubleNormal = { fg = bliss.fg, bg = bliss.sidebar },

        -- Diff
        diffAdded = { fg = bliss.bliss14_gui },
        diffRemoved = { fg = bliss.bliss11_gui },
        diffChanged = { fg = bliss.bliss15_gui },
        diffOldFile = { fg = bliss.yelow },
        diffNewFile = { fg = bliss.bliss12_gui },
        diffFile = { fg = bliss.bliss7_gui },
        diffLine = { fg = bliss.comments },
        diffIndexLine = { fg = bliss.bliss9_gui },

        -- Neogit
        NeogitBranch = { fg = bliss.bliss10_gui },
        NeogitRemote = { fg = bliss.bliss9_gui },
        NeogitHunkHeader = { fg = bliss.fg, bg = bliss.highlight },
        NeogitHunkHeaderHighlight = { fg = bliss.bliss7_gui, bg = bliss.contrast },
        NeogitDiffContextHighlight = { fg = bliss.bg_alt, bg = bliss.contrast },
        NeogitDiffDeleteHighlight = { fg = bliss.bliss11_gui },
        NeogitDiffAddHighlight = { fg = bliss.bliss14_gui },

        -- GitGutter
        GitGutterAdd = { fg = bliss.bliss14_gui },    -- diff mode: Added line |diff.txt|
        GitGutterChange = { fg = bliss.bliss15_gui }, -- diff mode: Changed line |diff.txt|
        GitGutterDelete = { fg = bliss.bliss11_gui }, -- diff mode: Deleted line |diff.txt|

        -- GitSigns
        GitSignsAdd = { fg = bliss.bliss14_gui },      -- diff mode: Added line |diff.txt|
        GitSignsAddNr = { fg = bliss.bliss14_gui },    -- diff mode: Added line |diff.txt|
        GitSignsAddLn = { fg = bliss.bliss14_gui },    -- diff mode: Added line |diff.txt|
        GitSignsChange = { fg = bliss.bliss15_gui },   -- diff mode: Changed line |diff.txt|
        GitSignsChangeNr = { fg = bliss.bliss15_gui }, -- diff mode: Changed line |diff.txt|
        GitSignsChangeLn = { fg = bliss.bliss15_gui }, -- diff mode: Changed line |diff.txt|
        GitSignsDelete = { fg = bliss.bliss11_gui },   -- diff mode: Deleted line |diff.txt|
        GitSignsDeleteNr = { fg = bliss.bliss11_gui }, -- diff mode: Deleted line |diff.txt|
        GitSignsDeleteLn = { fg = bliss.bliss11_gui }, -- diff mode: Deleted line |diff.txt|

        -- Telescope
        TelescopePromptBorder = { fg = bliss.bliss8_gui },
        TelescopeResultsBorder = { fg = bliss.bliss9_gui },
        TelescopePreviewBorder = { fg = bliss.bliss14_gui },
        TelescopeSelectionCaret = { fg = bliss.bliss9_gui },
        TelescopeSelection = { fg = bliss.bliss9_gui },
        TelescopeMatching = { fg = bliss.bliss8_gui },
        TelescopeNormal = { fg = bliss.fg, bg = bliss.float },

        -- NvimTree
        NvimTreeRootFolder = { fg = bliss.bliss7_gui, style = "bold" },
        NvimTreeGitDirty = { fg = bliss.bliss15_gui },
        NvimTreeGitNew = { fg = bliss.bliss14_gui },
        NvimTreeImageFile = { fg = bliss.bliss15_gui },
        NvimTreeExecFile = { fg = bliss.bliss14_gui },
        NvimTreeSpecialFile = { fg = bliss.bliss9_gui, style = "underline" },
        NvimTreeFolderName = { fg = bliss.bliss10_gui },
        NvimTreeEmptyFolderName = { fg = bliss.disabled },
        NvimTreeFolderIcon = { fg = bliss.accent },
        NvimTreeIndentMarker = { fg = bliss.disabled },
        LspDiagnosticsError = { fg = bliss.error },
        LspDiagnosticsWarning = { fg = bliss.bliss15_gui },
        LspDiagnosticsInformation = { fg = bliss.bliss10_gui },
        LspDiagnosticsHint = { fg = bliss.bliss9_gui },

        -- WhichKey
        WhichKey = { fg = bliss.accent, style = 'bold' },
        WhichKeyGroup = { fg = bliss.text },
        WhichKeyDesc = { fg = bliss.bliss7_gui, style = 'italic' },
        WhichKeySeperator = { fg = bliss.fg },
        WhichKeyFloating = { bg = bliss.float },
        WhichKeyFloat = { bg = bliss.float },

        -- LspSaga
        DiagnosticError = { fg = bliss.error },
        DiagnosticWarning = { fg = bliss.bliss15_gui },
        DiagnosticInformation = { fg = bliss.bliss10_gui },
        DiagnosticHint = { fg = bliss.bliss9_gui },
        DiagnosticTruncateLine = { fg = bliss.fg },
        LspFloatWinNormal = { bg = bliss.contrast },
        LspFloatWinBorder = { fg = bliss.bliss9_gui },
        LspSagaBorderTitle = { fg = bliss.bliss8_gui },
        LspSagaHoverBorder = { fg = bliss.bliss10_gui },
        LspSagaRenameBorder = { fg = bliss.bliss14_gui },
        LspSagaDefPreviewBorder = { fg = bliss.bliss14_gui },
        LspSagaCodeActionBorder = { fg = bliss.bliss7_gui },
        LspSagaFinderSelection = { fg = bliss.bliss14_gui },
        LspSagaCodeActionTitle = { fg = bliss.bliss10_gui },
        LspSagaCodeActionContent = { fg = bliss.bliss9_gui },
        LspSagaSignatureHelpBorder = { fg = bliss.bliss13_gui },
        ReferencesCount = { fg = bliss.bliss9_gui },
        DefinitionCount = { fg = bliss.bliss9_gui },
        DefinitionIcon = { fg = bliss.bliss7_gui },
        ReferencesIcon = { fg = bliss.bliss7_gui },
        TargetWord = { fg = bliss.bliss8_gui },

        -- BufferLine
        BufferLineIndicatorSelected = { fg = bliss.bg },
        BufferLineFill = { bg = bliss.bg },

        -- Sneak
        Sneak = { fg = bliss.bg, bg = bliss.accent },
        SneakScope = { bg = bliss.selection },

        -- Indent Blankline
        IndentBlanklineChar = { fg = bliss.bliss3_gui },
        IndentBlanklineContextChar = { fg = bliss.bliss3_gui },

        -- Illuminate
        illuminatedWord = { bg = bliss.cursorlinefg },
        illuminatedCurWord = { bg = bliss.cursorlinefg },

        -- nvim-dap
        DapBreakpoint = { fg = bliss.bliss14_gui },
        DapStopped = { fg = bliss.bliss15_gui },

        -- Hop
        HopNextKey = { fg = bliss.accent, style = 'bold' },
        HopNextKey1 = { fg = bliss.bliss8_gui, style = 'bold' },
        HopNextKey2 = { fg = bliss.bliss3_gui },
        HopUnmatched = { fg = bliss.comments },

        -- Fern
        FernBranchText = { fg = bliss.bliss3_gui },
    }
    -- Options:

    -- Disable nvim-tree background
    if vim.g.bliss_disable_background then
        plugins.NvimTreeNormal = { fg = bliss.fg, bg = bliss.none }
    else
        plugins.NvimTreeNormal = { fg = bliss.fg, bg = bliss.sidebar }
    end

    if vim.g.bliss_enable_sidebar_background then
        plugins.NvimTreeNormal = { fg = bliss.fg, bg = bliss.sidebar }
    else
        plugins.NvimTreeNormal = { fg = bliss.fg, bg = bliss.none }
    end

    return plugins
end

return theme
