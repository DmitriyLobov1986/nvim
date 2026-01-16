return {
  'natecraddock/sessions.nvim',
  event = 'BufReadPre', -- this will only start session saving when an actual file was opened
  opts = {},
}
