return {
  'andreevlex/vim-language-1c-bsl',
  ft = { "bsl" },
  config = function()
    vim.cmd("let bsl_fold = 1")
  end
}
