return {
  "ThePrimeagen/refactoring.nvim",
  event = "BufReadPost",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-treesitter/nvim-treesitter",
  },
  config = function()
    require("refactoring").setup()
  end,
}
