return {
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.8",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			local builtin = require("telescope.builtin") --telescope keybindings
			vim.keymap.set("n", "<leader>ff", builtin.find_files, {}) -- find files
			vim.keymap.set("n", "<leader>fg", builtin.live_grep, {}) -- find the thing in current file
			vim.keymap.set("n", "<leader>fb", builtin.buffers, {}) -- find buffers
			vim.keymap.set("n", "<leader>fo", "<cmd>Telescope oldfiles<CR>", { desc = "telescope find oldfiles" }) -- find old files
			vim.keymap.set(
				"n",
				"<leader>fz",
				"<cmd>Telescope current_buffer_fuzzy_find<CR>",
				{ desc = "telescope find in current buffer" }
			) -- fuzzy find current buffer
			vim.keymap.set("n", "<leader>cm", "<cmd>Telescope git_commits<CR>", { desc = "telescope git commits" }) -- telescope git commits
			vim.keymap.set("n", "<leader>gt", "<cmd>Telescope git_status<CR>", { desc = "telescope git status" }) -- telescope git status
			vim.keymap.set("n", "<leader>pt", "<cmd>Telescope terms<CR>", { desc = "telescope pick hidden term" }) -- telescope pick hidden term
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
