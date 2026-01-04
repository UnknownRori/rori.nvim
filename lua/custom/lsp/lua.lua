local lspconfig = require 'lspconfig'
lspconfig.lua_ls.setup {
  settings = {
    Lua = {
      workspace = {
        userThirdParty = { os.getenv 'HOME' .. '.local/share/LuaAddons' },
        checkThirdParty = 'Apply',
      },
    },
  },
}
