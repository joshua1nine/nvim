return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      local configs = require("nvim-treesitter.configs")
      configs.setup({
        ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "javascript", "html" },
        highlight = { enable = true },
        indent = { enable = true },
        textobjects = {
          select = {
            enable = false
          }
        }
      })
    end,
  }
}
