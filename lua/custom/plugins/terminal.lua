local function gh(repo) return 'https://github.com/' .. repo end

vim.pack.add {
    gh 'numToStr/FTerm.nvim',
}

local fterm = require 'FTerm'
fterm.setup({
    cmd = { "bash", "-l" },
    border = "rounded",
    blend = 20,
    height = 30,
    width = function()
      return vim.opt.columns * 20
    end,
})
