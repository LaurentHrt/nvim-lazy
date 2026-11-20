local state_file = vim.fn.stdpath("data") .. "/transparent_background"

local function is_transparent()
  return vim.uv.fs_stat(state_file) ~= nil
end

local function styles(transparent)
  local v = transparent and "transparent" or "dark"
  return { sidebars = v, floats = v }
end

return {
  "folke/tokyonight.nvim",
  opts = function(_, opts)
    local transparent = is_transparent()
    opts.transparent = transparent
    opts.styles = vim.tbl_deep_extend("force", opts.styles or {}, styles(transparent))
  end,
  keys = {
    {
      "<leader>uB",
      function()
        local opts = require("tokyonight.config").options
        local transparent = not opts.transparent
        opts.transparent = transparent
        opts.styles = vim.tbl_deep_extend("force", opts.styles, styles(transparent))
        if transparent then
          io.open(state_file, "w"):close()
        else
          os.remove(state_file)
        end
        vim.cmd.colorscheme(vim.g.colors_name)
        vim.notify("Transparent background " .. (transparent and "enabled" or "disabled"))
      end,
      desc = "Toggle Transparent Background",
    },
  },
}
