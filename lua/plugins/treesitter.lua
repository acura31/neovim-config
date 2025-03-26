-- /lua/plugins/treesitter.lua

local M = {
  "nvim-treesitter/nvim-treesitter",
  build = function()
    -- Update treesitter parsers
    require("nvim-treesitter.install").update({ with_sync = true })()
  end,
  config = function()
    local configs = require("nvim-treesitter.configs")

    configs.setup({
      auto_install = true,
      -- Set whether to sync install or not
      sync_install = false,
      highlight = {
        enable = true, -- Enable syntax highlighting
      },
      indent = {
        enable = true, -- Enable indentation
      },
    })
  end,
}

return { M }
