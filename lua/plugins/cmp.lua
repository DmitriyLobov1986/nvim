return {
  {
    -- enabled = false,
    'hrsh7th/nvim-cmp',
    dependencies = {
      'hrsh7th/cmp-nvim-lsp-signature-help',
    },
    opts = {
      experimental = {
        ghost_text = true,
      },
      -- sources = {
      --   { name = 'nvim_lsp_signature_help' },
      -- },
    },
    config = function(_, opts)
      local cmp = require 'cmp'
      table.insert(opts.sources, { name = 'nvim_lsp_signature_help' })
      cmp.setup(opts)
    end,
  },
}
