return {
  'nvim-neorg/neorg',
  build = ':Neorg sync-parsers',
  lazy = false,
  version = '*',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    require('neorg').setup {
      load = {
        ['core.defaults'] = {}, -- loads default behaviour
        ['core.concealer'] = {}, -- pretty icons
        ['core.dirman'] = { -- manage workspaces
          config = {
            workspaces = {
              notes = '~/notes', -- your notes/todos will go here
            },
            default_workspace = 'notes',
          },
        },
      },
    }
  end,
}
