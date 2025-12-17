require 'nvchad.options'

-- add yours here!

local o = vim.o

-- folding
o.foldmethod = 'expr'
o.foldexpr = 'nvim_treesitter#foldexpr()'
o.foldlevelstart = 99

o.cursorlineopt = 'both' -- to enable cursorline!

o.relativenumber = true

-- clipboard
o.clipboard = 'unnamedplus'

o.diffopt = o.diffopt .. ',iwhiteall'

-- filetypes
vim.filetype.add { extension = { bsl = 'bsl' } }
vim.filetype.add { extension = { yml = 'yaml.docker-compose' } }

-- g.clipboard = {
--   name = 'tmuxClipboard',
--   copy = {
--     ['+'] = { 'tmux', 'load-buffer', '-' },
--     ['*'] = { 'tmux', 'load-buffer', '-' },
--   },
--   paste = {
--     ['+'] = { 'tmux', 'save-buffer', '-' },
--     ['*'] = { 'tmux', 'save-buffer', '-' },
--   },
--   cache_enabled = 1,
-- }
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
