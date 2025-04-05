-- Muestra números y números relativos
vim.opt.number = true
vim.opt.relativenumber = true

-- Indentación inteligente
vim.opt.smartindent = true
vim.opt.expandtab = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2

-- Busca mientras escribes y sin destacar todo
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = false
vim.opt.incsearch = true

-- Muestra la línea actual resaltada
vim.opt.cursorline = true

-- Desactiva el swapfile y backup
vim.opt.swapfile = false
vim.opt.backup = false

-- Usa el portapapeles del sistema (Linux/macOS)
vim.opt.clipboard = "unnamedplus"

-- Desactiva compatibilidad con Vim antiguo
vim.opt.compatible = false

-- Permite más líneas al hacer scroll
vim.opt.scrolloff = 8

-- Activa colores verdaderos
vim.opt.termguicolors = true

-- Reduce el tiempo para que el cursor se sienta más ágil
vim.opt.updatetime = 250
vim.opt.timeoutlen = 300
