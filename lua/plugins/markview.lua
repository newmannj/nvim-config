return {
  'OXY2DEV/markview.nvim',
  lazy = false,
  config = function()
    require('markview').setup {
      preview = { enable = false },
    }
    vim.keymap.set('n', '<leader>ms', '<CMD>Markview splitToggle<CR>', { desc = '[M]arkview [s]plit toggle' })
  end,
  -- Completion for `blink.cmp`
  -- dependencies = { "saghen/blink.cmp" },
}
