require("toggleterm").setup()
function _G.set_terminal_keymaps()
  local opts = {buffer = 0}
  vim.keymap.set('t', '<C-esc>', [[<C-\><C-n>]], opts)
  vim.keymap.set('t', 'jk', [[<C-\><C-n>]], opts)
  vim.keymap.set('n', '<leader>t', [[cmd ToggleTerm]], opts)
end

-- if you only want these mappings for toggle term use term://*toggleterm#* instead
vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')
vim.api.nvim_set_keymap('n', '<leader>t', ':ToggleTerm<CR>i', { noremap = true, silent = true })
vim.api.nvim_set_keymap('t', '<C-t>', [[<C-\><C-n>:ToggleTerm<CR>]], { noremap = true, silent = true })


