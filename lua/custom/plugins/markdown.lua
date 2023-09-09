return {
  "iamcco/markdown-preview.nvim",
  -- event = "BufEnter *.md",
  cmd = { "MarkdownPreview", "MarkdownPreviewStop", "MarkdownPreviewToggle" },
  config = function()
    vim.fn["mkdp#util#install"]()
  end,
}
