local opts = {
  layouts = {
    {
      elements = {
        {
          id = 'scopes',
          size = 0.25,
        },
        {
          id = 'breakpoints',
          size = 0.25,
        },
        {
          id = 'stacks',
          size = 0.25,
        },
        {
          id = 'watches',
          size = 0.25,
        },
      },
      position = 'left',
      size = 40,
    },
    {
      elements = {
        {
          id = 'console',
          size = 0.75,
        },
        {
          id = 'repl',
          size = 0.25,
        },
      },
      position = 'bottom',
      size = 10,
    },
  },
}

return opts
