return {
   {
      "stevearc/oil.nvim",
      dependencies = { { "echasnovski/mini.icons", opts = {} } },
      config = function()
         require("oil").setup()
         vim.keymap.set("n", "<leader>e", require("oil").toggle_float, { desc = "Open parent directory" })
      end,
   },
}
