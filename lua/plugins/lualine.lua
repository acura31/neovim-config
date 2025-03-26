-- /lua/plugins/lualine.lua

return {
  'nvim-lualine/lualine.nvim',
  dependencies = {
    'nvim-tree/nvim-web-devicons',
    'bluz71/vim-moonfly-colors',
  },
  config = function()
    require("lualine").setup({
      options = {
        theme = "moonfly"
      },
      sections = {
        lualine_a = { "mode" },
        lualine_b = { "branch", "diff" },
        lualine_c = { "filename" },
        lualine_x = { "encoding", "filetype" },
        lualine_y = { "progress" },
        lualine_z = { "location" },
      },
      extensions = { "neo-tree" },
    })
  end,
}
