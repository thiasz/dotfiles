vim.pack.add({
	{ src = "https://github.com/nvim-treesitter/nvim-treesitter" },
})

vim.api.nvim_create_autocmd("PackChanged", {
	pattern = "nvim-treesitter",
	desc = "Run `:TSUpdate` after pack changed",
	group = vim.api.nvim_create_augroup("treesitter_update", { clear = true }),
	callback = function(e)
		local kind, name = e.data.kind, e.data.spec.name
		if kind == "install" or kind == "update" then
			vim.cmd.packadd({ args = { name }, bang = false })
			vim.cmd(":TSUpdate")
		end
	end,
})

local ts = require("nvim-treesitter")

ts.setup({
	install_dir = vim.fn.stdpath("data") .. "/site",
})

local parsers = {
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
}
ts.install(parsers)

vim.api.nvim_create_autocmd("FileType", {
	pattern = parsers,
	callback = function()
		vim.treesitter.start()
	end,
})
