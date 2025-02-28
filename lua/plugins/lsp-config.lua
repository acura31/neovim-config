return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"lua_ls",
					"ts_ls",
					"pyright",
					"html",
					"cssls",
					"tailwindcss",
					"eslint",
				},
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()
			local lspconfig = require("lspconfig")

			-- 🔥 Custom LSP Diagnostic Signs
			vim.fn.sign_define("DiagnosticSignError", { text = "🔥", texthl = "DiagnosticSignError" })
			vim.fn.sign_define("DiagnosticSignWarn", { text = "▲", texthl = "DiagnosticSignWarn" })
			vim.fn.sign_define("DiagnosticSignHint", { text = "💡", texthl = "DiagnosticSignHint" })
			vim.fn.sign_define("DiagnosticSignInfo", { text = "🛈", texthl = "DiagnosticSignInfo" })

			-- Lua
			lspconfig.lua_ls.setup({
				capabilities = capabilities,
			})

			-- TypeScript/JavaScript
			lspconfig.ts_ls.setup({
				capabilities = capabilities,
			})

			-- HTML
			lspconfig.html.setup({
				capabilities = capabilities,
			})

			-- CSS
			lspconfig.cssls.setup({
				capabilities = capabilities,
			})

			-- Tailwind CSS
			lspconfig.tailwindcss.setup({
				capabilities = capabilities,
			})

			-- Python
			lspconfig.pyright.setup({
				capabilities = capabilities,
			})

			-- ESLint
			lspconfig.eslint.setup({
				capabilities = capabilities,
				on_attach = function(client, bufnr)
					vim.api.nvim_create_autocmd("BufWritePre", {
						buffer = bufnr,
						command = "EslintFixAll",
					})
				end,
			})

			-- Keybindings
			local opts = { noremap = true, silent = true }
			vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
			vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, opts)
			vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, opts)
			vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)
		end,
	},
	{
		"WhoIsSethDaniel/mason-tool-installer.nvim",
		config = function()
			require("mason-tool-installer").setup({
				ensure_installed = {
					"lua-language-server",
					"prettier",
					"black",
					"mypy",
					"stylua",
					"isort",
					"debugpy",
					"pylint",
					"ruff",
					"eslint_d", -- Fast ESLint
				},
			})
		end,
	},
}
