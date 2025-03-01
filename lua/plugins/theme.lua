return {
	{
		"olimorris/onedarkpro.nvim", --set any theme you want
		name = "onedarkpro",
		priority = 1000,
		config = function()
			vim.cmd("colorscheme onedark")
		end,
	},
	{
		"lukas-reineke/indent-blankline.nvim", --the thing that causes those lines next to codeblocks
		main = "ibl",
		opts = {},
	},
}
