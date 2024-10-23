local utils = {}

function utils.get_size_from_buf(buf)
  return vim.fn.getfsize(vim.fn.bufname(buf))
end

function utils.format_bytes(bytes)
  local kb = 1024
  local mb = 1024 * kb

  if bytes < kb then
    return bytes .. " bytes"
  elseif bytes < mb then
    return string.format("%.2f KB", bytes / kb)
  else
    return string.format("%.2f MB", bytes / mb)
  end
end

function utils.is_git_repo()
  local handle = io.popen("git rev-parse --is-inside-work-tree")
  local result = handle:read("*a")
  handle:close()
  return result == "true\n"
end

-- This function doesn't check if it's on git repo
-- Use utils.is_git_repo to check before using this
function utils.get_git_branch()
  local handle = io.popen("git rev-parse --abbrev-ref HEAD")
  local branch = handle:read("*a")
  handle:close()
  return branch
end

return utils
