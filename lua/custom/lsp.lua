local util = require 'lspconfig.util'
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

lspconfig.html.setup {
  filetypes = {
    "astro",
    "eruby",
    "html",
    "htmldjango",
    -- "javascriptreact",
    "pug",
    "svelte",
    -- "typescriptreact",
    -- "vue",
    "php",
    -- "blade",
  }
}

lspconfig.intelephense.setup {
  filetypes = {
    "php",
    "blade",
  }
}

lspconfig.tailwindcss.setup {
  filetypes = {
    "aspnetcorerazor",
    "astro",
    "astro-markdown",
    "blade",
    "django-html",
    "htmldjango",
    "edge",
    "eelixir",
    "ejs",
    "erb",
    "eruby",
    "gohtml",
    "haml",
    "handlebars",
    "hbs",
    "html",
    "html-eex",
    "heex",
    "jade",
    "leaf",
    "liquid",
    "markdown",
    "mdx",
    "mustache",
    "njk",
    "nunjucks",
    "razor",
    "slim",
    "twig",
    "css",
    "less",
    "postcss",
    "sass",
    "scss",
    "stylus",
    "sugarss",
    "javascript",
    "javascriptreact",
    "reason",
    "rescript",
    "typescript",
    "typescriptreact",
    "vue",
    "svelte",
    "php",
    "rust",
  },
  root_pattern = {
    'tailwind.config.js',
    'tailwind.config.ts',
    'postcss.config.js',
    'postcss.config.ts',
    'package.json',
    'node_modules',
    '.git'
  },
  init_options = {
    userLanguages = {
      eelixir = "html-eex",
      eruby = "erb",
      rust = "html",
    }
  },
  settings = {
    tailwindCSS = {
      classAttributes = { "class", "className", "classList", "ngClass" },
      lint = {
        cssConflict = "warning",
        invalidApply = "error",
        invalidConfigPath = "error",
        invalidScreen = "error",
        invalidTailwindDirective = "error",
        invalidVariant = "error",
        recommendedVariantOrder = "warning"
      },
      validate = true
    }
  }
}

lspconfig.gopls.setup {
  cmd = { 'gopls', '--remote=auto' },
  capabilties = {
    textDocuemnt = {
      completion = {
        completionItem = {
          snippetSupport = true
        }
      }
    }
  },
  init_options = {
    usePlaceholders = true,
    completeUnimported = true
  },
  root_dir = function(fname)
    -- see: https://github.com/neovim/nvim-lspconfig/issues/804
    local mod_cache = vim.trim(vim.fn.system 'go env GOMODCACHE')
    if fname:sub(1, #mod_cache) == mod_cache then
      local clients = vim.lsp.get_active_clients { name = 'gopls' }
      if #clients > 0 then
        return clients[#clients].config.root_dir
      end
    end
    return util.root_pattern 'go.work' (fname) or util.root_pattern('go.mod', '.git')(fname)
  end,
}

local parser_config = require "nvim-treesitter.parsers".get_parser_configs()

parser_config.blade = {
  install_info = {
    url = "https://github.com/EmranMR/tree-sitter-blade",
    files = { "src/parser.c" },
    branch = "main",
  },
  filetype = "blade"
}

vim.filetype.add({
  pattern = {
    ['.*%.blade%.php'] = 'blade',
  },
})

vim.filetype.add({
  pattern = {
    ['*.wgsl'] = 'wgsl',
  },
})
lspconfig.wgsl_analyzer.setup()
