--------------------------------------------------

-- vim.opt settings

--------------------------------------------------

-- Line numbers
vim.opt.number = true

-- Relative numbers
vim.wo.relativenumber = true

-- Ignore case in search
vim.opt.ignorecase = true

-- Search upper case
vim.opt.smartcase = true

-- Remove previous search highlihts
vim.opt.hlsearch = false
vim.opt.incsearch = true

-- Remove signline
vim.opt.signcolumn = "no"

-- Long lines wrapped
vim.opt.wrap = true

-- Preserve indentation with wrapped lines
vim.opt.breakindent = true

-- Tab size
vim.opt.tabstop = 2
vim.opt.softtabstop = 2

-- Indent size
vim.opt.shiftwidth = 2

-- Tabs are spaces
vim.opt.expandtab = true

-- Disable autocomment prssing on new line
vim.cmd([[autocmd FileType * set formatoptions-=ro]])

-- always have min 8 lines from cursor and end of screen
vim.opt.scrolloff = 8

-- use undotree for undo
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

-- No mouse in insert mode
vim.opt.mouse = "n"

-- For modicator
vim.o.termguicolors = true
vim.o.cursorline = true

-- Fat cursor
vim.opt.guicursor = "n-v-i-r-c:block"

-- Disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.opt.pumheight = 5

vim.opt.showmode = false
