local installer = require("nvim-lsp-installer")

installer.setup({
  automatic_installation = true, -- automatically detect which servers to install (based on which servers are set up via lspconfig)
})
