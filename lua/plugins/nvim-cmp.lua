
return {
    "hrsh7th/nvim-cmp",
    event = "InsertEnter",
    dependencies = {
	"hrsh7th/cmp-nvim-lsp",
	"hrsh7th/cmp-buffer",
	"hrsh7th/cmp-path"
    },
    config = function()
	local cmp = require("cmp")

	cmp.setup({
	    completion = {
		completeopt = "menu,menuone,preview,noselect"
	    },
	    sources = cmp.config.sources({
		{name = "nvim_lsp"},
		{name = "buffer"},
		{name = "path"}
	    }),
	    mapping = cmp.mapping.preset.insert({
		["<C-k>"] = cmp.mapping.select_prev_item(),
		["<C-j>"] = cmp.mapping.select_next_item(),
		["<Tab>"] = cmp.mapping.confirm({select = true})
	    })

	})
    end
}
