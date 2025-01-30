return {
	"nvim-tree/nvim-tree.lua",
	dependencies = "nvim-tree/nvim-web-devicons",
	config = function()
		local nvimtree = require("nvim-tree")

		vim.g.loaded_netrw = 1
		vim.g.loaded_netrwPlugin = 1

		local function my_on_attach(bufnr)
			local api = require("nvim-tree.api")

			local function opts(desc)
				return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
			end

			-- default mappings
			api.config.mappings.default_on_attach(bufnr)

         local openShut = function ()
			   api.node.open.edit()
            api.tree.close()
         end

         local map = vim.keymap.set

			-- custom mappings
			map("n", "l", api.node.open.edit, opts("Open File") )
			map("n", "<CR>", openShut, opts("Open File") )
			map("n", "o", openShut, opts("Open File") )
			map("n", "h", api.node.navigate.parent_close, opts("Close Dir") )
			map("n", "v", api.node.open.vertical, opts("Open Vertical Split") )
			map("n", "t", api.node.open.tab, opts("Open in new Tab") )
			--
		end

		nvimtree.setup({
			on_attach = my_on_attach,
			view = {
				width = 35,
			},
			actions = {
				open_file = {
					window_picker = {
						enable = false,
					},
				},
			},
			filters = {
				custom = { ".DS_Store" },
			},
			git = {
				ignore = false,
			},
		})

		vim.keymap.set("n", "<leader>ee", "<cmd>NvimTreeFindFileToggle<CR>", { desc = "Toggle file explorer" })
		vim.keymap.set("n", "<leader>er", "<cmd>NvimTreeRefresh<CR>", { desc = "Toggle file explorer" })
		vim.keymap.set("n", "<leader>ec", "<cmd>NvimTreeCollapse<CR>", { desc = "Toggle file explorer" })
	end,
}
