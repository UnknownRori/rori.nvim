vim.g.transparent_enabled = true
vim.g.transparency = 0.8
vim.wo.number = true
vim.o.relativenumber = true

vim.o.wrap = false
vim.o.smartindent = true
vim.o.ruler = true
vim.o.colorcolumn = "80"
vim.o.cursorline = true   -- For horizontal line
vim.o.cursorcolumn = true -- For  vertical line

vim.o.shiftround = true
vim.o.expandtab = true
vim.o.smartindent = true
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.opt.guicursor = 'n-v-c-sm:block-blinkwait175-blinkoff150-blinkon175'
vim.opt.guifont = 'FiraCode Nerd Font'

vim.opt.shell = 'bash'
vim.o.shell = 'bash'
vim.opt.shellcmdflag = '-c'
vim.opt.termguicolors = true
vim.o.pumblend = 30
vim.o.winblend = 30

require('custom.colors').LineNumberColors()
-- require('custom.colors').CursorLineColors()
require('custom.keymaps')
require('custom.neovide')
require('custom.lsp')
