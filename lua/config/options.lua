local opt = vim.opt

-- vim.g.loaded_netrw = 1
-- vim.g.loaded_netrwPlugin = 1

-- Tab / Indentation
opt.shiftwidth = 4
opt.smartindent = true
opt.wrap = false

-- Search
opt.incsearch = true
opt.ignorecase = true

-- Appearance
opt.number = true
opt.relativenumber = true
opt.termguicolors = true
opt.signcolumn = "yes"
opt.scrolloff = 10
opt.completeopt = "menuone,noinsert,noselect"

-- Behavior
opt.hidden = true
opt.swapfile = false
opt.backup = false
opt.backspace = "indent,eol,start"
opt.splitbelow = true
opt.splitright = true
opt.autochdir = false
opt.iskeyword:append("-")
opt.mouse:append("a")
opt.clipboard:append("unnamedplus")
opt.modifiable = true

