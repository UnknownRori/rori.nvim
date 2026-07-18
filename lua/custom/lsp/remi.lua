vim.cmd [[ au BufNewFile,BufRead *.remi setfiletype remi ]]

vim.filetype.add {
  extension = {
    remi = 'remi',
  },
}

local parser_config = require('nvim-treesitter.parsers').get_parser_configs()
parser_config.remi = {
  install_info = {
    url = 'https://github.com/UnknownRori/remi-tree-sitter',
    files = { 'src/parser.c' },
    -- optional entries:
    branch = 'main',
  },
  filetype = 'remi',
}
