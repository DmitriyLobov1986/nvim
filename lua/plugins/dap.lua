return {
  {
    'mfussenegger/nvim-dap',
    config = function()
      require 'configs.dap.configuration'
      require 'dapui'
    end,
  },
  {
    'rcarriga/nvim-dap-ui',
    opts = require 'configs.dap.dapui_config',
    dependencies = { 'mfussenegger/nvim-dap', 'nvim-neotest/nvim-nio' },
  },
}
