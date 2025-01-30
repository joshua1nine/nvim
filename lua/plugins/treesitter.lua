return {
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		dependencies = { "windwp/nvim-ts-autotag" },
		config = function()
			local configs = require("nvim-treesitter.configs")

			configs.setup({
				ensure_installed = {
					"c",
					"lua",
					"vim",
					"vimdoc",
					"query",
					"javascript",
					"typescript",
					"html",
					"php",
					"json",
					"css",
					"yaml",
					"tsx",
					"markdown",
					"bash",
               "gitignore"
				},
				highlight = { enable = true },
				indent = { enable = true },
				autotag = { enable = true },
				textobjects = {
					select = {
						enable = false,
					},
				},
			})
		end,
	},
}
