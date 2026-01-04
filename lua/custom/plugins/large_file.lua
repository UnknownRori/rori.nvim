return {
  'mireq/large_file',
  config = function()
    require('large_file').setup {
      size_limit = 1024 * 10,
      buffer_options = {
        swapfile = false,
        bufhidden = 'delete',
        buftype = 'nowrite',
        undolevels = 0,
      },
      on_large_file_read_pre = function(ev)
        print 'Opening a large file!'
      end,
    }
  end,
}
