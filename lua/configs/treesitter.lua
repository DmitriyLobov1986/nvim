local opts = {
  ensure_installed = {
    'vim',
    'lua',
    'vimdoc',
    'html',
    'css',
    'javascript',
    'typescript',
    'json',
    'jsonc',
  },
  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = '<A-s>n', -- set to `false` to disable one of the mappings
      node_incremental = '<A-s>n',
      scope_incremental = '<A-s>c',
      node_decremental = '<A-s>m',
    },
  },
}

return opts
