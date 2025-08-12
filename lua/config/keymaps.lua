local map = function(mode, keys, func, desc)
   vim.keymap.set(mode, keys, func, desc)
end

-- Source file and re-execute it
map("n", "<space><space>x", "<cmd>source %<CR>", { desc = "Source file" })

-- Execute current line
map("n", "<space>x", ":.lua<CR>", { desc = "Execute current line" })

-- Execute selection
map("v", "<space>x", ":lua<CR>", { desc = "Execute selection" })

-- Save file
map("n", "<space>w", "<cmd>w<CR>", { desc = "Save file" })

-- Move between windows
map("n", "<C-l>", "<C-w>l", { desc = "Move to right window" })
map("n", "<C-h>", "<C-w>h", { desc = "Move to left window" })
map("n", "<C-j>", "<C-w>j", { desc = "Move to bottom window" })
map("n", "<C-k>", "<C-w>k", { desc = "Move to top window" })
map("n", "<C-q>", "<C-w>q", { desc = "Close focused window" })

-- Keep cursor in the middle when jumping around
map("n", "<C-d>", "<C-d>zz")
map("n", "<C-u>", "<C-u>zz")

map({ "n", "v" }, "<S-j>", "8j")
map({ "n", "v" }, "<S-k>", "8k")
map({ "n", "v" }, "<S-h>", "^")
map({ "n", "v" }, "<S-l>", "$")

-- Remap for dealing with word wrap
map("n", "k", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
map("n", "j", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- Keep cursor in the middle when searching
map("n", "n", "nzzzv")
map("n", "N", "Nzzzv")

-- Find and replace whats under the cursor
map("n", "<leader>rw", ":%s/<C-r><C-w>/<C-r><C-w>/gc<Left><Left><Left>", { desc = "Replace word under cursor" })

-- Start a find and replace in the whole file
map("n", "<leader>rf", ":%s///gc<Left><Left><Left><Left>", { desc = "Replace word in file" })

-- Find an replace on line
map("n", "<leader>rl", ":s///g<Left><Left><Left>", { desc = "Replace word in line" })

-- Find an replace on line with confirmation
map("n", "<leader>rc", ":s///gc<Left><Left><Left>", { desc = "Replace word in line with confirmation" })

-- Navigate buffers
map("n", "<leader>bp", ":bprev<CR>", { desc = "Previous buffer" })
map("n", "<leader>bn", ":bnext<CR>", { desc = "Next buffer" })

map("n", "<leader>cp", ":cprev<CR>", { desc = "Previous buffer" })
map("n", "<leader>cn", ":cnext<CR>", { desc = "Next buffer" })

-- Quicker Indentation
map("n", "<Tab>", ">>")
map("n", "<S-Tab>", "<<")

map("v", "<Tab>", ">gv")
map("v", "<S-Tab>", "<gv")

-- File swapping
-- map("n", "<C-p>", "<C-^>", { desc = "Swap between last two files" })

-- Tab navigation
map("n", "<leader>to", "<cmd>tabnew<CR>", {desc = "Open new tab"})
map("n", "<leader>tx", "<cmd>tabclose<CR>", {desc = "Close current tab"})
map("n", "<leader>tn", "<cmd>tabn<CR>", {desc = "Go to next tab"})
map("n", "<leader>tp", "<cmd>tabp<CR>", {desc = "Go to prev tab"})
map("n", "<leader>tf", "<cmd>tabnew %<CR>", {desc = "Open current buffer in new tab"})

-- Don't ever press capital Q! Honestly it's the worst place in the universe
map("n", "Q", "<nop>")


map("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })
