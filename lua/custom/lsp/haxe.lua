local lspconfig = require 'lspconfig'

vim.filetype.add {
  extension = {
    hx = 'haxe',
  },
}

local parser_config = require('nvim-treesitter.parsers').get_parser_configs()
parser_config.haxe = {
  install_info = {
    url = 'https://github.com/vantreeseba/tree-sitter-haxe',
    files = { 'src/parser.c', 'src/scanner.c' },
    -- optional entries:
    branch = 'main',
  },
  filetype = 'haxe',
}

lspconfig['haxe_language_server'].setup {}
