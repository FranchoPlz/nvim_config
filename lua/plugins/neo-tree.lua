return   {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  config = function()
    vim.keymap.set('n', '<C-b>', ':Neotree toggle<CR>', {})
    vim.api.nvim_create_autocmd("VimEnter", {
      pattern = "*",
      group = vim.api.nvim_create_augroup("NeotreeOnOpen", { clear = true }),
      once = true,
      callback = function(_)
        if vim.fn.argc() == 0 then
          vim.cmd("Neotree")
        end
      end,
    })
  end
}


