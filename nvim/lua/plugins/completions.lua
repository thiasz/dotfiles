-- ================================================================================================
-- TITLE blink.cmp
-- LINKS :
--   > github : https://github.com/Saghen/blink.cmp
-- ABOUT : Performant, batteries-included completion plugin for Neovim
-- ================================================================================================

return {
	{
		"Saghen/blink.cmp",
		dependencies = {
			"L3MON4D3/LuaSnip",
			"rafamadriz/friendly-snippets",
			"tpope/vim-dadbod",
			"kristijanhusak/vim-dadbod-completion",
			"kristijanhusak/vim-dadbod-ui",
		},
		opts = {
			snippets = { preset = "luasnip" },
			keymap = {
				preset = "default",
				["<CR>"] = { "accept", "fallback" },
				["<C-Space>"] = { "show" },
				["<Down>"] = { "select_next", "fallback" },
				["<Up>"] = { "select_prev", "fallback" },
			},
			completion = {
				menu = {
					auto_show = false,
					draw = {
						treesitter = { "lsp" },
						columns = { { "kind_icon", "label", "label_description", gap = 1 }, { "kind" } },
					},
				},
				documentation = { auto_show = true },
			},
			signature = { enabled = true },
			fuzzy = { implementation = "lua" },
			sources = {
				default = {
					"lsp",
					"path",
					"snippets",
					"buffer",
				},
				per_filetype = {
					sql = { "snippets", "dadbod", "buffer" },
				},
				providers = {
					dadbod = { name = "Dadbod", module = "vim_dadbod_completion.blink" },
				},
			},
		},
		config = function(_, opts)
			require("luasnip.loaders.from_vscode").load()
			require("blink.cmp").setup(opts)
		end,
	},
}
