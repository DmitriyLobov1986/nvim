return {
  {
    'stevearc/conform.nvim',
    lazy = true,
    event = 'BufWritePre', -- uncomment for format on save
    opts = require 'configs.conform',
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    'neovim/nvim-lspconfig',
    config = function()
      require 'configs.lspconfig'
    end,
  },

  -- {
  --   'williamboman/mason.nvim',
  --   opts = require 'configs.mason',
  -- },

  {
    'nvim-treesitter/nvim-treesitter',
    -- enabled = false,
    init = function()
      vim.cmd 'hi @comment gui=NONE'
    end,
    opts = require 'configs.treesitter',
  },

  {
    'stevearc/dressing.nvim',
    lazy = true,
    -- event = 'VimEnter',
    event = 'VeryLazy',
    opts = {},
  },

  {
    'fedepujol/move.nvim',
    event = 'VeryLazy',
    opts = require 'configs.move',
  },

  {
    'hadronized/hop.nvim',
    branch = 'v2',
    lazy = true,
    event = 'VeryLazy',
    opts = require 'configs.hop_config',
  },

  {
    'nvim-tree/nvim-tree.lua',
    lazy = true,
    opts = require 'configs.nvim-tree',
  },

  -- picker
  {
    'uga-rosa/ccc.nvim',
    -- event = 'VeryLazy',
    cmd = 'CccPick',
    opts = {},
  },

  -- outline
  {
    'hedyhli/outline.nvim',
    lazy = true,
    cmd = { 'Outline', 'OutlineOpen' },
    keys = { -- Example mapping to toggle outline
      { '<leader>o', '<cmd>Outline<CR>', desc = 'Toggle outline' },
    },
    opts = {
      -- Your setup opts here
    },
  },

  -- git
  {
    'sindrets/diffview.nvim',
    -- event = 'VeryLazy',
    opts = {},
    keys = { -- Example mapping to toggle outline
      { '<leader>gd', '<cmd>DiffviewOpen<CR>', desc = 'Open Diff view' },
    },
  },
}
