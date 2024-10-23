ENV = require('custom.env')

if ENV.wakatime then
  return {
    "wakatime/vim-wakatime",
    event = { "BufReadPost", "BufNewFile" },
  }
else
  return {

  }
end
