local function gh(repo) return 'https://github.com/' .. repo end

ENV = require('custom.env')

if ENV.wakatime then
    vim.pack.add {
        gh 'wakatime/vim-wakatime',
    }
end
