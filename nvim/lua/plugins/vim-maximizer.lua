-- ================================================================================================
-- TITLE : vim-maximizer
-- ABOUT : Maximizes and restores the current window in Vim.
-- LINKS :
--   > github : https://github.com/szw/vim-maximizer
-- ================================================================================================

return {
	"szw/vim-maximizer",
	keys = {
		{ "<leader>m", "<cmd>MaximizerToggle<CR>", desc = "Maximize/minimize a split" },
	},
}
