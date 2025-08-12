return {
   "neovim/nvim-lspconfig",
		dependencies = {
			-- Useful status updates for LSP.
			{ "j-hui/fidget.nvim", opts = {} },

			-- Allows extra capabilities provided by nvim-cmp
			"hrsh7th/cmp-nvim-lsp",
			{
				-- `lazydev` configures Lua LSP for your Neovim config, runtime and plugins
				-- used for completion, annotations and signatures of Neovim apis
				"folke/lazydev.nvim",
				ft = "lua",
				opts = {
					library = {
						-- Load luvit types when the `vim.uv` word is found
						{ path = "${3rd}/luv/library", words = { "vim%.uv" } },
					},
				},
			},
		},
}
-- return {
-- 	{
-- 		-- Main LSP Configuration
-- 		"neovim/nvim-lspconfig",
-- 		config = function()
-- 			-- Enable the following language servers
-- 			--  Feel free to add/remove any LSPs that you want here. They will automatically be installed.
-- 			--
-- 			--  Add any additional override configuration in the following tables. Available keys are:
-- 			--  - cmd (table): Override the default command used to start the server
-- 			--  - filetypes (table): Override the default list of associated filetypes for the server
-- 			--  - capabilities (table): Override fields in capabilities. Can be used to disable certain LSP features.
-- 			--  - settings (table): Override the default settings passed when initializing the server.
-- 			--        For example, to see the options for `lua_ls`, you could go to: https://luals.github.io/wiki/settings/
-- 			local servers = {
-- 				-- If you have issues with typescript checkout https://github.com/pmizio/typescript-tools.nvim
-- 				jsonls = {},
-- 			}
--
-- 			-- Ensure the servers and tools above are installed
-- 			--
-- 			-- To check the current status of installed tools and/or manually install
-- 			-- other tools, you can run
-- 			--    :Mason
-- 			--
-- 			-- You can press `g?` for help in this menu.
-- 			--
-- 			-- `mason` had to be setup earlier: to configure its options see the
-- 			-- `dependencies` table for `nvim-lspconfig` above.
-- 			--
-- 			-- You can add other tools here that you want Mason to install
-- 			-- for you, so that they are available from within Neovim.
-- 			local ensure_installed = vim.tbl_keys(servers or {})
-- 			vim.list_extend(ensure_installed, {
-- 				"stylua", -- lua formatter
-- 				"prettier", -- everything formatter
-- 				"eslint_d", -- js linter
-- 			})
--
-- 			require("mason-tool-installer").setup({ ensure_installed = ensure_installed })
--
-- 			require("mason-lspconfig").setup({
-- 				handlers = {
-- 					function(server_name)
-- 						local server = servers[server_name] or {}
-- 						-- This handles overriding only values explicitly passed
-- 						-- by the server configuration above. Useful when disabling
-- 						-- certain features of an LSP (for example, turning off formatting for ts_ls)
-- 						server.capabilities = vim.tbl_deep_extend("force", {}, capabilities, server.capabilities or {})
-- 						require("lspconfig")[server_name].setup(server)
-- 					end,
-- 				},
-- 			})
-- 		end,
-- 	},
-- }
