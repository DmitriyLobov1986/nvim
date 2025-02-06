return {
  {
    'mfussenegger/nvim-dap',
    config = function()
      require 'configs.dap.configuration'
      require 'dapui'
    end,
  },
}
