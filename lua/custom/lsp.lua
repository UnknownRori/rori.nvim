local util = require 'lspconfig.util'
local lspconfig = require 'lspconfig'

require 'custom.lsp.emmet'
require 'custom.lsp.tailwind'
require 'custom.lsp.php'
require 'custom.lsp.go'
require 'custom.lsp.haxe'
require 'custom.lsp.remi'
require 'custom.lsp.lua'

-- local parser_config = require('nvim-treesitter.parsers').get_parser_configs()

vim.filetype.add {
  pattern = {
    ['*.wgsl'] = 'wgsl',
  },
}

vim.filetype.add {
  pattern = {
    ['*.inc'] = 'assembly',
  },
}

vim.filetype.add {
  extension = {
    hx = 'haxe',
  },
}

-- lspconfig.wgsl_analyzer.setup()
