vim.pack.add({
	-- colorschemes
	"https://github.com/mcncl/alabaster.nvim",
	"https://github.com/dracula/vim",
	"https://github.com/guillermodotn/nvim-earthsong",
	"https://github.com/miikanissi/modus-themes.nvim",
	"https://github.com/oskarnurm/koda.nvim",
	"https://github.com/srcery-colors/srcery-vim",
	"https://github.com/vague2k/vague.nvim",
	-- lsp
	"https://github.com/neovim/nvim-lspconfig",
	"https://github.com/b0o/SchemaStore.nvim",
	-- formatting
	"https://github.com/stevearc/conform.nvim",
	"https://github.com/rafamadriz/friendly-snippets",
	-- oil
	"https://github.com/stevearc/oil.nvim",
	"https://github.com/refractalize/oil-git-status.nvim",
	-- quicker
	"https://github.com/stevearc/quicker.nvim",
	-- treesitter
	"https://github.com/romus204/tree-sitter-manager.nvim",
	-- "https://github.com/nvim-treesitter/nvim-treesitter",
	-- mini
	"https://github.com/nvim-mini/mini.nvim",
	"https://github.com/martindur/zdiff.nvim",
	-- "https://github.com/rachartier/tiny-cmdline.nvim",
})

require("plugins.colorscheme")
require("plugins.lsp")
require("plugins.formatting")
require("plugins.oil")
require("plugins.quicker")
require("plugins.treesitter")
require("plugins.mini")
require("plugins.git")
-- require("plugins.kulala")
