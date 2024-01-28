return {
  {
    'nvim-telescope/telescope.nvim', tag = '0.1.5',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      local telescope = require('telescope')
      local actions = require('telescope.actions')

      telescope.setup({
        defaults = {
          mappings = {
            i = {
              ['<C-k>'] = actions.move_selection_previous,
              ['<C-j>'] = actions.move_selection_next,
              ['<C-q>'] = actions.send_selected_to_qflist + actions.open_qflist,
            }
          }
        }
      })

      local keymap = vim.keymap
      keymap.set('n', '<leader>ff', '<cmd>Telescope find_files<CR>', { desc = "Fuzzy find files in cwd" })
      keymap.set('n', '<leader>fr', '<cmd>Telescope oldfiles<CR>', { desc = "Fuzzy find recent files" })
      keymap.set('n', '<leader>fs', '<cmd>Telescope live_grep<CR>', { desc = "Find string in cwd" })
      keymap.set('n', '<leader>fc', '<cmd>Telescope grep_string<CR>', { desc = "find string under cursor cwd" })
    end
  },
  {
    "nvim-telescope/telescope-ui-select.nvim",
    config = function()
      require("telescope").setup({
        extensions = {
          ["ui-select"] = {
            require("telescope.themes").get_dropdown {
            }
          }
        }
      })
      require("telescope").load_extension("ui-select")
    end
  }
}
