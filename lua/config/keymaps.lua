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
vim.keymap.set("n", "J", "<C-d>zz")
vim.keymap.set("n", "K", "<C-u>zz")

-- Copy and paste to/from keyboard
vim.keymap.set({ "n", "x", "v" }, "cp", '"+y')
vim.keymap.set({ "n", "x", "v" }, "cv", '"+p')

--- Delete does not change internal register
vim.keymap.set({ "n", "x", "v" }, "x", '"_x')

-- Move visual selecyed lines
vim.keymap.set("v", "J", ":m '>+1<CR> gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR> gv=gv")

-- Replace without touching the buffer
vim.keymap.set("x", "<leader>p", '"_dP')

-- Quote word
vim.keymap.set("n", "<leader>s", 'bi"<esc>ea"<esc>')
vim.keymap.set("n", "<leader>S", 'Bi"<esc>Ea"<esc>')

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
vim.keymap.set("n", "<leader>U", "viWo<esc>gUl")
vim.keymap.set("n", "<leader>u", "viWo<esc>gul")

