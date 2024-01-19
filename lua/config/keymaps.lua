local keymap = vim.keymap

-- Nvim tree
keymap.set("n", "<leader>tt", ":NvimTreeToggle<CR>", {noremap = true})
keymap.set("n", "<leader>tf", ":NvimTreeFocus<CR>", {noremap = true})

-- Terminal
keymap.set("n", "<leader>ot", ":split<CR> <bar> :term<CR>", {noremap = true})

