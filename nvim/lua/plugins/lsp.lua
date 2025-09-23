-- ================================================================================================
-- TITLE : nvim-lspconfig
-- LINKS :
--   > github : https://github.com/neovim/nvim-lspconfig
-- ABOUT : nvim-lspconfig is a collection of LSP server configurations for the Nvim LSP client.
-- ================================================================================================

return {
	{
		"neovim/nvim-lspconfig",
		config = function()
			vim.lsp.config("lua_ls", {
				settings = {
					Lua = {
						workspace = {
							library = vim.api.nvim_get_runtime_file("", true),
						},
					},
				},
			})

			vim.lsp.enable("lua_ls")

			vim.api.nvim_create_autocmd("LspAttach", {
				group = vim.api.nvim_create_augroup("UserLspConfig", {}),
				callback = function(ev)
					local opts = { buffer = ev.buf }
					vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
					vim.keymap.set("n", "<leader><space>", vim.lsp.buf.hover, opts)
					vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)
					vim.keymap.set("n", "<leader>D", vim.lsp.buf.type_definition, opts)
					vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
					vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)

					vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, opts)
					vim.keymap.set("n", "<leader>f", function()
						vim.lsp.buf.format({ timeout_ms = 10000 })
					end)

					vim.keymap.set("n", "<leader>d", function()
						vim.diagnostic.open_float({
							border = "rounded",
						})
					end, opts)
				end,
			})
		end,
	},
}
