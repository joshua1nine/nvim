-- Harpoon

require("harpoon").setup()

vim.keymap.set(
	"n",
	"<leader>p",
	":lua require('harpoon.ui').toggle_quick_menu()<CR>",
	{ desc = "Toggle Harpoon", silent = true }
)
vim.keymap.set(
	"n",
	"<leader>a",
	":lua require('harpoon.mark').add_file()<CR>",
	{ desc = "Add file to Harpoon", silent = false }
)
vim.keymap.set("n", "<C-k>", ":lua require('harpoon.ui').nav_next()<CR>", { desc = "Next Harpoon File", silent = true })
vim.keymap.set("n", "<C-j>", ":lua require('harpoon.ui').nav_prev()<CR>",
	{ desc = "Previous Harpoon File", silent = true })
