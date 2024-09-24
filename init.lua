require("config.lazy")
require("option")

vim.keymap.set({"n", "i", "v"}, "<c-s>", "<cmd>w<cr>")
vim.keymap.set({"n", "i", "v"}, "<c-b>", "<cmd>Neotree<cr>")
vim.keymap.set({"n", "i", "v"}, "<c-p>", "<cmd>Telescope find_files<cr>")
vim.keymap.set({"n", "i", "v"}, "<c-f>", "<cmd>Telescope live_grep<cr>")
