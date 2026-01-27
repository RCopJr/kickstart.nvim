return {
  'sindrets/diffview.nvim',
  dependencies = { 'nvim-lua/plenary.nvim' },
  cmd = {
    'DiffviewOpen',
    'DiffviewClose',
    'DiffviewToggleFiles',
    'DiffviewFocusFiles',
    'DiffviewRefresh',
  },
  keys = {
    { '<leader>dv', '<cmd>DiffviewOpen<cr>', desc = 'Diffview: Open' },
    { '<leader>dvc', '<cmd>DiffviewClose<cr>', desc = 'Diffview: Close' },

    { '<leader>dvf', '<cmd>DiffviewToggleFiles<cr>', desc = 'Diffview: Toggle files' },
    { '<leader>dvo', '<cmd>DiffviewFocusFiles<cr>', desc = 'Diffview: Focus files' },

    { '<leader>dvr', '<cmd>DiffviewRefresh<cr>', desc = 'Diffview: Refresh' },

    -- optional but very useful
    { '<leader>dvs', '<cmd>DiffviewOpen --cached<cr>', desc = 'Diffview: Staged changes' },
  },
  opts = {
    use_icons = true,
  },
}
