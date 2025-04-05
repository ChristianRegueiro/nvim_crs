return {
	-- Base
	{ "nvim-lua/plenary.nvim" },
	{ "tpope/vim-sleuth" },
	{ "nvim-tree/nvim-web-devicons", lazy = true },

	-- Telescope
	{
		"nvim-telescope/telescope.nvim",
		dependencies = { "nvim-lua/plenary.nvim" },
		cmd = "Telescope",
	},

	-- Treesitter

	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		lazy = false,
	},

	-- LSP
	{
		"neovim/nvim-lspconfig",
		dependencies = {
			"hrsh7th/cmp-nvim-lsp",
		},
	},
	{
		"williamboman/mason.nvim",
		build = ":MasonUpdate",
		lazy = false,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		dependencies = { "williamboman/mason.nvim" },
		lazy = false,
	},
}
