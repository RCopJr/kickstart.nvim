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
          row = '50%', -- distance from top
          col = '50%', -- align to right edge
        },
        size = {
          width = 50, -- adjust width (like VSCode’s small box)
          height = 'auto',
        },
        border = {
          style = 'rounded',
        },
      },
    },
  },
  dependencies = {
    'MunifTanjim/nui.nvim',
  },
}
