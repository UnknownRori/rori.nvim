return {
  'ThePrimeagen/harpoon',
  event = "BufRead",
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-telescope/telescope-fzf-native.nvim',
  },
  config = function()
    require("telescope").load_extension('harpoon')
    vim.keymap.set('n', '<leader>sa', '<cmd>Telescope harpoon marks<cr>', { desc = "[S]earch [H]arpoon marks" })
    vim.keymap.set('n', '<leader>ha', function() require("harpoon.mark").add_file() end, { desc = "Harpoon add file" })
    vim.keymap.set('n', '<leader>hq', function() require("harpoon.ui").toggle_quick_menu() end,
      { desc = "Harpoon quick menu" })

    vim.keymap.set('n', '<leader>l', function() require("harpoon.ui").nav_next() end, { desc = "Harpoon next file" })
    vim.keymap.set('n', '<leader>h', function() require("harpoon.ui").nav_prev() end, { desc = "Harpoon prev file" })

    for i = 1, 9 do
      vim.keymap.set('n', '<leader>' .. tostring(i), function() require("harpoon.ui").nav_file(i) end,
        { desc = "Goto harpoon " .. tostring(i) })
    end

    vim.keymap.set('n', '<leader>0', function() require("harpoon.ui").nav_file(10) end, { desc = "Goto harpoon 10" })
  end
}
