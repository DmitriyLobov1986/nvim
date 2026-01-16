local opts = {

  defaults = {
    layout_strategy = 'horizontal',
    layout_config = {
      height = 0.95,
      horizontal = { prompt_position = 'bottom' },
    },
    vimgrep_arguments = {
      'rg',
      '--color=never',
      '--no-heading',
      '--with-filename',
      '--line-number',
      '--column',
      '--smart-case',
      '--no-ignore',
      '--hidden',
    },
  },
}

return opts
