return {
  'ibhagwan/fzf-lua',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    local fzf = require 'fzf-lua'

    fzf.setup {
      files = {
        no_ignore = true,
      },
    }

    -- Regular searching
    vim.keymap.set('n', '<leader>ff', fzf.files, { desc = '[F]ind [f]iles' })
    vim.keymap.set('n', '<leader>fg', fzf.live_grep, { desc = '[F]ind with [g]rep' })
    vim.keymap.set('n', '<leader>fb', fzf.buffers, { desc = '[F]ind in [b]uffers' })
  end,
}
