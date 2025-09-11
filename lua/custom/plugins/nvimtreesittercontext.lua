return {
  {
    'nvim-treesitter/nvim-treesitter-context',
    event = 'BufReadPre', -- load early when opening a buffer
    config = function()
      require('treesitter-context').setup {
        enable = true, -- enable this plugin (can be toggled later)
        max_lines = 3, -- how many lines the context window can show
        min_window_height = 0, -- disable if window smaller
        line_numbers = true,
        multiline_threshold = 20,
        trim_scope = 'outer',
        mode = 'cursor', -- "cursor" or "topline"
        separator = nil, -- e.g. "─" to add a separator line
        zindex = 20, -- set floating window zindex
      }
    end,
  },
}
