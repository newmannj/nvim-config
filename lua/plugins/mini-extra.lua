return {
  'nvim-mini/mini.extra',
  tag = 'v0.16.0',
  version = '*',
  dependencies = { 'nvim-mini/mini.pick' },
  config = function()
    local pick = require 'mini.pick'
    -- Find files, live grep, buffers
    vim.keymap.set('n', '<leader>ff', pick.builtin.files, { desc = '[F]ind [f]iles' })
    vim.keymap.set('n', '<leader>fg', pick.builtin.grep_live, { desc = '[F]ind with [g]rep' })
    vim.keymap.set('n', '<leader>fb', pick.builtin.buffers, { desc = '[F]ind in [b]uffers' })
    local extra = require 'mini.extra'
    -- vim.keymap.set('n', 'grd', extra.pickers.lsp, { scope = 'definition', desc = '[G]o to [d]efinitions' })
    vim.keymap.set('n', 'grr', function()
      extra.pickers.lsp { scope = 'references' }
    end, { desc = '[G]o to [r]eferences' })
    vim.keymap.set('n', 'grd', function()
      extra.pickers.lsp { scope = 'definition' }
    end, { desc = '[G]o to [d]efinition' })
    vim.api.nvim_set_hl(0, 'MiniPickSelection', {
      link = 'Visual',
    })

    vim.api.nvim_set_hl(0, 'MiniPickMatchCurrent', {
      link = 'CursorLine',
    })
  end,
}
