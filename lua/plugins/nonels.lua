return {
	{
		"nvimtools/none-ls.nvim",
		config = function()
			local null_ls = require("null-ls")
			null_ls.setup({
				sources = {
					null_ls.builtins.formatting.stylua,
					-- null_ls.builtins.formatting.prettier,
					-- null_ls.builtins.diagnostics.eslint.with({
					--   condition = function(utils)
					--     return utils.root_has_file({'.eslint.js'})
					--   end
					-- }),
				},
			})
		end,
	},
}
