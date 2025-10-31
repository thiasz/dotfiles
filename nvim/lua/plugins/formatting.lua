-- ================================================================================================
-- TITLE : conform.nvim
-- LINKS :
--   > github : https://github.com/stevearc/conform.nvim
-- ABOUT : Lightweight yet powerful formatter plugin for Neovim
--
-- TITLE : nvim-autopairs
-- LINKS :
--   > github : https://github.com/windwp/nvim-autopairs
-- ABOUT : A super powerful autopair plugin for Neovim that supports multiple characters.
--
-- TITLE : nvim-ts-autotag
-- LINKS :
--   > github : https://github.com/windwp/nvim-ts-autotag
-- ABOUT : Use treesitter to autoclose and autorename html tag
-- ================================================================================================

return {
	{
		"stevearc/conform.nvim",
		opts = {
			format_on_save = {
				timeout_ms = 3000,
				lsp_format = "fallback",
			},
			formatters_by_ft = {
				json = { "prettier" },
				lua = { "stylua" },
				-- python = { "isort", "black" },
				python = { "ruff" },
				xml = { "xmlformatter" },
				yaml = { "prettier" },
			},
		},
	},
	{
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		config = true,
	},
	{
		"windwp/nvim-ts-autotag",
		config = function()
			require("nvim-ts-autotag").setup()
		end,
	},
}
