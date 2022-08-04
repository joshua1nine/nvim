-- Shorten function name
local keymap = vim.keymap.set

--Remap space as leader key
keymap("", "<Space>", "<Nop>", { silent = true })
vim.g.mapleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Normal --
-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", { desc = "Pane Navigation: Left", silent = true })
keymap("n", "<C-j>", "<C-w>j", { desc = "Pane Navigation: Right", silent = true })
keymap("n", "<C-k>", "<C-w>k", { desc = "Pane Navigation: Up", silent = true })
keymap("n", "<C-l>", "<C-w>l", { desc = "Pane Navigation: Down", silent = true })

-- Navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", { desc = "Next Buffer", silent = true })
keymap("n", "<S-h>", ":bprevious<CR>", { desc = "Prev Buffer", silent = true })

-- Clear highlights
keymap("n", "<leader>h", "<cmd>nohlsearch<CR>", { desc = "Clear highlights", silent = true })

-- Close buffer
keymap("n", "<leader>c", "<cmd>Bdelete<CR>", { desc = "Close Buffer", silent = true })

-- Close pane
keymap("n", "<leader>q", ":q<CR>", { desc = "Close Pane", silent = true })

-- Source current filename
keymap("n", "<leader>x", ":so<CR>", { desc = "Source File"})

-- Better paste
keymap("v", "p", '"_dP', { silent = true })

-- Write Buffer
keymap("n", "<leader>w", ":w<CR>", { desc = "Save Buffer", silent = true })

-- Insert --
-- Press jk fast to enter
keymap("i", "jk", "<ESC>", { silent = true })

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", { silent = true })
keymap("v", ">", ">gv", { silent = true })

-- Plugins --

-- NvimTree
keymap("n", "<leader>e", ":NvimTreeToggle<CR>", { desc = "File Explorer", silent = true })

-- Telescope
keymap("n", "<leader>ff", ":Telescope find_files<CR>", { desc = "Files", silent = true })
keymap("n", "<leader>ft", ":Telescope live_grep<CR>", { desc = "Text", silent = true })
keymap("n", "<leader>fp", ":Telescope projects<CR>", { desc = "Projects", silent = true })
keymap("n", "<leader>fb", ":Telescope buffers<CR>", { desc = "Buffers", silent = true })
keymap("n", "<leader>fd", ":Telescope diagnostics<CR>", { desc = "Diagnostics", silent = true })
keymap("n", "<leader>fh", ":Telescope help_tags<CR>", { desc="Help", silent = true })
