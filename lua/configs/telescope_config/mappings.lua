local map = vim.keymap.set
local unmap = vim.keymap.del

unmap('n', '<leader>gt')
unmap('n', '<leader>cm')

map('n', '<leader>gs', ':Telescope git_status <CR>', { desc = 'git status' })

map('n', '<leader>gc', ':Telescope git_commits <CR>', { desc = 'git commits' })

map(
  'n',
  '<leader>fn',
  ':Telescope noice <CR>',
  { desc = 'show noice messages' }
)

map(
  'n',
  '<leader>fd',
  ':Telescope diagnostics <CR>',
  { desc = 'show diagnostics' }
)
