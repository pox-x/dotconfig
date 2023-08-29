-- config base command of neovim 
local keymap = vim.keymap

-- Do not yank with x
keymap.set('n', 'x', '"_x')

-- Increment / Decrement
keymap.set('n', '+', '<C-a>')
keymap.set('n', '-', '<C-x>')

-- Delet word backwards
keymap.set('n', 'dw', 'vb"_d')

-- Select all
keymap.set('n', '<C-a>', 'gg<S-v>G')

-- New tab
keymap.set('n', 'te', ':tabedit<CR>')
keymap.set('n', 'ss', ':split<Return><C-w>w')
keymap.set('n', 'sv', ':vsplit<Return><C-w>w')

-- Quit and Save 
keymap.set('n', '<Space>q', ':q<CR>')
keymap.set('n', '<Space>qq', ':q!<CR>')
keymap.set('n', '<Space>a', ':qa<CR>')
keymap.set('n', '<Space>aa', ':qa!<CR>')
keymap.set('n', '<Space>w', ':w<CR>')
keymap.set('n', '<Space>ww', ':w!<CR>')
keymap.set('n', '<Space>z', ':wq<CR>')
keymap.set('n', '<Space>zz', ':wq!<CR>')

vim.keymap.set('n', '<Space>x', ':x<CR>')

-- Valid buffer files
keymap.set('n', 'so', ':so<CR>')

-- Search files
keymap.set('n', 'se', ':e')
keymap.set('n', 'see', ':Explore<CR>')

-- Window and Resize
keymap.set('n', 'sl', '<C-w>l')
keymap.set('n', 'sh', '<C-w>h')
keymap.set('n', 'sj', '<C-w>j')
keymap.set('n', 'sk', '<C-w>k')

keymap.set('', 's<left>', '<C-w>>')
keymap.set('', 's<right>', '<C-w><')
keymap.set('', 's<up>', '<C-w>+')
keymap.set('', 's<down>', '<C-w>-')

keymap.set('', 'sx', '<C-w>x')
keymap.set('', 'sa', '<C-w>=')

-- Swith tab
keymap.set('n', 'sd', '<C-^>')
keymap.set('n', 'ls', ':ls<CR>')

-- Telescope 
-- keymap.set('n', '<space>bb', ':Telescope file_browser<CR>')

