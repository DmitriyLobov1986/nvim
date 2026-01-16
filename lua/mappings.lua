require 'nvchad.mappings'

-- add yours here
local map = vim.keymap.set

map('n', ';', ':', { desc = 'CMD enter command mode' })

map({ 'i', 'v' }, 'zz', '<ESC>', { desc = 'toggle normal mode' })

-- map('n', '<A-\\>', 'i', { desc = 'toggle insert mode' })

map({ 'n', 'i', 'v' }, '<C-s>', '<cmd> w <cr>', { desc = 'save file' })

-- close all buffers
map('n', '<leader>X', function()
  require('nvchad.tabufline').closeAllBufs()
end, { desc = 'close all buffers' })

-- windows
map(
  'n',
  '<C-S-Left>',
  '<cmd> vertical resize +1<cr>',
  { desc = 'increase width' }
)
map(
  'n',
  '<C-S-Right>',
  '<cmd> vertical resize -1<cr>',
  { desc = 'deccrease width' }
)
map('n', '<C-S-Up>', '<cmd> resize +1<cr>', { desc = 'deccrease height' })
map('n', '<C-S-Down>', '<cmd> resize -1<cr>', { desc = 'deccrease height' })

-- tabs
map('n', '<leader>tq', '<cmd> tabclose! <cr>', { desc = 'close current tab' })

-- terminal
map({ 'n', 't' }, '<A-x>', function()
  require('nvchad.term').toggle { pos = 'sp', size = 0.3 }
end, { desc = 'terminal toggleable horizontal term' })

-- move lines
local opts = { noremap = true, silent = true }
-- Normal-mode commands
map('n', '<A-j>', ':MoveLine(1)<CR>', opts)
map('n', '<A-k>', ':MoveLine(-1)<CR>', opts)
map('n', '<A-h>', ':MoveHChar(-1)<CR>', opts)
map('n', '<A-l>', ':MoveHChar(1)<CR>', opts)
map('n', '<leader>wf', ':MoveWord(1)<CR>', opts)
map('n', '<leader>wb', ':MoveWord(-1)<CR>', opts)

-- Visual-mode commands
map('v', '<A-j>', ':MoveBlock(1)<CR>', opts)
map('v', '<A-k>', ':MoveBlock(-1)<CR>', opts)
map('v', '<A-h>', ':MoveHBlock(-1)<CR>', opts)
map('v', '<A-l>', ':MoveHBlock(1)<CR>', opts)

-- hop
require 'configs.hop_config.mappings'

-- dap
require 'configs.dap.mappings'

-- telescope
require 'configs.telescope_config.mappings'

-- lsp
local wk = require 'which-key'
wk.add {
  'gh',
  function()
    vim.lsp.buf.hover()
  end,
  desc = 'LSP buffer hover',
}

wk.add {
  '<leader>cr',
  function()
    vim.lsp.buf.rename()
  end,
  desc = 'LSP NvRenamer',
}

-- -- persistence
-- map('n', '<leader>sr', function()
--   require('persistence').load()
-- end, { desc = 'restore last session' })
