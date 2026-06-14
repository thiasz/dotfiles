vim.pack.add({
	{ src = "https://github.com/reybits/ts-forge.nvim" },
})

require("ts-forge").setup({
	auto_install = false,
	ensure_installed = {
		"bash",
		"diff",
		"jinja",
		"json",
		"http",
		"lua",
		"python",
		"query",
		"regex",
		"robot",
		"toml",
		"vim",
		"vimdoc",
		"xml",
		"yaml",
		"yang",
	},
})

vim.api.nvim_create_autocmd("FileType", {
	callback = function()
		pcall(vim.treesitter.start)
	end,
})
