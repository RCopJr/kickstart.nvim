return {
  'nvim-lualine/lualine.nvim',
  opts = {
    options = {
      theme = 'gruvbox-material', -- Use the Gruvbox Material theme
      component_separators = { left = '│', right = '│' },
      section_separators = { left = '', right = '' },
      disabled_filetypes = { 'NvimTree', 'packer' },
      globalstatus = true, -- Neovim 0.7+ global statusline
    },
    sections = {
      lualine_a = {},
      lualine_b = { 'branch', 'diff' },
      lualine_c = { { 'filename', path = 1 } },
      lualine_x = { 'diagnostics' },
      lualine_y = { 'filetype' },
      lualine_z = { 'location' },
    },
    inactive_sections = {
      lualine_a = {},
      lualine_b = {},
      lualine_c = { 'filename' },
      lualine_x = { 'location' },
      lualine_y = {},
      lualine_z = {},
    },
    tabline = {},
    extensions = {},
  },
}
