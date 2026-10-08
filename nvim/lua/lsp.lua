-- Neovim 0.11+ native LSP config
local capabilities = vim.lsp.protocol.make_client_capabilities()

-- Enhance capabilities with nvim-cmp if available
local ok, cmp_lsp = pcall(require, "cmp_nvim_lsp")
if ok then
    capabilities = cmp_lsp.default_capabilities()
end

-- Python
vim.lsp.config("pyright", { capabilities = capabilities })
vim.lsp.enable("pyright")

-- JavaScript/TypeScript
vim.lsp.config("ts_ls", { capabilities = capabilities })
vim.lsp.enable("ts_ls")

-- C++
vim.lsp.config("clangd", { capabilities = capabilities })
vim.lsp.enable("clangd")

-- Lua
vim.lsp.config("lua_ls", {
    capabilities = capabilities,
    settings = {
        Lua = {
            diagnostics = {
                globals = { "vim" },
            },
        },
    },
})
vim.lsp.enable("lua_ls")
