local dap = require 'dap'
require('dap.ext.vscode').load_launchjs(nil, {})
local types = { 'pwa-node', 'pwa-chrome' }

for _, type in ipairs(types) do
  dap.adapters[type] = {
    type = 'server',
    host = '127.0.0.1',
    port = '${port}',
    executable = {
      command = 'js-debug-adapter',
      -- command = 'node',
      args = {
        --   -- '/home/user001/.local/share/nvim/mason/packages/js-debug-adapter/js-debug/src/dapDebugServer.js',
        --   -- '/root/.local/share/nvim/mason/packages/js-debug-adapter/js-debug/src/dapDebugServer.js',
        '${port}',
      },
    },
  }
end

-- bash
dap.adapters.bashdb = {
  type = 'executable',
  command = vim.fn.stdpath 'data'
    .. '/mason/packages/bash-debug-adapter/bash-debug-adapter',
  name = 'bashdb',
}

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
