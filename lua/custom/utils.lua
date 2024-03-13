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

return utils
