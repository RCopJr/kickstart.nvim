-- lazy.nvim
return {
  'kristijanhusak/vim-dadbod-ui',
  dependencies = {
    { 'tpope/vim-dadbod', lazy = true },
    { 'kristijanhusak/vim-dadbod-completion', ft = { 'sql', 'mysql', 'plsql' }, lazy = true },
  },
  cmd = {
    'DBUI',
    'DBUIToggle',
    'DBUIAddConnection',
    'DBUIFindBuffer',
  },
  init = function()
    vim.g.db_ui_use_nerd_fonts = 1
    vim.g.dbs = {
      vp_mysql = 'mysql://vpuser:rootpassword@127.0.0.1:3306/vp',
    }

    local opts = { noremap = true, silent = true }
    vim.api.nvim_set_keymap('n', '<C-h>', '<C-w>h', opts)
    vim.api.nvim_set_keymap('n', '<C-l>', '<C-w>l', opts)
    vim.api.nvim_set_keymap('n', '<C-j>', '<C-w>j', opts)
    vim.api.nvim_set_keymap('n', '<C-k>', '<C-w>k', opts)

    -- Disable all folds in DBUI result buffers
    vim.api.nvim_create_autocmd('FileType', {
      pattern = { 'dbuiresult', 'dbout' },
      callback = function()
        vim.opt.foldenable = false
      end,
    })
  end,
}
