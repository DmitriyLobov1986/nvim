local map = vim.keymap.set

map("n", "<F5>", function()
  require("dap").continue()
  require("dapui").open()
  require("nvim-tree.api").tree.close()
end)

map("n", "<F10>", function()
  require("dap").step_over()
end)

map("n", "<F11>", function()
  require("dap").step_into()
end)

map("n", "<F12>", function()
  require("dap").step_out()
end)

map("n", "<F9>", function()
  require("dap").toggle_breakpoint()
  require("dapui").update_render {}
end)

map("n", "<leader>du", function()
  require("dapui").toggle()
  require("nvim-tree.api").tree.close()
end, { desc = "toggle debug ui" })

map({ "n", "v" }, "<Leader>dh", function()
  require("dap.ui.widgets").hover()
end)
-- map({ "n", "v" }, "<Leader>dp", function()
--   require("dap.ui.widgets").preview()
-- end)
map("n", "<Leader>df", function()
  local widgets = require "dap.ui.widgets"
  widgets.centered_float(widgets.frames)
end)

map("n", "<Leader>ds", function()
  local widgets = require "dap.ui.widgets"
  widgets.centered_float(widgets.scopes)
end)

-- SIGNS
vim.api.nvim_set_hl(0, "DapBreakpoint", { fg = "#993939" })
vim.api.nvim_set_hl(0, "DapStopped", { fg = "#4d8066" })
-- vim.api.nvim_set_hl(namespace, "DapLogPoint", { fg = "#eaeaeb", bg = "#ffffff" })
--
vim.fn.sign_define(
  "DapBreakpoint",
  { text = "🔴", texthl = "DapBreakpoint", linehl = "DapBreakpoint", numhl = "DapBreakpoint" }
)
vim.fn.sign_define("DapStopped", { text = "", texthl = "DapStopped", linehl = "DapStopped", numhl = "DapStopped" })
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
