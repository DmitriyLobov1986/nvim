return {
  'nvim-telescope/telescope.nvim',
  tag = '0.1.8',
  dependencies = { 'nvim-lua/plenary.nvim' },
  opts = require 'configs.telescope_config',
  config = function(_, opts)
    local telescope = require 'telescope'
    telescope.load_extension 'noice'
    telescope.setup(opts)
  end,
}
