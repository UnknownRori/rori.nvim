local function gh(repo) return 'https://github.com/' .. repo end

vim.pack.add({
  gh 'windwp/nvim-autopairs',
})

local autopairs = require('nvim-autopairs')
autopairs.setup({})
