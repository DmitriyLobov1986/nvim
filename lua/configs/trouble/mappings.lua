local keys = {
  {
    '<leader>tx',
    '<cmd>Trouble diagnostics toggle<cr>',
    desc = 'Diagnostics (Trouble)',
  },
  -- {
  --   '<leader>xX',
  --   '<cmd>Trouble diagnostics toggle filter.buf=0<cr>',
  --   desc = 'Buffer Diagnostics (Trouble)',
  -- },
  {
    '<leader>ts',
    '<cmd>Trouble symbols toggle focus=false<cr>',
    desc = 'Symbols (Trouble)',
  },
  {
    '<leader>tl',
    '<cmd>Trouble lsp toggle focus=false win.position=right<cr>',
    desc = 'LSP Definitions / references / ... (Trouble)',
  },
  {
    '<leader>tL',
    '<cmd>Trouble loclist toggle<cr>',
    desc = 'Location List (Trouble)',
  },
  -- {
  --   '<leader>xQ',
  --   '<cmd>Trouble qflist toggle<cr>',
  --   desc = 'Quickfix List (Trouble)',
  -- },
}
return keys
