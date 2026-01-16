local dap = require 'dap'

-- sh
dap.configurations.sh = {
  {
    type = 'bashdb',
    request = 'launch',
    name = 'Debug bash files',
    showDebugOutput = true,
    pathBashdb = vim.fn.stdpath 'data'
      .. '/mason/packages/bash-debug-adapter/extension/bashdb_dir/bashdb',
    pathBashdbLib = vim.fn.stdpath 'data'
      .. '/mason/packages/bash-debug-adapter/extension/bashdb_dir',
    trace = true,
    file = '${file}',
    program = '${file}',
    cwd = '${workspaceFolder}',
    pathCat = 'cat',
    pathBash = '/bin/bash',
    pathMkfifo = 'mkfifo',
    pathPkill = 'pkill',
    args = {},
    env = {},
    terminalKind = 'integrated',
  },
}

dap.configurations.lua = {
  {
    name = 'lua file debugging',
    type = 'local-lua',
    request = 'launch',
    cwd = '${workspaceFolder}',
    program = {
      -- lua = 'lua5.1',
      lua = '/usr/local/share/nvim/lua-5.4.7/src/lua',
      file = '${file}',
    },
    args = {},
    showDebugOutput = true,
  },
}
