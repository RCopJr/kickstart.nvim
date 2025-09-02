return {
  'rcarriga/nvim-notify',
  lazy = true,
  event = 'VeryLazy',
  opts = {
    stages = 'fade',
    timeout = 3000,
    minimum_width = 30,
    max_width = 80,
    background_colour = '#2E3440', -- Nord0 (dark background)
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
    vim.notify = notify

    -- Borders
    vim.api.nvim_set_hl(0, 'NotifyERRORBorder', { fg = '#BF616A', bg = '#2E3440' }) -- red
    vim.api.nvim_set_hl(0, 'NotifyWARNBorder', { fg = '#EBCB8B', bg = '#2E3440' }) -- yellow
    vim.api.nvim_set_hl(0, 'NotifyINFOBorder', { fg = '#81A1C1', bg = '#2E3440' }) -- blue
    vim.api.nvim_set_hl(0, 'NotifyDEBUGBorder', { fg = '#A3BE8C', bg = '#2E3440' }) -- green
    vim.api.nvim_set_hl(0, 'NotifyTRACEBorder', { fg = '#B48EAD', bg = '#2E3440' }) -- purple

    -- Titles
    vim.api.nvim_set_hl(0, 'NotifyERRORTitle', { fg = '#BF616A' })
    vim.api.nvim_set_hl(0, 'NotifyWARNTitle', { fg = '#EBCB8B' })
    vim.api.nvim_set_hl(0, 'NotifyINFOTitle', { fg = '#81A1C1' })
    vim.api.nvim_set_hl(0, 'NotifyDEBUGTitle', { fg = '#A3BE8C' })
    vim.api.nvim_set_hl(0, 'NotifyTRACETitle', { fg = '#B48EAD' })

    -- Icons
    vim.api.nvim_set_hl(0, 'NotifyERRORIcon', { fg = '#BF616A' })
    vim.api.nvim_set_hl(0, 'NotifyWARNIcon', { fg = '#EBCB8B' })
    vim.api.nvim_set_hl(0, 'NotifyINFOIcon', { fg = '#81A1C1' })
    vim.api.nvim_set_hl(0, 'NotifyDEBUGIcon', { fg = '#A3BE8C' })
    vim.api.nvim_set_hl(0, 'NotifyTRACEIcon', { fg = '#B48EAD' })

    -- Optional: notification history
    vim.keymap.set('n', '<leader>nh', function()
      require('notify').history { reverse = true }
    end, { desc = 'Show notification history' })
  end,
}
