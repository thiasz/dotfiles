vim.pack.add({
	{ src = "https://github.com/mistweaverco/kulala.nvim" },
})

require("kulala").setup({
	keys = {
		{ "<leader>rs", desc = "Send request" },
		-- { "<leader>Ra", desc = "Send all requests" },
		{ "<leader>rb", desc = "Open scratchpad" },
	},
	ft = { "http", "rest" },

	default_env = "default",
	generate_bug_report = false,
	global_keymaps = true,
	global_keymaps_prefix = "<leader>r",
	-- kulala_keymaps = true,
	kulala_keymaps_prefix = "",
})
