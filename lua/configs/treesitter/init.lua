local parser_config = require('nvim-treesitter.parsers').get_parser_configs()

parser_config.bsl = {
  install_info = {
    url = 'https://github.com/alkoleft/tree-sitter-bsl', -- URL of the grammar
    files = { 'grammars/bsl/src/parser.c' },
    branch = 'develop',                                  -- Use the develop branch for latest fixes
    generate_requires_npm = false,
    requires_generate_from_grammar = false,
  },
  filetype = 'bsl', -- Map this parser to the 'bsl' filetype
}

local opts = {
  ensure_installed = {
    'vim',
    'lua',
    'vimdoc',
    'html',
    'css',
    'javascript',
    'typescript',
    'json',
    'jsonc',
  },

  highlight = { enable = true },

  textobjects = {
    select = {
      enable = true,
      lookahead = true,
      keymaps = {
        ['af'] = '@function.outer',
        ['if'] = '@function.inner',
        ['ac'] = '@class.outer',
        ['ic'] = {
          query = '@class.inner',
          desc = 'Select inner part of a class region',
        },
        ['as'] = {
          query = '@local.scope',
          query_group = 'locals',
          desc = 'Select language scope',
        },
      },
      selection_modes = {
        ['@parameter.outer'] = 'v', -- charwise
        ['@function.outer'] = 'V',  -- linewise
        ['@class.outer'] = '<c-v>', -- blockwise
      },
      include_surrounding_whitespace = true,
    },
    swap = {
      enable = true,
      swap_next = {
        ['<leader>a'] = '@parameter.inner',
      },
      swap_previous = {
        ['<leader>A'] = '@parameter.inner',
      },
    },
  },
}

return opts
