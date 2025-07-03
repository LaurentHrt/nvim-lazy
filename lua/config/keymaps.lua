-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Windows resizing
vim.keymap.set("n", "<C-w><C-l>", "10<C-w><", { desc = "Decrease width" })
vim.keymap.set("n", "<C-w><C-h>", "10<C-w>>", { desc = "Increase width" })
vim.keymap.set("n", "<C-w><C-j>", "10<C-w>-", { desc = "Decrease height" })
vim.keymap.set("n", "<C-w><C-k>", "10<C-w>+", { desc = "Increase height" })

-- Tab navigation
vim.keymap.set("n", "<Leader><Tab>n", "<cmd>tabnext<CR>", { desc = "Next tab" })
vim.keymap.set("n", "<Leader><Tab>p", "<cmd>tabprevious<CR>", { desc = "Previous tab" })
vim.keymap.set("n", "<Leader><Tab>1", "<cmd>tabn1<CR>", { desc = "Go to tab 1" })
vim.keymap.set("n", "<Leader><Tab>2", "<cmd>tabn2<CR>", { desc = "Go to tab 2" })
vim.keymap.set("n", "<Leader><Tab>3", "<cmd>tabn3<CR>", { desc = "Go to tab 3" })
vim.keymap.set("n", "<Leader><Tab>4", "<cmd>tabn4<CR>", { desc = "Go to tab 4" })
vim.keymap.set("n", "<Leader><Tab>5", "<cmd>tabn5<CR>", { desc = "Go to tab 5" })
vim.keymap.set("n", "<Leader><Tab>6", "<cmd>tabn6<CR>", { desc = "Go to tab 6" })
vim.keymap.set("n", "<Leader><Tab>7", "<cmd>tabn7<CR>", { desc = "Go to tab 7" })
vim.keymap.set("n", "<Leader><Tab>8", "<cmd>tabn8<CR>", { desc = "Go to tab 8" })
vim.keymap.set("n", "<Leader><Tab>9", "<cmd>tabn9<CR>", { desc = "Go to tab 9" })

-- Dial plugin
vim.keymap.set("n", "<C-a>", function()
  require("dial.map").manipulate("increment", "normal")
end)
vim.keymap.set("n", "<C-x>", function()
  require("dial.map").manipulate("decrement", "normal")
end)
vim.keymap.set("n", "g<C-a>", function()
  require("dial.map").manipulate("increment", "gnormal")
end)
vim.keymap.set("n", "g<C-x>", function()
  require("dial.map").manipulate("decrement", "gnormal")
end)
vim.keymap.set("v", "<C-a>", function()
  require("dial.map").manipulate("increment", "visual")
end)
vim.keymap.set("v", "<C-x>", function()
  require("dial.map").manipulate("decrement", "visual")
end)
vim.keymap.set("v", "g<C-a>", function()
  require("dial.map").manipulate("increment", "gvisual")
end)
vim.keymap.set("v", "g<C-x>", function()
  require("dial.map").manipulate("decrement", "gvisual")
end)
