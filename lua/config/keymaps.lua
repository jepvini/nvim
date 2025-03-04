----------------------------------------------------

-- Keybindings

----------------------------------------------------

-- Leader
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- jk as esc
vim.keymap.set({ "i" }, "jk", "<esc>")

-- Quit file
vim.keymap.set("n", "<leader>q", "<cmd>exit<cr>")

-- Move half page
vim.keymap.set({ "n", "v" }, "J", "<C-d>zz")
vim.keymap.set({ "n", "v" }, "K", "<C-u>zz")

-- Copy and paste to/from keyboard
vim.keymap.set({ "n", "x", "v" }, "<leader>y", '"+y')
vim.keymap.set({ "n", "x", "v" }, "<leader>p", '"+p')

--- Delete does not change internal register
vim.keymap.set({ "n", "x", "v" }, "x", '"_x')

-- Move visual selecyed lines
vim.keymap.set("v", "H", ":m '>+1<CR> gv=gv")
vim.keymap.set("v", "L", ":m '<-2<CR> gv=gv")

-- Quote word
vim.keymap.set("n", "<leader>s", 'ciw""<esc>P')
vim.keymap.set("n", "<leader>S", 'ciW""<esc>P')

-- Sort selected text
vim.keymap.set("v", "<leader>S", ":sort<cr>")

-- Select whole buffe
vim.keymap.set("n", "<leader>A", ":keepjumps normal! ggVG<cr>")

-- Tabs
vim.keymap.set("n", "<leader>h", "<cmd>tabn 3<cr>") -- tab 3
vim.keymap.set("n", "<leader>j", "<cmd>tabn 1<cr>") -- tab 1
vim.keymap.set("n", "<leader>k", "<cmd>tabn 2<cr>") -- tab 2
vim.keymap.set("n", "<leader>l", "<cmd>tabn 4<cr>") -- tab 4

-- Show registers
vim.keymap.set("n", "<leader>R", "<cmd>registers<cr>")

-- Disable scroll in insert mode
vim.keymap.set("i", "<Up>", "<nop>")
vim.keymap.set("i", "<Down>", "<nop>")
vim.keymap.set("n", "<Up>", "<nop>")
vim.keymap.set("n", "<Down>", "<nop>")
vim.keymap.set("v", "<Up>", "<nop>")
vim.keymap.set("v", "<Down>", "<nop>")

-- Toggle first letter of word upper case or lower case
vim.keymap.set("n", "<leader>U", "viWo<esc>vU")
vim.keymap.set("n", "<leader>u", "viWo<esc>vu")

-- Persistence
vim.keymap.set("n", "<leader>ws", function() require("persistence").load() end)
vim.keymap.set("n", "<leader>we", function() require("persistence").select() end)
vim.keymap.set("n", "<leader>ww", function() require("persistence").load({ last = true }) end)
vim.keymap.set("n", "<leader>wd", function() require("persistence").stop() end)
