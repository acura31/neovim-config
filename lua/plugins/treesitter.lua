return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	congif = function()
		local config = require("nvim-treesitter.configs") -- treesitter languages
		config.setup({
			ensure_installed = { "lua", "python", "html", "css", "javascript", "json" }, -- add desired ones to this
			highlight = { enable = true },
			indent = { enable = true },
		})
	end,
}
