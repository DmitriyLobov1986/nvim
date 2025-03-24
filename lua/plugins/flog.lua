M = {
  'rbong/vim-flog',
  cmd = { 'Flog', 'Flogsplit', 'Floggit' },
  dependencies = {
    'tpope/vim-fugitive',
  },
  keys = { -- Example mapping to toggle outline
    { '<leader>gg', '<cmd>G<CR>', desc = 'Open Git view' },
    { '<leader>gf', '<cmd>Flog<CR>', desc = 'Open Flog view' },
    -- { '<leader>gg', '<cmd>G<CR>|<C-W>T', desc = 'Open Git view' },
  },
  config = function()
    vim.api.nvim_create_autocmd({ 'BufWinEnter' }, {
      pattern = '*/flog-*',
      callback = function(args)
        vim.map.set(
          'n',
          '<leader>.',
          '<Plug>(FlogStartCommand)',
          { buffer = args.buf, desc = 'put hash in cmd' }
        )
      end,
    })
  end,
}

return M
