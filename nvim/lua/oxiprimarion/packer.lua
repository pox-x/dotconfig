
-- Only required if you have packer configured as `opr`

-- This file can be loaded by calling `lua require('plugins')
--[[
local status, packer = pcall(require, 'packer')
  if(not status) then
    print("Packer is not installed")
  return
end
]]

vim.cmd [[packadd packer.nvim]]

-- packer.startup(function(use)
require('packer').startup(function(use)
  -- Packer  can manage itself
  use 'wbthomason/packer.nvim'
--[[
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.1',
    -- or				, branch = '0.1.x',
    'nvim-telescope/telescope-file-browser.nvim',
    requires = {{'nvim-lua/plenary.nvim'}}
  }
  ]]

--  @bugs: Probleme of buffer telescope with vim when try to use telescope-file-browser keymap 
   use {
    -- or				, branch = '0.1.x',
      'nvim-telescope/telescope-file-browser.nvim',
      requires = {'nvim-telescope/telescope.nvim', tag = '0.1.1', 'nvim-lua/plenary.nvim'}
    }

  --use ({
  --  'rose-pine/neovim',
  --  as = 'rose-pine',
  --  config = function()
  --    vim.cmd('colorscheme rose-pine')
  --  end
  --})

  use('nvim-treesitter/nvim-treesitter',
    {
      run = ':TSUpdate'
    }
  )

  use('mhinz/vim-startify')  -- starting page without tree files
  use('nvim-treesitter/playground') -- treesitter
  use('mbbill/undotree') -- Undotree used for manage undo file dynamcly
  use('williamboman/mason.nvim') -- mason manager of plugin lsd etc
  use('raimondi/delimitmate')

  use('kdheepak/lazygit.nvim')

  use('omnisharp/omnisharp-vim') -- omnisharp for neovim test
  use('jxnblk/vim-mdx-js')-- mdx vim 

  use('mattn/emmet-vim')

  use({'drewtempelmeyer/palenight.vim',
  as = 'palenight',
  config = function()
    vim.cmd("colorscheme palenight")
  end
  })

  --[[
  use({'folke/styler.nvim',
    config = function()
      require('styler').setup({
        themes = {
          markdown = { colorscheme = 'palenight'},
          help = { colorscheme = 'catppucin-mocha', background = 'dark'},
          colorscheme = "palenight",
        },
    })
    end
  })
  ]]

  use('ryanoasis/vim-devicons')
  use('powerline/powerline')

  use('vim-airline/vim-airline')
  use('vim-airline/vim-airline-themes')

  -- use('scrooloose/nerdtree')
  -- use('tiagofumo/vim-nerdtree-syntax-highlight')

  -- use('AstroNvim/AstroNvim') -- astro language 
  use('wuelnerdotexe/vim-astro') -- astro language 
--[[
  use{
    'nvim-neo-tree/neo-tree.nvim',
    branch = 'v2.x',
    requires = {
      'nvim-lua/plenary.nvim',
      'nvim-tree/nvim-web-devicons', -- not strctly required, but recommended
      'MunifTanjim/nui.nvim',
       require('neo-tree').setup({
        filesystem={
          filtered_items={
            visible = true,
            always_show={
              '.gitignore'
            },
            hide_hidden = false
          }
        }
      })
    }
  }
  ]]
  use {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v1.x',
    requires = {
      -- LSP Support
      {'neovim/nvim-lspconfig'},             -- Required
      {'williamboman/mason.nvim'},           -- Optional
      {'williamboman/mason-lspconfig.nvim'}, -- Optional

      -- Autocompletion
      {'hrsh7th/nvim-cmp'},         -- Required
      {'hrsh7th/cmp-nvim-lsp'},     -- Required
      {'hrsh7th/cmp-buffer'},       -- Optional
      {'hrsh7th/cmp-path'},         -- Optional
      {'saadparwaiz1/cmp_luasnip'}, -- Optional
      {'hrsh7th/cmp-nvim-lua'},     -- Optional

      -- Snippets
      {'L3MON4D3/LuaSnip'},             -- Required
      {'rafamadriz/friendly-snippets'}, -- Optional
    }
  }

  -- solidity syntax + lsp
  use('tomlion/vim-solidity')

  -- Coc intellisense using for Unity 
  use{'neoclide/coc.nvim', branch = 'release'}
  -- install mono for c#
  -- use('mono/mono')
end)
