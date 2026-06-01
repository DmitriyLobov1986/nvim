return {
  'saghen/blink.cmp',
  lazy = false,
  -- use a release tag to download pre-built binaries, versions > 0.10.0 recommend ^1
  version = '1.*',
  dependencies = { 'rafamadriz/friendly-snippets' },

  opts = {
    -- 'default' enables mappings similar to nvim-cmp
    -- 'super-tab' for tab-completion, 'enter' to use return key
    keymap = { preset = 'super-tab' },

    appearance = {
      -- Sets the fallback highlight groups to nvim-cmp's colors if your theme supports it
      use_nvim_cmp_as_default = true,
      nerd_font_variant = 'mono'
    },

    sources = {
      -- built-in sources include 'lsp', 'path', 'snippets', and 'buffer'
      default = { 'lsp', 'path', 'snippets', 'buffer' },
    },

    completion = { documentation = { auto_show = true } },
    signature = { enabled = true },

    -- menu = {
    --   -- nvim-cmp style menu
    --   draw = {
    --     columns = {
    --       { "label",     "label_description", gap = 1 },
    --       { "kind_icon", "kind" }
    --     },
    --   }
    -- },
  },
}
