local function gh(repo) return 'https://github.com/' .. repo end

vim.pack.add {
    gh 'nvim-tree/nvim-web-devicons',
    gh 'stevearc/oil.nvim',
}

local oil = require 'oil'
oil.setup()
