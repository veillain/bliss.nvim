local M = {}

local function safe_require(module)
    local ok, result = pcall(require, module)
    if ok then
        return result
    end
    return nil
end

function M.load(colors, config)
    local highlights = {}

    -- Load plugin highlight groups
    local plugins = {
        "bliss.groups.blink_cmp",
        "bliss.groups.cmp",
        "bliss.groups.gitsigns",
        "bliss.groups.hipatterns",
        "bliss.groups.lazy",
        "bliss.groups.lspsaga",
        "bliss.groups.snacks",
        "bliss.groups.treesitter",
        "bliss.groups.treesitter_context",
        "bliss.groups.trouble",
    }

    for _, plugin in ipairs(plugins) do
        local group = safe_require(plugin)
        if group and config.plugins[group.name or plugin:match("%.([^.]+)$")] then
            local plugin_highlights = group.get(colors, config)
            for hl_group, hl_opts in pairs(plugin_highlights) do
                highlights[hl_group] = hl_opts
            end
        end
    end

    return highlights
end

return M
