return {
  'ThePrimeagen/harpoon',
  branch = 'harpoon2', -- important, newer rewrite
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    local harpoon = require 'harpoon'

    harpoon:setup {
      settings = {
        border = 'none', -- removes all Harpoon popup borders
      },
    }

    -- Keymaps
    vim.keymap.set('n', '<leader>a', function()
      harpoon:list():add()
    end, { desc = 'Add file to harpoon' })
    vim.keymap.set('n', '<leader>h', function()
      harpoon.ui:toggle_quick_menu(harpoon:list())
    end, { desc = 'Open harpoon list' })

    vim.keymap.set('n', '<leader>j', function()
      harpoon:list():select(1)
    end, { desc = 'Go to file 1 in harpoon' })
    vim.keymap.set('n', '<leader>k', function()
      harpoon:list():select(2)
    end, { desc = 'Go to file 2 in harpoon' })
    vim.keymap.set('n', '<leader>l', function()
      harpoon:list():select(3)
    end, { desc = 'Go to file 3 in harpoon' })
    vim.keymap.set('n', '<leader>;', function()
      harpoon:list():select(4)
    end, { desc = 'Go to file 4 in harpoon' })
  end,
}
