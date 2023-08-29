vim.cmd('autocmd!')
vim.scriptencoding = 'utf-8'
vim.opt.encoding = 'UTF-8'
vim.opt.fileencoding = 'utf-8'
vim.opt.guicursor = ""
vim.opt.mouse = 'a'
vim.wo.number = true
vim.opt.hlsearch = true
vim.opt.laststatus = 2
vim.opt.scrolloff = 10
vim.opt.shell = 'fish'

vim.diagnostic.config({
  virtual_text = true
})
-- vim.diagnostic.setloclist({ open = false })
vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.path:append { '**' } -- Finding files - Search down in to subfolders

vim.opt.smarttab = true
vim.opt.smartindent = true
vim.opt.wrap = false

-- keymap 
vim.keymap.set('n', '<space>U', ':UndotreeToggle<CR>')
vim.keymap.set('n', '<C-n>', ':Neotree<CR>')
vim.keymap.set('n', '<space>bm', ':Mason<CR>')
vim.keymap.set('n', '<space>C', ':lua ColorMyPencils()<CR>')
vim.keymap.set('n', '<space>L', ':LazyGit<CR>')
vim.keymap.set('n', '<space>t', ':vs | vert term<CR>')



-- vim.g.lazygit_floating_window_windlend = 0 "transparency of floating window"
