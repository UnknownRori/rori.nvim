-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information

function load_plugin(name)
  return require('custom.plugins.' .. name)
end

return {
  'nvim-tree/nvim-web-devicons',

  'hrsh7th/nvim-cmp',
  'hrsh7th/cmp-nvim-lsp',
  'hrsh7th/cmp-buffer',
  'hrsh7th/cmp-path',
  'saadparwaiz1/cmp_luasnip',
  'hrsh7th/cmp-nvim-lua',
  'nvimtools/none-ls.nvim',

  'L3MON4D3/LuaSnip',
  'rafamadriz/friendly-snippets',

  'ray-x/lsp_signature.nvim',
  'nvim-treesitter/nvim-treesitter-context',

  load_plugin('illuminate'),
  load_plugin('indent_blankline'),
  load_plugin('discord_presence'),
  load_plugin('surround'),
  load_plugin('trouble'),
  load_plugin('oil'),
  load_plugin('bufferline'),
  load_plugin('terminal'),
  load_plugin('autopairs'),
  load_plugin('dashboard'),
  load_plugin('todocomment'),
  load_plugin('notify'),
  load_plugin('cursorword'),
  load_plugin('cursorline'),
  load_plugin('transparent'),
  load_plugin('fold'),
  load_plugin('colorpicker'),
  load_plugin('color_highlight'),
  load_plugin('markdown'),
  load_plugin('vimtex'),
  load_plugin('barbecue'),
  load_plugin('symbol_outline'),
  load_plugin('refactor'),
  load_plugin('harpoon'),
  load_plugin('leap'),
  load_plugin('undotree'),
  load_plugin('debug'),
  load_plugin('wakatime'),
  load_plugin('nerdtree'),
  load_plugin('scroll'),
  load_plugin('lsp_lens'),
}
