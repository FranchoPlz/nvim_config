-- Default vim settings
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set clipboard=unnamed")
vim.cmd("set nocompatible")
vim.cmd("set nowrap")
vim.cmd("syntax enable")
vim.cmd("filetype plugin on")
-- Set numbered and relative line numbers
vim.cmd("set nu rnu")
-- Set powershell as default term ( !IMPORTANT if not using windows )
vim.cmd("set shell=powershell")
vim.g.mapleader = " "

local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- Terminal window switching keymaps
keymap.set("n", "<F5>", ":below 10sp | terminal<CR>", opts)
keymap.set("t", "<Esc>", [[<C-\><C-n>]], opts)
keymap.set({ "t", "n" }, "<A-j>", [[<C-\><C-n><C-w>j]], opts)
keymap.set({ "t", "n" }, "<A-k>", [[<C-\><C-n><C-w>k]], opts)
keymap.set({ "t", "n" }, "<A-l>", [[<C-\><C-n><C-w>l]], opts)
keymap.set({ "t", "n" }, "<A-h>", [[<C-\><C-n><C-w>h]], opts)

-- Tabs keymaps
keymap.set("n", "<C-n>", ":tabedit<CR>", opts)
keymap.set("n", "<tab>", ":tabnext<CR>", opts)
keymap.set("n", "<s-tab>", ":tabprev<CR>", opts)

-- New window
keymap.set("n", "ss", ":split<CR>", opts)
keymap.set("n", "sv", ":vsplit<CR>", opts)

-- Move windows
keymap.set("n", "sh", "<C-w>h", opts)
keymap.set("n", "sk", "<C-w>k", opts)
keymap.set("n", "sj", "<C-w>j", opts)
keymap.set("n", "sl", "<C-w>l", opts)

-- File management
keymap.set("n", "<C-s>", ":wa<CR>", opts)
keymap.set("n", "<leader>nf", ":e <cfile>", opts)

-- Paste remap
keymap.set("n", "<leader>p", '"_dP', opts)

-- Search
keymap.set("n", "<leader>h", ":nohlsearch<CR>")
