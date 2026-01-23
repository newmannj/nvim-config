-- Alot of these are pulled from https://github.com/nvim-lua/kickstart.nvim/blob/master/init.lua
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.hl.on_yank()
  end,
})

vim.api.nvim_create_autocmd('BufWritePre', {
  callback = function()
    local clients = vim.lsp.get_active_clients { bufnr = 0 }
    for _, client in ipairs(clients) do
      if client.name == 'eslint' then
        vim.lsp.buf.code_action {
          apply = true,
          context = {
            only = {
              'source.fixAll.eslint',
            },
          },
        }
        return
      end
    end
  end,
})

vim.api.nvim_create_autocmd('LspAttach', {
  group = vim.api.nvim_create_augroup('lsp-attach', { clear = true }),
  callback = function(args)
    fzf = require 'fzf-lua'
    vim.keymap.set('n', 'grd', fzf.lsp_definitions, { desc = '[G]o to [d]efinitions' })
    vim.keymap.set('n', 'grr', fzf.lsp_references, { desc = '[G]o to [r]eferences' })
  end,
})
