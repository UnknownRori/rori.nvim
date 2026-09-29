local utils = require('custom.utils')

local function file_text(name)
  local size = utils.get_size_from_buf(vim.api.nvim_get_current_buf())

  return "🛠️ " .. name .. " - 📦 " .. utils.format_bytes(size)
end

local function workspace(name)
  if name == "" or name == nil then
    local pwd = vim.fn.getcwd()
    local name = vim.fn.fnamemodify(pwd, ':t');

    if name == "nvim" then
      return "Wasting time on my config"
    end

    local result = "🔨 " .. name

    if utils.is_git_repo() then
      result = result .. " 🚧 " .. utils.get_git_branch()
    end

    return result
  end

  return "Woopsi, have a nice day :)"
end

local function gh(repo) return 'https://github.com/' .. repo end

vim.pack.add {
    gh 'andweeb/presence.nvim',
    gh 'stevearc/oil.nvim',
}

local presence = require 'presence'
presence.setup({
    buttons             = true,

    editing_text        = file_text,
    file_explorer_text  = "📝 Browsing %s",
    git_commit_text     = "📝 Committing changes",
    plugin_manager_text = "📦 Managing plugins",
    reading_text        = "📝 %s",
    workspace_text      = workspace,
    line_number_text    = "📝 Line %s out of %s",
})
