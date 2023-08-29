---@diagnostic disable: unused-local
local lsp = require('lsp-zero').preset({
	name = 'minimal',
	set_lsp_keymas = true,
	manage_nvim_cmp = true,
	suggest_lsp_servers = false,
})

lsp.ensure_installed({
	'tsserver',
	'eslint',
	'rust_analyzer',
  'lua_ls',
})

vim.lsp.handlers["textDocument/publishDiagnostics"] =
  vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, { virtual_text = true })

-- local opts = {buffer = bufnr, noremap=true, silent=true}
local opts = {noremap=true, silent=true}
-- vim.keymap.set('n', '<space>e', vim.diagnostic.open_float,opts)

lsp.on_attach(function(client, bufnr)
  vim.keymap.set('n', '<space>gd', vim.lsp.buf.definition,{})
  vim.keymap.set('n', '<space>gi', vim.lsp.buf.implementation,{})
  vim.keymap.set('n', '<space>gr', require('telescope.builtin').lsp_references,{})
  vim.keymap.set('n', '<space>ca', vim.lsp.buf.code_action,{})
  vim.keymap.set('n', '<space>gk', vim.lsp.buf.hover,{})
end, opts)

-- lsp.tsserver.setup{
-- on_attach = on_attach,
-- filetypes = { "typescript", "typescriptreact", "typescript.tsx"},
-- cmd = { "typescript-language-server", "--stdio"}
--}
-- lsp.lua_ls.setup {
--on_attach = on_attach,
--settings = {
--    Lua = {
--      diagnostics = {
--        -- Get the language server to recognize the 'vim' global
--        globals = { 'vim' }
--      },
--      workspace = {
--        -- Make the srver aware of Neovim runtim files
--        library = vim.api.nvim_get_runtime_file("", true)
--      }
--    }
--}
--}
-- (Optinal) configure lua language server for neovim
lsp.nvim_workspace()
lsp.setup()
