return {
	{
		"nvim-treesitter/nvim-treesitter",
		opts = {
			auto_install = true,
			ensure_installed = {
				"bash",
				"c",
				"diff",
				"html",
				"lua",
				"luadoc",
				"markdown",
				"markdown_inline",
				"query",
				"python",
				"robot",
				"vim",
				"vimdoc",
				"xml",
				"yang",
			},
			highlight = {
				enable = true,
			},
		},
		config = function(_, opts)
			require("nvim-treesitter.configs").setup(opts)
		end,
	},
}
