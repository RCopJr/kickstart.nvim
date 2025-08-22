-- lazy.nvim
return {
  'folke/noice.nvim',
  event = 'VeryLazy',
  opts = {
    cmdline = {
      view = 'cmdline_popup', -- use popup view instead of bottom cmdline
    },
    views = {
      cmdline_popup = {
        position = {
          row = 1, -- distance from top
          col = '100%', -- align to right edge
        },
        size = {
          width = 40, -- adjust width (like VSCode’s small box)
          height = 'auto',
        },
        border = {
          style = 'rounded',
        },
        win_options = {
          winhighlight = 'NormalFloat:NormalFloat,FloatBorder:FloatBorder',
        },
      },
    },
  },
  dependencies = {
    'MunifTanjim/nui.nvim',
  },
}
