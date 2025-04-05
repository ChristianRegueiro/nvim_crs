local config = {
	modules = {},

	sync_install = false, -- instala los parsers de forma asíncrona (más rápido)
	auto_install = true, -- instala parsers automáticamente al abrir archivos

	-- Parsers que se instalarán por defecto
	ensure_installed = {
		"lua",
		"python",
		"typescript",
		"javascript",
		"html",
		"css",
		"json",
		"yaml",
		"markdown",
		"vim",
		"bash",
		"toml",
		"query",
	},

	-- Parsers que quieres ignorar
	ignore_install = {},

	-- Ruta de instalación personalizada (déjalo como nil)
	parser_install_dir = nil,

	-- Configuración de módulos como highlight, indent, etc.
	highlight = {
		enable = true,
		additional_vim_regex_highlighting = false,
	},

	indent = {
		enable = true,
	},
}

require("nvim-treesitter.configs").setup(config)
