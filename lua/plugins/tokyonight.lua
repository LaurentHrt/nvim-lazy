return {
  "folke/tokyonight.nvim",
  opts = { transparent = false },
  keys = {
    {
      "<leader>uB",
      function()
        local opts = require("tokyonight.config").options
        local transparent = not opts.transparent
        opts.transparent = transparent
        opts.styles.sidebars = transparent and "transparent" or "dark"
        opts.styles.floats = transparent and "transparent" or "dark"
        vim.cmd.colorscheme(vim.g.colors_name)
        vim.notify("Transparent background " .. (transparent and "enabled" or "disabled"))
      end,
      desc = "Toggle Transparent Background",
    },
  },
}
