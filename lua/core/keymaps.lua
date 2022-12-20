-- [[ Basic Keymaps ]]
-- Set <space> as the leader key
-- See `:help mapleader`
--  NOTE: Must happen before plugins are required (otherwise wrong leader will be used)
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
keymap("n", "<C-l>", "<C-w>l", { desc = "Pane Navigation: Right", silent = true })

-- Move Cursor to center
keymap("n", "<C-d>", "<C-d>zz", { silent = true })
keymap("n", "<C-u>", "<C-u>zz", { silent = true })

-- Keep search terms in the center
keymap("n", "n", "nzzzv")
keymap("n", "N", "Nzzzv")

-- Clear highlights
keymap("n", "<leader>h", "<cmd>nohlsearch<CR>", { desc = "Clear highlights", silent = true })

-- Close buffer
keymap("n", "<leader>c", "<cmd>Bdelete<CR>", { desc = "Close Buffer", silent = true })

-- Close pane
keymap("n", "<leader>q", ":q<CR>", { desc = "Close Pane", silent = true })

-- Source current filename
keymap("n", "<leader>x", ":so<CR>", { desc = "Source File" })

-- Write Buffer
keymap("n", "<leader>w", ":w<CR>", { desc = "Save Buffer", silent = true })

-- Replace word in file
keymap("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Add line in normal mode
keymap("n", "<CR>", "o<ESC>")
keymap("n", "<C-Enter>", "O<ESC>")

-- Tab in normal mode
keymap("n", "<Tab>", ">>")
keymap("n", "<S-Tab>", "<<")

-- Better paste
keymap("v", "p", '"_dP', { silent = true })

-- Move while highlighted
keymap("v", "J", ":m '>+1<CR>gv=gv")
keymap("v", "K", ":m '<-2<CR>gv=gv")

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", { silent = true })
keymap("v", ">", ">gv", { silent = true })
