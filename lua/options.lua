require 'nvchad.options'

-- add yours here!

local o = vim.o

-- folding
o.foldmethod = 'expr'
o.foldexpr = 'nvim_treesitter#foldexpr()'
o.foldlevelstart = 99

o.cursorlineopt = 'both' -- to enable cursorline!
o.relativenumber = true
