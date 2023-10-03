return {
  -- "lewis6991/satellite.nvim",
  "petertriho/nvim-scrollbar",
  event = { "BufReadPost", "BufNewFile" },
  dependencies = { "lewis6991/gitsigns.nvim" },
  config = function()
    require("scrollbar").setup()
    require("scrollbar.handlers.gitsigns").setup()
  end
}
