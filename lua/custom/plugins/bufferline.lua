local function gh(repo) return 'https://github.com/' .. repo end

vim.pack.add {
    gh 'nvim-tree/nvim-web-devicons',
    gh 'akinsho/bufferline.nvim',
}

local bufferline = require 'bufferline'
bufferline.setup()
