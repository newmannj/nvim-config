return {
  cmd = { 'ty', 'server' },
  filetypes = { 'python' },
  root_markers = {
    'ty.toml',
    'pyproject.toml',
    '.git',
  },
  single_file_support = true,
  settings = {
    ty = {
      configuration = {
        environment = { root = { 'backend' } },
      },
      diagnosticMode = 'off',
    },
  },
}
