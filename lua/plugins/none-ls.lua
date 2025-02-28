return {
	"nvimtools/none-ls.nvim",
	dependencies = {
		"nvimtools/none-ls-extras.nvim",
	},
	config = function()
		local null_ls = require("null-ls")
		local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

		null_ls.setup({
			sources = {
				-- JavaScript/TypeScript
				require("none-ls.diagnostics.eslint_d"), -- ESLint diagnostics
				require("none-ls.code_actions.eslint_d"), -- ESLint auto-fix
				null_ls.builtins.formatting.prettier, -- Prettier formatting

				-- Python
				null_ls.builtins.formatting.black, -- Black formatter
				null_ls.builtins.formatting.isort, -- Sort imports
				null_ls.builtins.diagnostics.mypy, -- Type checking
				require("none-ls.diagnostics.ruff"), -- Ruff for linting

				-- Lua
				null_ls.builtins.formatting.stylua, -- Lua formatting
			},
			on_attach = function(client, bufnr)
				if client.supports_method("textDocument/formatting") then
					vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
					vim.api.nvim_create_autocmd("BufWritePre", {
						group = augroup,
						buffer = bufnr,
						callback = function()
							vim.lsp.buf.format({ bufnr = bufnr, async = false })
						end,
					})
				end
			end,
		})

		-- Format on demand
		vim.keymap.set("n", "<leader>gf", function()
			vim.lsp.buf.format({ async = true })
		end, { desc = "Format file with LSP" })
	end,
}
