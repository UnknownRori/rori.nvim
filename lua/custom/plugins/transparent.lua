local function gh(repo) return 'https://github.com/' .. repo end

vim.pack.add {
    gh 'xiyaowong/transparent.nvim',
}

local transparent = require 'transparent'
transparent.setup({
    groups = {
      'Normal', 'NormalNC', 'Comment', 'Constant', 'Special', 'Identifier',
      'Statement', 'PreProc', 'Type', 'Underlined', 'Todo', 'String', 'Function',
      'Conditional', 'Repeat', 'Operator', 'Structure', 'LineNr', 'NonText',
      'SignColumn', 'StatusLine', 'StatusLineNC',
      'EndOfBuffer',
    },
    extra_groups = {
      "NormalFloat",    -- plugins which have float panel such as Lazy, Mason, LspInfo
      "NvimTreeNormal", -- NvimTree
    },
})
