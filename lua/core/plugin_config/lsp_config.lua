require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = { "lua_ls", "html","gopls"},
  automatic_installation = true
})

local on_attach = function(_,_) 
  vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, {})
  vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})
  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
  vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, {})
  vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, {})
  vim.keymap.set('n', 'gr', require('telescope.builtin').lsp_references, {})
  vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
end
local lspconfig = require('lspconfig')
local capabilities = require('cmp_nvim_lsp').default_capabilities()
lspconfig.html.setup{capabilities = capabilities}
lspconfig.pyright.setup{capabilities = capabilities}
lspconfig.ansiblels.setup{capabilities = capabilities}
lspconfig.terraformls.setup{capabilities = capabilities}
lspconfig.volar.setup{capabilities = capabilities}
lspconfig.lua_ls.setup {
  on_attach = on_attach,
  capabilities = capabilities
}
lspconfig.gopls.setup{
  capabilities =  capabilities,
  settings= {
    gopls=  {
      completeUnimported = true,
      usePlaceholders = true,
      hoverKind = "FullDocumentation",
      vulncheck = "Imports",
      analyses= {
        atomic = true,
        bools = true,
        composites = true,
        copylocks = true,
        deepequalerrors = true,
        embed = true,
        errorsas = true,
        fieldalignment = true,
        httpresponse = true,
        ifaceassert = true,
        loopclosure = true,
        lostcancel = true,
        nilfunc = true,
        nilness = true,
        nonewvars = true,
        printf = true,
        shadow = true,
        shift = true,
        simplifycompositelit = true,
        simplifyrange = true,
        simplifyslice = true,
        sortslice = true,
        stdmethods = true,
        stringintconv = true,
        structtag = true,
        testinggoroutine = true,
        tests = true,
        timeformat = true,
        unmarshal = true,
        unreachable = true,
        unsafeptr = true,
        unusedparams = true,
        unusedresult = true,
        unusedvariable = true,
        unusedwrite = true,
        useany = true,
      },
    }
  }
}
