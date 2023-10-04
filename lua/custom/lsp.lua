local lspconfig = require 'lspconfig'

lspconfig.emmet_ls.setup {
  filetypes = {
    "astro",
    "css",
    "eruby",
    "html",
    "htmldjango",
    "javascriptreact",
    "less",
    "pug",
    "sass",
    "scss",
    "svelte",
    "typescriptreact",
    "vue",
    "php",
    "blade",
  }
}

local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
parser_config.blade = {
  install_info = {
    url = "https://github.com/EmranMR/tree-sitter-blade",
    files = { "src/parser.c" },
    branch = "main",
  },
  filetype = { "blade", "php" }
}

require 'nvim-treesitter.configs'.setup {
  ensure_installed = 'blade',
  highlight = {
    enable = true,
  },
}

-- Yes
vim.filetype.add({
  pattern = {
    ['.*%.blade%.php'] = 'blade',
    ['.*%.blade%.php'] = 'php',
    -- ['.*%.blade%.php'] = 'html',
  },
})
