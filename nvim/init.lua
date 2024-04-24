require("plugins")
require("mappings")

vim.opt.wrap = false

-- set the colorscheme
vim.cmd.colorscheme('gruber-darker')

-- line
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true

-- clipboard
vim.opt.clipboard = 'unnamedplus'

-- tab
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
