vim.g.mapleader = ' '

vim.keymap.set('n','<C-d>','<C-d>zz')
vim.keymap.set('n','<C-u>','<C-u>zz')

vim.keymap.set('n','n','nzzzv')
vim.keymap.set('n','N','Nzzzv')

vim.keymap.set('n','<leader>w', ':w<enter>')
vim.keymap.set('n','<leader>q', ':q<enter>')
vim.keymap.set('n','<leader>W', ':w!<enter>')
vim.keymap.set('n','<leader>Q', ':q!<enter>')

-- Exit insert mode
vim.keymap.set('i','ii','<Esc>')

