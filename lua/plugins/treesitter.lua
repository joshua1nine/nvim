return {
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		dependencies = {
			"windwp/nvim-ts-autotag",
			{
				"JoosepAlviste/nvim-ts-context-commentstring",
				opts = {
					custom_calculation = function(_, language_tree)
						if
							vim.bo.filetype == "blade"
							and language_tree._lang ~= "javascript"
							and language_tree._lang ~= "php"
						then
							return "{{-- %s --}}"
						end
					end,
				},
			},
			"nvim-treesitter/nvim-treesitter-textobjects",
		},
		config = function()
			---@class ParserInfo[]
			local parser_config = require("nvim-treesitter.parsers").get_parser_configs()
			parser_config.blade = {
				install_info = {
					url = "https://github.com/EmranMR/tree-sitter-blade",
					files = {
						"src/parser.c",
						-- 'src/scanner.cc',
					},
					branch = "main",
					generate_requires_npm = true,
					requires_generate_from_grammar = true,
				},
				filetype = "blade",
			}
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
					"gitignore",
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
