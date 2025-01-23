return {
  "github/copilot.vim",
  enabled = false,
  config = function()
    vim.keymap.set("n", "<leader>cd", "<cmd>Copilot disable<CR>", { desc = "Disable Copilot" })
    vim.keymap.set("n", "<leader>ce", "<cmd>Copilot enable<CR>", { desc = "Enable Copilot" })
    vim.keymap.set("n", "<leader>cp", "<cmd>Copilot panel<CR>", { desc = "Copilot Panel" })
    vim.keymap.set("n", "<leader>cs", "<cmd>Copilot status<CR>", { desc = "Copilot Panel" })
  end,
}
