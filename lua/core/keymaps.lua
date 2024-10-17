vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

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

local keymap = vim.keymap
-- clear search 
keymap.set('n','<leader>h', ':nohlsearch<CR>')

local opts = {}
-- Visual --
-- Stay in indent mode
keymap.set("v", "<", "<gv^", opts)
keymap.set("v", ">", ">gv^", opts)

-- Normal --
-- Better window navigation
keymap.set("n", "<C-h>", "<C-w>h", opts)
keymap.set("n", "<C-j>", "<C-w>j", opts)
keymap.set("n", "<C-k>", "<C-w>k", opts)
keymap.set("n", "<C-l>", "<C-w>l", opts)
-- Resize with arrows
-- keymap.set("n", "<C-Up>", ":resize -2<CR>", opts)
-- keymap.set("n", "<C-Down>", ":resize +2<CR>", opts)
-- keymap.set("n", "<C-Left>", ":vertical resize -2<CR>", opts)
-- keymap.set("n", "<C-Right>", ":vertical resize +2<CR>", opts)

keymap.set('n', '<leader>z', ':ZenMode<CR>', { noremap = true, silent = true })

