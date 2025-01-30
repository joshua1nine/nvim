return {
	{
		"folke/tokyonight.nvim",
		priority = 1000,
		enabled = true,
		config = function()
			local transparent = false -- set to true if you would like to enable transparency

			require("tokyonight").setup({
				style = "night",
				transparent = transparent,
				styles = {
					sidebars = transparent and "transparent" or "dark",
					floats = transparent and "transparent" or "dark",
				},
			})
			vim.cmd.colorscheme("tokyonight")
		end,
	},
	-- {
	--     "Mofiqul/vscode.nvim",
	--     priority = 1000,
	--     name = "vscode",
	--     config = function()
	--       local c = require("vscode.colors").get_colors()
	--       require("vscode").setup({
	--         -- Alternatively set style in setup
	--         -- style = 'light'
	--
	--         -- Enable transparent background
	--         transparent = true,
	--
	--         -- Enable italic comment
	--         italic_comments = true,
	--
	--         -- Disable nvim-tree background color
	--         disable_nvimtree_bg = true,
	--
	--         -- Override colors (see ./lua/vscode/colors.lua)
	--         color_overrides = {
	--           vscGreen = "#5A5A5A",
	--         },
	--
	--         -- Override highlight groups (see ./lua/vscode/theme.lua)
	--         group_overrides = {
	--           -- this supports the same val table as vim.api.nvim_set_hl
	--           -- use colors from this colorscheme by requiring vscode.colors!
	--           Cursor = { fg = c.vscDarkBlue, bg = c.vscLightGreen, bold = true },
	--           SpellBad = { fg = "none", underline = true },
	--           SpellCap = { fg = "none", underline = false },
	--           SpellLocal = { fg = "none", underline = true },
	--           SpellRare = { fg = "none", underline = true },
	--         },
	--       })
	--       vim.o.background = "dark"
	--       vim.cmd.colorscheme("vscode")
	--     end,
	--   }
	-- {
	--   "catppuccin/nvim",
	--   name = "catppuccin",
	--   priority = 1000,
	--   config = function()
	--     require("catppuccin").setup({
	--       flavour = "mocha", -- latte, frappe, macchiato, mocha
	--       background = {     -- :h background
	--         dark = "mocha",
	--       },
	--       transparent_background = true, -- disables setting the background color.
	--       show_end_of_buffer = false,    -- shows the '~' characters after the end of buffers
	--       term_colors = true,            -- sets terminal colors (e.g. `g:terminal_color_0`)
	--       dim_inactive = {
	--         enabled = false,             -- dims the background color of inactive window
	--         shade = "light",
	--         percentage = 0.05,           -- percentage of the shade to apply to the inactive window
	--       },
	--       no_italic = false,             -- Force no italic
	--       no_bold = false,               -- Force no bold
	--       no_underlie = false,           -- Force no underline
	--       styles = {                     -- Handles the styles of general hi groups (see `:h highlight-args`):
	--         comments = { "italic" },     -- Change the style of comments
	--         conditionals = { "italic" },
	--         loops = {},
	--         functions = {},
	--         keywords = {},
	--         strings = {},
	--         variables = {},
	--         numbers = {},
	--         booleans = {},
	--         properties = {},
	--         types = {},
	--         operators = {},
	--         -- miscs = {}, -- Uncomment to turn off hard-coded styles
	--       },
	--       color_overrides = {},
	--       custom_highlights = {},
	--       default_integrations = true,
	--       integrations = {
	--         cmp = true,
	--         gitsigns = true,
	--         nvimtree = false,
	--         dashboard = true,
	--         treesitter = true,
	--         harpoon = true,
	--         markdown = true,
	--         mason = true,
	--         native_lsp = {
	--           enabled = true,
	--           virtual_text = {
	--             errors = { "italic" },
	--             hints = { "italic" },
	--             warnings = { "italic" },
	--             information = { "italic" },
	--           },
	--           underlines = {
	--             errors = { "underline" },
	--             hints = { "underline" },
	--             warnings = { "underline" },
	--             information = { "underline" },
	--           },
	--           inlay_hints = {
	--             background = true,
	--           },
	--         },
	--         -- For more plugins integration's please scroll down (https://github.com/catppuccin/nvim#integrations)
	--       },
	--     })
	--
	--     -- setup must be called before loading
	--     vim.cmd.colorscheme("catppuccin")
	--   end,
	-- }
}
