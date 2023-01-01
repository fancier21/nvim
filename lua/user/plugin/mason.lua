require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = { "sumneko_lua", "eslint", "emmet_ls", "sqlls" },
  automatic_installation = true,
})
