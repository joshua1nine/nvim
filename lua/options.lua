vim.g.mapleader = " "

-- [[ setting options ]]
-- See `:help vim.o`

vim.o.tabstop = 3
vim.o.softtabstop = 3
vim.o.shiftwidth = 3
vim.o.expandtab = true

-- Set highlight on search
vim.o.hlsearch = false
vim.o.incsearch = true

-- Make line numbers default
vim.wo.number = true

-- Relative numbers
vim.o.relativenumber = true

-- Enable mouse mode
vim.o.mouse = "a"

-- Spell check
vim.o.spelllang = "en_us"
vim.o.spell = true

-- Sync clipboard between OS and Neovim.
--  Remove this option if you want your OS clipboard to remain independent.
--  See `:help 'clipboard'`
vim.schedule(function()
	vim.o.clipboard = "unnamedplus"
end)

-- Don't show the mode, since it's already in the status line
vim.o.showmode = false

-- Scroll towards the end of the file
vim.o.scrolloff = 8

-- Enable break indent
vim.o.breakindent = true

-- Save undo history
vim.o.undofile = true

-- Case-insensitive searching UNLESS \C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true

-- Keep signcolumn on by default
vim.wo.signcolumn = "yes"

-- Decrease update time
vim.o.updatetime = 250
vim.o.timeoutlen = 300

-- Set completeopt to have a better completion experience
vim.o.completeopt = "menuone,noselect,preview"

-- You should make sure your terminal supports this
vim.o.termguicolors = true
