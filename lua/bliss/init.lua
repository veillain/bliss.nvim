local M = {}

local defaults = {
    transparent_background = false,
    use_compiled = true,
    terminal_colors = false,
    styles = {
        comments = { italic = true, bold = false },
        keywords = { italic = true, bold = true },
        functions = { italic = false, bold = true },
        variables = { italic = false, bold = false },
        strings = { italic = false, bold = false },
        types = { italic = false, bold = true },
        constants = { italic = false, bold = true },
    },
    inverse = {
        match_paren = false,
        visual = false,
        search = false,
    },
}

local function extend(table1, table2)
    local result = vim.deepcopy(table1)
    for k, v in pairs(table2) do
        if type(v) == "table" then
            result[k] = extend(result[k] or {}, v)
        else
            result[k] = v
        end
    end
    return result
end

local function reset_cache()
    local PATH_SEP = vim.loop.os_uname().version:match("Windows") and "\\" or "/"
    local cache_path = table.concat({ vim.fn.stdpath("state"), "bliss", "compiled.lua" }, PATH_SEP)
    local ok, err = vim.loop.fs_unlink(cache_path)
    if not ok and err and err:match("^ENOENT") == nil then
        vim.notify("Bliss: Error deleting cache: " .. err, vim.log.levels.WARN)
    end
end

-- Create the BlissResetCache command
vim.api.nvim_create_user_command("BlissResetCache", function()
    reset_cache()
    -- Recompile the theme after cache reset
    if M.config and M.config.use_compiled then
        local palette = require("bliss.palette")
        local compiler = require("bliss.compiler")
        compiler.compile(palette.colors, M.config)
        compiler.load_compiled()
    end
    vim.notify("Bliss: Cache has been reset and recompiled", vim.log.levels.INFO)
end, {})

function M.setup(opts)
    opts = opts or {}
    M.config = extend(defaults, opts)

    vim.cmd("hi clear")
    if vim.fn.exists("syntax_on") then
        vim.cmd("syntax reset")
    end

    vim.g.colors_name = "bliss"

    if M.config.use_compiled then
        local compiler = require("bliss.compiler")
        local success = compiler.load_compiled()

        if not success then
            local palette = require("bliss.palette")
            compiler.compile(palette.colors, M.config)
            success = compiler.load_compiled()
        end

        if not success then
            M.load_dynamic()
        end
    else
        M.load_dynamic()
    end
end

function M.load_dynamic()
    local palette = require("bliss.palette")
    local highlights = require("bliss.highlights")
    highlights.setup(palette.colors, M.config)

    if M.config and M.config.terminal_colors == true then
        local terminal = require("bliss.terminal")
        terminal.setup(palette.colors)
    end
end

---@return boolean

return M
