return {
	{
		"folke/trouble.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
			require("trouble").setup({
				mode = "document_diagnostics",
				auto_open = false,
				auto_close = true,
			})

			-- Keybindings
			vim.keymap.set("n", "<leader>xx", "<cmd>TroubleToggle<CR>", { desc = "Toggle Trouble Diagnostics" })
			vim.keymap.set(
				"n",
				"<leader>xw",
				"<cmd>Trouble workspace_diagnostics<CR>",
				{ desc = "Workspace Diagnostics" }
			)
			vim.keymap.set("n", "<leader>xl", "<cmd>Trouble loclist<CR>", { desc = "Location List" })
			vim.keymap.set("n", "<leader>xq", "<cmd>Trouble quickfix<CR>", { desc = "Quickfix List" })
		end,
	},
}
