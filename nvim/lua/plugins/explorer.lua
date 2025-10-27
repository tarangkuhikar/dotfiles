return {
  desc = "Snacks File Explorer",
  recommended = true,
  "folke/snacks.nvim",
  opts = { explorer = {} },
  keys = {
    {
      "<leader>fe",
      function()
        Snacks.explorer({ cwd = LazyVim.root() })
      end,
      desc = "Explorer Snacks (root dir)",
    },
    {
      "<leader>fE",
      function()
        Snacks.explorer()
      end,
      desc = "Explorer Snacks (cwd)",
    },
    {
      "<leader>e",
      function()
        Snacks.explorer({ cwd = LazyVim.root(), exclude = { "*.meta" } })
      end,
      desc = "Explorer Snacks (root dir)",
    },
    {
      "<leader>E",
      function()
        Snacks.explorer({ exclude = { "*.meta" } })
      end,
      desc = "Explorer Snacks (cwd)",
    },
  },
}
