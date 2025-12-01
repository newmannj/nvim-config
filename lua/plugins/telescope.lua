return {
  'nvim-telescope/telescope.nvim',
  tag = '0.1.8',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    local builtin = require 'telescope.builtin'
    -- Finding things
    vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = '[F]ind [f]iles' })
    vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = '[F]ind with [g]rep' })
    vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = '[F]ind in [b]uffers' })
    -- Lsp stuff
    vim.keymap.set('n', 'grd', builtin.lsp_definitions, { desc = '[G]o to [d]efinitions' })
    vim.keymap.set('n', 'grr', function()
      builtin.lsp_references { show_line = false }
    end, { desc = '[G]o to [r]eferences' })
  end,
}
