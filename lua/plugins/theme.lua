return {
	{
		"catppuccin/nvim", --set any theme you want
		name = "catppuccin",
		priority = 1000,
		config = function()
			vim.cmd.colorscheme("catppuccin")
		end,
	},
	{
		"lukas-reineke/indent-blankline.nvim", --the thing that causes those lines next to codeblocks
		main = "ibl",
		opts = {},
	},
}
