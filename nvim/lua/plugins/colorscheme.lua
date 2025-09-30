-- ================================================================================================
-- TITLE : colorscheme rose-pine
-- LINKS :
--   > github : https://github.com/rose-pine/neovim
-- ABOUT : All natural pine, faux fur and a bit of soho vibes for the classy minimalist
-- ================================================================================================

return {
	{
		"rose-pine/neovim",
		name = "rose-pine",
		opts = {
			variant = "moon",
			-- variant = "main", -- default
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
