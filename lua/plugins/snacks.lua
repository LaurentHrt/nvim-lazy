return {
  "folke/snacks.nvim",
  opts = {
    notifier = { timeout = 10000 },
    picker = {
      sources = {
        files = { hidden = true },
        grep = { hidden = true },
        live_grep = { hidden = true },
        explorer = { hidden = true },
      },
    },
  },
}
