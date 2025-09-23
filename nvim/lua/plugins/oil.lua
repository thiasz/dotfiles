-- ================================================================================================
-- TITLE : oil.nvim
-- LINKS :
--   > github : https://github.com/stevearc/oil.nvim
-- ABOUT : A vim-vinegar like file explorer that lets you edit your filesystem
--         like a normal Neovim buffer.
-- ================================================================================================

return {
	{
		"stevearc/oil.nvim",
		lazy = false,
		keys = {
			{ "-", "<cmd>Oil<cr>" },
		},
		dependencies = {
			"refractalize/oil-git-status.nvim",
			"nvim-mini/mini.icons",
		},
		opts = {
			win_options = {
				signcolumn = "yes:2",
			},
			view_options = {
				show_hidden = true,
			},
		},
		config = function(_, opts)
			require("mini.icons").setup()
			require("mini.icons").mock_nvim_web_devicons()

			require("oil").setup(opts)
			require("oil-git-status").setup({
				show_ignored = false,
			})
		end,
	},
}
