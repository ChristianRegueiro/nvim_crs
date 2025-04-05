require("mason").setup()

require("mason-lspconfig").setup({
	ensure_installed = {
		"lua_ls",
		"pyright",
		"jsonls",
		"bashls",
		"html",
		"cssls",
		"yamlls",
		"marksman",
		"gopls",
	},
	automatic_installation = true,
})

require("mason-lspconfig").setup_handlers({
	function(server_name)
		require("lspconfig")[server_name].setup({
			capabilities = require("cmp_nvim_lsp").default_capabilities(),
		})
	end,
})
