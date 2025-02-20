-- require('telescope').load_extension 'noise'

local opts = {

  defaults = {
    layout_strategy = 'horizontal',
    layout_config = {
      height = 0.95,
      horizontal = { prompt_position = 'bottom' },
    },
  },
}

return opts
