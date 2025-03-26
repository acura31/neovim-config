-- /lua/plugins/neo-tree.lua

return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
    { "3rd/image.nvim", opts = {} },
  },
  lazy = false, -- neo-tree will lazily load itself
  opts = {
    window = {
      position = "left",
    },
  },
  config = function()
    -- Set up the keybinding
    vim.api.nvim_set_keymap("n", "<leader>n", ":Neotree toggle<CR>", { noremap = true, silent = true })
  end,
}
