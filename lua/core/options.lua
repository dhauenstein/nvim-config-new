vim.opt.backspace = '2'
vim.opt.showcmd = true
vim.opt.laststatus = 2
vim.opt.autowrite = true 
vim.opt.cursorline = true
vim.opt.autoread = true 

-- use spaces for tabs
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2 
vim.opt.shiftround = true
vim.opt.expandtab = true

-- Enable filetype plugin
vim.cmd [[filetype plugin indent on]]

-- Set auto-indentation
vim.o.autoindent = true
vim.o.smartindent = true

-- Matching 
vim.o.showmatch = true
vim.o.matchtime = 2



