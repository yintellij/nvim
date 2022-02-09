local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
    return
end

require("u.lsp.lsp-installer")
require("u.lsp.handlers").setup()
require("u.lsp.null-ls")

