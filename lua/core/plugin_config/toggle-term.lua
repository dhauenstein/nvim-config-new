require("toggleterm").setup()
function _G.set_terminal_keymaps()
  local opts = {buffer = 0}
  vim.keymap.set('t', '<C-esc>', [[<C-\><C-n>]], opts)
  vim.keymap.set('t', 'jk', [[<C-\><C-n>]], opts)
  vim.keymap.set('n', '<leader>t', [[cmd ToggleTerm]], opts)
end

local Terminal  = require('toggleterm.terminal').Terminal
-- This is to open Lazygit
local lazygit = Terminal:new({ cmd = "lazygit", hidden = true, direction = "float", border = "double" })
local term = Terminal:new({ hidden = true, direction = "float", border = "double" })

function _lazygit_toggle()
  lazygit:toggle()
end
function _term_toggle()
  term:toggle()
end

vim.api.nvim_set_keymap("n", "<leader>lg", "<cmd>lua _lazygit_toggle()<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>lt", "<cmd>lua _term_toggle()<CR>", {noremap = true, silent = true})

-- if you only want these mappings for toggle term use term://*toggleterm#* instead
vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')
vim.api.nvim_set_keymap('n', '<leader>t', ':ToggleTerm<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('t', '<C-t>', [[<C-\><C-n>:ToggleTerm<CR>]], { noremap = true, silent = true })

-- Terminal --
-- Better terminal navigation
local keymap = vim.keymap.set
local term_opts = {}
keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)
