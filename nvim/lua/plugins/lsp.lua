-- ================================================================================================
-- TITLE : nvim-lspconfig
-- LINKS :
--   > github : https://github.com/neovim/nvim-lspconfig
-- ABOUT : nvim-lspconfig is a collection of LSP server configurations for the Nvim LSP client.
-- ================================================================================================

return {
	{
		"neovim/nvim-lspconfig",
		dependencies = {
			"mason-org/mason.nvim",
			"mason-org/mason-lspconfig.nvim",
			-- "neovim/nvim-lspconfig",
			"WhoIsSethDaniel/mason-tool-installer.nvim",
		},
		config = function()
			require("mason").setup()
			require("mason-lspconfig").setup()
			require("mason-tool-installer").setup({
				ensure_installed = {
					"stylua",
					-- "prettierd",
					-- "eslint-lsp",
					-- "tailwindcss-language-server",
					-- "ts_ls",
					-- "graphql",
					"json-lsp",
					"lua_ls",
					"prettier",
					"pyright",
					"robotcode",
					"xmlformatter",
					-- "yang_lsp",
				},
				auto_update = false,
				run_on_start = true,
			})

			-- vim.lsp.config("lua_ls", {
			-- 	settings = {
			-- 		Lua = {
			--          runtime = {
			--            -- Tell the language server which version of Lua you're using
			--            -- (most likely LuaJIT in the case of Neovim)
			--            version = "LuaJIT",
			--          },
			--          diagnostics = {
			--            -- Get the language server to recognize the `vim` global
			--            globals = {
			--              "vim",
			--              "require",
			--            },
			--          },
			--          workspace = {
			--          -- Make the server aware of Neovim runtime files
			--            library = vim.api.nvim_get_runtime_file("", true),
			--          },
			--          -- Do not send telemetry data containing a randomized but unique identifier
			--          telemetry = {
			--            enable = false,
			--          },
			--        },
			--      },
			-- })

			local lsps = {
				{
					"lua_ls",
					{
						cmd = { "lua-language-server" },
						filetypes = { "lua" },
						root_markers = {
							".luarc.json",
							".luarc.jsonc",
							".luacheckrc",
							".stylua.toml",
							"stylua.toml",
							"selene.toml",
							"selene.yml",
							".git",
						},
						settings = {
							Lua = {
								diagnostics = {
									globals = { "vim" },
								},
							},
						},
					},
				},
				{
					"pyright",
					{
						cmd = { "pyright-langserver", "--stdio" },
						filetypes = { "python" },
						root_markers = {
							"pyproject.toml",
							"setup.py",
							"setup.cfg",
							"requirements.txt",
							"Pipfile",
							"pyrightconfig.json",
							".git",
						},
						settings = {
							python = {
								analysis = {
									autoSearchPaths = true,
									useLibraryCodeForTypes = true,
									diagnosticMode = "openFilesOnly",
								},
							},
						},
					},
				},
				{
					"robotcode",
					{
						cmd = { "robotcode", "language-server" },
						filetypes = { "robot", "resource" },
						root_markers = { "robot.toml", "pyproject.toml", "Pipfile", ".git" },
						get_language_id = function(_, _)
							return "robotframework"
						end,
					},
				},
			}

			for _, lsp in pairs(lsps) do
				local name, config = lsp[1], lsp[2]
				vim.lsp.enable(name)
				if config then
					vim.lsp.config(name, config)
				end
			end

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
					vim.keymap.set("n", "<leader>fu", function()
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
