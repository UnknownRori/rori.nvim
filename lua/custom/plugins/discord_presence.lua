local function workspace(name)
  if name == "" or name == nil then
    local pwd = vim.fn.getcwd()
    local name = vim.fn.fnamemodify(pwd, ':t');

    if name == "nvim" then
      return "Wasting time on my config"
    end

    return "🔨 Working on " .. name
  end

  return "Woopsi, have a nice day :)"
end

return {
  'andweeb/presence.nvim',
  event = "BufReadPost",
  opts = {
    buttons             = true,

    editing_text        = "🛠️ Editing %s",
    file_explorer_text  = "📝 Browsing %s",
    git_commit_text     = "📝 Committing changes",
    plugin_manager_text = "📦 Managing plugins",
    reading_text        = "📝 Reading %s",
    workspace_text      = workspace,
    line_number_text    = "📝 Line %s out of %s",
  }
}
