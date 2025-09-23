-- ================================================================================================
-- TITLE : trouble.nvim
-- LINKS :
--   > github : https://github.com/folke/trouble.nvim
-- ABOUT : A pretty list for showing diagnostics, references, telescope results, quickfix
--         and location lists to help you solve all the trouble your code is causing.
-- ================================================================================================

return {
	{
		"folke/trouble.nvim",
		config = function()
			require("trouble").setup()
		end,
	},
}
