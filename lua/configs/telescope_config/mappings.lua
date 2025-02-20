local map = vim.keymap.set

map(
  'n',
  '<leader>fn',
  ':Telescope noice <CR>',
  { desc = 'use noice extension' }
)

map(
  'n',
  '<leader>fd',
  ':Telescope diagnostics <CR>',
  { desc = 'show messages' }
)
