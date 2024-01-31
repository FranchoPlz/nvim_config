return {
  "lewis6991/gitsigns.nvim",
  config = function()
    require('gitsigns').setup({})

    local keymap = vim.keymap
    keymap.set('n', '<leader>gp', ':Gitsigns preview_hunk<CR>', {})
  end
}
