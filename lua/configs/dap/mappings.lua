local map = vim.keymap.set

map('n', '<F5>', function()
  require('dap').continue()
  require('dapui').open()
  require('nvim-tree.api').tree.close()
end)

map('n', '<F10>', function()
  require('dap').step_over()
end)

map('n', '<F11>', function()
  require('dap').step_into()
end)

map('n', '<F12>', function()
  require('dap').step_out()
end)

map('n', '<F9>', function()
  require('dap').toggle_breakpoint()
  require('dapui').update_render {}
end)

map('n', '<leader>du', function()
  require('dapui').toggle()
  require('nvim-tree.api').tree.close()
end, { desc = 'toggle debug ui' })

map('n', '<leader>dr', function()
  require('dapui').float_element 'repl'
end, { desc = 'float repl' })

map('n', '<leader>ds', function()
  require('dapui').float_element 'scopes'
end, { desc = 'float scopes' })

map('n', '<leader>de', function()
  require('dapui').eval()
end, { desc = 'evaluate expression' })

-- SIGNS
vim.api.nvim_set_hl(0, 'DapBreakpoint', { fg = '#993939' })
vim.api.nvim_set_hl(0, 'DapStopped', { fg = '#4d8066' })
-- vim.api.nvim_set_hl(namespace, "DapLogPoint", { fg = "#eaeaeb", bg = "#ffffff" })
--
vim.fn.sign_define('DapBreakpoint', {
  text = '🔴',
  texthl = 'DapBreakpoint',
  linehl = 'DapBreakpoint',
  numhl = 'DapBreakpoint',
})
vim.fn.sign_define('DapStopped', {
  text = '',
  texthl = 'DapStopped',
  linehl = 'DapStopped',
  numhl = 'DapStopped',
})
-- vim.fn.sign_define(
--   "DapBreakpointCondition",
--   { text = "ﳁ", texthl = "DapBreakpoint", linehl = "DapBreakpoint", numhl = "DapBreakpoint" }
-- )
-- vim.fn.sign_define(
--   "DapBreakpointRejected",
--   { text = "", texthl = "DapBreakpoint", linehl = "DapBreakpoint", numhl = "DapBreakpoint" }
-- )
-- vim.fn.sign_define(
--   "DapLogPoint",
--   { text = "", texthl = "DapLogPoint", linehl = "DapLogPoint", numhl = "DapLogPoint" }
-- )
