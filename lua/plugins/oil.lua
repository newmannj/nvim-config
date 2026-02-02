return {
  {
    'stevearc/oil.nvim',
    ---@module 'oil'
    ---@type oil.SetupOpts
    opts = {
      float = {
        max_width = 120,
        max_height = 30,
        border = 'rounded',
      },
      view_options = {
        is_hidden_file = function(name, bufnr)
          local m = name:match '^%.'
          return m ~= nil and name ~= '.env'
        end,
        is_always_hidden = function(name, bufnr)
          return name == '__pycache__' or name == 'node_modules'
        end,
      },
      keymaps = {
        ['<Esc><Esc>'] = 'actions.close',
      },
    },
    dependencies = { { 'nvim-mini/mini.icons', opts = {} } },
    keys = {
      { '<leader>E', '<cmd>Oil<cr>', desc = 'Explorer (buffer)' },
      { '<leader>e', '<cmd>Oil --float<cr>', desc = 'Explorer (float)' },
    },
    lazy = false,
  },
}
