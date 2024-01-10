require("trouble").setup()
-- Lua
vim.keymap.set("n", "<leader>TT", function() require("trouble").toggle() end)
vim.keymap.set("n", "<leader>Tw", function() require("trouble").toggle("workspace_diagnostics") end)
vim.keymap.set("n", "<leader>Td", function() require("trouble").toggle("document_diagnostics") end)
vim.keymap.set("n", "<leader>Tq", function() require("trouble").toggle("quickfix") end)
vim.keymap.set("n", "<leader>Tl", function() require("trouble").toggle("loclist") end)
vim.keymap.set("n", "gR", function() require("trouble").toggle("lsp_references") end)
