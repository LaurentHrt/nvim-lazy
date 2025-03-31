return {
  "stevearc/oil.nvim",
  ---@module 'oil'
  ---@type oil.SetupOpts
  opts = {},
  -- Optional dependencies
  dependencies = { { "nvim-mini/mini.icons", opts = {} } },
  -- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if you prefer nvim-web-devicons
  -- Lazy loading is not recommended because it is very tricky to make it work correctly in all situations.
  lazy = false,
  config = function()
    require("oil").setup({
      view_options = {
        show_hidden = true,
      },
      constrain_cursor = "name",
      columns = {
        -- 'permissions',
        -- 'size',
        -- 'mtime',
        "icon",
      },
      skip_confirm_for_simple_edits = false,
      keymaps = {
        -- defaults:
        -- ['<C-h>'] = 'actions.select_split',
        -- ['<C-l>'] = 'actions.refresh',
        -- ["<C-t>"] = { "actions.select", opts = { tab = true }, desc = "Open the entry in new tab" },

        ["<C-h>"] = false,
        ["<C-l>"] = false,
        ["<C-t>"] = false,
      },
    })
    vim.keymap.set("n", "<leader>e", "<cmd>Oil<CR>", { desc = "Explore files" })
  end,
}
