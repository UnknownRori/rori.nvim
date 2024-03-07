local utils = require('custom.utils')

local function file_text(name)
  local buf = vim.api.nvim_get_current_buf()
  local size = vim.fn.getfsize(vim.fn.bufname(buf))

  return "🛠️ " .. name .. " - 📦 " .. utils.format_bytes(size)
end

local function workspace(name)
  if name == "" or name == nil then
    local pwd = vim.fn.getcwd()
    local name = vim.fn.fnamemodify(pwd, ':t');

    if name == "nvim" then
      return "Wasting time on my config"
    end

    return "🔨 " .. name
  end

  return "Woopsi, have a nice day :)"
end

return {
  'andweeb/presence.nvim',
  event = "BufReadPost",
  opts = {
    buttons             = true,

    editing_text        = file_text,
    file_explorer_text  = "📝 Browsing %s",
    git_commit_text     = "📝 Committing changes",
    plugin_manager_text = "📦 Managing plugins",
    reading_text        = "📝 %s",
    workspace_text      = workspace,
    line_number_text    = "📝 Line %s out of %s",
  }
}
