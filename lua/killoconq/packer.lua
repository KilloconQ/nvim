-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.0',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }
  use 'nvim-telescope/telescope-file-browser.nvim'

-- If you are using Packer
  use 'MunifTanjim/prettier.nvim'
  -- use "olimorris/onedarkpro.nvim"
  use 'shaunsingh/nord.nvim'
  use('nvim-treesitter/nvim-treesitter', {run = 'TSUpdate'})
  use('nvim-treesitter/playground')
  use ('mbbill/undotree')
  use('tpope/vim-fugitive')
  use 'tpope/vim-surround'
  use {
	  'VonHeikemen/lsp-zero.nvim',
	  requires = {
		  -- LSP Support
		  {'neovim/nvim-lspconfig'},
		  {'williamboman/mason.nvim'},
		  {'williamboman/mason-lspconfig.nvim'},

		  -- Autocompletion
		  {'hrsh7th/nvim-cmp'},
		  {'hrsh7th/cmp-buffer'},
		  {'hrsh7th/cmp-path'},
		  {'saadparwaiz1/cmp_luasnip'},
		  {'hrsh7th/cmp-nvim-lsp'},
		  {'hrsh7th/cmp-nvim-lua'},

		  -- Snippets
		  {'L3MON4D3/LuaSnip'},
		  -- Snippet Collection (Optional)
		  {'rafamadriz/friendly-snippets'},
	  }
  }

  use('folke/zen-mode.nvim')

  use 'windwp/nvim-autopairs'
  use 'windwp/nvim-ts-autotag'

  use 'kyazdani42/nvim-web-devicons'

  use 'jose-elias-alvarez/null-ls.nvim'

  use 'Theprimeagen/harpoon'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/nvim-cmp'
  use { 'numToStr/Comment.nvim',
      requires = {
        'JoosepAlviste/nvim-ts-context-commentstring'
      }
    }
  use 'lewis6991/gitsigns.nvim'
  use 'dinhhuy258/git.nvim'
  use 'onsails/lspkind-nvim'
  use {
  'nvim-lualine/lualine.nvim',
  requires = { 'nvim-tree/nvim-web-devicons', opt = true }
}

end)
