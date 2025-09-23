return {
	"ibhagwan/fzf-lua",
	lazy = false,
	-- optional for icon support
	-- dependencies = { "nvim-tree/nvim-web-devicons" },
	-- or if using mini.icons/mini.nvim
	dependencies = { "nvim-mini/mini.icons" },
	opts = {
		winopts = {
			fullscreen = true,
			preview = {
				layout = "vertical",
				vertical = "up:70%",
			},
			-- split = "belowright",
			-- height = "0.80",
		},
	},
	keys = {
		{
			"<leader>ff",
			function()
				require("fzf-lua").files()
			end,
			desc = "Find Files in project directory",
		},
		{
			"<leader>fg",
			function()
				require("fzf-lua").live_grep()
			end,
			desc = "Find by grepping in project directory",
		},
		-- {
		-- 	"<leader>fc",
		-- 	function()
		-- 		require("fzf-lua").files({ cwd = vim.fn.stdpath("config") })
		-- 	end,
		-- 	desc = "Find in neovim configuration",
		-- },
		{
			"<leader>fh",
			function()
				require("fzf-lua").helptags()
			end,
			desc = "[F]ind [H]elp",
		},
		{
			"<leader>fk",
			function()
				require("fzf-lua").keymaps()
			end,
			desc = "[F]ind [K]eymaps",
		},
		{
			"<leader>fb",
			function()
				require("fzf-lua").builtin()
			end,
			desc = "[F]ind [B]uiltin FZF",
		},
		{
			"<leader>fw",
			function()
				require("fzf-lua").grep_cword()
			end,
			desc = "[F]ind current [W]ord",
		},
		{
			"<leader>fW",
			function()
				require("fzf-lua").grep_cWORD()
			end,
			desc = "[F]ind current [W]ORD",
		},
		{
			"<leader>fd",
			function()
				require("fzf-lua").diagnostics_document()
			end,
			desc = "[F]ind [D]iagnostics",
		},
		{
			"<leader>fr",
			function()
				require("fzf-lua").resume()
			end,
			desc = "[F]ind [R]esume",
		},
		{
			"<leader>fo",
			function()
				require("fzf-lua").oldfiles()
			end,
			desc = "[F]ind [O]ld Files",
		},
		{
			"<leader>fb",
			function()
				require("fzf-lua").buffers()
			end,
			desc = "[,] Find existing buffers",
		},
		{
			"<leader>fc",
			function()
				require("fzf-lua").git_commits()
			end,
			desc = "[,] Find git commits",
		},
		{
			"<leader>fs",
			function()
				require("fzf-lua").lsp_document_symbols()
			end,
			desc = "FZF Document Symbols",
		},
		{
			"<leader>fS",
			function()
				require("fzf-lua").lsp_workspace_symbols()
			end,
			desc = "FZF Workspace Symbols",
		},
		{
			"<leader>fq",
			function()
				require("fzf-lua").quickfix()
			end,
			desc = "FZF quickfix listt",
		},
		-- {
		-- 	"<leader>/",
		-- 	function()
		-- 		require("fzf-lua").lgrep_curbuf()
		-- 	end,
		-- 	desc = "[/] Live grep the current buffer",
		-- },
	},
}
