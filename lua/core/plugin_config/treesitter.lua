require('nvim-treesitter.configs').setup {
  --- List of parser Names or "all"
  ensure_installed = { "c","lua","ruby","vim"},

  -- Install parsers synchronously 
  sync_install = false,
  auto_install = true,
  highlight = {
    enable = true,
  },
}
