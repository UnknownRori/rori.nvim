return {
  "numToStr/FTerm.nvim",
  opts = {
    cmd = "bash",
    border = "rounded",
    blend = 20,
    height = 30,
    width = function()
      return vim.opt.columns * 20
    end,
  }
}
