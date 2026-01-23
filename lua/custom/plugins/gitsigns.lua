return {
  'lewis6991/gitsigns.nvim',
  lazy = true,
  event = 'BufReadPost', -- load when a buffer is read
  config = function()
    require('gitsigns').setup {
      signs = {
        add = { text = '+' },
        change = { text = '~' },
        delete = { text = '-' },
        topdelete = { text = '-' },
        changedelete = { text = '~' },
      },
      current_line_blame = false, -- enable inline git blame
      current_line_blame_opts = {
        virt_text = true,
        virt_text_pos = 'eol', -- show at end of line
        delay = 500, -- delay in ms
      },
      current_line_blame_formatter = '<author>, <author_time:%Y-%m-%d> - <summary>',
      signcolumn = true, -- show signs in the sign column
      numhl = false,
      linehl = false,
      word_diff = false,
      on_attach = function(bufnr)
        local gs = package.loaded.gitsigns
        -- Toggle inline blame
        vim.keymap.set('n', '<leader>tb', function()
          gs.toggle_current_line_blame()
        end, { buffer = bufnr, desc = 'Toggle Git Blame' })

        -- Navigation
        vim.keymap.set('n', ']c', gs.next_hunk, { buffer = bufnr })
        vim.keymap.set('n', '[c', gs.prev_hunk, { buffer = bufnr })

        -- Actions
        vim.keymap.set('n', '<leader>hs', gs.stage_hunk, { buffer = bufnr })
        vim.keymap.set('v', '<leader>hs', function()
          gs.stage_hunk { vim.fn.line '.', vim.fn.line 'v' }
        end, { buffer = bufnr })
        vim.keymap.set('n', '<leader>hu', gs.undo_stage_hunk, { buffer = bufnr })
        vim.keymap.set('n', '<leader>hr', gs.reset_hunk, { buffer = bufnr, desc = 'Reset Hunk' })

        -- Buffer actions
        vim.keymap.set('n', '<leader>hS', gs.stage_buffer, { buffer = bufnr })
        vim.keymap.set('n', '<leader>hR', gs.reset_buffer, { buffer = bufnr })
        -- Hunk keymaps
        -- vim.keymap.set('n', '<leader>hs', gs.stage_hunk, { buffer = bufnr, desc = 'Stage Hunk' })
        -- vim.keymap.set('n', '<leader>hu', gs.undo_stage_hunk, { buffer = bufnr, desc = 'Undo Stage Hunk' })
        -- vim.keymap.set('n', '<leader>hr', gs.reset_hunk, { buffer = bufnr, desc = 'Reset Hunk' })
        -- vim.keymap.set('n', '<leader>hp', gs.preview_hunk, { buffer = bufnr, desc = 'Preview Hunk' })
      end,
      update_debounce = 100,
    }
  end,
}
