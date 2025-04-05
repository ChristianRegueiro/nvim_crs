local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Guardar en todos los modos
keymap({ "n", "i", "v" }, "<C-s>", "<cmd>w<CR>", opts)

-- Básicos
keymap("n", "<leader>q", "<cmd>q<CR>", opts)
keymap("n", "<leader>h", "<cmd>nohlsearch<CR>", opts)
keymap("n", "<S-l>", "<cmd>bnext<CR>", opts)
keymap("n", "<S-h>", "<cmd>bprevious<CR>", opts)

-- Diagnóstico
keymap("n", "[d", function()
	vim.diagnostic.goto_prev({ float = true })
end, opts)
keymap("n", "]d", function()
	vim.diagnostic.goto_next({ float = true })
end, opts)
keymap("n", "<leader>e", vim.diagnostic.open_float, opts)
keymap("n", "<leader>ld", vim.diagnostic.setloclist, opts)

-- LSP
keymap("n", "gd", vim.lsp.buf.definition, opts)
keymap("n", "gr", vim.lsp.buf.references, opts)
keymap("n", "gD", vim.lsp.buf.declaration, opts)
keymap("n", "gi", vim.lsp.buf.implementation, opts)
keymap("n", "K", vim.lsp.buf.hover, opts)
keymap("n", "<leader>rn", vim.lsp.buf.rename, opts)
keymap("n", "<leader>ca", vim.lsp.buf.code_action, opts)

-- telescope
keymap("n", "<leader>ff", "<cmd>Telescope find_files<cr>", opts)
keymap("n", "<leader>fg", "<cmd>Telescope live_grep<cr>", opts)
keymap("n", "<leader>fb", "<cmd>Telescope buffers<cr>", opts)
keymap("n", "<leader>fh", "<cmd>Telescope help_tags<cr>", opts)

-- neotree
keymap("n", "<leader>e", "<cmd>Neotree toggle<cr>", opts)

local wk = require("which-key")

wk.add({
	{ "<leader>q", desc = "Salir" },
	{ "<leader>h", desc = "Quitar búsqueda" },
	{ "<leader>e", desc = "Error flotante" },
	{ "<leader>ld", desc = "Lista de errores" },
	{ "<leader>rn", desc = "Renombrar (LSP)" },
	{ "<leader>ca", desc = "Acciones (LSP)" },
}, { mode = "n", lhs = "<leader>" })

wk.add({
	{ "gd", desc = "Ir a definición" },
	{ "gr", desc = "Buscar referencias" },
	{ "gD", desc = "Ir a declaración" },
	{ "gi", desc = "Ir a implementación" },
}, { mode = "n", lhs = "g" })

wk.add({
	{ "[d", desc = "Error anterior" },
}, { mode = "n", lhs = "[" })

wk.add({
	{ "]d", desc = "Error siguiente" },
}, { mode = "n", lhs = "]" })

wk.add({
	{ "<C-s>", desc = "Guardar archivo", mode = { "i", "v" } },
})

wk.add({
	{ "<leader>ff", desc = "Buscar archivos" },
	{ "<leader>fg", desc = "Buscar texto" },
	{ "<leader>fb", desc = "Buscar buffers" },
	{ "<leader>fh", desc = "Buscar ayuda" },
}, { mode = "n", lhs = "<leader>" })

wk.add({
	{ "<leader>e", desc = "Explorador de archivos" },
}, { mode = "n" })
