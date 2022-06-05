local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
    print("no Basic lspconfig (.config/nvim/lua/settings/include.lua)")
    return
end
require("settings.lsp.init_lspconfig")
require("settings.lsp.cmp_path")
require("settings.lsp.nvim_lspinstall")
require("settings.lsp.lspsaga")
require("settings.lsp.nvim_cmp")
