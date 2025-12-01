return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  opts = {
    options = {
      theme = 'auto',
      component_separators = '',
    },
    sections = {
      lualine_a = { 'mode' },
      lualine_b = { { 'filename', file_status = false, path = 1 }, 'branch' },
      lualine_c = {
        '%=', --[[ add your center components here in place of this comment ]]
      },
      lualine_x = {},
      lualine_y = { 'filetype', 'progress' },
      lualine_z = { 'location' },
    },
  },
}
