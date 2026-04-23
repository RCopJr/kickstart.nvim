return {
  'rcarriga/nvim-notify',
  lazy = true,
  event = 'VeryLazy',
  opts = {
    stages = 'fade',
    timeout = 3000,
    minimum_width = 30,
    max_width = 80,
    background_colour = '#0B0C0E', -- Oxocarbon dark background
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
    vim.api.nvim_set_hl(0, 'NotifyERRORBorder', { fg = '#F07178', bg = '#0B0C0E' }) -- muted red
    vim.api.nvim_set_hl(0, 'NotifyWARNBorder', { fg = '#F8BD96', bg = '#0B0C0E' }) -- soft orange
    vim.api.nvim_set_hl(0, 'NotifyINFOBorder', { fg = '#82AAFF', bg = '#0B0C0E' }) -- muted blue
    vim.api.nvim_set_hl(0, 'NotifyDEBUGBorder', { fg = '#C3E88D', bg = '#0B0C0E' }) -- soft green
    vim.api.nvim_set_hl(0, 'NotifyTRACEBorder', { fg = '#C792EA', bg = '#0B0C0E' }) -- lavender

    -- Titles
    vim.api.nvim_set_hl(0, 'NotifyERRORTitle', { fg = '#F07178' })
    vim.api.nvim_set_hl(0, 'NotifyWARNTitle', { fg = '#F8BD96' })
    vim.api.nvim_set_hl(0, 'NotifyINFOTitle', { fg = '#82AAFF' })
    vim.api.nvim_set_hl(0, 'NotifyDEBUGTitle', { fg = '#C3E88D' })
    vim.api.nvim_set_hl(0, 'NotifyTRACETitle', { fg = '#C792EA' })

    -- Icons
    vim.api.nvim_set_hl(0, 'NotifyERRORIcon', { fg = '#F07178' })
    vim.api.nvim_set_hl(0, 'NotifyWARNIcon', { fg = '#F8BD96' })
    vim.api.nvim_set_hl(0, 'NotifyINFOIcon', { fg = '#82AAFF' })
    vim.api.nvim_set_hl(0, 'NotifyDEBUGIcon', { fg = '#C3E88D' })
    vim.api.nvim_set_hl(0, 'NotifyTRACEIcon', { fg = '#C792EA' })
  end,
}
