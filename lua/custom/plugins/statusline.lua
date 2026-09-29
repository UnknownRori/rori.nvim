local function gh(repo) return 'https://github.com/' .. repo end

vim.pack.add {
    gh 'nvim-lualine/lualine.nvim',
}

local function me()
    return "UnknownRori"
end

local lualine = require 'lualine'
lualine.setup({
    options = {
        icons_enabled = true,
        theme = 'auto',
        section_separators = { left = '', right = '' },
        component_separators = { left = '', right = '' },
    },
    sections = {
        lualine_a = { 'mode' },
        lualine_b = { 'branch', 'diff', 'diagnostics' },
        lualine_c = { 'filename' },
        lualine_x = { 'fileformat', 'encoding', 'filetype', me },
        lualine_y = { 'progress' },
        lualine_z = { 'location' },
    },
    inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = { 'filename' },
        lualine_x = {},
        lualine_y = { 'encoding', 'filetype', me },
        lualine_z = { 'location' },
    },
})
