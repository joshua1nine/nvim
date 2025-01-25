return {
   "github/copilot.vim",
   enabled = false,
   opts = {},
   keys = {
      { "<leader>cd", "<cmd>Copilot disable<CR>", "n", desc = "Disable Copilot" },
      { "<leader>ce", "<cmd>Copilot enable<CR>", "n", desc = "Enable Copilot" },
      { "<leader>cp", "<cmd>Copilot panel<CR>", "n", desc = "Copilot Panel" },
      { "<leader>cs", "<cmd>Copilot status<CR>", "n", desc = "Copilot Status" },
   },
}
