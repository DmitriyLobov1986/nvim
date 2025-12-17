local dap = require 'dap'
local types = { 'pwa-node', 'pwa-chrome' }

for _, type in ipairs(types) do
  dap.adapters[type] = {
    type = 'server',
    host = '::1',
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

-- lua
local adpPath =
  '/home/user001/.local/share/nvim/mason/packages/local-lua-debugger-vscode/'
dap.adapters['local-lua'] = {
  type = 'executable',
  command = 'node',
  args = {
    adpPath .. 'extension/debugAdapter.js',
  },
  enrich_config = function(config, on_config)
    if not config['extensionPath'] then
      local c = vim.deepcopy(config)
      c.extensionPath = adpPath
      on_config(c)
    else
      on_config(config)
    end
  end,
}
