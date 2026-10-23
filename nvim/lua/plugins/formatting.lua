require("conform").setup({
	format_on_save = {
		timeout_ms = 8000,
		lsp_format = "fallback",
	},
	formatters_by_ft = {
		graphql = { "prettierd" },
		json = { "prettierd" },
		html = { "prettierd" },
		lua = { "stylua" },
		python = { "ruff" },
		xml = { "xmllint" },
		yaml = { "prettierd" },
	},
})
