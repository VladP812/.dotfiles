-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]


return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'
	-- color scheme
	use {
	    "VladP812/saturn.nvim",
        as = 'saturn',
        --config = function()
         --   vim.cmd.colorscheme('saturn')
        --end
	}

    use {
        "sainnhe/gruvbox-material",
        config = function()
            vim.cmd.colorscheme("gruvbox-material")
        end
    }

    -- buffer manager
    use {
        "VladP812/buffman.nvim",
        as = "buffman"
    }
    -- transparency
    use {'xiyaowong/transparent.nvim',
        -- enable transparent mode on startup
        config = function()
            vim.cmd('autocmd VimEnter * :TransparentDisable')
        end
    }
	-- syntax highlighting by parsing
	use('nvim-treesitter/nvim-treesitter', {run = ":TSUpdate"})
	-- themes for status bar
	use('vim-airline/vim-airline-themes')
	-- status bar at the bottom
    use('vim-airline/vim-airline')
    -- lsp
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
		}
	}
    use {
        "L3MON4D3/LuaSnip",
        -- follow latest release.
        tag = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
        -- install jsregexp (optional!:).
        run = "make install_jsregexp"
    }
end)
