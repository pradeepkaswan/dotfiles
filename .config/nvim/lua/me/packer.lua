-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.2',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  use { 
	  'olivercederborg/poimandres.nvim',
	  config = function()
		  require('poimandres').setup {
			  -- leave this setup function empty for default config
			  -- or refer to the configuration section
			  -- for configuration options
		  }
	  end
  }

  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

  --Language packs
  use 'sheerun/vim-polyglot'

  use 'rhysd/vim-grammarous'

  --fullstack dev
  use 'pangloss/vim-javascript' --JS support
  use 'leafgarland/typescript-vim' --TS support
  use 'maxmellon/vim-jsx-pretty' --JS and JSX syntax
  use 'jparise/vim-graphql' --GraphQL syntax
  use 'mattn/emmet-vim'

  use {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v2.x',
	  requires = {
		  -- LSP Support
		  {'neovim/nvim-lspconfig'},             -- Required
		  {'williamboman/mason.nvim'},           -- Optional
		  {'williamboman/mason-lspconfig.nvim'}, -- Optional

		  -- Autocompletion
		  {'hrsh7th/nvim-cmp'},     -- Required
		  {'hrsh7th/cmp-nvim-lsp'}, -- Required
		  {'L3MON4D3/LuaSnip'},     -- Required
	  }
  }

end)
