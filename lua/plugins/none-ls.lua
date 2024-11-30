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
				require("none-ls.diagnostics.eslint_d"), --add desired ones
				null_ls.builtins.formatting.stylua, -- formatting for Lua
				null_ls.builtins.formatting.prettier, -- formatting for JavaScript
				null_ls.builtins.formatting.black, -- formatting for Python
				null_ls.builtins.formatting.isort, -- formatting for Python
				null_ls.builtins.diagnostics.mypy, -- diagnostics for Python
				-- null_ls.builtins.diagnostics.ruff,     -- diagnostics for Python but it doesn't work idk why
			},
			on_attach = function(client, bufnr)
				if client.supports_method("textDocument/formatting") then
					vim.api.nvim_clear_autocmds({
						group = augroup,
						buffer = bufnr,
					})
					vim.api.nvim_create_autocmd("BufWritePre", {
						group = augroup,
						buffer = bufnr,
						callback = function()
							vim.lsp.buf.format({
								bufnr = bufnr,
							})
						end,
					})
				end
			end,
		})

		vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
	end,
}
