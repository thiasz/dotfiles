vim.pack.add({
	-- { src = "https://github.com/L3MON4D3/LuaSnip" },
	{ src = "https://github.com/Saghen/blink.cmp" },
	{ src = "https://github.com/Saghen/blink.lib" },
	-- { src = "https://github.com/rafamadriz/friendly-snippets" },
})

local cmp = require("blink.cmp")
cmp.build():pwait()

require("blink.cmp").setup({
	-- snippets = { preset = "luasnip" },
	keymap = {
		preset = "default",
		["<Tab>"] = { "accept", "fallback" },
		["<CR>"] = { "accept", "fallback" },
		["<S-Tab>"] = { "show" },
		["<S-j>"] = { "select_next", "fallback" },
		["<S-k>"] = { "select_prev", "fallback" },
	},
	completion = {
		menu = {
			auto_show = true,
			draw = {
				treesitter = { "lsp" },
				columns = { { "kind_icon", "label", "label_description", gap = 1 }, { "kind" } },
			},
		},
		documentation = { auto_show = true },
	},
	signature = { enabled = true },
	fuzzy = { implementation = "rust" },
	sources = {
		default = {
			"lsp",
			"path",
			-- "snippets",
			"buffer",
		},
		per_filetype = {
			-- sql = { "lsp", "snippets", "buffer" },
			sql = { "lsp", "buffer" },
		},
		providers = {
			lsp = {
				score_offset = 90,
			},
		},
	},
})
