return {
  {
    'slugbyte/lackluster.nvim',
    lazy = false,
    priority = 1000,
    config = function()
      -- load scheme
      vim.cmd.colorscheme 'lackluster-hack' -- or "lackluster", "lackluster-mint"

      vim.api.nvim_set_hl(0, 'Normal', { bg = 'none' })
      vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'none' })
      vim.api.nvim_set_hl(0, 'SignColumn', { bg = 'none' })
      vim.api.nvim_set_hl(0, 'EndOfBuffer', { bg = 'none' })
      vim.api.nvim_set_hl(0, 'MsgArea', { bg = 'none' })
      vim.api.nvim_set_hl(0, 'LineNr', { bg = 'none' })
      vim.api.nvim_set_hl(0, 'Folded', { bg = 'none' })
      vim.api.nvim_set_hl(0, 'NonText', { bg = 'none' })
      vim.api.nvim_set_hl(0, 'WinSeparator', { bg = 'none' })
      -- Transparent telescope floating windows
      vim.api.nvim_set_hl(0, 'TelescopeNormal', { bg = 'none' })
      vim.api.nvim_set_hl(0, 'TelescopeBorder', { bg = 'none' })
      vim.api.nvim_set_hl(0, 'TelescopePromptNormal', { bg = 'none' })
      vim.api.nvim_set_hl(0, 'TelescopePromptBorder', { bg = 'none' })
      vim.api.nvim_set_hl(0, 'TelescopeResultsNormal', { bg = 'none' })
      vim.api.nvim_set_hl(0, 'TelescopeResultsBorder', { bg = 'none' })
      vim.api.nvim_set_hl(0, 'TelescopePreviewNormal', { bg = 'none' })
      vim.api.nvim_set_hl(0, 'TelescopePreviewBorder', { bg = 'none' })
      vim.api.nvim_set_hl(0, 'LineNr', { fg = '#555555', bg = 'none' }) -- subtle gray
      vim.api.nvim_set_hl(0, 'CursorLineNr', { fg = '#d0d0d0', bg = 'none', bold = true }) -- light gray for current line
      vim.api.nvim_set_hl(0, 'CursorLine', { bg = 'none' }) -- softer blue for current line
      vim.api.nvim_set_hl(0, 'Whitespace', { link = 'LineNr' })
      vim.api.nvim_set_hl(0, 'NonText', { link = 'LineNr' })

      -- Hard-coded treesitter-context highlights
      vim.api.nvim_set_hl(0, 'TreesitterContext', { bg = '#2a2a2a', fg = '#cccccc' })
      vim.api.nvim_set_hl(0, 'TreesitterContextLineNumber', { fg = '#777777' })
      vim.api.nvim_set_hl(0, 'TreesitterContextSeparator', { fg = '#555555' })
    end,
  },
  {
    'projekt0n/github-nvim-theme',
    name = 'github-theme',
    lazy = false, -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      require('github-theme').setup {}
    end,
  },
  -- {
  --   'shaunsingh/nord.nvim',
  --   config = function()
  --     vim.g.nord_disable_background = true -- no solid background
  --     vim.g.nord_italic = false -- make comments/keywords non-italic (optional)
  --     vim.g.nord_bold = false
  --     vim.g.nord_borders = true -- keep borders styled
  --     vim.g.nord_contrast = false -- high contrast line numbers/sidebars
  --
  --     -- load the colorscheme
  --     -- vim.cmd.colorscheme 'nord'
  --
  --     -- extra tweaks for transparency
  --     vim.api.nvim_set_hl(0, 'Normal', { bg = 'none' })
  --     vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'none' })
  --     vim.api.nvim_set_hl(0, 'SignColumn', { bg = 'none' })
  --     vim.api.nvim_set_hl(0, 'EndOfBuffer', { bg = 'none' })
  --     vim.api.nvim_set_hl(0, 'MsgArea', { bg = 'none' })
  --     vim.api.nvim_set_hl(0, 'LineNr', { bg = 'none' })
  --     vim.api.nvim_set_hl(0, 'Folded', { bg = 'none' })
  --     vim.api.nvim_set_hl(0, 'NonText', { bg = 'none' })
  --     vim.api.nvim_set_hl(0, 'WinSeparator', { bg = 'none' })
  --     -- tweak line numbers to be darker
  --     vim.api.nvim_set_hl(0, 'LineNr', { fg = '#4C566A', bg = 'none' }) -- subtle grey
  --     vim.api.nvim_set_hl(0, 'CursorLineNr', { fg = '#81A1C1', bg = 'none', bold = true }) -- softer blue for current line
  --     -- soften the default white
  --     vim.api.nvim_set_hl(0, 'Normal', { fg = '#D8DEE9', bg = 'none' }) -- softer text
  --     vim.api.nvim_set_hl(0, 'NormalFloat', { fg = '#D8DEE9', bg = 'none' })
  --     vim.api.nvim_set_hl(0, 'MsgArea', { fg = '#D8DEE9', bg = 'none' })
  --     -- treesitter-context background
  --     vim.api.nvim_set_hl(0, 'TreesitterContext', { bg = '#2E3440' }) -- dark nord0
  --     vim.api.nvim_set_hl(0, 'TreesitterContextLineNumber', { fg = '#81A1C1', bg = '#2E3440' })
  --     -- make whitespace symbols match line numbers
  --     vim.api.nvim_set_hl(0, 'Whitespace', { link = 'LineNr' })
  --     vim.api.nvim_set_hl(0, 'NonText', { link = 'LineNr' })
  --
  --     local dark_blue = '#5E81AC'
  --     local function_name_color = '#88C0D0'
  --
  --     -- Treesitter overrides
  --     vim.api.nvim_set_hl(0, '@keyword', { fg = dark_blue })
  --     vim.api.nvim_set_hl(0, '@keyword.function', { fg = dark_blue })
  --     vim.api.nvim_set_hl(0, '@keyword.return', { fg = dark_blue })
  --     vim.api.nvim_set_hl(0, '@conditional', { fg = dark_blue })
  --     vim.api.nvim_set_hl(0, '@repeat', { fg = dark_blue })
  --   end,
  -- },
  -- {
  --   'AlexvZyl/nordic.nvim',
  --   lazy = false,
  --   priority = 1000,
  --   config = function()
  --     require('nordic').setup {
  --       bold_keywords = false,
  --       italic_comments = false,
  --       transparent = {
  --         bg = true,
  --         float = false,
  --       },
  --       bright_border = true,
  --       reduced_blue = true,
  --       swap_backgrounds = false,
  --       noice = {
  --         style = 'classic',
  --       },
  --       telescope = {
  --         style = 'classic',
  --       },
  --       leap = {
  --         dim_backdrop = false,
  --       },
  --       ts_context = {
  --         dark_background = true,
  --       },
  --     }
  --     -- vim.cmd.colorscheme 'nordic'
  --     vim.api.nvim_set_hl(0, 'Visual', { bg = '#3B4555', fg = 'NONE' })
  --     -- Override orange keywords → blue
  --     local blue = '#BF616A'
  --     local purple = '#A87CA0'
  --     local dark_blue = '#5E81AC'
  --     vim.api.nvim_set_hl(0, 'Keyword', { fg = dark_blue })
  --   end,
  -- },
  -- {
  --   'datsfilipe/vesper.nvim',
  --   priority = 1000,
  --   config = function()
  --     require('vesper').setup {
  --       transparent = true,
  --       italics = {
  --         comments = true,
  --         keywords = true,
  --         functions = true,
  --         strings = true,
  --         variables = true,
  --       },
  --       overrides = {},
  --       palette_overrides = {},
  --     }
  --   end,
  -- },
  -- {
  --   'sainnhe/gruvbox-material',
  --   lazy = false,
  --   priority = 1000,
  --   config = function()
  --     vim.g.gruvbox_material_enable_italic = true
  --     vim.g.gruvbox_material_background = 'medium'
  --     vim.g.gruvbox_material_transparent_background = '0'
  --     vim.g.gruvbox_material_enable_bold = '0'
  --     vim.g.gruvbox_material_float_style = 'dim'
  --     vim.g.gruvbox_material_diagnostic_text_highlight = '1'
  --     vim.g.gruvbox_material_diagnostic_line_highlight = '1'
  --     -- vim.g.gruvbox_material_current_word = 'underline'
  --     vim.opt.cursorline = false
  --   end,
  -- },
  -- {
  --   'folke/tokyonight.nvim',
  --   priority = 1000, -- Make sure to load this before all the other start plugins.
  --   config = function()
  --     ---@diagnostic disable-next-line: missing-fields
  --     require('tokyonight').setup {
  --       styles = {
  --         comments = { italic = false }, -- Disable italics in comments
  --       },
  --     }
  --   end,
  -- },
  -- {
  --   'rose-pine/neovim',
  --   priority = 1000, -- Make sure to load this before all the other start plugins.
  --   config = function()
  --     ---@diagnostic disable-next-line: missing-fields
  --     require('rose-pine').setup {
  --       styles = {
  --         transparency = false,
  --         italic = false,
  --         bold = true,
  --       },
  --     }
  --   end,
  -- },
  -- {
  --   'ellisonleao/gruvbox.nvim',
  --   priority = 1000,
  --   config = function()
  --     -- Default options:
  --     vim.o.background = 'dark'
  --     require('gruvbox').setup {
  --       terminal_colors = true, -- add neovim terminal colors
  --       undercurl = true,
  --       underline = true,
  --       bold = false,
  --       italic = {
  --         strings = true,
  --         emphasis = true,
  --         comments = true,
  --         operators = false,
  --         folds = true,
  --       },
  --       strikethrough = true,
  --       invert_selection = false,
  --       invert_signs = false,
  --       invert_tabline = false,
  --       inverse = true, -- invert background for search, diffs, statuslines and errors
  --       contrast = '', -- can be "hard", "soft" or empty string
  --       palette_overrides = {},
  --       overrides = {},
  --       dim_inactive = false,
  --       transparent_mode = false,
  --     }
  --   end,
  -- },
}
