return {
  'mfussenegger/nvim-lint',
  -- enabled = false,
  opts = {
    linters = {
      eslint_d = {
        args = {
          '--no-warn-ignored', -- <-- this is the key argument
        },
      },
    },
  },
  lazy = true,
  event = { 'BufReadPre', 'BufNewFile' },
  config = function()
    -- languages
    local lint = require 'lint'
    lint.linters_by_ft = {
      javascript = { 'eslint_d' },
      typescript = { 'eslint_d' },
    }
    -- autocmd
    local lint_augroup = vim.api.nvim_create_augroup('lint', { clear = true })

    vim.api.nvim_create_autocmd({ 'BufEnter', 'BufWritePost', 'InsertLeave' }, {
      group = lint_augroup,
      callback = function()
        lint.try_lint()
      end,
    })
  end,
}
