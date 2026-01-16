return {
  {
    'rose-pine/neovim',
    name = 'rose-pine',
    priority = 1000,
    config = function()
      require('rose-pine').setup {
        variant = 'main', -- auto, main, moon, or dawn
        dark_variant = 'main',
        styles = {
          bold = false,
          italic = false,
          transparency = true,
        },
      }
      vim.cmd.colorscheme 'rose-pine'
      vim.api.nvim_set_hl(0, 'CursorLine', {})
      vim.api.nvim_set_hl(0, 'CursorLineNr', {})
    end,
  },
  -- {
  --   'nyoom-engineering/oxocarbon.nvim',
  --   config = function()
  --     -- vim.cmd 'colorscheme oxocarbon'
  --     local oxocarbon = require 'oxocarbon'
  --     vim.api.nvim_set_hl(0, 'Normal', { bg = 'none' })
  --     vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'none' })
  --     vim.api.nvim_set_hl(0, 'NormalNC', { bg = 'none' })
  --     vim.api.nvim_set_hl(0, 'TelescopeBorder', { fg = oxocarbon.blend, bg = oxocarbon.blend })
  --     vim.api.nvim_set_hl(0, 'TelescopePromptBorder', { fg = oxocarbon.base02, bg = oxocarbon.base02 })
  --     vim.api.nvim_set_hl(0, 'TelescopePromptNormal', { fg = oxocarbon.base05, bg = oxocarbon.base02 })
  --     vim.api.nvim_set_hl(0, 'TelescopePromptPrefix', { fg = oxocarbon.base08, bg = oxocarbon.base02 })
  --     vim.api.nvim_set_hl(0, 'TelescopeNormal', { fg = oxocarbon.none, bg = oxocarbon.blend })
  --     vim.api.nvim_set_hl(0, 'TelescopePreviewTitle', { fg = oxocarbon.base02, bg = oxocarbon.base12 })
  --     vim.api.nvim_set_hl(0, 'TelescopePromptTitle', { fg = oxocarbon.base02, bg = oxocarbon.base11 })
  --     vim.api.nvim_set_hl(0, 'TelescopeResultsTitle', { fg = oxocarbon.blend, bg = oxocarbon.blend })
  --     vim.api.nvim_set_hl(0, 'TelescopeSelection', { fg = oxocarbon.none, bg = oxocarbon.base02 })
  --     vim.api.nvim_set_hl(0, 'TelescopePreviewLine', { fg = oxocarbon.none, bg = oxocarbon.base01 })
  --   end,
  -- },
  {
    'EdenEast/nightfox.nvim',
    config = function()
      -- Default options
      require('nightfox').setup {
        options = {
          transparent = false, -- Disable setting background
          terminal_colors = true, -- Set terminal colors (vim.g.terminal_color_*) used in `:terminal`
        },
        palettes = {},
        specs = {},
        groups = {},
      }

      vim.cmd 'colorscheme carbonfox'
      vim.api.nvim_set_hl(0, 'CursorLine', {})
      vim.api.nvim_set_hl(0, 'CursorLineNr', {})
    end,
  },
  -- {
  --   'zenbones-theme/zenbones.nvim',
  --   -- Optionally install Lush. Allows for more configuration or extending the colorscheme
  --   -- If you don't want to install lush, make sure to set g:zenbones_compat = 1
  --   -- In Vim, compat mode is turned on as Lush only works in Neovim.
  --   dependencies = 'rktjmp/lush.nvim',
  --   lazy = false,
  --   priority = 1000,
  --   -- you can set set configuration options here
  --   config = function()
  --     -- vim.o.background = "light"
  --     --
  --     vim.g.zenbones_italic_comments = false
  --     vim.g.zenbones_italic_keywords = false
  --     vim.g.zenbones_italic_booleans = false
  --     vim.g.zenbones_italic_functions = false
  --     vim.g.zenbones_italic_variables = false
  --
  --     -- vim.api.nvim_set_hl(0, 'Normal', { bg = 'none' })
  --     -- vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'none' })
  --     -- vim.api.nvim_set_hl(0, 'SignColumn', { bg = 'none' })
  --     -- vim.api.nvim_set_hl(0, 'EndOfBuffer', { bg = 'none' })
  --     -- vim.api.nvim_set_hl(0, 'MsgArea', { bg = 'none' })
  --     -- vim.api.nvim_set_hl(0, 'LineNr', { bg = 'none' })
  --     -- vim.api.nvim_set_hl(0, 'Folded', { bg = 'none' })
  --     -- vim.api.nvim_set_hl(0, 'NonText', { bg = 'none' })
  --     -- vim.api.nvim_set_hl(0, 'WinSeparator', { bg = 'none' })
  --     --
  --     -- vim.api.nvim_set_hl(0, 'TelescopeNormal', { bg = 'none' })
  --     -- vim.api.nvim_set_hl(0, 'TelescopeBorder', { bg = 'none' })
  --     -- vim.api.nvim_set_hl(0, 'TelescopePromptNormal', { bg = 'none' })
  --     -- vim.api.nvim_set_hl(0, 'TelescopePromptBorder', { bg = 'none' })
  --     -- vim.api.nvim_set_hl(0, 'TelescopeResultsNormal', { bg = 'none' })
  --     -- vim.api.nvim_set_hl(0, 'TelescopeResultsBorder', { bg = 'none' })
  --     -- vim.api.nvim_set_hl(0, 'TelescopePreviewNormal', { bg = 'none' })
  --     -- vim.api.nvim_set_hl(0, 'TelescopePreviewBorder', { bg = 'none' })
  --     --
  --     -- vim.api.nvim_set_hl(0, 'LineNr', { fg = '#555555', bg = 'none' }) -- subtle gray
  --     -- vim.api.nvim_set_hl(0, 'CursorLineNr', { fg = '#d0d0d0', bg = 'none', bold = true }) -- light gray for current line
  --     -- vim.api.nvim_set_hl(0, 'CursorLine', { bg = 'none' }) -- softer blue for current line
  --     -- vim.api.nvim_set_hl(0, 'Whitespace', { link = 'LineNr' })
  --     -- vim.api.nvim_set_hl(0, 'NonText', { link = 'LineNr' })
  --     --
  --     -- vim.api.nvim_set_hl(0, 'TreesitterContext', { bg = '#2a2a2a', fg = '#cccccc' })
  --     -- vim.api.nvim_set_hl(0, 'TreesitterContextLineNumber', { fg = '#777777' })
  --     -- vim.api.nvim_set_hl(0, 'TreesitterContextSeparator', { fg = '#555555' })
  --   end,
  -- },
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
  --     vim.g.gruvbox_material_transparent_background = '1'
  --     vim.g.gruvbox_material_enable_bold = '0'
  --     vim.g.gruvbox_material_float_style = 'dim'
  --     vim.g.gruvbox_material_diagnostic_text_highlight = '1'
  --     vim.g.gruvbox_material_diagnostic_line_highlight = '1'
  --     -- vim.g.gruvbox_material_current_word = 'underline'
  --     vim.opt.cursorline = false
  --     vim.cmd.colorscheme 'gruvbox' -- or "lackluster", "lackluster-mint"
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
  --       inverse = false, -- invert background for search, diffs, statuslines and errors
  --       contrast = '', -- can be "hard", "soft" or empty string
  --       palette_overrides = {},
  --       overrides = {},
  --       dim_inactive = false,
  --       transparent_mode = true,
  --     }
  --
  --     vim.cmd.colorscheme 'gruvbox' -- or "lackluster", "lackluster-mint"
  --   end,
  -- },
}
