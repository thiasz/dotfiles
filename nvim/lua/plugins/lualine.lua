-- ================================================================================================
-- TITLE : lualine.nvim
-- LINKS :
--   > github : https://github.com/nvim-lualine/lualine.nvim
-- ABOUT : A blazing fast and easy to configure Neovim statusline written in Lua.
-- ================================================================================================

return {
	{
		"nvim-lualine/lualine.nvim",
		opts = {
			options = {
				component_separators = { "|" },
				icons_enable = true,
				sections_separators = { "|" },
			},
			sections = {
				lualine_a = { "mode" },
				lualine_c = { {
					"filename",
					path = 1,
				} },
				lualine_b = { "branch", "diff" },
				lualine_x = { "encoding", "filetype" },
				lualine_y = {
					{
						"diagnostics",
						sources = { "nvim_workspace_diagnostic" },
					},
				},
				lualine_z = {},
			},
		},
	},
}
