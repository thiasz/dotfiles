-- plugins
vim.pack.add({
	"https://github.com/romus204/tree-sitter-manager.nvim",
})

-- options
require("tree-sitter-manager").setup({
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
