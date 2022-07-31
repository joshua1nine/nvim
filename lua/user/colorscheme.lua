-- local colorscheme = "darkplus"

-- local colorscheme = "tokyonight"
-- vim.cmd("hi normal guibg=none")
-- vim.g.tokyonight_transparent = true
-- vim.g.tokyonight_style = "night"
-- vim.g.tokyonight_sidebars = { "qf", "telescope", "terminal", "packer" }
-- vim.g.tokyonight_transparent_sidebar = true
-- vim.g.tokyonight_terminal_colors = true
-- vim.g.tokyonight_dark_float = false

-- Lua:
-- For dark theme (neovim's default)
-- vim.o.background = 'dark'
local colorscheme = 'dark'

-- local c = require('vscode.colors')
require('vscode').setup({
    -- Enable transparent background
    transparent = true,

    -- Enable italic comment
    italic_comments = true,

    -- Disable nvim-tree background color
    disable_nvimtree_bg = true,

    -- Override colors (see ./lua/vscode/colors.lua)
    -- color_overrides = {
    --     vscLineNumber = '#FFFFFF',
    -- },

    -- Override highlight groups (see ./lua/vscode/theme.lua)
    -- group_overrides = {
        -- this supports the same val table as vim.api.nvim_set_hl
        -- use colors from this colorscheme by requiring vscode.colors!
        -- Cursor = { fg=c.vscDarkBlue, bg=c.vscLightGreen, bold=true },
    -- }
})

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
	return
end
