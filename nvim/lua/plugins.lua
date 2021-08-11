return require('packer').startup(function()
    
  -- Packer can manage itself as an optional plugin
  use {'wbthomason/packer.nvim', opt = true}

  -- treesitter
  use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }

  -- Color scheme
  use { 'sainnhe/gruvbox-material' }
  use { 'pineapplegiant/spaceduck' }

  -- Fuzzy finder
  use {
      'nvim-telescope/telescope.nvim',
      requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}
  }

  -- LSP and completion
  use { 'neovim/nvim-lspconfig' }
  use { 'nvim-lua/completion-nvim' }

  -- Lua development
  use { 'tjdevries/nlua.nvim' }


  -- Vim dispatch
  use { 'tpope/vim-dispatch' }

  -- Fugitive for Git
  use { 'tpope/vim-fugitive' }

  -- Snippets
  use { 'honza/vim-snippets' }
  use { 'SirVer/ultisnips' }
  use { 'norcalli/snippets.nvim' }

  -- DAP
  use { 'mfussenegger/nvim-dap' }
  use { 'nvim-telescope/telescope-dap.nvim' }
  use { 'mfussenegger/nvim-dap-python' } -- Python

  -- Dashboard
  use { 'glepnir/dashboard-nvim' }

  -- LSP enhanced
  use { 'hrsh7th/nvim-compe' }
  use { 'hrsh7th/vim-vsnip' }
  use { 'cstrap/python-snippets' }
  use { 'ylcnfrht/vscode-python-snippet-pack' }
  use { 'xabikos/vscode-javascript' }
  use { 'golang/vscode-go' }
  use { 'rust-lang/vscode-rust' }

  -- Formattting
  use { 'sbdchd/neoformat' }

  -- LSP plugin witha  performant ui
  use { 'glepnir/lspsaga.nvim' }
  -- vscode like pictograms to the lsp
  use { 'onsails/lspkind-nvim' }

  -- auto highlight other uses of current word under cursor
  use { 'RRethy/vim-illuminate' }

  -- easier to know availabel bindings
  use {
    "folke/which-key.nvim",
    config = function()
      require("which-key").setup {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
      }
    end
  }

  use {
       "folke/trouble.nvim",
       requires = "kyazdani42/nvim-web-devicons",
       config = function() require("trouble").setup {} end
  }

  use { 'p00f/nvim-ts-rainbow' }

  use { 'kabouzeid/nvim-lspinstall' }

  use { 'tomlion/vim-solidity' }
  use {
  'glepnir/galaxyline.nvim',
    branch = 'main',
    -- your statusline
    config = function() require'statusline' end,
    -- some optional icons
    requires = {'kyazdani42/nvim-web-devicons', opt = true}
  }

  use {'akinsho/nvim-bufferline.lua', requires = 'kyazdani42/nvim-web-devicons'}
  
  use { 'Pocco81/TrueZen.nvim' }

  use { 'ray-x/lsp_signature.nvim' }

  use {
    'kyazdani42/nvim-tree.lua',
    requires = 'kyazdani42/nvim-web-devicons'
  }

  use { '~/chainist/learn/nvim-plugins/hover.nvim' }
  
end)
