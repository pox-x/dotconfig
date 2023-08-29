local status, telescope = pcall(require, "telescope")
if (not status) then return end
local actions = require('telescope.actions')
local builtin = require('telescope.builtin')


local function telescope_buffer_dir()
  return vim.fn.expand('%:p:h')
end

-- local fb_actions = require "telescope".extensions.file_browser.actions

telescope.setup{
  extensions = {
    file_browser = {
      theme = "dropdown",
      hijack_netrw = true,
    },
  },
}

telescope.load_extension("file_browser")


vim.keymap.set('n', '<space>ff', builtin.find_files,{})
vim.keymap.set('n', '<C-p>', builtin.git_files,{})
vim.keymap.set('n', '<space>bu', builtin.buffers,{})
vim.keymap.set('n', '<space>ds', builtin.lsp_document_symbols,{})
vim.keymap.set('n', '<space>bo', builtin.oldfiles,{})
vim.keymap.set('n', '<space>bn', builtin.live_grep, {})
vim.keymap.set('n', '<space>bp',builtin.grep_string, {})

vim.keymap.set('n', "bz", function()
  telescope.extensions.file_browser.file_browser({
    path = "%:p:h",
    cwd = telescope_buffer_dir(),
    respact_gitingore = false,
    hidden = true,
    grouped = true,
    previewr = false,
    initial_mod = "normal",
    layout_config = {height = 15}
  })
end)
-- vim.keymap.set('n', '<space>bp', function()
-- 	builtin.grep_string({ search = vim.fn.input("Grep > ") });
-- end)

-- telescope-file-browser

-- vim.api.nvim_set_keymap("n","<space>bb",":Telescope file_browser<CR>",{ noremap = true })
