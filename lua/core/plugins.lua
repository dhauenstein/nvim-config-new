local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
	"ellisonleao/gruvbox.nvim",
	"nvim-tree/nvim-tree.lua",
	"nvim-tree/nvim-web-devicons",
	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
	},
	"nvim-treesitter/nvim-treesitter",
	{
		"nvim-telescope/telescope.nvim",
		version = "0.1.4",
		dependencies = { { "nvim-lua/plenary.nvim" } },
	},
	"hrsh7th/nvim-cmp",
	"hrsh7th/cmp-nvim-lsp",
	"L3MON4D3/LuaSnip",
	"saadparwaiz1/cmp_luasnip",
	"rafamadriz/friendly-snippets",
	"williamboman/mason.nvim",
	"williamboman/mason-lspconfig.nvim",
	"neovim/nvim-lspconfig",
	{ "numToStr/Comment.nvim", lazy = false },
	{ "akinsho/toggleterm.nvim", version = "*", config = true },
	{ "ThePrimeagen/harpoon", branch = "harpoon2", requires = { { "nvim-lua/plenary.nvim" } } },
	{
		"folke/which-key.nvim",
		event = "VeryLazy",
		init = function()
			vim.o.timeout = true
			vim.o.timeoutlen = 300
		end,
		opts = {
			-- your configuration comes here
			-- or leave it empty to use the default settings
			-- refer to the configuration section below
		},
	},
	"HiPhish/rainbow-delimiters.nvim",
	"mhartington/formatter.nvim",
	"lewis6991/gitsigns.nvim",
}

local opts = {}
require("lazy").setup(plugins, opts)
