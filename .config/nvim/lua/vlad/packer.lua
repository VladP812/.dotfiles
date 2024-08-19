-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]


return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'
	-- find files in the current working directory
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.5',
		-- or                            , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}
	-- color scheme
	use {
	    "VladP812/saturn.nvim",
        as = 'saturn',
        config = function()
            vim.cmd.colorscheme('saturn')
        end
	}
    use {'xiyaowong/transparent.nvim',
        -- enable transparent mode on startup
        config = function()
            vim.cmd('autocmd VimEnter * :TransparentEnable')
        end
    }
	-- syntax highlighting by parsing
	use('nvim-treesitter/nvim-treesitter', {run = ":TSUpdate"})
	-- themes for status bar
	use('vim-airline/vim-airline-themes')
	-- status bar at the bottom
    use('vim-airline/vim-airline')
    -- quick files navigation (favourite files list)
    use('ThePrimeagen/harpoon')
    -- long undo history with tree view
    use('mbbill/undotree')
	-- Language Server Protocol (LSP)
	use {
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v3.x',
		requires = {
			--- Uncomment these if you want to manage LSP servers from neovim
			{'williamboman/mason.nvim'},
			{'williamboman/mason-lspconfig.nvim'},

			-- LSP Support
			{'neovim/nvim-lspconfig'},
			-- Autocompletion
			{'hrsh7th/nvim-cmp'},
			{'hrsh7th/cmp-nvim-lsp'},
			{'L3MON4D3/LuaSnip'},
		}
	}

end)
