return {
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.8",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			local builtin = require("telescope.builtin")

			-- File & Project Search
			vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Find files" })
			vim.keymap.set("n", "<leader>fa", function()
				builtin.find_files({ hidden = true, no_ignore = true })
			end, { desc = "Find all files (including hidden)" })
			vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Live grep in project" })
			vim.keymap.set("n", "<leader>fw", builtin.grep_string, { desc = "Find word under cursor" })
			vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Find buffers" })
			vim.keymap.set("n", "<leader>fo", "<cmd>Telescope oldfiles<CR>", { desc = "Find old files" })
			vim.keymap.set(
				"n",
				"<leader>fz",
				"<cmd>Telescope current_buffer_fuzzy_find<CR>",
				{ desc = "Fuzzy find in current buffer" }
			)

			-- Git
			vim.keymap.set("n", "<leader>cm", "<cmd>Telescope git_commits<CR>", { desc = "Git commits" })
			vim.keymap.set("n", "<leader>gt", "<cmd>Telescope git_status<CR>", { desc = "Git status" })

			-- LSP Integration
			vim.keymap.set("n", "<leader>fs", builtin.lsp_document_symbols, { desc = "Find document symbols" })
			vim.keymap.set("n", "<leader>fS", builtin.lsp_workspace_symbols, { desc = "Find workspace symbols" })
			vim.keymap.set("n", "<leader>fd", builtin.diagnostics, { desc = "Find diagnostics" })

			-- Misc
			vim.keymap.set("n", "<leader>pt", "<cmd>Telescope builtin<CR>", { desc = "Telescope built-in pickers" })
		end,
	},
	{
		"nvim-telescope/telescope-ui-select.nvim",
		config = function()
			require("telescope").setup({
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown({}),
					},
				},
			})
			require("telescope").load_extension("ui-select")
		end,
	},
}
