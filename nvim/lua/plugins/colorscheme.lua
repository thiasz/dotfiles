-- ================================================================================================
-- TITLE : rose-pine colorscheme
-- LINKS :
--   > github : https://github.com/rose-pine/neovim
-- ABOUT : a colorscheme for neovim
-- ================================================================================================

return {
	{
		"rose-pine/neovim",
		name = "rose-pine",
		opts = {
			styles = {
				bold = false,
				italic = true,
				transparency = true,
			},
		},
		config = function(_, opts)
			require("rose-pine").setup(opts)
			vim.cmd("colorscheme rose-pine")
		end,
	},
}
