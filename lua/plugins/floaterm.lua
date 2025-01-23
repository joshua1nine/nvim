return {
  "voldikss/vim-floaterm",
  enabled = false,
  config = function()
    vim.g.floaterm_width = 0.8
    vim.g.floaterm_height = 0.8

    vim.cmd([[
      highlight link Floaterm CursorLineBg
      highlight link FloatermBorder CursorLineBg
    ]])

    vim.keymap.set('n', '<C-\\>', ':FloatermToggle<CR>')
    vim.keymap.set('t', '<C-\\>', '<C-\\><C-n>:FloatermToggle<CR>')
  end
}
