local function gh(repo) return 'https://github.com/' .. repo end

vim.pack.add {
    gh 'brenoprata10/nvim-highlight-colors',
}

local nvimhighlightcolors = require 'nvim-highlight-colors'
nvimhighlightcolors.setup()
