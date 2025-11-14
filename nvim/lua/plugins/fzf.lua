-- ================================================================================================
-- TITLE : fzf-lua
-- LINKS :
--   > github : https://github.com/ibhagwan/fzf-lua
-- ABOUT : lua-based fzf wrapper and integration.
-- ================================================================================================

return {
	"ibhagwan/fzf-lua",
	lazy = false,
	-- optional for icon support
	dependencies = { "nvim-tree/nvim-web-devicons" },
	-- dependencies = { "nvim-mini/mini.icons" },
	opts = {
		fzf_colors = true,
		fzf_opts = {
			["--no-scrollbar"] = false,
			["--cycle"] = true,
			["--ansi"] = true,
			["--height"] = "100%",
			["--highlight-line"] = true,
		},
		winopts = {
			fullscreen = "true",
			-- height = 0.90,
			-- width = 0.80,
			preview = {
				layout = "vertical",
				vertical = "up:70%",
			},
		},
		defaults = {
			-- show greyed-out directory before filename
			formatter = "path.dirname_first",
		},
	},
	keys = {
		{
			"<leader>fq",
			function()
				require("fzf-lua").quickfix()
			end,
			desc = "open quickfix list",
		},
		{
			"<leader>ff",
			function()
				require("fzf-lua").files()
			end,
			desc = "find files in the current directory",
		},
		{
			"<leader>fl",
			function()
				require("fzf-lua").live_grep()
			end,
			desc = "grep in files in the current directory",
		},
		{
			"<leader>fg",
			function()
				require("fzf-lua").lgrep_curbuf()
			end,
			desc = "grep in current buffer",
		},
		{
			"<leader>l",
			function()
				require("fzf-lua").buffers()
			end,
			desc = "FZF Buffers",
		},
		{
			"<leader>gs",
			function()
				require("fzf-lua").git_status()
			end,
			desc = "GIT status",
		},
		{
			"<leader>gbc",
			function()
				require("fzf-lua").git_bcommits()
			end,
			desc = "GIT browse file commits",
		},
		{
			"<leader>gc",
			function()
				require("fzf-lua").git_commits()
			end,
			desc = "GIT browse commits",
		},
	},
}
