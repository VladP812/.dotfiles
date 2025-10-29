-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]


return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

    use 'mason-org/mason.nvim'
    use 'mason-org/mason-lspconfig.nvim'
    use 'neovim/nvim-lspconfig'

    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/nvim-cmp'

	-- color scheme
	use {
	    "VladP812/saturn.nvim",
        as = 'saturn',
        --config = function()
         --   vim.cmd.colorscheme('saturn')
        --end
	}
    -- another colorscheme
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

	-- syntax highlighting by parsing
	use('nvim-treesitter/nvim-treesitter', {run = ":TSUpdate"})
	-- themes for status bar
	use('vim-airline/vim-airline-themes')
	-- status bar at the bottom
    use('vim-airline/vim-airline')
    use {
        "L3MON4D3/LuaSnip",
        -- follow latest release.
        tag = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
        -- install jsregexp (optional!:).
        run = "make install_jsregexp"
    }
end)
