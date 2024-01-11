local on_attach = function()
    vim.keymap.set("n", "K", vim.lsp.buf.hover)
    vim.keymap.set("n", "gD", vim.lsp.buf.declaration)
    vim.keymap.set("n", "gd", vim.lsp.buf.definition)
    vim.keymap.set("n", "gi", vim.lsp.buf.implementation)
end

return {
    "neovim/nvim-lspconfig",
    config = function()
	local lspconfig = require("lspconfig")
	

	lspconfig.lua_ls.setup({
	    on_attach = on_attach
	})

	lspconfig.clangd.setup({
	    on_attach = on_attach,
	})
    end
}
