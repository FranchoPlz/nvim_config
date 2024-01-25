vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set clipboard=unnamed")
vim.g.mapleader = " "

vim.keymap.set('n', '<F5>', ':below 10sp | terminal<CR>', {})
vim.keymap.set('t', '<Esc>', [[<C-\><C-n>]],{})
vim.keymap.set({'t', 'n'}, '<A-j>', [[<C-\><C-n><C-w>j]], {})
vim.keymap.set({'t', 'n'}, '<A-k>', [[<C-\><C-n><C-w>k]], {})
