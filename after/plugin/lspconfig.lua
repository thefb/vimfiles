require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = { "lua_ls", "tsserver", "angularls", "bashls", "clangd", "cssls", "dockerls", "docker_compose_language_service", "dotls", "eslint", "html", "jsonls", "prismals", "pyright", "sqlls", "yamlls", "rust_analyzer" }
})

local on_attach = function(_, _)
  vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, {})
  vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})

  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
  vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, {})
  vim.keymap.set('n', 'gr', require('telescope.builtin').lsp_reference, {})
  vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
end


require("lspconfig").lua_ls.setup {
  on_attach = on_attach
}
require("lspconfig").tsserver.setup {
  on_attach = on_attach
}
require("lspconfig").angularls.setup {
  on_attach = on_attach
}
require("lspconfig").bashls.setup {
  on_attach = on_attach
}
require("lspconfig").clangd.setup {
  on_attach = on_attach
}
require("lspconfig").cssls.setup {
  on_attach = on_attach
}
require("lspconfig").dockerls.setup {
  on_attach = on_attach
}
require("lspconfig").docker_compose_language_service.setup {
  on_attach = on_attach
}
require("lspconfig").dotls.setup {
  on_attach = on_attach
}
require("lspconfig").eslint.setup {
  on_attach = on_attach
}
require("lspconfig").html.setup {
  on_attach = on_attach
}
require("lspconfig").jsonls.setup {
  on_attach = on_attach
}
require("lspconfig").prismals.setup {
  on_attach = on_attach
}
require("lspconfig").pyright.setup {
  on_attach = on_attach
}
require("lspconfig").sqlls.setup {
  on_attach = on_attach
}
require("lspconfig").yamlls.setup {
  on_attach = on_attach
}
require("lspconfig").rust_analyzer.setup {
  on_attach = on_attach
}
