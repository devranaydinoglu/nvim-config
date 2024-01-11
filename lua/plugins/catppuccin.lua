
return {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
	require("catppuccin").setup({
	    flavour = "macchiato",
	    background = {
		dark = "macchiato"
	    }
	})
	vim.cmd("colorscheme catppuccin")
    end
}
