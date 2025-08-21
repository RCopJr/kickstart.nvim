return {
  'rcarriga/nvim-notify',
  lazy = true,
  event = 'VeryLazy',
  opts = {
    stages = 'fade',
    timeout = 3000,
    minimum_width = 30,
    max_width = 80,
    background_colour = '#1d2021', -- Gruvbox Material dark background
    icons = {
      ERROR = '',
      WARN = '',
      INFO = '',
      DEBUG = '',
      TRACE = '✎',
    },
  },
  config = function(_, opts)
    local notify = require 'notify'

    -- Setup nvim-notify
    notify.setup(opts)

    -- Override vim.notify
    vim.notify = notify

    -- Apply Gruvbox Material highlights
    vim.api.nvim_set_hl(0, 'NotifyERRORBorder', { fg = '#FB4934', bg = '#1d2021' }) -- red
    vim.api.nvim_set_hl(0, 'NotifyWARNBorder', { fg = '#FABD2F', bg = '#1d2021' }) -- yellow
    vim.api.nvim_set_hl(0, 'NotifyINFOBorder', { fg = '#83A598', bg = '#1d2021' }) -- blue/green
    vim.api.nvim_set_hl(0, 'NotifyDEBUGBorder', { fg = '#B8BB26', bg = '#1d2021' }) -- green
    vim.api.nvim_set_hl(0, 'NotifyTRACEBorder', { fg = '#D3869B', bg = '#1d2021' }) -- purple/pink

    vim.api.nvim_set_hl(0, 'NotifyERRORTitle', { fg = '#FB4934' })
    vim.api.nvim_set_hl(0, 'NotifyWARNTitle', { fg = '#FABD2F' })
    vim.api.nvim_set_hl(0, 'NotifyINFOTitle', { fg = '#83A598' })
    vim.api.nvim_set_hl(0, 'NotifyDEBUGTitle', { fg = '#B8BB26' })
    vim.api.nvim_set_hl(0, 'NotifyTRACETitle', { fg = '#D3869B' })

    vim.api.nvim_set_hl(0, 'NotifyERRORIcon', { fg = '#FB4934' })
    vim.api.nvim_set_hl(0, 'NotifyWARNIcon', { fg = '#FABD2F' })
    vim.api.nvim_set_hl(0, 'NotifyINFOIcon', { fg = '#83A598' })
    vim.api.nvim_set_hl(0, 'NotifyDEBUGIcon', { fg = '#B8BB26' })
    vim.api.nvim_set_hl(0, 'NotifyTRACEIcon', { fg = '#D3869B' })

    -- Optional: map a key to show notification history
    vim.keymap.set('n', '<leader>nh', function()
      require('notify').history { reverse = true }
    end, { desc = 'Show notification history' })
  end,
}
