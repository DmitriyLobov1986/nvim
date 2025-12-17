return {
  {
    'mfussenegger/nvim-dap',
    config = function()
      require 'configs.dap.configuration'
      require 'configs.dap.debug_configs'
      require 'dapui'
    end,
  },
  {
    'rcarriga/nvim-dap-ui',
    opts = require 'configs.dap.dapui_config',
    dependencies = { 'mfussenegger/nvim-dap', 'nvim-neotest/nvim-nio' },
  },
  -- {
  --   'mxsdev/nvim-dap-vscode-js',
  --   opts = {
  --     debugger_path = '$HOME/.local/share/nvim/mason/packages/js-debug-adapter/js-debug/src/dapDebugServer.js',
  --   },
  -- },
}
