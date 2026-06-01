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
  { 'theHamsta/nvim-dap-virtual-text', lazy = false, config = true }
}
