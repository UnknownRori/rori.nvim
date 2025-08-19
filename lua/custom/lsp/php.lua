local lspconfig = require 'lspconfig'

lspconfig.intelephense.setup {
  filetypes = {
    'php',
    'blade',
  },
}

vim.filetype.add {
  pattern = {
    ['.*%.blade%.php'] = 'php',
  },
}
