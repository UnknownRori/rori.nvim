local function gh(repo) return 'https://github.com/' .. repo end

vim.pack.add({
  gh 'windwp/nvim-autopairs',
  gh 'L3MON4D3/LuaSnip',
  gh 'blink.cmp',
})

local autopairs = require('nvim-autopairs')
autopairs.setup({})

local cmp = require('blink.cmp')
local luasnip = require('luasnip')

cmp.setup({
  keymap = {
    preset = 'none',
    ['<Tab>'] = { 'select_and_accept', 'snippet_forward', 'fallback' },
    ['<S-Tab>'] = { 'snippet_backward', 'fallback' },
    ['<C-j>'] = { 'select_next', 'fallback' },
    ['<C-k>'] = { 'select_prev', 'fallback' },
    ['<C-e>'] = { 'hide' },
    ['<C-space>'] = { 'show', 'show_documentation', 'hide_documentation' },
    ['<C-b>'] = { 'scroll_documentation_up', 'fallback' },
    ['<C-f>'] = { 'scroll_documentation_down', 'fallback' },
  },
})
