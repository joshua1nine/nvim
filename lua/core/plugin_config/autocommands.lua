-- Format on Save
vim.api.nvim_create_autocmd({ "BufWritePre" }, {
	pattern = { "*.php", "*.lua", "*.js", "*.jsx", "*.cjs", "*.ts", "*.tsx", "*.css", "*.md", "*.html" },
	callback = function()
		vim.lsp.buf.format()
	end,
})

-- [[ Highlight on yank ]]
-- See `:help vim.highlight.on_yank()`
local highlight_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })
vim.api.nvim_create_autocmd('TextYankPost', {
	callback = function()
		vim.highlight.on_yank()
	end,
	group = highlight_group,
	pattern = '*',
})
