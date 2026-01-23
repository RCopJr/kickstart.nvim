return {
  'tpope/vim-fugitive',
  cmd = { 'Git', 'G' },
  config = function()
    vim.api.nvim_create_autocmd('FileType', {
      pattern = 'fugitive',
      callback = function()
        vim.keymap.set('n', 'dv', function()
          local file = vim.fn.expand '<cfile>'
          if file ~= '' then
            vim.cmd('Git difftool -y ' .. file)
          end
        end, { buffer = true, noremap = true, silent = true })
      end,
    })
  end,
}
