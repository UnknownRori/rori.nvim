local lspconfig = require 'lspconfig'

lspconfig.emmet_ls.setup {
  filetypes = {
    'astro',
    'css',
    'eruby',
    'html',
    'htmldjango',
    'javascriptreact',
    'less',
    'pug',
    'sass',
    'scss',
    'svelte',
    'typescriptreact',
    'vue',
    'php',
    'blade',
  },
}

lspconfig.html.setup {
  filetypes = {
    'astro',
    'eruby',
    'html',
    'htmldjango',
    -- "javascriptreact",
    'pug',
    'svelte',
    -- "typescriptreact",
    -- "vue",
    'php',
    -- "blade",
  },
}
