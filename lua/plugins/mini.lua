return {
  {
    'echasnovski/mini.nvim',
    version = '*',
    enabled = true,
    config = function()
      require('mini.statusline').setup({
        use_icons = true
      })
      require('mini.ai').setup()
      require('mini.surround').setup()
      require('mini.pairs').setup()
      require('mini.bracketed').setup()
      require('mini.starter').setup()
      require('mini.comment').setup()
      -- require('mini.tabline').setup()
    end
  }
}
