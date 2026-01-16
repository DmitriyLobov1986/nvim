-- load defaults i.e lua_lsp
require('nvchad.configs.lspconfig').defaults()

vim.lsp.config('bsl_ls', {
  cmd = { 'bsl-language-server' }
})

vim.lsp.enable('bsl_ls')
vim.lsp.enable('ts_ls')
vim.lsp.enable('jsonls')

-- force jsonc
vim.api.nvim_create_autocmd('BufEnter', {
  group = vim.api.nvim_create_augroup('JsonToJsoncl', { clear = true }),
  pattern = '*.json',
  callback = function()
    vim.opt.filetype = 'jsonc'
  end
})
