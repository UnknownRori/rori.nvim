local SymbolKind = vim.lsp.protocol.SymbolKind

return {
  -- 'Wansmer/symbol-usage.nvim',
  -- event = 'BufReadPre', -- need run before LspAttach if you use nvim 0.9. On 0.10 use 'LspAttach'
  -- config = function()
  --   local function h(name) return vim.api.nvim_get_hl(0, { name = name }) end
  --
  --   vim.api.nvim_set_hl(0, 'SymbolUsageRef', { bg = h('Type').fg, fg = h('Normal').bg, bold = true })
  --   vim.api.nvim_set_hl(0, 'SymbolUsageRefRound', { fg = h('Type').fg })
  --
  --   vim.api.nvim_set_hl(0, 'SymbolUsageDef', { bg = h('Function').fg, fg = h('Normal').bg, bold = true })
  --   vim.api.nvim_set_hl(0, 'SymbolUsageDefRound', { fg = h('Function').fg })
  --
  --   vim.api.nvim_set_hl(0, 'SymbolUsageImpl', { bg = h('@parameter').fg, fg = h('Normal').bg, bold = true })
  --   vim.api.nvim_set_hl(0, 'SymbolUsageImplRound', { fg = h('@parameter').fg })
  --
  --   local function text_format(symbol)
  --     local res = {}
  --
  --     if symbol.references then
  --       table.insert(res, { '󰍞', 'SymbolUsageRefRound' })
  --       table.insert(res, { '󰌹 ' .. tostring(symbol.references), 'SymbolUsageRef' })
  --       table.insert(res, { '󰍟', 'SymbolUsageRefRound' })
  --     end
  --
  --     if symbol.definition then
  --       if #res > 0 then
  --         table.insert(res, { ' ', 'NonText' })
  --       end
  --       table.insert(res, { '󰍞', 'SymbolUsageDefRound' })
  --       table.insert(res, { '󰳽 ' .. tostring(symbol.definition), 'SymbolUsageDef' })
  --       table.insert(res, { '󰍟', 'SymbolUsageDefRound' })
  --     end
  --
  --     if symbol.implementation then
  --       if #res > 0 then
  --         table.insert(res, { ' ', 'NonText' })
  --       end
  --       table.insert(res, { '󰍞', 'SymbolUsageImplRound' })
  --       table.insert(res, { '󰡱 ' .. tostring(symbol.implementation), 'SymbolUsageImpl' })
  --       table.insert(res, { '󰍟', 'SymbolUsageImplRound' })
  --     end
  --
  --     return res
  --   end
  --
  --   require('symbol-usage').setup({
  --     text_format = text_format,
  --   })
  -- end

  'VidocqH/lsp-lens.nvim',
  event = 'BufReadPre', -- need run before LspAttach if you use nvim 0.9. On 0.10 use 'LspAttach'
  config = function()
    require 'lsp-lens'.setup({
      enable = true,
      include_declaration = true, -- Reference include declaration
      sections = {                -- Enable / Disable specific request, formatter example looks 'Format Requests'
        definition = true,
        references = true,
        implements = true,
        git_authors = true,
      },
      ignore_filetype = {
        "prisma",
      },
      -- Target Symbol Kinds to show lens information
      target_symbol_kinds = { SymbolKind.Function, SymbolKind.Method, SymbolKind.Interface },
      -- Symbol Kinds that may have target symbol kinds as children
      wrapper_symbol_kinds = { SymbolKind.Class, SymbolKind.Struct },
    })
  end,
}
