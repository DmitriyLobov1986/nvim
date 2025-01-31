return {
  {
    "stevearc/conform.nvim",
    lazy = true,
    event = "BufWritePre", -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  {
    "williamboman/mason.nvim",
    opts = require "configs.mason",
  },

  {
    "nvim-treesitter/nvim-treesitter",
    -- enabled = false,
    opts = require "configs.treesitter",
  },

  {
    "stevearc/dressing.nvim",
    lazy = true,
    event = "VimEnter",
    opts = {},
  },

  {
    "fedepujol/move.nvim",
    lazy = true,
    event = "VimEnter",
    opts = require "configs.move",
  },

  {
    "hadronized/hop.nvim",
    branch = "v2",
    lazy = true,
    event = "VimEnter",
    opts = require "configs.hop",
  },

  {
    "nvim-tree/nvim-tree.lua",
    lazy = true,
    opts = require "configs.nvim-tree",
  },

  -- dap
  {
    "mfussenegger/nvim-dap",
    config = function()
      require "configs.dap.configuration"
      require "dapui"
    end,
  },
  { "rcarriga/nvim-dap-ui", opts = {}, dependencies = { "mfussenegger/nvim-dap", "nvim-neotest/nvim-nio" } },

  -- picker
  {
    "uga-rosa/ccc.nvim",
    lazy = false,
    opts = {},
  },
}
