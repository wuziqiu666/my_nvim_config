vim.cmd([[packadd packer.nvim]])
return require("packer").startup(function(use)
    -- Packer can manage itself
    use("wbthomason/packer.nvim")

    use({
        "nvim-lualine/lualine.nvim",
        requires = { "kyazdani42/nvim-web-devicons", opt = true },
    })
    use("kdheepak/tabline.nvim")
    --use("mhartington/oceanic-next")
    use("tomasiser/vim-code-dark")
    use("lukas-reineke/indent-blankline.nvim")
    use({
        "nvim-treesitter/nvim-treesitter",
        run = function()
            require("nvim-treesitter.install").update({ with_sync = true })
        end,
    })
    use("glepnir/dashboard-nvim")
    use({
        "kyazdani42/nvim-tree.lua",
        requires = {
            "kyazdani42/nvim-web-devicons", -- optional, for file icons
        },
        tag = "nightly", -- optional, updated every week. (see issue #1193)
    })

    use("onsails/lspkind.nvim")
    use("windwp/nvim-autopairs")
    use("luochen1990/rainbow")
    --use("mg979/vim-visual-multi")
    use("terryma/vim-multiple-cursors")

    use("neovim/nvim-lspconfig")
    use("mfussenegger/nvim-jdtls")
    use("williamboman/nvim-lsp-installer")
    use("mhartington/formatter.nvim")
    use("mfussenegger/nvim-dap")

    use("hrsh7th/cmp-nvim-lsp") -- LSP source for nvim-cmp
    use("hrsh7th/cmp-buffer")
    use("hrsh7th/cmp-path")
    use("hrsh7th/cmp-cmdline")
    use("hrsh7th/nvim-cmp")

    use("L3MON4D3/LuaSnip")
    use("hrsh7th/cmp-vsnip")
    use("hrsh7th/vim-vsnip")

	use({
		"nvim-telescope/telescope.nvim",
		tag = "0.1.0",
		requires = { { "nvim-lua/plenary.nvim" } },
	})
	use({ "nvim-telescope/telescope-ui-select.nvim" })
	use({ "lewis6991/gitsigns.nvim" })
	use("tpope/vim-fugitive")
	use("stevearc/aerial.nvim")
	use("numToStr/FTerm.nvim")
end)
