return {
  'nvim-treesitter/nvim-treesitter',
  branch = 'master',
  lazy = false,
  build = ':TSUpdate',
  opts = { auto_install = true, ensure_installed = { 'python', 'javascript', 'typescript', 'lua' }, highlight = { enable = true } },
}
