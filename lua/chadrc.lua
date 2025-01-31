-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :(

---@type ChadrcConfig
local M = {}

M.base46 = {
  theme = "chadracula",

  hl_override = {
    NvDashAscii = { fg = "yellow" },
    Comment = { italic = true },
    ["@comment"] = { italic = true },
  },
}

M.ui = {
  statusline = {
    theme = "vscode_colored",
  },
}

M.term = {
  winopts = { number = false },
  sizes = { sp = 0.3, vsp = 0.2, ["bo sp"] = 0.3, ["bo vsp"] = 0.2 },
  float = {
    row = 0.3,
    col = 0.15,
    width = 0.7,
    height = 0.4,
    border = "single",
  },
}
M.nvdash = {
  load_on_startup = true,
  -- header = {
  --   "                            ",
  --   "     ▄▄         ▄ ▄▄▄▄▄▄▄   ",
  --   "   ▄▀███▄     ▄██ █████▀    ",
  --   "   ██▄▀███▄   ███           ",
  --   "   ███  ▀███▄ ███           ",
  --   "   ███    ▀██ ███           ",
  --   "   ███      ▀ ███           ",
  --   "   ▀██ █████▄▀█▀▄██████▄    ",
  --   "     ▀ ▀▀▀▀▀▀▀ ▀▀▀▀▀▀▀▀▀▀   ",
  --   "                            ",
  --   "     Powered By Neovim    ",
  --   "                            ",
  -- },
  --
  -- buttons = {
  --   { txt = "  Find File", keys = "Spc f f", cmd = "Telescope find_files" },
  --   -- { txt = "  Recent Files", keys = "Spc f o", cmd = "Telescope oldfiles" },
  --   -- more... check nvconfig.lua file for full list of buttons
  -- },
}

return M
