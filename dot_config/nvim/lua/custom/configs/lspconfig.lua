local config = require("plugins.configs.lspconfig")



local on_attach = config.on_attach
local capabilities = config.capabilities

local lspconfig = require("lspconfig")
local navic = require("nvim-navic")

lspconfig.pyright.setup(
  {
    on_attach = on_attach,
    capabilities = capabilities,
    filetypes = { "python" }
  }
)


lspconfig.pyright.setup(
  {
    on_attach = function(client, bufnr)
      navic.attach(client, bufnr)
    end
  })
