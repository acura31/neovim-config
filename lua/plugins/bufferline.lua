return {
	"akinsho/bufferline.nvim",
	version = "*",
	dependencies = "nvim-tree/nvim-web-devicons",
	config = function()
		require("bufferline").setup({
			options = {
				numbers = "none", -- Can be "none", "ordinal", "buffer_id", or "both"
				close_command = "bdelete %d", -- Command to run to close a buffer
				right_mouse_command = "bdelete %d", -- Command to run with right click on a buffer
				left_mouse_command = "buffer %d", -- Command to run with left click
				indicator = {
					icon = "▎", -- You can customize the indicator icon
					style = "icon", -- Or use "underline"
				},
				buffer_close_icon = "", -- Icon for closing a buffer
				modified_icon = "●", -- Icon for modified buffers
				close_icon = "", -- Icon for the close button
				left_trunc_marker = "", -- Left truncation marker
				right_trunc_marker = "", -- Right truncation marker
				max_name_length = 18, -- Max length of the buffer name
				max_prefix_length = 15, -- Max length for buffer prefix
				tab_size = 18, -- Size of tabs in pixels
				diagnostics = false, -- Whether to show diagnostics or not
				offsets = { { filetype = "Neotree", text = "File Explorer", padding = 1 } }, -- Offset for file explorer
				show_buffer_icons = true, -- Show icons for buffers
				show_buffer_close_icons = true, -- Show close icons for buffers
				show_tab_indicators = true, -- Show tab indicators
				show_duplicate_prefix = true, -- Show duplicate buffer name prefix
			},
		})
	end,
}
