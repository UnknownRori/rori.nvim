local function gh(repo) return 'https://github.com/' .. repo end

vim.api.nvim_create_autocmd("BufReadPost", {
  once = true, -- Runs only once on the first BufReadPost
  callback = function()
    -- Add the plugin to runtimepath
    vim.pack.add({ gh 'lukas-reineke/indent-blankline.nvim' })

    -- Setup the plugin
    require("ibl").setup()
  end,
})
