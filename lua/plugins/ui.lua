return {
	{
		"folke/which-key.nvim",
		lazy = false,
		config = function()
			require("which-key").setup()
		end,
	},
	{
		"folke/tokyonight.nvim",
		lazy = false, -- ⚠️ Necesario para cargarlo al inicio
		priority = 1000, -- ⚠️ Para que se cargue antes que otros estilos
		config = function()
			require("tokyonight").setup({
				style = "moon", -- Opciones: "storm", "night", "moon", "day"
				transparent = false,
				styles = {
					comments = { italic = true },
					keywords = { italic = true },
					functions = {},
					variables = {},
				},
			})
			vim.cmd.colorscheme("tokyonight")
		end,
	},
	{
		"nvim-lualine/lualine.nvim",
		lazy = false,
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
			require("lualine").setup({
				options = {
					theme = "tokyonight",
					icons_enabled = true,
					section_separators = { left = "", right = "" },
					component_separators = { left = "", right = "" },
				},
				sections = {
					lualine_a = { "mode" },
					lualine_b = { "branch", "diff", "diagnostics" },
					lualine_c = { "filename" },
					lualine_x = { "encoding", "fileformat", "filetype" },
					lualine_y = { "progress" },
					lualine_z = { "location" },
				},
			})
		end,
	},
	{
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x", -- usa la última versión estable
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons", -- ya lo tienes
			"MunifTanjim/nui.nvim",
		},
		cmd = "Neotree",
		keys = {
			{ "<leader>e", "<cmd>Neotree toggle<cr>", desc = "Explorador de archivos" },
		},
		config = function()
			require("neo-tree").setup({
				close_if_last_window = true,
				popup_border_style = "rounded",
				enable_git_status = true,
				enable_diagnostics = true,
				filesystem = {
					filtered_items = {
						visible = false,
						hide_dotfiles = true,
						hide_gitignored = true,
					},
				},
				default_component_configs = {
					indent = {
						with_expanders = true, -- para expandir carpetas
						expander_collapsed = "",
						expander_expanded = "",
					},
				},
			})
		end,
	},
}
