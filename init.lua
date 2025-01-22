require("config.lazy")
require("options")
require("keymaps")

-- Highlight when yanking (copying) text
-- Try it with `yap` in normal mode
-- See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd('TextYankPost', {
	desc = 'Highlight when yanking (copying) text',
	group = vim.api.nvim_create_augroup('kickstart-haighlight-yank', {clear = ture}),
	callback = function()
		vim.highlight.on_yank()
	end,
})
