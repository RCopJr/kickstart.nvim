return {
  'lewis6991/gitsigns.nvim',
  lazy = true,
  event = 'BufReadPost',
  config = function()
    require('gitsigns').setup {
      signs = {
        add = { text = '+' },
        change = { text = '~' },
        delete = { text = '-' },
        topdelete = { text = '-' },
        changedelete = { text = '~' },
      },

      signcolumn = true,
      numhl = false,
      linehl = false,
      word_diff = false,

      current_line_blame = false,
      current_line_blame_opts = {
        virt_text = true,
        virt_text_pos = 'eol',
        delay = 500,
      },
      current_line_blame_formatter = '<author>, <author_time:%Y-%m-%d> - <summary>',

      update_debounce = 100,

      on_attach = function(bufnr)
        local gs = require 'gitsigns'

        -- Navigation
        vim.keymap.set({'n', 'v'}, '<C-j>', function()
          if not vim.wo.diff then
            return
          end

          if gs then
            gs.nav_hunk 'next'
          else
            vim.cmd.normal { ']c', bang = true }
          end
        end, { desc = 'Next hunk (diff only)' })

        vim.keymap.set({'n', 'v'}, '<C-k>', function()
          if not vim.wo.diff then
            return
          end

          if gs then
            gs.nav_hunk 'prev'
          else
            vim.cmd.normal { '[c', bang = true }
          end
        end, { desc = 'Prev hunk (diff only)' })

        -- Stage / reset hunks
        -- NOTE: Running stage_hunk on staged signs will unstage them
        vim.keymap.set('n', '<Space>', function()
          if not vim.wo.diff then
            return
          end

          gs.stage_hunk()
        end, { desc = 'Stage hunk (diff only)' })

        vim.keymap.set('n', '<leader>gs', gs.stage_hunk, {
          buffer = bufnr,
          desc = 'Git: Stage hunk',
        })
        vim.keymap.set('n', '<leader>gr', gs.reset_hunk, {
          buffer = bufnr,
          desc = 'Git: Reset hunk',
        })

        vim.keymap.set('v', '<leader>gs', function()
          gs.stage_hunk { vim.fn.line '.', vim.fn.line 'v' }
        end, {
          buffer = bufnr,
          desc = 'Git: Stage hunk (visual)',
        })

        vim.keymap.set('v', '<leader>gr', function()
          gs.reset_hunk { vim.fn.line '.', vim.fn.line 'v' }
        end, {
          buffer = bufnr,
          desc = 'Git: Reset hunk (visual)',
        })

        -- Buffer-level actions
        vim.keymap.set('n', '<leader>gS', gs.stage_buffer, {
          buffer = bufnr,
          desc = 'Git: Stage buffer',
        })
        vim.keymap.set('n', '<leader>gR', gs.reset_buffer, {
          buffer = bufnr,
          desc = 'Git: Reset buffer',
        })

        -- Toggle inline blame
        vim.keymap.set('n', '<leader>tb', gs.toggle_current_line_blame, {
          buffer = bufnr,
          desc = 'Git: Toggle line blame',
        })
      end,
    }
  end,
}
