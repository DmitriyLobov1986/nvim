require 'nvchad.options'

-- add yours here!

local o = vim.o
local g = vim.g

-- folding
o.foldmethod = 'expr'
o.foldexpr = 'nvim_treesitter#foldexpr()'
o.foldlevelstart = 99

o.cursorlineopt = 'both' -- to enable cursorline!

o.relativenumber = true

-- clipboard
-- o.clipboard = 'unnamedplus'

g.clipboard = {
  name = 'tmuxClipboard',
  copy = {
    ['+'] = { 'tmux', 'load-buffer', '-' },
    ['*'] = { 'tmux', 'load-buffer', '-' },
  },
  paste = {
    ['+'] = { 'tmux', 'save-buffer', '-' },
    ['*'] = { 'tmux', 'save-buffer', '-' },
  },
  cache_enabled = 1,
}
-- g.clipboard = {
--   name = 'OSC 52',
--   copy = {
--     ['+'] = require('vim.ui.clipboard.osc52').copy '+',
--     ['*'] = require('vim.ui.clipboard.osc52').copy '*',
--   },
--   paste = {
--     ['+'] = require('vim.ui.clipboard.osc52').paste '+',
--     ['*'] = require('vim.ui.clipboard.osc52').paste '*',
--   },
--   cache_enabled = 0,
-- }
