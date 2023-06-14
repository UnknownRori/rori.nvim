return {
    "numToStr/FTerm.nvim",
    opts = {
      cmd = "bash",
      border = "rounded",
      blend = 20,
      height = 30,
      width = function()
        return vim.opt.columns * 20
      end,
    }
  }
-- return {
--     "akinsho/toggleterm.nvim",
--     -- cmd = { "ToggleTerm", "TermExec" },
--     opts = {
--       size = function()
--         return vim.opt.columns * 20
--       end,
--       hide_numbers = false,
--       shading_factor = 2,
--       direction = "float",
--       float_opts = {
--         border = "curved",
--         highlights = { border = "Normal", background = "Normal" },
--       },
--     },
--   }
--
