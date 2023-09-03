return {
  "iamcco/markdown-preview.nvim",
  event = "BufEnter *.md",
  config = function()
    vim.fn["mkdp#util#install"]()
  end,
}
