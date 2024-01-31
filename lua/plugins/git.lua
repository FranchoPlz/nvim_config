return {
	{
		"tpope/vim-fugitive",
	},
	{
		"lewis6991/gitsigns.nvim",
		config = function()
			require("gitsigns").setup({})

			local keymap = vim.keymap
			keymap.set("n", "<leader>gp", ":Gitsigns preview_hunk<CR>", { desc = "Toggle preview of git hunks" })
			keymap.set("n", "<leader>gb", ":Gitsigns toggle_current_line_blame<CR>", { desc = "Toggle git blame" })
		end,
	},
	{
		"NeogitOrg/neogit",
		dependencies = {
			"nvim-lua/plenary.nvim", -- required
			"sindrets/diffview.nvim", -- optional - Diff integration

			-- Only one of these is needed, not both.
			"nvim-telescope/telescope.nvim", -- optional
		},
		config = function()
			local neogit = require("neogit")
			neogit.setup()
			vim.keymap.set("n", "<leader>gt", ":Neogit<CR>", {})
		end,
	},
}
