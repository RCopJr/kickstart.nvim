return {
  {
    'AlexvZyl/nordic.nvim',
    lazy = false,
    priority = 1000,
    config = function()
      require('nordic').setup {
        bold_keywords = false,
        italic_comments = false,
        transparent = {
          bg = true,
          float = false,
        },
        bright_border = true,
        reduced_blue = true,
        swap_backgrounds = false,
        noice = {
          style = 'classic',
        },
        telescope = {
          style = 'classic',
        },
        leap = {
          dim_backdrop = false,
        },
        ts_context = {
          dark_background = true,
        },
      }
      vim.cmd.colorscheme 'nordic'
      vim.api.nvim_set_hl(0, 'Visual', { bg = '#3B4555', fg = 'NONE' })
      -- Override orange keywords → blue
      local blue = '#BF616A'
      vim.api.nvim_set_hl(0, 'Keyword', { fg = blue })
    end,
  },
  {
    'datsfilipe/vesper.nvim',
    priority = 1000,
    config = function()
      require('vesper').setup {
        transparent = true,
        italics = {
          comments = true,
          keywords = true,
          functions = true,
          strings = true,
          variables = true,
        },
        overrides = {},
        palette_overrides = {},
      }
    end,
  },
  {
    'sainnhe/gruvbox-material',
    lazy = false,
    priority = 1000,
    config = function()
      vim.g.gruvbox_material_enable_italic = true
      vim.g.gruvbox_material_background = 'medium'
      vim.g.gruvbox_material_transparent_background = '0'
      vim.g.gruvbox_material_enable_bold = '0'
      vim.g.gruvbox_material_float_style = 'dim'
      vim.g.gruvbox_material_diagnostic_text_highlight = '1'
      vim.g.gruvbox_material_diagnostic_line_highlight = '1'
      -- vim.g.gruvbox_material_current_word = 'underline'
      vim.opt.cursorline = false
    end,
  },
  {
    'folke/tokyonight.nvim',
    priority = 1000, -- Make sure to load this before all the other start plugins.
    config = function()
      ---@diagnostic disable-next-line: missing-fields
      require('tokyonight').setup {
        styles = {
          comments = { italic = false }, -- Disable italics in comments
        },
      }
    end,
  },
  {
    'rose-pine/neovim',
    priority = 1000, -- Make sure to load this before all the other start plugins.
    config = function()
      ---@diagnostic disable-next-line: missing-fields
      require('rose-pine').setup {
        styles = {
          transparency = false,
          italic = false,
          bold = true,
        },
      }
    end,
  },
  {
    'ellisonleao/gruvbox.nvim',
    priority = 1000,
    config = function()
      -- Default options:
      vim.o.background = 'dark'
      require('gruvbox').setup {
        terminal_colors = true, -- add neovim terminal colors
        undercurl = true,
        underline = true,
        bold = false,
        italic = {
          strings = true,
          emphasis = true,
          comments = true,
          operators = false,
          folds = true,
        },
        strikethrough = true,
        invert_selection = false,
        invert_signs = false,
        invert_tabline = false,
        inverse = true, -- invert background for search, diffs, statuslines and errors
        contrast = '', -- can be "hard", "soft" or empty string
        palette_overrides = {},
        overrides = {},
        dim_inactive = false,
        transparent_mode = false,
      }
    end,
  },
}
