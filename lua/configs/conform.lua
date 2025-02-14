local options = {
  formatters_by_ft = {
    lua = { 'stylua' },
    typescript = { 'prettier' },
    javascript = { 'prettier' },
    json = { 'prettier' },
    css = { 'prettier' },
    html = { 'prettier' },
  },

  format_on_save = {
    -- These options will be passed to conform.format()
    format_on_save = true,
    timeout_ms = 1000,
    lsp_fallback = true,
  },
}

return options
