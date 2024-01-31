return {
	"williamboman/mason.nvim",
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
	},
	config = function()
		local mason = require("mason")
		local mason_lspconfig = require("mason-lspconfig")

		local lsps = {
			"tsserver",
			"html",
			"cssls",
			"tailwindcss",
			"svelte",
			"graphql",
			"prismals",
			"pyright",
			"emmet_ls",
			"lua_ls",
      "clangd",
		}

		mason.setup({})
		mason_lspconfig.setup({
			ensure_installed = lsps,
			automatic_installation = true,
		})
	end,
}
